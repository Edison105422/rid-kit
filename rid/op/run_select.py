from typing import List, Optional, Dict
from pathlib import Path
import numpy as np
from dflow.python import (
    OP,
    OPIO,
    OPIOSign,
    Artifact,
    Parameter
)
from rid.utils import save_txt, set_directory
from rid.constants import sel_gro_name, sel_lmp_name, cv_init_label, model_devi_name, model_devi_precision, sel_ndx_name
from rid.select.conf_select import select_from_devi
from rid.common.mol import slice_xtc, slice_dump
from rid.select.model_devi import make_std


class RunSelect(OP):

    """
    `RunSelect` calculates model deviations for each chosen representive cluster frames from `PrepSelect` and select 
    ones with high uncertainty from them.
    As RiD-kit is based on `Gromacs`, please provide trajectories in `.xtc` format (single-point precision) and NN models in 
    `.pb` format. 
    Warning: We highly recommend use `slice_mode = "gmx"` due to the inconsistent format convention of `mdtraj` that may lead to topology
    mismatch of next label steps. If you use `mdtraj` mode, please make sure the name conventions of molecules in Gromacs topology 
    files satisfy PDB standards. This could happen in some old Gromcas version.
    """

    @classmethod
    def get_input_sign(cls):
        return OPIOSign(
            {
                "task_name": str,
                "cluster_selection_index": Artifact(Path),
                "cluster_selection_data": Artifact(Path),
                "models": Artifact(List[Path], optional=True),
                "trust_lvl_1": float,
                "trust_lvl_2": float,
                "xtc_traj": Artifact(Path),
                "topology": Artifact(Path),
                "dt": Parameter(Optional[float], default=None),
                "output_freq": Parameter(Optional[float], default=None),
                "slice_mode": Parameter(str, default="gmx")
            }
        )

    @classmethod
    def get_output_sign(cls):
        return OPIOSign(
            {
                "selected_confs": Artifact(List[Path]),
                "selected_cv_init": Artifact(List[Path]),
                "model_devi": Artifact(Path, optional=True),
                "selected_indices": Artifact(Path),
                "selected_conf_tags": Dict
            }
        )

    @OP.exec_sign_check
    def execute(
        self,
        op_in: OPIO,
    ) -> OPIO:

        r"""Execute the OP.
        
        Parameters
        ----------
        op_in : dict
            Input dict with components:

            - `task_name`: str,
            - `cluster_selection_index`: Artifact(Path),
            - `cluster_selection_data`: Artifact(Path),
            - `models`: Artifact(List[Path], optional=True),
            - `trust_lvl_1`: float,
            - `trust_lvl_2`: float,
            - `xtc_traj`: Artifact(Path),
            - `topology`: Artifact(Path),
            - `dt`: Parameter(Optional[float], default=None),
            - `slice_mode`: Parameter(str, default=`gmx`)
          
        Returns
        -------
            Output dict with components:
        
            - `selected_confs`: (`Artifact(Path)`) Selected conformation files by model deviations from representative frames of clusters.
            - `selected_cv_init`: (`Artifact(Path)`) Collective variables of selected conformations (`selected_confs`).
            - `model_devi`: (`Artifact(Path)`) Model deviation values of selected conformation files (`selected_confs`) .
            - `selected_indices`: (`Artifact(Path)`) Indices of selected conformation files (`selected_confs`) in trajectories.
        """

        cls_sel_idx = np.load(op_in["cluster_selection_index"])
        cls_sel_data = np.load(op_in["cluster_selection_data"])

        task_path = Path(op_in["task_name"])
        task_path.mkdir(exist_ok=True, parents=True)

        walker_idx = int(op_in["task_name"])
        with set_directory(task_path):
            if op_in["models"] is None:
                save_txt("cls_"+model_devi_name, [], fmt=model_devi_precision)
                _selected_idx = np.array([ii for ii in range(len(cls_sel_idx))], dtype=int)
            else:
                stds = make_std(cls_sel_data, models=op_in["models"])
                save_txt("cls_"+model_devi_name, stds, fmt=model_devi_precision)
                _selected_idx = select_from_devi(stds, op_in["trust_lvl_1"])
            sel_idx = cls_sel_idx[_selected_idx]
            save_txt(sel_ndx_name, sel_idx, fmt="%d")
            sel_data = cls_sel_data[_selected_idx]
            if op_in["slice_mode"] == "gmx":
                assert op_in["dt"] is not None, "Please provide time step to slice trajectory."
                for ii, sel in enumerate(sel_idx):
                    time = sel * op_in["dt"] * op_in["output_freq"]
                    slice_xtc(xtc=op_in["xtc_traj"], top=op_in["topology"],
                            walker_idx=walker_idx,selected_idx=time, output=sel_gro_name.format(walker=walker_idx,idx=sel), style="gmx")
            elif op_in["slice_mode"] == "mdtraj":
                slice_xtc(xtc=op_in["xtc_traj"], top=op_in["topology"],
                        walker_idx = walker_idx, selected_idx=sel_idx, output=sel_gro_name, style="mdtraj")
            elif op_in["slice_mode"] == "dpdata":
                slice_dump(dump=op_in["xtc_traj"],walker_idx = walker_idx,selected_idx=sel_idx, output=sel_lmp_name, style="dpdata")
            else:
                raise RuntimeError("Unknown Style for Slicing Trajectory.")
            conf_list = []
            cv_init_list = []
            conf_tags = {}
            for ii, sel in enumerate(sel_idx):
                if op_in["slice_mode"] == "dpdata":
                    conf_list.append(task_path.joinpath(sel_lmp_name.format(walker=walker_idx,idx=sel)))
                    conf_tags[sel_lmp_name.format(walker = walker_idx,idx=sel)] = f"{op_in['task_name']}_{sel}"
                elif op_in["slice_mode"] == "gmx" or op_in["slice_mode"] == "mdtraj" :
                    conf_list.append(task_path.joinpath(sel_gro_name.format(walker=walker_idx,idx=sel)))
                    conf_tags[sel_gro_name.format(walker = walker_idx,idx=sel)] = f"{op_in['task_name']}_{sel}"
                save_txt(cv_init_label.format(walker=walker_idx,idx=sel), sel_data[ii])
                cv_init_list.append(task_path.joinpath(cv_init_label.format(walker=walker_idx,idx=sel)))
            
        op_out = OPIO(
            {
               "selected_confs": conf_list,
               "selected_cv_init": cv_init_list,
               "model_devi": task_path.joinpath("cls_"+model_devi_name),
               "selected_indices": task_path.joinpath(sel_ndx_name),
               "selected_conf_tags": conf_tags
            }
        )
        return op_out