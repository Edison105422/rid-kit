
@
inputsPlaceholder*
shape:���������*
dtype0
8
drop_out_ratePlaceholder*
shape:*
dtype0
>
	cvs/beginConst*
valueB"        *
dtype0
=
cvs/sizeConst*
dtype0*
valueB"����   
?
cvsSliceinputs	cvs/begincvs/size*
Index0*
T0
@
input_shiftConst*
valueB"        *
dtype0
R
input_shift/readIdentityinput_shift*
T0*
_class
loc:@input_shift
@
input_scaleConst*
valueB"  �?  �?*
dtype0
R
input_scale/readIdentityinput_scale*
T0*
_class
loc:@input_scale
,
sub_1Subcvsinput_shift/read*
T0
.
mul_1Mulsub_1input_scale/read*
T0
:
angles/maskConst*
valueB
Z*
dtype0

5
angles/ShapeShapemul_1*
T0*
out_type0
H
angles/strided_slice/stackConst*
valueB:*
dtype0
J
angles/strided_slice/stack_1Const*
dtype0*
valueB:
J
angles/strided_slice/stack_2Const*
dtype0*
valueB:
�
angles/strided_sliceStridedSliceangles/Shapeangles/strided_slice/stackangles/strided_slice/stack_1angles/strided_slice/stack_2*
ellipsis_mask *
Index0*
end_mask *
T0*

begin_mask *
shrink_axis_mask *
new_axis_mask 
K
angles/Prod/reduction_indicesConst*
dtype0*
valueB: 
n
angles/ProdProdangles/strided_sliceangles/Prod/reduction_indices*
	keep_dims( *

Tidx0*
T0
7
angles/Shape_1Shapemul_1*
T0*
out_type0
J
angles/strided_slice_1/stackConst*
valueB: *
dtype0
L
angles/strided_slice_1/stack_1Const*
valueB:*
dtype0
L
angles/strided_slice_1/stack_2Const*
valueB:*
dtype0
�
angles/strided_slice_1StridedSliceangles/Shape_1angles/strided_slice_1/stackangles/strided_slice_1/stack_1angles/strided_slice_1/stack_2*
shrink_axis_mask *
end_mask *

begin_mask*
ellipsis_mask *
Index0*
new_axis_mask *
T0
7
angles/Shape_2Shapemul_1*
T0*
out_type0
J
angles/strided_slice_2/stackConst*
dtype0*
valueB:
L
angles/strided_slice_2/stack_1Const*
valueB: *
dtype0
L
angles/strided_slice_2/stack_2Const*
dtype0*
valueB:
�
angles/strided_slice_2StridedSliceangles/Shape_2angles/strided_slice_2/stackangles/strided_slice_2/stack_1angles/strided_slice_2/stack_2*
ellipsis_mask *
Index0*
end_mask*

begin_mask *
new_axis_mask *
T0*
shrink_axis_mask 
I
angles/concat/values_1Packangles/Prod*
T0*

axis *
N
<
angles/concat/axisConst*
value	B : *
dtype0
�
angles/concatConcatV2angles/strided_slice_1angles/concat/values_1angles/strided_slice_2angles/concat/axis*

Tidx0*
N*
T0
F
angles/ReshapeReshapemul_1angles/concat*
Tshape0*
T0
M
angles/Reshape_1/shapeConst*
dtype0*
valueB:
���������
W
angles/Reshape_1Reshapeangles/maskangles/Reshape_1/shape*
T0
*
Tshape0
0
angles/WhereWhereangles/Reshape_1*
T0

G
angles/SqueezeSqueezeangles/Where*
T0	*
squeeze_dims

>
angles/GatherV2/axisConst*
dtype0*
value	B :
�
angles/GatherV2GatherV2angles/Reshapeangles/Squeezeangles/GatherV2/axis*
Tparams0*
Taxis0*

batch_dims *
Tindices0	
B
Reshape/shapeConst*
dtype0*
valueB"����   
I
ReshapeReshapeangles/GatherV2Reshape/shape*
T0*
Tshape0
9

dists/maskConst*
valueB
Z  *
dtype0

4
dists/ShapeShapemul_1*
out_type0*
T0
G
dists/strided_slice/stackConst*
dtype0*
valueB:
I
dists/strided_slice/stack_1Const*
dtype0*
valueB:
I
dists/strided_slice/stack_2Const*
valueB:*
dtype0
�
dists/strided_sliceStridedSlicedists/Shapedists/strided_slice/stackdists/strided_slice/stack_1dists/strided_slice/stack_2*
Index0*
ellipsis_mask *
shrink_axis_mask *
end_mask *
T0*
new_axis_mask *

begin_mask 
J
dists/Prod/reduction_indicesConst*
valueB: *
dtype0
k

dists/ProdProddists/strided_slicedists/Prod/reduction_indices*
	keep_dims( *
T0*

Tidx0
6
dists/Shape_1Shapemul_1*
out_type0*
T0
I
dists/strided_slice_1/stackConst*
dtype0*
valueB: 
K
dists/strided_slice_1/stack_1Const*
dtype0*
valueB:
K
dists/strided_slice_1/stack_2Const*
dtype0*
valueB:
�
dists/strided_slice_1StridedSlicedists/Shape_1dists/strided_slice_1/stackdists/strided_slice_1/stack_1dists/strided_slice_1/stack_2*

begin_mask*
T0*
new_axis_mask *
ellipsis_mask *
end_mask *
shrink_axis_mask *
Index0
6
dists/Shape_2Shapemul_1*
out_type0*
T0
I
dists/strided_slice_2/stackConst*
dtype0*
valueB:
K
dists/strided_slice_2/stack_1Const*
dtype0*
valueB: 
K
dists/strided_slice_2/stack_2Const*
dtype0*
valueB:
�
dists/strided_slice_2StridedSlicedists/Shape_2dists/strided_slice_2/stackdists/strided_slice_2/stack_1dists/strided_slice_2/stack_2*
new_axis_mask *
shrink_axis_mask *
ellipsis_mask *
Index0*

begin_mask *
T0*
end_mask
G
dists/concat/values_1Pack
dists/Prod*
N*

axis *
T0
;
dists/concat/axisConst*
value	B : *
dtype0
�
dists/concatConcatV2dists/strided_slice_1dists/concat/values_1dists/strided_slice_2dists/concat/axis*
N*
T0*

Tidx0
D
dists/ReshapeReshapemul_1dists/concat*
T0*
Tshape0
L
dists/Reshape_1/shapeConst*
dtype0*
valueB:
���������
T
dists/Reshape_1Reshape
dists/maskdists/Reshape_1/shape*
Tshape0*
T0

.
dists/WhereWheredists/Reshape_1*
T0

E
dists/SqueezeSqueezedists/Where*
squeeze_dims
*
T0	
=
dists/GatherV2/axisConst*
dtype0*
value	B :
�
dists/GatherV2GatherV2dists/Reshapedists/Squeezedists/GatherV2/axis*

batch_dims *
Taxis0*
Tparams0*
Tindices0	
D
Reshape_1/shapeConst*
valueB"����    *
dtype0
L
	Reshape_1Reshapedists/GatherV2Reshape_1/shape*
T0*
Tshape0

CosCosReshape*
T0

SinSinReshape*
T0
5
concat/axisConst*
dtype0*
value	B :
R
concatConcatV2CosSin	Reshape_1concat/axis*
T0*
N*

Tidx0
�
layer_0/matrixConst*
dtype0*�
value�B�"������@��v���]�>i�B>ȧ뼧Y�=�~V��y佨b<���%=���<:=�2�����kA��i�=\Ⱦ�		>'�= ٪=�T >UsP��h��P�>��K>�z&����qt�>�@�>�=OX>��e�g�>�?�>�q>�韾ϖw���A��(�vb�_�e>ຍ=�>��=ͬX=���>�qs=�ep��3�>�==���=^�g�3>LԹ�0����B>���=֎��Y���5=$��=�����C�=(Ǔ�Kz�'�.����=����Ì�=�C=Tl��M%Ͼ	򱾇����n�<�[��⇼c�>
[
layer_0/matrix/readIdentitylayer_0/matrix*!
_class
loc:@layer_0/matrix*
T0
�
layer_0/biasConst*e
value\BZ"P�x���Y���=m�>v�<?���?Gۄ?��NU��{߾V����g>eO�>�fH�'΁?��8?T-?��e��^z��-?*
dtype0
U
layer_0/bias/readIdentitylayer_0/bias*
T0*
_class
loc:@layer_0/bias
d
layer_0/MatMulMatMulconcatlayer_0/matrix/read*
T0*
transpose_b( *
transpose_a( 
@
layer_0/addAddV2layer_0/MatMullayer_0/bias/read*
T0
"
TanhTanhlayer_0/add*
T0
:
dropout/ConstConst*
valueB
 *  �?*
dtype0
9
dropout/SubSubdropout/Constdrop_out_rate*
T0
6
dropout/RealDivRealDivTanhdropout/Sub*
T0
5
dropout/ShapeShapeTanh*
T0*
out_type0
s
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
T0*

seed *
dtype0*
seed2 
b
dropout/GreaterEqualGreaterEqual$dropout/random_uniform/RandomUniformdrop_out_rate*
T0
R
dropout/CastCastdropout/GreaterEqual*

SrcT0
*

DstT0*
Truncate( 
:
dropout/MulMuldropout/RealDivdropout/Cast*
T0
�
layer_1/matrixConst*�
value�B�"���=载XL���%��ǽ��=3�8=+�5>b˞>��{�:,�<謿���C���H=�N�t9�>��J>�eL=���>�i��,��؛���ã=�-=����=�c�=o���3�9���Q��ҽ�D�=N�4>y��=�y&>	Ȍ>�Z6���ѽ4�ӽGr&>UȾi�������>�黙8$>���V$C��6�=�=)>
�v���[�L𤽔@��ୗ>@P���Ig<S2=�`f�hAI=M^">d�^�züpP��!2V=8@���=t06>kX�=_9>�m�>��༝���̔?����=h��>_I!����=%�x>oY9>A>s���
d���;!��Z��=fu����ؽ�w`�f�=V��Ԝ�:�=v�;�P7>7:��=��=1��=���=�3��� >�N>(p�>)�"����>Pk!�I���)��-�J�za>8f>�RZ>#��%Į�e�=E($>`�K>Qv4<���r��=��>@�u��r���=e�'>o}�;����N�N�@Ч=�H>�fM>���a���z{>�b�>�
�>8�>��龛��=�c7�w��|�S>yh�=��>�b2=X��~́=#	�=�5>-�$�4>��z���3;=�O;�@=D7��L>ٱ~�_�>�V5>E��;�;���Y���=������7>�c�����W-�h蚽X��<<粻�[/=�	�H0�;�=!�>�\����<�n�M�,�*�7=���;��:>��_=���3�>g�%=�4^>�@�<���^�=��G��U�<��O>�|6��Z��ʿ��~��V�&��ּ�/���_����$���m�>�\<tɕ��͈>V�>��>��0=�*�=m(=ea�=������ν�G(=��ľ�<�=s�3�{�=��>�=���j>�E=�F��2��=g'.�gG������*s�=��9���<��A���>�.2�6�׽9w�>i��<ȇ�Yv+=?��˫��sN���m�⍾>y�w>���Na��w���{�=ξ�<��J>ύ�=�t=�=>�M��
j���S�nD�=�=>�aK�o�|�~��=C��>��u��_ӽעw��h�<V=Y�ཁp����>�#�:��>�U��2�>�?��Q`>�h��m>b�R>�:>�Rn��,��2>$F>\��<h؆>X)1�Fq�=���@je>{ν�4���+<}�>d:^�ͺC	&>�Z>X��>!:?>�#j�.��<�=���>�0�<,�<��>W�*>j��=�7�=��½`x	��k���Ⱥ��}M��@�=^�ƽ�<c>�����ֽ��?�]�z��=���>'��;[��=�T��(�n�K҄�崼<h�>{vY=�y��f�����W�мI��<���>�f���<�7>7�1[A=�0��@���׽($�=Q��=���(e����?>�|���.g���=>�c%���=��h=��>L�/��V<h˼䑇���r>�Z���t>5�=��-�I��=ْC>~~�>���=m)߼Sm<z�=P�<*&��g����=�� �[ �F J='�>W��;�h����y��O���Z�d<4��[A�f쾋�>��=��|�*
dtype0
[
layer_1/matrix/readIdentitylayer_1/matrix*
T0*!
_class
loc:@layer_1/matrix
�
layer_1/biasConst*e
value\BZ"P~���|
��G,���I?+��x�
��?�����L?z�K\���_���Ǔ�k�8�i��L�3?����0��Ԇ�?7~�*
dtype0
U
layer_1/bias/readIdentitylayer_1/bias*
_class
loc:@layer_1/bias*
T0
i
layer_1/MatMulMatMuldropout/Mullayer_1/matrix/read*
T0*
transpose_a( *
transpose_b( 
@
layer_1/addAddV2layer_1/MatMullayer_1/bias/read*
T0
�
layer_1/timestepConst*e
value\BZ"Pr�p>k�=�S[>�: >w�N>���=��>O��=D>��/>b&�>�3>\��<'��=�L>�I�>���=��=5+�=)�>*
dtype0
a
layer_1/timestep/readIdentitylayer_1/timestep*#
_class
loc:@layer_1/timestep*
T0
$
Tanh_1Tanhlayer_1/add*
T0
4
mul_2MulTanh_1layer_1/timestep/read*
T0
<
dropout_1/ConstConst*
valueB
 *  �?*
dtype0
=
dropout_1/SubSubdropout_1/Constdrop_out_rate*
T0
;
dropout_1/RealDivRealDivmul_2dropout_1/Sub*
T0
8
dropout_1/ShapeShapemul_2*
out_type0*
T0
w
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape*
dtype0*

seed *
T0*
seed2 
f
dropout_1/GreaterEqualGreaterEqual&dropout_1/random_uniform/RandomUniformdrop_out_rate*
T0
V
dropout_1/CastCastdropout_1/GreaterEqual*

DstT0*

SrcT0
*
Truncate( 
@
dropout_1/MulMuldropout_1/RealDivdropout_1/Cast*
T0
1
addAddV2dropout/Muldropout_1/Mul*
T0
�
energy/matrixConst*i
value`B^"P�	?&8[��>�۽�%q=��Ż�Pc>��������\>���=bo�>* >�j4>f�>u�3>y�.>� R<(����n>*
dtype0
X
energy/matrix/readIdentityenergy/matrix*
T0* 
_class
loc:@energy/matrix
_
energy/MatMulMatMuladdenergy/matrix/read*
transpose_b( *
transpose_a( *
T0
,
o_energyIdentityenergy/MatMul*
T0
;
gradients/ShapeShapeo_energy*
T0*
out_type0
F
gradients/grad_ys_0/ConstConst*
dtype0*
valueB
 *  �?
b
gradients/grad_ys_0Fillgradients/Shapegradients/grad_ys_0/Const*
T0*

index_type0
�
#gradients/energy/MatMul_grad/MatMulMatMulgradients/grad_ys_0energy/matrix/read*
transpose_b(*
T0*
transpose_a( 
G
gradients/add_grad/ShapeShapedropout/Mul*
out_type0*
T0
K
gradients/add_grad/Shape_1Shapedropout_1/Mul*
T0*
out_type0
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0
�
gradients/add_grad/SumSum#gradients/energy/MatMul_grad/MatMul(gradients/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
n
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0
�
gradients/add_grad/Sum_1Sum#gradients/energy/MatMul_grad/MatMul*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
t
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0
W
"gradients/dropout_1/Mul_grad/ShapeShapedropout_1/RealDiv*
out_type0*
T0
V
$gradients/dropout_1/Mul_grad/Shape_1Shapedropout_1/Cast*
out_type0*
T0
�
2gradients/dropout_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_1/Mul_grad/Shape$gradients/dropout_1/Mul_grad/Shape_1*
T0
^
 gradients/dropout_1/Mul_grad/MulMulgradients/add_grad/Reshape_1dropout_1/Cast*
T0
�
 gradients/dropout_1/Mul_grad/SumSum gradients/dropout_1/Mul_grad/Mul2gradients/dropout_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( 
�
$gradients/dropout_1/Mul_grad/ReshapeReshape gradients/dropout_1/Mul_grad/Sum"gradients/dropout_1/Mul_grad/Shape*
Tshape0*
T0
O
&gradients/dropout_1/RealDiv_grad/ShapeShapemul_2*
out_type0*
T0
Y
(gradients/dropout_1/RealDiv_grad/Shape_1Shapedropout_1/Sub*
T0*
out_type0
�
6gradients/dropout_1/RealDiv_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/dropout_1/RealDiv_grad/Shape(gradients/dropout_1/RealDiv_grad/Shape_1*
T0
q
(gradients/dropout_1/RealDiv_grad/RealDivRealDiv$gradients/dropout_1/Mul_grad/Reshapedropout_1/Sub*
T0
�
$gradients/dropout_1/RealDiv_grad/SumSum(gradients/dropout_1/RealDiv_grad/RealDiv6gradients/dropout_1/RealDiv_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
(gradients/dropout_1/RealDiv_grad/ReshapeReshape$gradients/dropout_1/RealDiv_grad/Sum&gradients/dropout_1/RealDiv_grad/Shape*
Tshape0*
T0
D
gradients/mul_2_grad/ShapeShapeTanh_1*
out_type0*
T0
U
gradients/mul_2_grad/Shape_1Shapelayer_1/timestep/read*
T0*
out_type0
�
*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*
T0
i
gradients/mul_2_grad/MulMul(gradients/dropout_1/RealDiv_grad/Reshapelayer_1/timestep/read*
T0
�
gradients/mul_2_grad/SumSumgradients/mul_2_grad/Mul*gradients/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( 
t
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
T0*
Tshape0
Y
gradients/Tanh_1_grad/TanhGradTanhGradTanh_1gradients/mul_2_grad/Reshape*
T0
R
 gradients/layer_1/add_grad/ShapeShapelayer_1/MatMul*
T0*
out_type0
W
"gradients/layer_1/add_grad/Shape_1Shapelayer_1/bias/read*
T0*
out_type0
�
0gradients/layer_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/layer_1/add_grad/Shape"gradients/layer_1/add_grad/Shape_1*
T0
�
gradients/layer_1/add_grad/SumSumgradients/Tanh_1_grad/TanhGrad0gradients/layer_1/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
"gradients/layer_1/add_grad/ReshapeReshapegradients/layer_1/add_grad/Sum gradients/layer_1/add_grad/Shape*
Tshape0*
T0
�
$gradients/layer_1/MatMul_grad/MatMulMatMul"gradients/layer_1/add_grad/Reshapelayer_1/matrix/read*
T0*
transpose_a( *
transpose_b(
�
gradients/AddNAddNgradients/add_grad/Reshape$gradients/layer_1/MatMul_grad/MatMul*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*
N
S
 gradients/dropout/Mul_grad/ShapeShapedropout/RealDiv*
out_type0*
T0
R
"gradients/dropout/Mul_grad/Shape_1Shapedropout/Cast*
T0*
out_type0
�
0gradients/dropout/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/Mul_grad/Shape"gradients/dropout/Mul_grad/Shape_1*
T0
L
gradients/dropout/Mul_grad/MulMulgradients/AddNdropout/Cast*
T0
�
gradients/dropout/Mul_grad/SumSumgradients/dropout/Mul_grad/Mul0gradients/dropout/Mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( 
�
"gradients/dropout/Mul_grad/ReshapeReshapegradients/dropout/Mul_grad/Sum gradients/dropout/Mul_grad/Shape*
Tshape0*
T0
L
$gradients/dropout/RealDiv_grad/ShapeShapeTanh*
out_type0*
T0
U
&gradients/dropout/RealDiv_grad/Shape_1Shapedropout/Sub*
out_type0*
T0
�
4gradients/dropout/RealDiv_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/dropout/RealDiv_grad/Shape&gradients/dropout/RealDiv_grad/Shape_1*
T0
k
&gradients/dropout/RealDiv_grad/RealDivRealDiv"gradients/dropout/Mul_grad/Reshapedropout/Sub*
T0
�
"gradients/dropout/RealDiv_grad/SumSum&gradients/dropout/RealDiv_grad/RealDiv4gradients/dropout/RealDiv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
&gradients/dropout/RealDiv_grad/ReshapeReshape"gradients/dropout/RealDiv_grad/Sum$gradients/dropout/RealDiv_grad/Shape*
Tshape0*
T0
_
gradients/Tanh_grad/TanhGradTanhGradTanh&gradients/dropout/RealDiv_grad/Reshape*
T0
R
 gradients/layer_0/add_grad/ShapeShapelayer_0/MatMul*
out_type0*
T0
W
"gradients/layer_0/add_grad/Shape_1Shapelayer_0/bias/read*
out_type0*
T0
�
0gradients/layer_0/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/layer_0/add_grad/Shape"gradients/layer_0/add_grad/Shape_1*
T0
�
gradients/layer_0/add_grad/SumSumgradients/Tanh_grad/TanhGrad0gradients/layer_0/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
�
"gradients/layer_0/add_grad/ReshapeReshapegradients/layer_0/add_grad/Sum gradients/layer_0/add_grad/Shape*
T0*
Tshape0
�
$gradients/layer_0/MatMul_grad/MatMulMatMul"gradients/layer_0/add_grad/Reshapelayer_0/matrix/read*
transpose_b(*
T0*
transpose_a( 
D
gradients/concat_grad/RankConst*
dtype0*
value	B :
W
gradients/concat_grad/modFloorModconcat/axisgradients/concat_grad/Rank*
T0
]
gradients/concat_grad/ShapeNShapeNCosSin	Reshape_1*
out_type0*
N*
T0
�
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/modgradients/concat_grad/ShapeNgradients/concat_grad/ShapeN:1gradients/concat_grad/ShapeN:2*
N
�
gradients/concat_grad/SliceSlice$gradients/layer_0/MatMul_grad/MatMul"gradients/concat_grad/ConcatOffsetgradients/concat_grad/ShapeN*
T0*
Index0
�
gradients/concat_grad/Slice_1Slice$gradients/layer_0/MatMul_grad/MatMul$gradients/concat_grad/ConcatOffset:1gradients/concat_grad/ShapeN:1*
Index0*
T0
�
gradients/concat_grad/Slice_2Slice$gradients/layer_0/MatMul_grad/MatMul$gradients/concat_grad/ConcatOffset:2gradients/concat_grad/ShapeN:2*
T0*
Index0
C
gradients/Cos_grad/NegNeggradients/concat_grad/Slice*
T0
M
gradients/Cos_grad/SinSinReshape^gradients/concat_grad/Slice*
T0
V
gradients/Cos_grad/mulMulgradients/Cos_grad/Neggradients/Cos_grad/Sin*
T0
O
gradients/Sin_grad/CosCosReshape^gradients/concat_grad/Slice_1*
T0
]
gradients/Sin_grad/mulMulgradients/concat_grad/Slice_1gradients/Sin_grad/Cos*
T0
P
gradients/Reshape_1_grad/ShapeShapedists/GatherV2*
out_type0*
T0
�
 gradients/Reshape_1_grad/ReshapeReshapegradients/concat_grad/Slice_2gradients/Reshape_1_grad/Shape*
Tshape0*
T0
�
gradients/AddN_1AddNgradients/Cos_grad/mulgradients/Sin_grad/mul*)
_class
loc:@gradients/Cos_grad/mul*
T0*
N
O
gradients/Reshape_grad/ShapeShapeangles/GatherV2*
out_type0*
T0
p
gradients/Reshape_grad/ReshapeReshapegradients/AddN_1gradients/Reshape_grad/Shape*
Tshape0*
T0
v
#gradients/dists/GatherV2_grad/ShapeShapedists/Reshape*
out_type0	*
T0* 
_class
loc:@dists/Reshape
�
"gradients/dists/GatherV2_grad/CastCast#gradients/dists/GatherV2_grad/Shape* 
_class
loc:@dists/Reshape*

SrcT0	*
Truncate( *

DstT0
_
1gradients/dists/GatherV2_grad/strided_slice/stackConst*
dtype0*
valueB: 
n
3gradients/dists/GatherV2_grad/strided_slice/stack_1Packdists/GatherV2/axis*
N*

axis *
T0
a
3gradients/dists/GatherV2_grad/strided_slice/stack_2Const*
valueB:*
dtype0
�
+gradients/dists/GatherV2_grad/strided_sliceStridedSlice"gradients/dists/GatherV2_grad/Cast1gradients/dists/GatherV2_grad/strided_slice/stack3gradients/dists/GatherV2_grad/strided_slice/stack_13gradients/dists/GatherV2_grad/strided_slice/stack_2*
new_axis_mask *

begin_mask*
shrink_axis_mask *
Index0*
end_mask *
ellipsis_mask *
T0
n
3gradients/dists/GatherV2_grad/strided_slice_1/stackPackdists/GatherV2/axis*

axis *
T0*
N
c
5gradients/dists/GatherV2_grad/strided_slice_1/stack_1Const*
valueB: *
dtype0
c
5gradients/dists/GatherV2_grad/strided_slice_1/stack_2Const*
dtype0*
valueB:
�
-gradients/dists/GatherV2_grad/strided_slice_1StridedSlice"gradients/dists/GatherV2_grad/Cast3gradients/dists/GatherV2_grad/strided_slice_1/stack5gradients/dists/GatherV2_grad/strided_slice_1/stack_15gradients/dists/GatherV2_grad/strided_slice_1/stack_2*
shrink_axis_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0*

begin_mask 
a
3gradients/dists/GatherV2_grad/strided_slice_2/stackConst*
dtype0*
valueB:
c
5gradients/dists/GatherV2_grad/strided_slice_2/stack_1Const*
dtype0*
valueB: 
c
5gradients/dists/GatherV2_grad/strided_slice_2/stack_2Const*
dtype0*
valueB:
�
-gradients/dists/GatherV2_grad/strided_slice_2StridedSlice-gradients/dists/GatherV2_grad/strided_slice_13gradients/dists/GatherV2_grad/strided_slice_2/stack5gradients/dists/GatherV2_grad/strided_slice_2/stack_15gradients/dists/GatherV2_grad/strided_slice_2/stack_2*
new_axis_mask *
ellipsis_mask *

begin_mask *
shrink_axis_mask *
end_mask*
Index0*
T0
d
-gradients/dists/GatherV2_grad/concat/values_1Const*
valueB:
���������*
dtype0
S
)gradients/dists/GatherV2_grad/concat/axisConst*
value	B : *
dtype0
�
$gradients/dists/GatherV2_grad/concatConcatV2+gradients/dists/GatherV2_grad/strided_slice-gradients/dists/GatherV2_grad/concat/values_1-gradients/dists/GatherV2_grad/strided_slice_2)gradients/dists/GatherV2_grad/concat/axis*
N*
T0*

Tidx0
N
$gradients/dists/GatherV2_grad/Size_1Const*
dtype0*
value	B :
N
$gradients/dists/GatherV2_grad/Size_2Const*
dtype0*
value	B :
S
)gradients/dists/GatherV2_grad/range/startConst*
dtype0*
value	B : 
S
)gradients/dists/GatherV2_grad/range/limitConst*
value	B : *
dtype0
S
)gradients/dists/GatherV2_grad/range/deltaConst*
dtype0*
value	B :
�
#gradients/dists/GatherV2_grad/rangeRange)gradients/dists/GatherV2_grad/range/start)gradients/dists/GatherV2_grad/range/limit)gradients/dists/GatherV2_grad/range/delta*

Tidx0
U
+gradients/dists/GatherV2_grad/range_1/startConst*
dtype0*
value	B : 
U
+gradients/dists/GatherV2_grad/range_1/deltaConst*
value	B :*
dtype0
�
%gradients/dists/GatherV2_grad/range_1Range+gradients/dists/GatherV2_grad/range_1/start$gradients/dists/GatherV2_grad/Size_2+gradients/dists/GatherV2_grad/range_1/delta*

Tidx0
M
#gradients/dists/GatherV2_grad/add/yConst*
value	B :*
dtype0
~
!gradients/dists/GatherV2_grad/addAddV2$gradients/dists/GatherV2_grad/Size_2#gradients/dists/GatherV2_grad/add/y*
T0
U
+gradients/dists/GatherV2_grad/range_2/deltaConst*
dtype0*
value	B :
�
%gradients/dists/GatherV2_grad/range_2Range!gradients/dists/GatherV2_grad/add$gradients/dists/GatherV2_grad/Size_1+gradients/dists/GatherV2_grad/range_2/delta*

Tidx0
�
%gradients/dists/GatherV2_grad/ReshapeReshape gradients/Reshape_1_grad/Reshape$gradients/dists/GatherV2_grad/concat*
Tshape0*
T0
{
/gradients/dists/GatherV2_grad/concat_1/values_1Pack$gradients/dists/GatherV2_grad/Size_2*

axis *
T0*
N
U
+gradients/dists/GatherV2_grad/concat_1/axisConst*
value	B : *
dtype0
�
&gradients/dists/GatherV2_grad/concat_1ConcatV2#gradients/dists/GatherV2_grad/range/gradients/dists/GatherV2_grad/concat_1/values_1%gradients/dists/GatherV2_grad/range_1%gradients/dists/GatherV2_grad/range_2+gradients/dists/GatherV2_grad/concat_1/axis*
N*

Tidx0*
T0
�
'gradients/dists/GatherV2_grad/transpose	Transpose%gradients/dists/GatherV2_grad/Reshape&gradients/dists/GatherV2_grad/concat_1*
T0*
Tperm0
O
%gradients/dists/GatherV2_grad/add_1/yConst*
dtype0*
value	B :
q
#gradients/dists/GatherV2_grad/add_1AddV2dists/GatherV2/axis%gradients/dists/GatherV2_grad/add_1/y*
T0
n
3gradients/dists/GatherV2_grad/strided_slice_3/stackPackdists/GatherV2/axis*

axis *
T0*
N
�
5gradients/dists/GatherV2_grad/strided_slice_3/stack_1Pack#gradients/dists/GatherV2_grad/add_1*

axis *
N*
T0
c
5gradients/dists/GatherV2_grad/strided_slice_3/stack_2Const*
dtype0*
valueB:
�
-gradients/dists/GatherV2_grad/strided_slice_3StridedSlice"gradients/dists/GatherV2_grad/Cast3gradients/dists/GatherV2_grad/strided_slice_3/stack5gradients/dists/GatherV2_grad/strided_slice_3/stack_15gradients/dists/GatherV2_grad/strided_slice_3/stack_2*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
Index0*
ellipsis_mask 
T
$gradients/dists/GatherV2_grad/Size_3Sizedists/Squeeze*
out_type0*
T0	
X
.gradients/dists/GatherV2_grad/ExpandDims_1/dimConst*
dtype0*
value	B : 
�
*gradients/dists/GatherV2_grad/ExpandDims_1
ExpandDims$gradients/dists/GatherV2_grad/Size_3.gradients/dists/GatherV2_grad/ExpandDims_1/dim*

Tdim0*
T0
�
'gradients/dists/GatherV2_grad/Reshape_1Reshapedists/Squeeze*gradients/dists/GatherV2_grad/ExpandDims_1*
Tshape0*
T0	
�
0gradients/dists/GatherV2_grad/UnsortedSegmentSumUnsortedSegmentSum'gradients/dists/GatherV2_grad/transpose'gradients/dists/GatherV2_grad/Reshape_1-gradients/dists/GatherV2_grad/strided_slice_3*
Tnumsegments0*
Tindices0	*
T0
O
%gradients/dists/GatherV2_grad/add_2/yConst*
dtype0*
value	B :
�
#gradients/dists/GatherV2_grad/add_2AddV2%gradients/dists/GatherV2_grad/range_1%gradients/dists/GatherV2_grad/add_2/y*
T0
]
/gradients/dists/GatherV2_grad/concat_2/values_2Const*
valueB: *
dtype0
U
+gradients/dists/GatherV2_grad/concat_2/axisConst*
dtype0*
value	B : 
�
&gradients/dists/GatherV2_grad/concat_2ConcatV2#gradients/dists/GatherV2_grad/range#gradients/dists/GatherV2_grad/add_2/gradients/dists/GatherV2_grad/concat_2/values_2%gradients/dists/GatherV2_grad/range_2+gradients/dists/GatherV2_grad/concat_2/axis*
N*
T0*

Tidx0
�
)gradients/dists/GatherV2_grad/transpose_1	Transpose0gradients/dists/GatherV2_grad/UnsortedSegmentSum&gradients/dists/GatherV2_grad/concat_2*
Tperm0*
T0
y
$gradients/angles/GatherV2_grad/ShapeShapeangles/Reshape*!
_class
loc:@angles/Reshape*
T0*
out_type0	
�
#gradients/angles/GatherV2_grad/CastCast$gradients/angles/GatherV2_grad/Shape*

DstT0*
Truncate( *!
_class
loc:@angles/Reshape*

SrcT0	
`
2gradients/angles/GatherV2_grad/strided_slice/stackConst*
valueB: *
dtype0
p
4gradients/angles/GatherV2_grad/strided_slice/stack_1Packangles/GatherV2/axis*
N*
T0*

axis 
b
4gradients/angles/GatherV2_grad/strided_slice/stack_2Const*
dtype0*
valueB:
�
,gradients/angles/GatherV2_grad/strided_sliceStridedSlice#gradients/angles/GatherV2_grad/Cast2gradients/angles/GatherV2_grad/strided_slice/stack4gradients/angles/GatherV2_grad/strided_slice/stack_14gradients/angles/GatherV2_grad/strided_slice/stack_2*
new_axis_mask *
end_mask *
shrink_axis_mask *

begin_mask*
T0*
ellipsis_mask *
Index0
p
4gradients/angles/GatherV2_grad/strided_slice_1/stackPackangles/GatherV2/axis*
T0*
N*

axis 
d
6gradients/angles/GatherV2_grad/strided_slice_1/stack_1Const*
dtype0*
valueB: 
d
6gradients/angles/GatherV2_grad/strided_slice_1/stack_2Const*
dtype0*
valueB:
�
.gradients/angles/GatherV2_grad/strided_slice_1StridedSlice#gradients/angles/GatherV2_grad/Cast4gradients/angles/GatherV2_grad/strided_slice_1/stack6gradients/angles/GatherV2_grad/strided_slice_1/stack_16gradients/angles/GatherV2_grad/strided_slice_1/stack_2*
Index0*
ellipsis_mask *
new_axis_mask *
end_mask*
shrink_axis_mask *
T0*

begin_mask 
b
4gradients/angles/GatherV2_grad/strided_slice_2/stackConst*
valueB:*
dtype0
d
6gradients/angles/GatherV2_grad/strided_slice_2/stack_1Const*
dtype0*
valueB: 
d
6gradients/angles/GatherV2_grad/strided_slice_2/stack_2Const*
dtype0*
valueB:
�
.gradients/angles/GatherV2_grad/strided_slice_2StridedSlice.gradients/angles/GatherV2_grad/strided_slice_14gradients/angles/GatherV2_grad/strided_slice_2/stack6gradients/angles/GatherV2_grad/strided_slice_2/stack_16gradients/angles/GatherV2_grad/strided_slice_2/stack_2*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
T0*
new_axis_mask *
end_mask
e
.gradients/angles/GatherV2_grad/concat/values_1Const*
valueB:
���������*
dtype0
T
*gradients/angles/GatherV2_grad/concat/axisConst*
dtype0*
value	B : 
�
%gradients/angles/GatherV2_grad/concatConcatV2,gradients/angles/GatherV2_grad/strided_slice.gradients/angles/GatherV2_grad/concat/values_1.gradients/angles/GatherV2_grad/strided_slice_2*gradients/angles/GatherV2_grad/concat/axis*
N*
T0*

Tidx0
O
%gradients/angles/GatherV2_grad/Size_1Const*
dtype0*
value	B :
O
%gradients/angles/GatherV2_grad/Size_2Const*
dtype0*
value	B :
T
*gradients/angles/GatherV2_grad/range/startConst*
dtype0*
value	B : 
T
*gradients/angles/GatherV2_grad/range/limitConst*
dtype0*
value	B : 
T
*gradients/angles/GatherV2_grad/range/deltaConst*
value	B :*
dtype0
�
$gradients/angles/GatherV2_grad/rangeRange*gradients/angles/GatherV2_grad/range/start*gradients/angles/GatherV2_grad/range/limit*gradients/angles/GatherV2_grad/range/delta*

Tidx0
V
,gradients/angles/GatherV2_grad/range_1/startConst*
dtype0*
value	B : 
V
,gradients/angles/GatherV2_grad/range_1/deltaConst*
dtype0*
value	B :
�
&gradients/angles/GatherV2_grad/range_1Range,gradients/angles/GatherV2_grad/range_1/start%gradients/angles/GatherV2_grad/Size_2,gradients/angles/GatherV2_grad/range_1/delta*

Tidx0
N
$gradients/angles/GatherV2_grad/add/yConst*
dtype0*
value	B :
�
"gradients/angles/GatherV2_grad/addAddV2%gradients/angles/GatherV2_grad/Size_2$gradients/angles/GatherV2_grad/add/y*
T0
V
,gradients/angles/GatherV2_grad/range_2/deltaConst*
value	B :*
dtype0
�
&gradients/angles/GatherV2_grad/range_2Range"gradients/angles/GatherV2_grad/add%gradients/angles/GatherV2_grad/Size_1,gradients/angles/GatherV2_grad/range_2/delta*

Tidx0
�
&gradients/angles/GatherV2_grad/ReshapeReshapegradients/Reshape_grad/Reshape%gradients/angles/GatherV2_grad/concat*
Tshape0*
T0
}
0gradients/angles/GatherV2_grad/concat_1/values_1Pack%gradients/angles/GatherV2_grad/Size_2*
N*
T0*

axis 
V
,gradients/angles/GatherV2_grad/concat_1/axisConst*
value	B : *
dtype0
�
'gradients/angles/GatherV2_grad/concat_1ConcatV2$gradients/angles/GatherV2_grad/range0gradients/angles/GatherV2_grad/concat_1/values_1&gradients/angles/GatherV2_grad/range_1&gradients/angles/GatherV2_grad/range_2,gradients/angles/GatherV2_grad/concat_1/axis*
N*

Tidx0*
T0
�
(gradients/angles/GatherV2_grad/transpose	Transpose&gradients/angles/GatherV2_grad/Reshape'gradients/angles/GatherV2_grad/concat_1*
T0*
Tperm0
P
&gradients/angles/GatherV2_grad/add_1/yConst*
value	B :*
dtype0
t
$gradients/angles/GatherV2_grad/add_1AddV2angles/GatherV2/axis&gradients/angles/GatherV2_grad/add_1/y*
T0
p
4gradients/angles/GatherV2_grad/strided_slice_3/stackPackangles/GatherV2/axis*
T0*
N*

axis 
�
6gradients/angles/GatherV2_grad/strided_slice_3/stack_1Pack$gradients/angles/GatherV2_grad/add_1*

axis *
N*
T0
d
6gradients/angles/GatherV2_grad/strided_slice_3/stack_2Const*
dtype0*
valueB:
�
.gradients/angles/GatherV2_grad/strided_slice_3StridedSlice#gradients/angles/GatherV2_grad/Cast4gradients/angles/GatherV2_grad/strided_slice_3/stack6gradients/angles/GatherV2_grad/strided_slice_3/stack_16gradients/angles/GatherV2_grad/strided_slice_3/stack_2*

begin_mask *
T0*
shrink_axis_mask*
new_axis_mask *
Index0*
ellipsis_mask *
end_mask 
V
%gradients/angles/GatherV2_grad/Size_3Sizeangles/Squeeze*
out_type0*
T0	
Y
/gradients/angles/GatherV2_grad/ExpandDims_1/dimConst*
value	B : *
dtype0
�
+gradients/angles/GatherV2_grad/ExpandDims_1
ExpandDims%gradients/angles/GatherV2_grad/Size_3/gradients/angles/GatherV2_grad/ExpandDims_1/dim*

Tdim0*
T0
�
(gradients/angles/GatherV2_grad/Reshape_1Reshapeangles/Squeeze+gradients/angles/GatherV2_grad/ExpandDims_1*
T0	*
Tshape0
�
1gradients/angles/GatherV2_grad/UnsortedSegmentSumUnsortedSegmentSum(gradients/angles/GatherV2_grad/transpose(gradients/angles/GatherV2_grad/Reshape_1.gradients/angles/GatherV2_grad/strided_slice_3*
Tindices0	*
T0*
Tnumsegments0
P
&gradients/angles/GatherV2_grad/add_2/yConst*
value	B :*
dtype0
�
$gradients/angles/GatherV2_grad/add_2AddV2&gradients/angles/GatherV2_grad/range_1&gradients/angles/GatherV2_grad/add_2/y*
T0
^
0gradients/angles/GatherV2_grad/concat_2/values_2Const*
valueB: *
dtype0
V
,gradients/angles/GatherV2_grad/concat_2/axisConst*
dtype0*
value	B : 
�
'gradients/angles/GatherV2_grad/concat_2ConcatV2$gradients/angles/GatherV2_grad/range$gradients/angles/GatherV2_grad/add_20gradients/angles/GatherV2_grad/concat_2/values_2&gradients/angles/GatherV2_grad/range_2,gradients/angles/GatherV2_grad/concat_2/axis*

Tidx0*
T0*
N
�
*gradients/angles/GatherV2_grad/transpose_1	Transpose1gradients/angles/GatherV2_grad/UnsortedSegmentSum'gradients/angles/GatherV2_grad/concat_2*
Tperm0*
T0
K
"gradients/dists/Reshape_grad/ShapeShapemul_1*
out_type0*
T0
�
$gradients/dists/Reshape_grad/ReshapeReshape)gradients/dists/GatherV2_grad/transpose_1"gradients/dists/Reshape_grad/Shape*
Tshape0*
T0
L
#gradients/angles/Reshape_grad/ShapeShapemul_1*
T0*
out_type0
�
%gradients/angles/Reshape_grad/ReshapeReshape*gradients/angles/GatherV2_grad/transpose_1#gradients/angles/Reshape_grad/Shape*
Tshape0*
T0
�
gradients/AddN_2AddN$gradients/dists/Reshape_grad/Reshape%gradients/angles/Reshape_grad/Reshape*
N*7
_class-
+)loc:@gradients/dists/Reshape_grad/Reshape*
T0
=
stackPackgradients/AddN_2*
T0*
N*

axis 
C
o_forces/shapeConst*
dtype0*
valueB"����   
A
o_forcesReshapestacko_forces/shape*
Tshape0*
T0 " 