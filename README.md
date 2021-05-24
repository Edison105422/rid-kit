# ridkit-master

## Introduction

ridkit is a python package for enhanced sampling via RiD(Reinforced Dynamics) method.

## Installation

#### install dependence
ridkit will need a specific software environment. We pack a easy-installed shell file located in env install.
~~~
cd env
sh rid.sh
~~~
Now you have all dependence of RiD (Gromacs, Tensorflow and a conda environment).
~~~
cd ritkit-master
python setup.py install
~~~
Open python, try `import rid`.

Install successfully if you get no error.

## Quick Start
We offer a simple but complete example in `rid-kit/examples`

Try:
```
cd examples
python main.py rid.json -c cv.json -s machine.json -i ./mol -o ./test_examples 
```

To begin with, you should offer a rid parameters file(rid.json), a CV file(cv.json), a machine configuration(machine.json) and a dictory(mol/) containing initial conformation files in detail, and the number of conformation files should be equal to the number of walkers for parallel.

All these files are presented in `examples` dictory where the users can adjust the parameter as their will.



## Main procedure of RiD

RiD will run in iterations. Every iteration contains tasks below:

1. Biased MD;
2. Restrained MD;
3. Training neuro network.

#TODO

#### a. Biased MD

Just like Metadynamics, RiD will sample based on a bias potential given by NN models. A uncertainty indicator will direct the process of adding bias potential.

#### b. Restrained MD

This procedure will calculate mean force based on the sampling results, which can generate data set for training. 

#### c. Neuro network training

A fully connected NN will be trained via sampling data. This network will generate a map from selected CV to free energy.

A more detail description of RiD is published now, please see:

>  J. Chem. Phys. **148**, 124113 (2018); https://doi.org/10.1063/1.5019675



 # RiD settings



Two necessary json files are required to get start a RiD procedure.

1. rid.json for configuration of simulation.
2. cv.json for specifying CV.

### rid.json

**General setting**

| Parameters | Type | Description | Default/Example |
| :----: | :----: | :----: | :----: |
| gmx_prep | str | Gromacs preparation command | gmx grompp -maxwarn 1 |
| gmx_run | str | Gromacs md run command | gmx mdrun -ntmpi 1 |
| gmx_split_traj | str | split trajctory | echo 0 '|' gmx trjconv -sep -f traj.trr -o confs/conf.gro -vel |
| init_graph | list&str | initial graph files list | [] |
| numb_iter | int | number of iterations | 3 |
| numb_walkers | int | number of walkers | 2 |
| bf_traj_stride | int | brute force trajectory stride | 500 |

**Setting for biased MD.**

| Parameters | Type | Description | Default/Example |
| :----: | :----: | :----: | :----: |
| bias_trust_lvl_1 | int | trust upper lecel | 2 |
| bias_trust_lvl_2 | int | trust lower level | 3 |
| bias_nsteps | int | total number of steps of biased MD | 20000 |
| bias_frame_freq | int | frame frequency for recording | 20 |
| **sel_threshold** | int | * | 2 |
| **cluster_threshold** | * | * | 1.5 |
| **num_of_cluster_threshhold** | * | * | 8 |
| max_sel | int | * | 30 |
| bias_dt | float | time interval of biased MD | 0.002 |
| bias_temperature | float/int | temperature for biased MD | 320 |

**Setting for restrained MD.**

| Parameters | Type | Description | Default/Example |
| :----: | :----: | :----: | :----: |
| res_nsteps | int | total number of steps of restrained MD | 25000 |
| res_frame_freq | int | frame frequency for recording| 50 |
| res_dt | float | time interval of restrained MD | 0.002 |
| res_temperature | int | temperature for restrained MD | 320 |
| res_kappa | float/int | force constant for restraining CV | 500 |
| **res_traj_stride** | int | brute force trajectory stride | 500 |
| res_ang_stride | * | * | 5 |
| res_prt_file | * | * | plm.res.out |
| init_numb_cluster_upper | int | upper limit of cluster selection | 26 |
| init_numb_cluster_lower | int | lower limit of cluster selection | 16 |
| conf_start | int | the index of the first conformation selected | 0 |
| conf_every | int | the stride of conformation selection | 1 |

**Setting for training and neuro network**

| Parameters | Type | Description | Default/Example |
| :----: | :----: | :----: | :----: |
| numb_model | int | number of nn models | 4 |
| neurons | list&int | number of nodes for each layer | [256, 128, 64, 32] |
| resnet | bool | whether to use Resnet | True |
| batch_size | int | batch size | 128 |
| numb_epoches | int | total number of epochs for every training | 2000 |
| starter_lr | float | initial learning rate | 0.0008 |
| decay_steps | int | decay steps of lr | 120 |
| decay_rate | float | decay rate of lr | 0.96 |
| **res_iter** | int | after this iteration, old data will be reduced | 13 |
| res_numb_epoches | * | * | 2000 |
| res_starter_lr | * | * | 0.0008 |
| res_olddata_ratio | * | * | 7 |
| res_decay_steps | * | * | 120 |
| res_decay_rate | * | * | 0.96 |

**Settings for job submission**

