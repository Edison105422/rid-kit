
@
inputsPlaceholder*
dtype0*
shape:���������
8
drop_out_ratePlaceholder*
dtype0*
shape:
>
	cvs/beginConst*
valueB"        *
dtype0
=
cvs/sizeConst*
dtype0*
valueB"����   
?
cvsSliceinputs	cvs/begincvs/size*
T0*
Index0
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
dtype0*
valueB"  �?  �?
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
angles/maskConst*
dtype0
*
valueB
Z
5
angles/ShapeShapemul_1*
out_type0*
T0
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
new_axis_mask *
shrink_axis_mask *
T0*
ellipsis_mask *
Index0*
end_mask *

begin_mask 
K
angles/Prod/reduction_indicesConst*
valueB: *
dtype0
n
angles/ProdProdangles/strided_sliceangles/Prod/reduction_indices*
	keep_dims( *

Tidx0*
T0
7
angles/Shape_1Shapemul_1*
out_type0*
T0
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
angles/strided_slice_1StridedSliceangles/Shape_1angles/strided_slice_1/stackangles/strided_slice_1/stack_1angles/strided_slice_1/stack_2*
end_mask *
ellipsis_mask *
Index0*
shrink_axis_mask *
new_axis_mask *
T0*

begin_mask
7
angles/Shape_2Shapemul_1*
T0*
out_type0
J
angles/strided_slice_2/stackConst*
valueB:*
dtype0
L
angles/strided_slice_2/stack_1Const*
dtype0*
valueB: 
L
angles/strided_slice_2/stack_2Const*
valueB:*
dtype0
�
angles/strided_slice_2StridedSliceangles/Shape_2angles/strided_slice_2/stackangles/strided_slice_2/stack_1angles/strided_slice_2/stack_2*
Index0*
shrink_axis_mask *
end_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask 
I
angles/concat/values_1Packangles/Prod*
N*
T0*

axis 
<
angles/concat/axisConst*
value	B : *
dtype0
�
angles/concatConcatV2angles/strided_slice_1angles/concat/values_1angles/strided_slice_2angles/concat/axis*
T0*
N*

Tidx0
F
angles/ReshapeReshapemul_1angles/concat*
T0*
Tshape0
M
angles/Reshape_1/shapeConst*
valueB:
���������*
dtype0
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
angles/GatherV2/axisConst*
value	B :*
dtype0
�
angles/GatherV2GatherV2angles/Reshapeangles/Squeezeangles/GatherV2/axis*
Taxis0*
Tparams0*
Tindices0	*

batch_dims 
B
Reshape/shapeConst*
valueB"����   *
dtype0
I
ReshapeReshapeangles/GatherV2Reshape/shape*
Tshape0*
T0
9

dists/maskConst*
dtype0
*
valueB
Z  
4
dists/ShapeShapemul_1*
out_type0*
T0
G
dists/strided_slice/stackConst*
dtype0*
valueB:
I
dists/strided_slice/stack_1Const*
valueB:*
dtype0
I
dists/strided_slice/stack_2Const*
valueB:*
dtype0
�
dists/strided_sliceStridedSlicedists/Shapedists/strided_slice/stackdists/strided_slice/stack_1dists/strided_slice/stack_2*
shrink_axis_mask *
Index0*
ellipsis_mask *
end_mask *
new_axis_mask *
T0*

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
dists/strided_slice_1StridedSlicedists/Shape_1dists/strided_slice_1/stackdists/strided_slice_1/stack_1dists/strided_slice_1/stack_2*
ellipsis_mask *
T0*
new_axis_mask *
Index0*
shrink_axis_mask *
end_mask *

begin_mask
6
dists/Shape_2Shapemul_1*
T0*
out_type0
I
dists/strided_slice_2/stackConst*
dtype0*
valueB:
K
dists/strided_slice_2/stack_1Const*
valueB: *
dtype0
K
dists/strided_slice_2/stack_2Const*
valueB:*
dtype0
�
dists/strided_slice_2StridedSlicedists/Shape_2dists/strided_slice_2/stackdists/strided_slice_2/stack_1dists/strided_slice_2/stack_2*

begin_mask *
shrink_axis_mask *
new_axis_mask *
Index0*
T0*
ellipsis_mask *
end_mask
G
dists/concat/values_1Pack
dists/Prod*
N*
T0*

axis 
;
dists/concat/axisConst*
dtype0*
value	B : 
�
dists/concatConcatV2dists/strided_slice_1dists/concat/values_1dists/strided_slice_2dists/concat/axis*
T0*

Tidx0*
N
D
dists/ReshapeReshapemul_1dists/concat*
T0*
Tshape0
L
dists/Reshape_1/shapeConst*
valueB:
���������*
dtype0
T
dists/Reshape_1Reshape
dists/maskdists/Reshape_1/shape*
T0
*
Tshape0
.
dists/WhereWheredists/Reshape_1*
T0

E
dists/SqueezeSqueezedists/Where*
T0	*
squeeze_dims

=
dists/GatherV2/axisConst*
dtype0*
value	B :
�
dists/GatherV2GatherV2dists/Reshapedists/Squeezedists/GatherV2/axis*
Tparams0*
Taxis0*
Tindices0	*

batch_dims 
D
Reshape_1/shapeConst*
dtype0*
valueB"����    
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
concatConcatV2CosSin	Reshape_1concat/axis*

Tidx0*
N*
T0
�
layer_0/matrixConst*�
value�B�"�id�=s�1��!���:�����h�>��z�>EF��"�	>c�#��-���>!��=��5��'f>�l�>;O�xXU>�,�=C`�=���-�s�u6�=�?x���'��>��¾1"P��T\���U�U�׽��)>�"��d^��Ag>w�ݽ:�=�] �=->K�?��.�>�����q= ��$�H�pԼ�Խz|����=�+��=�?�XiC=���<�$��"�<YCZ=�Q-���=ɶ
��ʾ�þU̼ڒ�-׽"G>řz�S�>�A�>Ө�>v�V>"p�w��7r�=�7�>O6��ƕ�P��=̴{���P�*
dtype0
[
layer_0/matrix/readIdentitylayer_0/matrix*
T0*!
_class
loc:@layer_0/matrix
�
layer_0/biasConst*e
value\BZ"P��`���[�f�S?�N��GE?�ѣ?��S���?O?��ѿ�h>gT�?�Bƾ�����@�-ؿ�`�����o�*
dtype0
U
layer_0/bias/readIdentitylayer_0/bias*
_class
loc:@layer_0/bias*
T0
d
layer_0/MatMulMatMulconcatlayer_0/matrix/read*
T0*
transpose_a( *
transpose_b( 
@
layer_0/addAddV2layer_0/MatMullayer_0/bias/read*
T0
"
TanhTanhlayer_0/add*
T0
:
dropout/ConstConst*
dtype0*
valueB
 *  �?
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
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
seed2 *

seed *
dtype0*
T0
b
dropout/GreaterEqualGreaterEqual$dropout/random_uniform/RandomUniformdrop_out_rate*
T0
R
dropout/CastCastdropout/GreaterEqual*
Truncate( *

SrcT0
*

DstT0
:
dropout/MulMuldropout/RealDivdropout/Cast*
T0
�
layer_1/matrixConst*�
value�B�"����=�C�=)���3��>��ɽ�n~�k��<b(����=��n�ܽ	Ζ�Ze{������>=�}� ���EU�:G��d>fg>��_>��ݽ2E�<�1ؽ��:��
��uy���LH>-
&>:�=��u��>��־�#T=Ϻ:��44���>�r=j�=2m��7A;P�˽-v��F�=lQX��Ϯ<c0K>���<2��[>�/�>�G=��>i ���6����	��H�=�V��=��<>�޾�ԭ��|���b���,>�9ݽ�)R>�5=Bp�1=��`��<7��=� >��h�5�d=8���O�>��L>��ü��9I����`���">3}W�������$R	>�P�=�H�==5���3��I��=�ة���v��t;�DL>'�>Աd=�蝽��=�I���J�.�=sֽ���c��6�ս�ט�=�L<IOƽߙA�U�ͼ�7�=W��=�>#�>��I>�L��Exx�/�a>2d��خ�TV�-y8>��=���9�<�O����=LX˾d��>�;>�W�<a�`=���=�~����<�>�	��~��<<_f���.>�h==��=���=�c=�
���>�?�=D��)�����<P�>ݷ��A[�>'B۾̅9�/ڭ�7ɵ=7*���(N�m={=?�=0[���Oܺ�:R��봽��N�)�=_;��d;>�:l�n�Q>� �=d>��F>��r����=�O�f.�=��������0J>5w�=�k�̡6>�Ij>�V>cϦ>�D	�����P�<�jֽZf��>te��:�[��48�=��=�F�<�gJ����V��:	��=������=0�>��=���?_��$�<C�$< �<���|^�=��W=�7���><>T'��AV>�(����zɯ�$�>�w�n�(>k*+��l�>.�(�1��>3��s��ͣ4�Pg���L��+>�� >jFF=���(f;�{�,=Z�I>���>��=�h���>�ڱ<��6�[�t�xs軶l)>��=q,?��n>g�0��.>�=x��۠�駚=�í=�x��6�N�����ّ;/]=�h%>� ���Sc�)��5%�>��>�&��=����k�>8Թ=�P�=m�o[�=;�=���>0�tZD��D?O�G���,>�,!�hч�"�=r���3�=⊴>J�>fI<��`=~�>�I"��@R<�2ռ+e�N�_�=�~���=���=a����=>"�&>�ڞ<�����c1�h�ԽTG�Ѱ>O����n��������=$���ց�in��B=qRD��'P>C巾惽%�|W{>!7=��;�8S9>�kϽ��1�~퇼���;��g��,N=�t�{�!�=`%ͽc���1�-<�<\>���<�I�=�wE=zʽX�>�3<��2��V3>t��=�����Y>��Z=4t8>�u��w�;$���Gx=�ŽU{f=�>�-�=� �� ����=E���6]�=���:;��=F!F��"ؾ�e>�㊽	eԾ;k��Zpi�S���Q�>��>��e^;�6�;��<���������`��!��
J0��i����=�,��Rz���,�)o>*
dtype0
[
layer_1/matrix/readIdentitylayer_1/matrix*!
_class
loc:@layer_1/matrix*
T0
�
layer_1/biasConst*
dtype0*e
value\BZ"Pj�����?�~��G8A����>'�t�����><�?�*�?��k��?�>�P�>z"?)~?%9����,Da�����#�?
U
layer_1/bias/readIdentitylayer_1/bias*
_class
loc:@layer_1/bias*
T0
i
layer_1/MatMulMatMuldropout/Mullayer_1/matrix/read*
transpose_a( *
transpose_b( *
T0
@
layer_1/addAddV2layer_1/MatMullayer_1/bias/read*
T0
�
layer_1/timestepConst*
dtype0*e
value\BZ"P��>,��=�R>>��!=�=�,>��=Y�>�K(>x	>m>�>_T=��8>�*�=(�	>� >��	>Qe
>
a
layer_1/timestep/readIdentitylayer_1/timestep*
T0*#
_class
loc:@layer_1/timestep
$
Tanh_1Tanhlayer_1/add*
T0
4
mul_2MulTanh_1layer_1/timestep/read*
T0
<
dropout_1/ConstConst*
dtype0*
valueB
 *  �?
=
dropout_1/SubSubdropout_1/Constdrop_out_rate*
T0
;
dropout_1/RealDivRealDivmul_2dropout_1/Sub*
T0
8
dropout_1/ShapeShapemul_2*
T0*
out_type0
w
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape*
seed2 *
T0*
dtype0*

seed 
f
dropout_1/GreaterEqualGreaterEqual&dropout_1/random_uniform/RandomUniformdrop_out_rate*
T0
V
dropout_1/CastCastdropout_1/GreaterEqual*
Truncate( *

DstT0*

SrcT0

@
dropout_1/MulMuldropout_1/RealDivdropout_1/Cast*
T0
1
addAddV2dropout/Muldropout_1/Mul*
T0
�
energy/matrixConst*
dtype0*i
value`B^"P��>x�]>rA�<ZY+����=�۰=���>Y���XR>3<����������>�B���kd�w#�=a��~��=���<$q�>
X
energy/matrix/readIdentityenergy/matrix*
T0* 
_class
loc:@energy/matrix
_
energy/MatMulMatMuladdenergy/matrix/read*
T0*
transpose_a( *
transpose_b( 
,
o_energyIdentityenergy/MatMul*
T0
;
gradients/ShapeShapeo_energy*
out_type0*
T0
F
gradients/grad_ys_0/ConstConst*
valueB
 *  �?*
dtype0
b
gradients/grad_ys_0Fillgradients/Shapegradients/grad_ys_0/Const*

index_type0*
T0
�
#gradients/energy/MatMul_grad/MatMulMatMulgradients/grad_ys_0energy/matrix/read*
T0*
transpose_b(*
transpose_a( 
G
gradients/add_grad/ShapeShapedropout/Mul*
T0*
out_type0
K
gradients/add_grad/Shape_1Shapedropout_1/Mul*
out_type0*
T0
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0
�
gradients/add_grad/SumSum#gradients/energy/MatMul_grad/MatMul(gradients/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( 
n
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
Tshape0*
T0
�
gradients/add_grad/Sum_1Sum#gradients/energy/MatMul_grad/MatMul*gradients/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( 
t
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
Tshape0*
T0
W
"gradients/dropout_1/Mul_grad/ShapeShapedropout_1/RealDiv*
T0*
out_type0
V
$gradients/dropout_1/Mul_grad/Shape_1Shapedropout_1/Cast*
T0*
out_type0
�
2gradients/dropout_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_1/Mul_grad/Shape$gradients/dropout_1/Mul_grad/Shape_1*
T0
^
 gradients/dropout_1/Mul_grad/MulMulgradients/add_grad/Reshape_1dropout_1/Cast*
T0
�
 gradients/dropout_1/Mul_grad/SumSum gradients/dropout_1/Mul_grad/Mul2gradients/dropout_1/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
$gradients/dropout_1/Mul_grad/ReshapeReshape gradients/dropout_1/Mul_grad/Sum"gradients/dropout_1/Mul_grad/Shape*
T0*
Tshape0
O
&gradients/dropout_1/RealDiv_grad/ShapeShapemul_2*
T0*
out_type0
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
$gradients/dropout_1/RealDiv_grad/SumSum(gradients/dropout_1/RealDiv_grad/RealDiv6gradients/dropout_1/RealDiv_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
(gradients/dropout_1/RealDiv_grad/ReshapeReshape$gradients/dropout_1/RealDiv_grad/Sum&gradients/dropout_1/RealDiv_grad/Shape*
T0*
Tshape0
D
gradients/mul_2_grad/ShapeShapeTanh_1*
T0*
out_type0
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
gradients/mul_2_grad/SumSumgradients/mul_2_grad/Mul*gradients/mul_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
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
"gradients/layer_1/add_grad/Shape_1Shapelayer_1/bias/read*
out_type0*
T0
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
$gradients/layer_1/MatMul_grad/MatMulMatMul"gradients/layer_1/add_grad/Reshapelayer_1/matrix/read*
transpose_b(*
T0*
transpose_a( 
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
gradients/dropout/Mul_grad/SumSumgradients/dropout/Mul_grad/Mul0gradients/dropout/Mul_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
�
"gradients/dropout/Mul_grad/ReshapeReshapegradients/dropout/Mul_grad/Sum gradients/dropout/Mul_grad/Shape*
Tshape0*
T0
L
$gradients/dropout/RealDiv_grad/ShapeShapeTanh*
T0*
out_type0
U
&gradients/dropout/RealDiv_grad/Shape_1Shapedropout/Sub*
T0*
out_type0
�
4gradients/dropout/RealDiv_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/dropout/RealDiv_grad/Shape&gradients/dropout/RealDiv_grad/Shape_1*
T0
k
&gradients/dropout/RealDiv_grad/RealDivRealDiv"gradients/dropout/Mul_grad/Reshapedropout/Sub*
T0
�
"gradients/dropout/RealDiv_grad/SumSum&gradients/dropout/RealDiv_grad/RealDiv4gradients/dropout/RealDiv_grad/BroadcastGradientArgs*

Tidx0*
T0*
	keep_dims( 
�
&gradients/dropout/RealDiv_grad/ReshapeReshape"gradients/dropout/RealDiv_grad/Sum$gradients/dropout/RealDiv_grad/Shape*
T0*
Tshape0
_
gradients/Tanh_grad/TanhGradTanhGradTanh&gradients/dropout/RealDiv_grad/Reshape*
T0
R
 gradients/layer_0/add_grad/ShapeShapelayer_0/MatMul*
T0*
out_type0
W
"gradients/layer_0/add_grad/Shape_1Shapelayer_0/bias/read*
out_type0*
T0
�
0gradients/layer_0/add_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/layer_0/add_grad/Shape"gradients/layer_0/add_grad/Shape_1*
T0
�
gradients/layer_0/add_grad/SumSumgradients/Tanh_grad/TanhGrad0gradients/layer_0/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
�
"gradients/layer_0/add_grad/ReshapeReshapegradients/layer_0/add_grad/Sum gradients/layer_0/add_grad/Shape*
T0*
Tshape0
�
$gradients/layer_0/MatMul_grad/MatMulMatMul"gradients/layer_0/add_grad/Reshapelayer_0/matrix/read*
transpose_a( *
transpose_b(*
T0
D
gradients/concat_grad/RankConst*
value	B :*
dtype0
W
gradients/concat_grad/modFloorModconcat/axisgradients/concat_grad/Rank*
T0
]
gradients/concat_grad/ShapeNShapeNCosSin	Reshape_1*
T0*
out_type0*
N
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
gradients/Reshape_1_grad/ShapeShapedists/GatherV2*
T0*
out_type0
�
 gradients/Reshape_1_grad/ReshapeReshapegradients/concat_grad/Slice_2gradients/Reshape_1_grad/Shape*
Tshape0*
T0
�
gradients/AddN_1AddNgradients/Cos_grad/mulgradients/Sin_grad/mul*
N*)
_class
loc:@gradients/Cos_grad/mul*
T0
O
gradients/Reshape_grad/ShapeShapeangles/GatherV2*
T0*
out_type0
p
gradients/Reshape_grad/ReshapeReshapegradients/AddN_1gradients/Reshape_grad/Shape*
Tshape0*
T0
v
#gradients/dists/GatherV2_grad/ShapeShapedists/Reshape*
out_type0	* 
_class
loc:@dists/Reshape*
T0
�
"gradients/dists/GatherV2_grad/CastCast#gradients/dists/GatherV2_grad/Shape*

DstT0*

SrcT0	*
Truncate( * 
_class
loc:@dists/Reshape
_
1gradients/dists/GatherV2_grad/strided_slice/stackConst*
valueB: *
dtype0
n
3gradients/dists/GatherV2_grad/strided_slice/stack_1Packdists/GatherV2/axis*

axis *
N*
T0
a
3gradients/dists/GatherV2_grad/strided_slice/stack_2Const*
dtype0*
valueB:
�
+gradients/dists/GatherV2_grad/strided_sliceStridedSlice"gradients/dists/GatherV2_grad/Cast1gradients/dists/GatherV2_grad/strided_slice/stack3gradients/dists/GatherV2_grad/strided_slice/stack_13gradients/dists/GatherV2_grad/strided_slice/stack_2*
shrink_axis_mask *
end_mask *
new_axis_mask *

begin_mask*
T0*
ellipsis_mask *
Index0
n
3gradients/dists/GatherV2_grad/strided_slice_1/stackPackdists/GatherV2/axis*
N*
T0*

axis 
c
5gradients/dists/GatherV2_grad/strided_slice_1/stack_1Const*
dtype0*
valueB: 
c
5gradients/dists/GatherV2_grad/strided_slice_1/stack_2Const*
dtype0*
valueB:
�
-gradients/dists/GatherV2_grad/strided_slice_1StridedSlice"gradients/dists/GatherV2_grad/Cast3gradients/dists/GatherV2_grad/strided_slice_1/stack5gradients/dists/GatherV2_grad/strided_slice_1/stack_15gradients/dists/GatherV2_grad/strided_slice_1/stack_2*

begin_mask *
ellipsis_mask *
shrink_axis_mask *
Index0*
new_axis_mask *
end_mask*
T0
a
3gradients/dists/GatherV2_grad/strided_slice_2/stackConst*
valueB:*
dtype0
c
5gradients/dists/GatherV2_grad/strided_slice_2/stack_1Const*
valueB: *
dtype0
c
5gradients/dists/GatherV2_grad/strided_slice_2/stack_2Const*
valueB:*
dtype0
�
-gradients/dists/GatherV2_grad/strided_slice_2StridedSlice-gradients/dists/GatherV2_grad/strided_slice_13gradients/dists/GatherV2_grad/strided_slice_2/stack5gradients/dists/GatherV2_grad/strided_slice_2/stack_15gradients/dists/GatherV2_grad/strided_slice_2/stack_2*
T0*
end_mask*

begin_mask *
ellipsis_mask *
shrink_axis_mask *
Index0*
new_axis_mask 
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
$gradients/dists/GatherV2_grad/concatConcatV2+gradients/dists/GatherV2_grad/strided_slice-gradients/dists/GatherV2_grad/concat/values_1-gradients/dists/GatherV2_grad/strided_slice_2)gradients/dists/GatherV2_grad/concat/axis*

Tidx0*
N*
T0
N
$gradients/dists/GatherV2_grad/Size_1Const*
value	B :*
dtype0
N
$gradients/dists/GatherV2_grad/Size_2Const*
value	B :*
dtype0
S
)gradients/dists/GatherV2_grad/range/startConst*
dtype0*
value	B : 
S
)gradients/dists/GatherV2_grad/range/limitConst*
value	B : *
dtype0
S
)gradients/dists/GatherV2_grad/range/deltaConst*
value	B :*
dtype0
�
#gradients/dists/GatherV2_grad/rangeRange)gradients/dists/GatherV2_grad/range/start)gradients/dists/GatherV2_grad/range/limit)gradients/dists/GatherV2_grad/range/delta*

Tidx0
U
+gradients/dists/GatherV2_grad/range_1/startConst*
dtype0*
value	B : 
U
+gradients/dists/GatherV2_grad/range_1/deltaConst*
dtype0*
value	B :
�
%gradients/dists/GatherV2_grad/range_1Range+gradients/dists/GatherV2_grad/range_1/start$gradients/dists/GatherV2_grad/Size_2+gradients/dists/GatherV2_grad/range_1/delta*

Tidx0
M
#gradients/dists/GatherV2_grad/add/yConst*
dtype0*
value	B :
~
!gradients/dists/GatherV2_grad/addAddV2$gradients/dists/GatherV2_grad/Size_2#gradients/dists/GatherV2_grad/add/y*
T0
U
+gradients/dists/GatherV2_grad/range_2/deltaConst*
value	B :*
dtype0
�
%gradients/dists/GatherV2_grad/range_2Range!gradients/dists/GatherV2_grad/add$gradients/dists/GatherV2_grad/Size_1+gradients/dists/GatherV2_grad/range_2/delta*

Tidx0
�
%gradients/dists/GatherV2_grad/ReshapeReshape gradients/Reshape_1_grad/Reshape$gradients/dists/GatherV2_grad/concat*
T0*
Tshape0
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
T0*

Tidx0*
N
�
'gradients/dists/GatherV2_grad/transpose	Transpose%gradients/dists/GatherV2_grad/Reshape&gradients/dists/GatherV2_grad/concat_1*
Tperm0*
T0
O
%gradients/dists/GatherV2_grad/add_1/yConst*
dtype0*
value	B :
q
#gradients/dists/GatherV2_grad/add_1AddV2dists/GatherV2/axis%gradients/dists/GatherV2_grad/add_1/y*
T0
n
3gradients/dists/GatherV2_grad/strided_slice_3/stackPackdists/GatherV2/axis*
N*
T0*

axis 
�
5gradients/dists/GatherV2_grad/strided_slice_3/stack_1Pack#gradients/dists/GatherV2_grad/add_1*
T0*
N*

axis 
c
5gradients/dists/GatherV2_grad/strided_slice_3/stack_2Const*
dtype0*
valueB:
�
-gradients/dists/GatherV2_grad/strided_slice_3StridedSlice"gradients/dists/GatherV2_grad/Cast3gradients/dists/GatherV2_grad/strided_slice_3/stack5gradients/dists/GatherV2_grad/strided_slice_3/stack_15gradients/dists/GatherV2_grad/strided_slice_3/stack_2*
T0*
end_mask *
new_axis_mask *
shrink_axis_mask*
Index0*
ellipsis_mask *

begin_mask 
T
$gradients/dists/GatherV2_grad/Size_3Sizedists/Squeeze*
T0	*
out_type0
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
0gradients/dists/GatherV2_grad/UnsortedSegmentSumUnsortedSegmentSum'gradients/dists/GatherV2_grad/transpose'gradients/dists/GatherV2_grad/Reshape_1-gradients/dists/GatherV2_grad/strided_slice_3*
Tindices0	*
T0*
Tnumsegments0
O
%gradients/dists/GatherV2_grad/add_2/yConst*
value	B :*
dtype0
�
#gradients/dists/GatherV2_grad/add_2AddV2%gradients/dists/GatherV2_grad/range_1%gradients/dists/GatherV2_grad/add_2/y*
T0
]
/gradients/dists/GatherV2_grad/concat_2/values_2Const*
dtype0*
valueB: 
U
+gradients/dists/GatherV2_grad/concat_2/axisConst*
value	B : *
dtype0
�
&gradients/dists/GatherV2_grad/concat_2ConcatV2#gradients/dists/GatherV2_grad/range#gradients/dists/GatherV2_grad/add_2/gradients/dists/GatherV2_grad/concat_2/values_2%gradients/dists/GatherV2_grad/range_2+gradients/dists/GatherV2_grad/concat_2/axis*

Tidx0*
N*
T0
�
)gradients/dists/GatherV2_grad/transpose_1	Transpose0gradients/dists/GatherV2_grad/UnsortedSegmentSum&gradients/dists/GatherV2_grad/concat_2*
T0*
Tperm0
y
$gradients/angles/GatherV2_grad/ShapeShapeangles/Reshape*!
_class
loc:@angles/Reshape*
T0*
out_type0	
�
#gradients/angles/GatherV2_grad/CastCast$gradients/angles/GatherV2_grad/Shape*!
_class
loc:@angles/Reshape*

DstT0*

SrcT0	*
Truncate( 
`
2gradients/angles/GatherV2_grad/strided_slice/stackConst*
dtype0*
valueB: 
p
4gradients/angles/GatherV2_grad/strided_slice/stack_1Packangles/GatherV2/axis*
N*

axis *
T0
b
4gradients/angles/GatherV2_grad/strided_slice/stack_2Const*
dtype0*
valueB:
�
,gradients/angles/GatherV2_grad/strided_sliceStridedSlice#gradients/angles/GatherV2_grad/Cast2gradients/angles/GatherV2_grad/strided_slice/stack4gradients/angles/GatherV2_grad/strided_slice/stack_14gradients/angles/GatherV2_grad/strided_slice/stack_2*
new_axis_mask *
shrink_axis_mask *
end_mask *

begin_mask*
T0*
Index0*
ellipsis_mask 
p
4gradients/angles/GatherV2_grad/strided_slice_1/stackPackangles/GatherV2/axis*
N*

axis *
T0
d
6gradients/angles/GatherV2_grad/strided_slice_1/stack_1Const*
dtype0*
valueB: 
d
6gradients/angles/GatherV2_grad/strided_slice_1/stack_2Const*
dtype0*
valueB:
�
.gradients/angles/GatherV2_grad/strided_slice_1StridedSlice#gradients/angles/GatherV2_grad/Cast4gradients/angles/GatherV2_grad/strided_slice_1/stack6gradients/angles/GatherV2_grad/strided_slice_1/stack_16gradients/angles/GatherV2_grad/strided_slice_1/stack_2*
end_mask*
shrink_axis_mask *
new_axis_mask *
ellipsis_mask *
T0*
Index0*

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
6gradients/angles/GatherV2_grad/strided_slice_2/stack_2Const*
valueB:*
dtype0
�
.gradients/angles/GatherV2_grad/strided_slice_2StridedSlice.gradients/angles/GatherV2_grad/strided_slice_14gradients/angles/GatherV2_grad/strided_slice_2/stack6gradients/angles/GatherV2_grad/strided_slice_2/stack_16gradients/angles/GatherV2_grad/strided_slice_2/stack_2*
T0*
end_mask*
Index0*

begin_mask *
new_axis_mask *
ellipsis_mask *
shrink_axis_mask 
e
.gradients/angles/GatherV2_grad/concat/values_1Const*
dtype0*
valueB:
���������
T
*gradients/angles/GatherV2_grad/concat/axisConst*
value	B : *
dtype0
�
%gradients/angles/GatherV2_grad/concatConcatV2,gradients/angles/GatherV2_grad/strided_slice.gradients/angles/GatherV2_grad/concat/values_1.gradients/angles/GatherV2_grad/strided_slice_2*gradients/angles/GatherV2_grad/concat/axis*

Tidx0*
T0*
N
O
%gradients/angles/GatherV2_grad/Size_1Const*
value	B :*
dtype0
O
%gradients/angles/GatherV2_grad/Size_2Const*
dtype0*
value	B :
T
*gradients/angles/GatherV2_grad/range/startConst*
dtype0*
value	B : 
T
*gradients/angles/GatherV2_grad/range/limitConst*
value	B : *
dtype0
T
*gradients/angles/GatherV2_grad/range/deltaConst*
dtype0*
value	B :
�
$gradients/angles/GatherV2_grad/rangeRange*gradients/angles/GatherV2_grad/range/start*gradients/angles/GatherV2_grad/range/limit*gradients/angles/GatherV2_grad/range/delta*

Tidx0
V
,gradients/angles/GatherV2_grad/range_1/startConst*
dtype0*
value	B : 
V
,gradients/angles/GatherV2_grad/range_1/deltaConst*
value	B :*
dtype0
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
,gradients/angles/GatherV2_grad/range_2/deltaConst*
dtype0*
value	B :
�
&gradients/angles/GatherV2_grad/range_2Range"gradients/angles/GatherV2_grad/add%gradients/angles/GatherV2_grad/Size_1,gradients/angles/GatherV2_grad/range_2/delta*

Tidx0
�
&gradients/angles/GatherV2_grad/ReshapeReshapegradients/Reshape_grad/Reshape%gradients/angles/GatherV2_grad/concat*
T0*
Tshape0
}
0gradients/angles/GatherV2_grad/concat_1/values_1Pack%gradients/angles/GatherV2_grad/Size_2*
T0*

axis *
N
V
,gradients/angles/GatherV2_grad/concat_1/axisConst*
dtype0*
value	B : 
�
'gradients/angles/GatherV2_grad/concat_1ConcatV2$gradients/angles/GatherV2_grad/range0gradients/angles/GatherV2_grad/concat_1/values_1&gradients/angles/GatherV2_grad/range_1&gradients/angles/GatherV2_grad/range_2,gradients/angles/GatherV2_grad/concat_1/axis*
T0*
N*

Tidx0
�
(gradients/angles/GatherV2_grad/transpose	Transpose&gradients/angles/GatherV2_grad/Reshape'gradients/angles/GatherV2_grad/concat_1*
T0*
Tperm0
P
&gradients/angles/GatherV2_grad/add_1/yConst*
dtype0*
value	B :
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
.gradients/angles/GatherV2_grad/strided_slice_3StridedSlice#gradients/angles/GatherV2_grad/Cast4gradients/angles/GatherV2_grad/strided_slice_3/stack6gradients/angles/GatherV2_grad/strided_slice_3/stack_16gradients/angles/GatherV2_grad/strided_slice_3/stack_2*
end_mask *
ellipsis_mask *
shrink_axis_mask*
Index0*

begin_mask *
T0*
new_axis_mask 
V
%gradients/angles/GatherV2_grad/Size_3Sizeangles/Squeeze*
T0	*
out_type0
Y
/gradients/angles/GatherV2_grad/ExpandDims_1/dimConst*
dtype0*
value	B : 
�
+gradients/angles/GatherV2_grad/ExpandDims_1
ExpandDims%gradients/angles/GatherV2_grad/Size_3/gradients/angles/GatherV2_grad/ExpandDims_1/dim*
T0*

Tdim0
�
(gradients/angles/GatherV2_grad/Reshape_1Reshapeangles/Squeeze+gradients/angles/GatherV2_grad/ExpandDims_1*
T0	*
Tshape0
�
1gradients/angles/GatherV2_grad/UnsortedSegmentSumUnsortedSegmentSum(gradients/angles/GatherV2_grad/transpose(gradients/angles/GatherV2_grad/Reshape_1.gradients/angles/GatherV2_grad/strided_slice_3*
Tnumsegments0*
T0*
Tindices0	
P
&gradients/angles/GatherV2_grad/add_2/yConst*
value	B :*
dtype0
�
$gradients/angles/GatherV2_grad/add_2AddV2&gradients/angles/GatherV2_grad/range_1&gradients/angles/GatherV2_grad/add_2/y*
T0
^
0gradients/angles/GatherV2_grad/concat_2/values_2Const*
dtype0*
valueB: 
V
,gradients/angles/GatherV2_grad/concat_2/axisConst*
dtype0*
value	B : 
�
'gradients/angles/GatherV2_grad/concat_2ConcatV2$gradients/angles/GatherV2_grad/range$gradients/angles/GatherV2_grad/add_20gradients/angles/GatherV2_grad/concat_2/values_2&gradients/angles/GatherV2_grad/range_2,gradients/angles/GatherV2_grad/concat_2/axis*
T0*
N*

Tidx0
�
*gradients/angles/GatherV2_grad/transpose_1	Transpose1gradients/angles/GatherV2_grad/UnsortedSegmentSum'gradients/angles/GatherV2_grad/concat_2*
T0*
Tperm0
K
"gradients/dists/Reshape_grad/ShapeShapemul_1*
T0*
out_type0
�
$gradients/dists/Reshape_grad/ReshapeReshape)gradients/dists/GatherV2_grad/transpose_1"gradients/dists/Reshape_grad/Shape*
T0*
Tshape0
L
#gradients/angles/Reshape_grad/ShapeShapemul_1*
T0*
out_type0
�
%gradients/angles/Reshape_grad/ReshapeReshape*gradients/angles/GatherV2_grad/transpose_1#gradients/angles/Reshape_grad/Shape*
Tshape0*
T0
�
gradients/AddN_2AddN$gradients/dists/Reshape_grad/Reshape%gradients/angles/Reshape_grad/Reshape*7
_class-
+)loc:@gradients/dists/Reshape_grad/Reshape*
N*
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