щМ
С
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68д

embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	/(*'
shared_nameembedding_2/embeddings

*embedding_2/embeddings/Read/ReadVariableOpReadVariableOpembedding_2/embeddings*
_output_shapes
:	/(*
dtype0

embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	њ(*'
shared_nameembedding_3/embeddings

*embedding_3/embeddings/Read/ReadVariableOpReadVariableOpembedding_3/embeddings*
_output_shapes
:	њ(*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:(*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:(*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:
*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:
*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:
*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:
*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:
(*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:(*
dtype0
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:
(*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:(*
dtype0
~
prediction/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_nameprediction/kernel
w
%prediction/kernel/Read/ReadVariableOpReadVariableOpprediction/kernel*
_output_shapes

:*
dtype0
v
prediction/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameprediction/bias
o
#prediction/bias/Read/ReadVariableOpReadVariableOpprediction/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

Adam/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	/(*.
shared_nameAdam/embedding_2/embeddings/m

1Adam/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_2/embeddings/m*
_output_shapes
:	/(*
dtype0

Adam/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	њ(*.
shared_nameAdam/embedding_3/embeddings/m

1Adam/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_3/embeddings/m*
_output_shapes
:	њ(*
dtype0

Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes

:(*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:*
dtype0

Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:(*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:*
dtype0

Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_10/kernel/m

*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes

:
*
dtype0

Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:
*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*'
shared_nameAdam/dense_11/kernel/m

*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

:
(*
dtype0

Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:(*
dtype0

Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes

:
(*
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
:(*
dtype0

Adam/prediction/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameAdam/prediction/kernel/m

,Adam/prediction/kernel/m/Read/ReadVariableOpReadVariableOpAdam/prediction/kernel/m*
_output_shapes

:*
dtype0

Adam/prediction/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/prediction/bias/m
}
*Adam/prediction/bias/m/Read/ReadVariableOpReadVariableOpAdam/prediction/bias/m*
_output_shapes
:*
dtype0

Adam/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	/(*.
shared_nameAdam/embedding_2/embeddings/v

1Adam/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_2/embeddings/v*
_output_shapes
:	/(*
dtype0

Adam/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	њ(*.
shared_nameAdam/embedding_3/embeddings/v

1Adam/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_3/embeddings/v*
_output_shapes
:	њ(*
dtype0

Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes

:(*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:*
dtype0

Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:(*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:*
dtype0

Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_10/kernel/v

*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

:
*
dtype0

Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:
*
dtype0

Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:
*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:
*
dtype0

Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*'
shared_nameAdam/dense_11/kernel/v

*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

:
(*
dtype0

Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:(*
dtype0

Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes

:
(*
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
:(*
dtype0

Adam/prediction/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameAdam/prediction/kernel/v

,Adam/prediction/kernel/v/Read/ReadVariableOpReadVariableOpAdam/prediction/kernel/v*
_output_shapes

:*
dtype0

Adam/prediction/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/prediction/bias/v
}
*Adam/prediction/bias/v/Read/ReadVariableOpReadVariableOpAdam/prediction/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
q
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*еp
valueЫpBШp BСp
№
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*

_init_input_shape* 

_init_input_shape* 
 

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses*
 
!
embeddings
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses*

(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 

.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
І

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses*
І

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses*
І

Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses*
І

Lkernel
Mbias
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses*
І

Tkernel
Ubias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses*
І

\kernel
]bias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses*

d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses* 
І

jkernel
kbias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses*

riter

sbeta_1

tbeta_2
	udecay
vlearning_ratemР!mС4mТ5mУ<mФ=mХDmЦEmЧLmШMmЩTmЪUmЫ\mЬ]mЭjmЮkmЯvа!vб4vв5vг<vд=vеDvжEvзLvиMvйTvкUvл\vм]vнjvоkvп*
z
0
!1
42
53
<4
=5
D6
E7
L8
M9
T10
U11
\12
]13
j14
k15*
z
0
!1
42
53
<4
=5
D6
E7
L8
M9
T10
U11
\12
]13
j14
k15*

w0
x1* 
А
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

~serving_default* 
* 
* 
jd
VARIABLE_VALUEembedding_2/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
	
w0* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
* 
* 
jd
VARIABLE_VALUEembedding_3/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

!0*

!0*
	
x0* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 
* 
* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

40
51*

40
51*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

<0
=1*

<0
=1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

D0
E1*

D0
E1*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

L0
M1*

L0
M1*
* 

Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_11/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

T0
U1*

T0
U1*
* 

Їnon_trainable_variables
Јlayers
Љmetrics
 Њlayer_regularization_losses
Ћlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

\0
]1*

\0
]1*
* 

Ќnon_trainable_variables
­layers
Ўmetrics
 Џlayer_regularization_losses
Аlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEprediction/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEprediction/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

j0
k1*

j0
k1*
* 

Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
j
0
1
2
3
4
5
6
7
	8

9
10
11
12
13*

Л0*
* 
* 
* 
* 
* 
* 
	
w0* 
* 
* 
* 
* 
	
x0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

Мtotal

Нcount
О	variables
П	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

М0
Н1*

О	variables*

VARIABLE_VALUEAdam/embedding_2/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/embedding_3/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/prediction/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/prediction/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/embedding_2/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/embedding_3/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/prediction/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/prediction/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
serving_default_movie_inputPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
}
serving_default_user_inputPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

StatefulPartitionedCallStatefulPartitionedCallserving_default_movie_inputserving_default_user_inputembedding_3/embeddingsembedding_2/embeddingsdense_6/kerneldense_6/biasdense_9/kerneldense_9/biasdense_7/kerneldense_7/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/biasdense_8/kerneldense_8/biasprediction/kernelprediction/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_8606566
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
і
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_2/embeddings/Read/ReadVariableOp*embedding_3/embeddings/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp%prediction/kernel/Read/ReadVariableOp#prediction/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp1Adam/embedding_2/embeddings/m/Read/ReadVariableOp1Adam/embedding_3/embeddings/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp,Adam/prediction/kernel/m/Read/ReadVariableOp*Adam/prediction/bias/m/Read/ReadVariableOp1Adam/embedding_2/embeddings/v/Read/ReadVariableOp1Adam/embedding_3/embeddings/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp,Adam/prediction/kernel/v/Read/ReadVariableOp*Adam/prediction/bias/v/Read/ReadVariableOpConst*D
Tin=
;29	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_8607015
Ѕ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_2/embeddingsembedding_3/embeddingsdense_9/kerneldense_9/biasdense_6/kerneldense_6/biasdense_10/kerneldense_10/biasdense_7/kerneldense_7/biasdense_11/kerneldense_11/biasdense_8/kerneldense_8/biasprediction/kernelprediction/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/embedding_2/embeddings/mAdam/embedding_3/embeddings/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_10/kernel/mAdam/dense_10/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/dense_11/kernel/mAdam/dense_11/bias/mAdam/dense_8/kernel/mAdam/dense_8/bias/mAdam/prediction/kernel/mAdam/prediction/bias/mAdam/embedding_2/embeddings/vAdam/embedding_3/embeddings/vAdam/dense_9/kernel/vAdam/dense_9/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_10/kernel/vAdam/dense_10/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/vAdam/dense_11/kernel/vAdam/dense_11/bias/vAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/prediction/kernel/vAdam/prediction/bias/v*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_8607190Ка



ѕ
D__inference_dense_9_layer_call_and_return_conditional_losses_8605699

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs


ѕ
D__inference_dense_8_layer_call_and_return_conditional_losses_8605767

inputs0
matmul_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ(w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
КI
Ю
D__inference_model_1_layer_call_and_return_conditional_losses_8606059

inputs
inputs_1&
embedding_3_8606002:	њ(&
embedding_2_8606005:	/(!
dense_6_8606010:(
dense_6_8606012:!
dense_9_8606015:(
dense_9_8606017:!
dense_7_8606020:

dense_7_8606022:
"
dense_10_8606025:

dense_10_8606027:
"
dense_11_8606030:
(
dense_11_8606032:(!
dense_8_8606035:
(
dense_8_8606037:($
prediction_8606041: 
prediction_8606043:
identityЂ dense_10/StatefulPartitionedCallЂ dense_11/StatefulPartitionedCallЂdense_6/StatefulPartitionedCallЂdense_7/StatefulPartitionedCallЂdense_8/StatefulPartitionedCallЂdense_9/StatefulPartitionedCallЂ#embedding_2/StatefulPartitionedCallЂ8embedding_2/embeddings/Regularizer/Square/ReadVariableOpЂ#embedding_3/StatefulPartitionedCallЂ8embedding_3/embeddings/Regularizer/Square/ReadVariableOpЂ"prediction/StatefulPartitionedCallю
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_3_8606002*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_3_layer_call_and_return_conditional_losses_8605631ь
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2_8606005*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_2_layer_call_and_return_conditional_losses_8605651с
flatten_3/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_8605661с
flatten_2/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_8605669
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_8606010dense_6_8606012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_8605682
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_9_8606015dense_9_8606017*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_8605699
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_8606020dense_7_8606022*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_8605716
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_8606025dense_10_8606027*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_8605733
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_8606030dense_11_8606032*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_8605750
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_8606035dense_8_8606037*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_8605767
dot_1/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dot_1_layer_call_and_return_conditional_losses_8605785
"prediction/StatefulPartitionedCallStatefulPartitionedCalldot_1/PartitionedCall:output:0prediction_8606041prediction_8606043*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_prediction_layer_call_and_return_conditional_losses_8605798
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_8606005*
_output_shapes
:	/(*
dtype0
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	/(y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_3_8606002*
_output_shapes
:	њ(*
dtype0
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	њ(y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity+prediction/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџћ
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp$^embedding_3/StatefulPartitionedCall9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp#^prediction/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2H
"prediction/StatefulPartitionedCall"prediction/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѓ
Ћ
)__inference_model_1_layer_call_fn_8606310
inputs_0
inputs_1
unknown:	њ(
	unknown_0:	/(
	unknown_1:(
	unknown_2:
	unknown_3:(
	unknown_4:
	unknown_5:

	unknown_6:

	unknown_7:

	unknown_8:

	unknown_9:
(

unknown_10:(

unknown_11:
(

unknown_12:(

unknown_13:

unknown_14:
identityЂStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_8605817o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1

Ќ
%__inference_signature_wrapper_8606566
movie_input

user_input
unknown:	њ(
	unknown_0:	/(
	unknown_1:(
	unknown_2:
	unknown_3:(
	unknown_4:
	unknown_5:

	unknown_6:

	unknown_7:

	unknown_8:

	unknown_9:
(

unknown_10:(

unknown_11:
(

unknown_12:(

unknown_13:

unknown_14:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
user_inputmovie_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_8605606o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namemovie_input:SO
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
user_input
Т

)__inference_dense_6_layer_call_fn_8606675

inputs
unknown:(
	unknown_0:
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_8605682o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ(: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs


ј
G__inference_prediction_layer_call_and_return_conditional_losses_8606804

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
фm
э
 __inference__traced_save_8607015
file_prefix5
1savev2_embedding_2_embeddings_read_readvariableop5
1savev2_embedding_3_embeddings_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop0
,savev2_prediction_kernel_read_readvariableop.
*savev2_prediction_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop<
8savev2_adam_embedding_2_embeddings_m_read_readvariableop<
8savev2_adam_embedding_3_embeddings_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop7
3savev2_adam_prediction_kernel_m_read_readvariableop5
1savev2_adam_prediction_bias_m_read_readvariableop<
8savev2_adam_embedding_2_embeddings_v_read_readvariableop<
8savev2_adam_embedding_3_embeddings_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop7
3savev2_adam_prediction_kernel_v_read_readvariableop5
1savev2_adam_prediction_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Щ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*ђ
valueшBх8B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHо
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_2_embeddings_read_readvariableop1savev2_embedding_3_embeddings_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop,savev2_prediction_kernel_read_readvariableop*savev2_prediction_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop8savev2_adam_embedding_2_embeddings_m_read_readvariableop8savev2_adam_embedding_3_embeddings_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop3savev2_adam_prediction_kernel_m_read_readvariableop1savev2_adam_prediction_bias_m_read_readvariableop8savev2_adam_embedding_2_embeddings_v_read_readvariableop8savev2_adam_embedding_3_embeddings_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop3savev2_adam_prediction_kernel_v_read_readvariableop1savev2_adam_prediction_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *F
dtypes<
:28	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Й
_input_shapesЇ
Є: :	/(:	њ(:(::(::
:
:
:
:
(:(:
(:(::: : : : : : : :	/(:	њ(:(::(::
:
:
:
:
(:(:
(:(:::	/(:	њ(:(::(::
:
:
:
:
(:(:
(:(::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	/(:%!

_output_shapes
:	њ(:$ 

_output_shapes

:(: 

_output_shapes
::$ 

_output_shapes

:(: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$	 

_output_shapes

:
: 


_output_shapes
:
:$ 

_output_shapes

:
(: 

_output_shapes
:(:$ 

_output_shapes

:
(: 

_output_shapes
:(:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	/(:%!

_output_shapes
:	њ(:$ 

_output_shapes

:(: 

_output_shapes
::$ 

_output_shapes

:(: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$  

_output_shapes

:
: !

_output_shapes
:
:$" 

_output_shapes

:
(: #

_output_shapes
:(:$$ 

_output_shapes

:
(: %

_output_shapes
:(:$& 

_output_shapes

:: '

_output_shapes
::%(!

_output_shapes
:	/(:%)!

_output_shapes
:	њ(:$* 

_output_shapes

:(: +

_output_shapes
::$, 

_output_shapes

:(: -

_output_shapes
::$. 

_output_shapes

:
: /

_output_shapes
:
:$0 

_output_shapes

:
: 1

_output_shapes
:
:$2 

_output_shapes

:
(: 3

_output_shapes
:(:$4 

_output_shapes

:
(: 5

_output_shapes
:(:$6 

_output_shapes

:: 7

_output_shapes
::8

_output_shapes
: 
Г	
n
B__inference_dot_1_layer_call_and_return_conditional_losses_8606784
inputs_0
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :q

ExpandDims
ExpandDimsinputs_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџ(:џџџџџџџџџ(:Q M
'
_output_shapes
:џџџџџџџџџ(
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ(
"
_user_specified_name
inputs/1
h

D__inference_model_1_layer_call_and_return_conditional_losses_8606437
inputs_0
inputs_17
$embedding_3_embedding_lookup_8606353:	њ(7
$embedding_2_embedding_lookup_8606359:	/(8
&dense_6_matmul_readvariableop_resource:(5
'dense_6_biasadd_readvariableop_resource:8
&dense_9_matmul_readvariableop_resource:(5
'dense_9_biasadd_readvariableop_resource:8
&dense_7_matmul_readvariableop_resource:
5
'dense_7_biasadd_readvariableop_resource:
9
'dense_10_matmul_readvariableop_resource:
6
(dense_10_biasadd_readvariableop_resource:
9
'dense_11_matmul_readvariableop_resource:
(6
(dense_11_biasadd_readvariableop_resource:(8
&dense_8_matmul_readvariableop_resource:
(5
'dense_8_biasadd_readvariableop_resource:(;
)prediction_matmul_readvariableop_resource:8
*prediction_biasadd_readvariableop_resource:
identityЂdense_10/BiasAdd/ReadVariableOpЂdense_10/MatMul/ReadVariableOpЂdense_11/BiasAdd/ReadVariableOpЂdense_11/MatMul/ReadVariableOpЂdense_6/BiasAdd/ReadVariableOpЂdense_6/MatMul/ReadVariableOpЂdense_7/BiasAdd/ReadVariableOpЂdense_7/MatMul/ReadVariableOpЂdense_8/BiasAdd/ReadVariableOpЂdense_8/MatMul/ReadVariableOpЂdense_9/BiasAdd/ReadVariableOpЂdense_9/MatMul/ReadVariableOpЂembedding_2/embedding_lookupЂ8embedding_2/embeddings/Regularizer/Square/ReadVariableOpЂembedding_3/embedding_lookupЂ8embedding_3/embeddings/Regularizer/Square/ReadVariableOpЂ!prediction/BiasAdd/ReadVariableOpЂ prediction/MatMul/ReadVariableOpc
embedding_3/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџэ
embedding_3/embedding_lookupResourceGather$embedding_3_embedding_lookup_8606353embedding_3/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_3/embedding_lookup/8606353*+
_output_shapes
:џџџџџџџџџ(*
dtype0Ч
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_3/embedding_lookup/8606353*+
_output_shapes
:џџџџџџџџџ(
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(c
embedding_2/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџэ
embedding_2/embedding_lookupResourceGather$embedding_2_embedding_lookup_8606359embedding_2/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_2/embedding_lookup/8606359*+
_output_shapes
:џџџџџџџџџ(*
dtype0Ч
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_2/embedding_lookup/8606359*+
_output_shapes
:џџџџџџџџџ(
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   
flatten_3/ReshapeReshape0embedding_3/embedding_lookup/Identity_1:output:0flatten_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   
flatten_2/ReshapeReshape0embedding_2/embedding_lookup/Identity_1:output:0flatten_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0
dense_9/MatMulMatMulflatten_2/Reshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
`
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_10/MatMulMatMuldense_9/Relu:activations:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
b
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:
(*
dtype0
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(b
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:
(*
dtype0
dense_8/MatMulMatMuldense_7/Relu:activations:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(V
dot_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
dot_1/ExpandDims
ExpandDimsdense_11/Relu:activations:0dot_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(X
dot_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
dot_1/ExpandDims_1
ExpandDimsdense_8/Relu:activations:0dot_1/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(
dot_1/MatMulBatchMatMulV2dot_1/ExpandDims:output:0dot_1/ExpandDims_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџP
dot_1/ShapeShapedot_1/MatMul:output:0*
T0*
_output_shapes
:x
dot_1/SqueezeSqueezedot_1/MatMul:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
squeeze_dims

 prediction/MatMul/ReadVariableOpReadVariableOp)prediction_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
prediction/MatMulMatMuldot_1/Squeeze:output:0(prediction/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!prediction/BiasAdd/ReadVariableOpReadVariableOp*prediction_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
prediction/BiasAddBiasAddprediction/MatMul:product:0)prediction/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџl
prediction/SigmoidSigmoidprediction/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_2_embedding_lookup_8606359*
_output_shapes
:	/(*
dtype0
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	/(y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_3_embedding_lookup_8606353*
_output_shapes
:	њ(*
dtype0
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	њ(y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: e
IdentityIdentityprediction/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЫ
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp^embedding_2/embedding_lookup9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp^embedding_3/embedding_lookup9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp"^prediction/BiasAdd/ReadVariableOp!^prediction/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2F
!prediction/BiasAdd/ReadVariableOp!prediction/BiasAdd/ReadVariableOp2D
 prediction/MatMul/ReadVariableOp prediction/MatMul/ReadVariableOp:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1


ѕ
D__inference_dense_7_layer_call_and_return_conditional_losses_8606726

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
В
А
)__inference_model_1_layer_call_fn_8605852

user_input
movie_input
unknown:	њ(
	unknown_0:	/(
	unknown_1:(
	unknown_2:
	unknown_3:(
	unknown_4:
	unknown_5:

	unknown_6:

	unknown_7:

	unknown_8:

	unknown_9:
(

unknown_10:(

unknown_11:
(

unknown_12:(

unknown_13:

unknown_14:
identityЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCall
user_inputmovie_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_8605817o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
user_input:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namemovie_input
В
А
)__inference_model_1_layer_call_fn_8606132

user_input
movie_input
unknown:	њ(
	unknown_0:	/(
	unknown_1:(
	unknown_2:
	unknown_3:(
	unknown_4:
	unknown_5:

	unknown_6:

	unknown_7:

	unknown_8:

	unknown_9:
(

unknown_10:(

unknown_11:
(

unknown_12:(

unknown_13:

unknown_14:
identityЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCall
user_inputmovie_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_8606059o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
user_input:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namemovie_input

т
H__inference_embedding_3_layer_call_and_return_conditional_losses_8605631

inputs+
embedding_lookup_8605619:	њ(
identityЂ8embedding_3/embeddings/Regularizer/Square/ReadVariableOpЂembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџН
embedding_lookupResourceGatherembedding_lookup_8605619Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/8605619*+
_output_shapes
:џџџџџџџџџ(*
dtype0Ѓ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/8605619*+
_output_shapes
:џџџџџџџџџ(
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_8605619*
_output_shapes
:	њ(*
dtype0
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	њ(y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ(
NoOpNoOp9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:џџџџџџџџџ: 2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ш

,__inference_prediction_layer_call_fn_8606793

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_prediction_layer_call_and_return_conditional_losses_8605798o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


і
E__inference_dense_10_layer_call_and_return_conditional_losses_8605733

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Љ
G
+__inference_flatten_3_layer_call_fn_8606640

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_8605661`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ(:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
КI
Ю
D__inference_model_1_layer_call_and_return_conditional_losses_8605817

inputs
inputs_1&
embedding_3_8605632:	њ(&
embedding_2_8605652:	/(!
dense_6_8605683:(
dense_6_8605685:!
dense_9_8605700:(
dense_9_8605702:!
dense_7_8605717:

dense_7_8605719:
"
dense_10_8605734:

dense_10_8605736:
"
dense_11_8605751:
(
dense_11_8605753:(!
dense_8_8605768:
(
dense_8_8605770:($
prediction_8605799: 
prediction_8605801:
identityЂ dense_10/StatefulPartitionedCallЂ dense_11/StatefulPartitionedCallЂdense_6/StatefulPartitionedCallЂdense_7/StatefulPartitionedCallЂdense_8/StatefulPartitionedCallЂdense_9/StatefulPartitionedCallЂ#embedding_2/StatefulPartitionedCallЂ8embedding_2/embeddings/Regularizer/Square/ReadVariableOpЂ#embedding_3/StatefulPartitionedCallЂ8embedding_3/embeddings/Regularizer/Square/ReadVariableOpЂ"prediction/StatefulPartitionedCallю
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_3_8605632*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_3_layer_call_and_return_conditional_losses_8605631ь
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2_8605652*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_2_layer_call_and_return_conditional_losses_8605651с
flatten_3/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_8605661с
flatten_2/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_8605669
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_8605683dense_6_8605685*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_8605682
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_9_8605700dense_9_8605702*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_8605699
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_8605717dense_7_8605719*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_8605716
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_8605734dense_10_8605736*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_8605733
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_8605751dense_11_8605753*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_8605750
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_8605768dense_8_8605770*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_8605767
dot_1/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dot_1_layer_call_and_return_conditional_losses_8605785
"prediction/StatefulPartitionedCallStatefulPartitionedCalldot_1/PartitionedCall:output:0prediction_8605799prediction_8605801*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_prediction_layer_call_and_return_conditional_losses_8605798
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_8605652*
_output_shapes
:	/(*
dtype0
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	/(y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_3_8605632*
_output_shapes
:	њ(*
dtype0
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	њ(y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity+prediction/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџћ
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp$^embedding_3/StatefulPartitionedCall9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp#^prediction/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2H
"prediction/StatefulPartitionedCall"prediction/StatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Љ
G
+__inference_flatten_2_layer_call_fn_8606629

inputs
identityБ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_8605669`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ(:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs


ј
G__inference_prediction_layer_call_and_return_conditional_losses_8605798

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Т

)__inference_dense_9_layer_call_fn_8606655

inputs
unknown:(
	unknown_0:
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_8605699o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ(: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs

т
H__inference_embedding_3_layer_call_and_return_conditional_losses_8606624

inputs+
embedding_lookup_8606612:	њ(
identityЂ8embedding_3/embeddings/Regularizer/Square/ReadVariableOpЂembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџН
embedding_lookupResourceGatherembedding_lookup_8606612Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/8606612*+
_output_shapes
:џџџџџџџџџ(*
dtype0Ѓ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/8606612*+
_output_shapes
:џџџџџџџџџ(
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_8606612*
_output_shapes
:	њ(*
dtype0
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	њ(y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ(
NoOpNoOp9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:џџџџџџџџџ: 2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


ѕ
D__inference_dense_6_layer_call_and_return_conditional_losses_8605682

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
Ѓ
Ћ
)__inference_model_1_layer_call_fn_8606348
inputs_0
inputs_1
unknown:	њ(
	unknown_0:	/(
	unknown_1:(
	unknown_2:
	unknown_3:(
	unknown_4:
	unknown_5:

	unknown_6:

	unknown_7:

	unknown_8:

	unknown_9:
(

unknown_10:(

unknown_11:
(

unknown_12:(

unknown_13:

unknown_14:
identityЂStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_8606059o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
бI
е
D__inference_model_1_layer_call_and_return_conditional_losses_8606193

user_input
movie_input&
embedding_3_8606136:	њ(&
embedding_2_8606139:	/(!
dense_6_8606144:(
dense_6_8606146:!
dense_9_8606149:(
dense_9_8606151:!
dense_7_8606154:

dense_7_8606156:
"
dense_10_8606159:

dense_10_8606161:
"
dense_11_8606164:
(
dense_11_8606166:(!
dense_8_8606169:
(
dense_8_8606171:($
prediction_8606175: 
prediction_8606177:
identityЂ dense_10/StatefulPartitionedCallЂ dense_11/StatefulPartitionedCallЂdense_6/StatefulPartitionedCallЂdense_7/StatefulPartitionedCallЂdense_8/StatefulPartitionedCallЂdense_9/StatefulPartitionedCallЂ#embedding_2/StatefulPartitionedCallЂ8embedding_2/embeddings/Regularizer/Square/ReadVariableOpЂ#embedding_3/StatefulPartitionedCallЂ8embedding_3/embeddings/Regularizer/Square/ReadVariableOpЂ"prediction/StatefulPartitionedCallё
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallmovie_inputembedding_3_8606136*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_3_layer_call_and_return_conditional_losses_8605631№
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall
user_inputembedding_2_8606139*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_2_layer_call_and_return_conditional_losses_8605651с
flatten_3/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_8605661с
flatten_2/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_8605669
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_8606144dense_6_8606146*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_8605682
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_9_8606149dense_9_8606151*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_8605699
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_8606154dense_7_8606156*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_8605716
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_8606159dense_10_8606161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_8605733
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_8606164dense_11_8606166*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_8605750
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_8606169dense_8_8606171*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_8605767
dot_1/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dot_1_layer_call_and_return_conditional_losses_8605785
"prediction/StatefulPartitionedCallStatefulPartitionedCalldot_1/PartitionedCall:output:0prediction_8606175prediction_8606177*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_prediction_layer_call_and_return_conditional_losses_8605798
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_8606139*
_output_shapes
:	/(*
dtype0
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	/(y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_3_8606136*
_output_shapes
:	њ(*
dtype0
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	њ(y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity+prediction/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџћ
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp$^embedding_3/StatefulPartitionedCall9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp#^prediction/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2H
"prediction/StatefulPartitionedCall"prediction/StatefulPartitionedCall:S O
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
user_input:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namemovie_input


ѕ
D__inference_dense_6_layer_call_and_return_conditional_losses_8606686

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
Ф

*__inference_dense_10_layer_call_fn_8606695

inputs
unknown:

	unknown_0:

identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_8605733o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
О
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_8605661

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ(:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs

т
H__inference_embedding_2_layer_call_and_return_conditional_losses_8606595

inputs+
embedding_lookup_8606583:	/(
identityЂ8embedding_2/embeddings/Regularizer/Square/ReadVariableOpЂembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџН
embedding_lookupResourceGatherembedding_lookup_8606583Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/8606583*+
_output_shapes
:џџџџџџџџџ(*
dtype0Ѓ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/8606583*+
_output_shapes
:џџџџџџџџџ(
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_8606583*
_output_shapes
:	/(*
dtype0
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	/(y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ(
NoOpNoOp9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:џџџџџџџџџ: 2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К
С
__inference_loss_fn_0_8606815T
Aembedding_2_embeddings_regularizer_square_readvariableop_resource:	/(
identityЂ8embedding_2/embeddings/Regularizer/Square/ReadVariableOpЛ
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpAembedding_2_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	/(*
dtype0
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	/(y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*embedding_2/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp
К
С
__inference_loss_fn_1_8606826T
Aembedding_3_embeddings_regularizer_square_readvariableop_resource:	њ(
identityЂ8embedding_3/embeddings/Regularizer/Square/ReadVariableOpЛ
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpAembedding_3_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	њ(*
dtype0
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	њ(y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*embedding_3/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp
Ћ

-__inference_embedding_2_layer_call_fn_8606579

inputs
unknown:	/(
identityЂStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_2_layer_call_and_return_conditional_losses_8605651s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:џџџџџџџџџ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
єл
ч!
#__inference__traced_restore_8607190
file_prefix:
'assignvariableop_embedding_2_embeddings:	/(<
)assignvariableop_1_embedding_3_embeddings:	њ(3
!assignvariableop_2_dense_9_kernel:(-
assignvariableop_3_dense_9_bias:3
!assignvariableop_4_dense_6_kernel:(-
assignvariableop_5_dense_6_bias:4
"assignvariableop_6_dense_10_kernel:
.
 assignvariableop_7_dense_10_bias:
3
!assignvariableop_8_dense_7_kernel:
-
assignvariableop_9_dense_7_bias:
5
#assignvariableop_10_dense_11_kernel:
(/
!assignvariableop_11_dense_11_bias:(4
"assignvariableop_12_dense_8_kernel:
(.
 assignvariableop_13_dense_8_bias:(7
%assignvariableop_14_prediction_kernel:1
#assignvariableop_15_prediction_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: D
1assignvariableop_23_adam_embedding_2_embeddings_m:	/(D
1assignvariableop_24_adam_embedding_3_embeddings_m:	њ(;
)assignvariableop_25_adam_dense_9_kernel_m:(5
'assignvariableop_26_adam_dense_9_bias_m:;
)assignvariableop_27_adam_dense_6_kernel_m:(5
'assignvariableop_28_adam_dense_6_bias_m:<
*assignvariableop_29_adam_dense_10_kernel_m:
6
(assignvariableop_30_adam_dense_10_bias_m:
;
)assignvariableop_31_adam_dense_7_kernel_m:
5
'assignvariableop_32_adam_dense_7_bias_m:
<
*assignvariableop_33_adam_dense_11_kernel_m:
(6
(assignvariableop_34_adam_dense_11_bias_m:(;
)assignvariableop_35_adam_dense_8_kernel_m:
(5
'assignvariableop_36_adam_dense_8_bias_m:(>
,assignvariableop_37_adam_prediction_kernel_m:8
*assignvariableop_38_adam_prediction_bias_m:D
1assignvariableop_39_adam_embedding_2_embeddings_v:	/(D
1assignvariableop_40_adam_embedding_3_embeddings_v:	њ(;
)assignvariableop_41_adam_dense_9_kernel_v:(5
'assignvariableop_42_adam_dense_9_bias_v:;
)assignvariableop_43_adam_dense_6_kernel_v:(5
'assignvariableop_44_adam_dense_6_bias_v:<
*assignvariableop_45_adam_dense_10_kernel_v:
6
(assignvariableop_46_adam_dense_10_bias_v:
;
)assignvariableop_47_adam_dense_7_kernel_v:
5
'assignvariableop_48_adam_dense_7_bias_v:
<
*assignvariableop_49_adam_dense_11_kernel_v:
(6
(assignvariableop_50_adam_dense_11_bias_v:(;
)assignvariableop_51_adam_dense_8_kernel_v:
(5
'assignvariableop_52_adam_dense_8_bias_v:(>
,assignvariableop_53_adam_prediction_kernel_v:8
*assignvariableop_54_adam_prediction_bias_v:
identity_56ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Ь
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*ђ
valueшBх8B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHс
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Й
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*і
_output_shapesу
р::::::::::::::::::::::::::::::::::::::::::::::::::::::::*F
dtypes<
:28	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp'assignvariableop_embedding_2_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp)assignvariableop_1_embedding_3_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_6_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_6_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_10_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_10_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_7_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_7_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_11_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_11_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_8_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_8_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp%assignvariableop_14_prediction_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp#assignvariableop_15_prediction_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_23AssignVariableOp1assignvariableop_23_adam_embedding_2_embeddings_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_24AssignVariableOp1assignvariableop_24_adam_embedding_3_embeddings_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_9_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_9_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_6_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_6_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_10_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_10_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_7_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_7_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_11_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_11_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_8_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_8_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_prediction_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_prediction_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_39AssignVariableOp1assignvariableop_39_adam_embedding_2_embeddings_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_40AssignVariableOp1assignvariableop_40_adam_embedding_3_embeddings_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_9_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_9_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_6_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_6_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_10_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_10_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_7_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_7_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_11_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_11_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_8_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_8_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp,assignvariableop_53_adam_prediction_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp*assignvariableop_54_adam_prediction_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 

Identity_55Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_56IdentityIdentity_55:output:0^NoOp_1*
T0*
_output_shapes
: і	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_56Identity_56:output:0*
_input_shapesr
p: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
О
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_8606635

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ(:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs


ѕ
D__inference_dense_8_layer_call_and_return_conditional_losses_8606766

inputs0
matmul_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ(w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ф

*__inference_dense_11_layer_call_fn_8606735

inputs
unknown:
(
	unknown_0:(
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_8605750o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs


і
E__inference_dense_10_layer_call_and_return_conditional_losses_8606706

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


ѕ
D__inference_dense_9_layer_call_and_return_conditional_losses_8606666

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs


і
E__inference_dense_11_layer_call_and_return_conditional_losses_8605750

inputs0
matmul_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ(w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
h

D__inference_model_1_layer_call_and_return_conditional_losses_8606526
inputs_0
inputs_17
$embedding_3_embedding_lookup_8606442:	њ(7
$embedding_2_embedding_lookup_8606448:	/(8
&dense_6_matmul_readvariableop_resource:(5
'dense_6_biasadd_readvariableop_resource:8
&dense_9_matmul_readvariableop_resource:(5
'dense_9_biasadd_readvariableop_resource:8
&dense_7_matmul_readvariableop_resource:
5
'dense_7_biasadd_readvariableop_resource:
9
'dense_10_matmul_readvariableop_resource:
6
(dense_10_biasadd_readvariableop_resource:
9
'dense_11_matmul_readvariableop_resource:
(6
(dense_11_biasadd_readvariableop_resource:(8
&dense_8_matmul_readvariableop_resource:
(5
'dense_8_biasadd_readvariableop_resource:(;
)prediction_matmul_readvariableop_resource:8
*prediction_biasadd_readvariableop_resource:
identityЂdense_10/BiasAdd/ReadVariableOpЂdense_10/MatMul/ReadVariableOpЂdense_11/BiasAdd/ReadVariableOpЂdense_11/MatMul/ReadVariableOpЂdense_6/BiasAdd/ReadVariableOpЂdense_6/MatMul/ReadVariableOpЂdense_7/BiasAdd/ReadVariableOpЂdense_7/MatMul/ReadVariableOpЂdense_8/BiasAdd/ReadVariableOpЂdense_8/MatMul/ReadVariableOpЂdense_9/BiasAdd/ReadVariableOpЂdense_9/MatMul/ReadVariableOpЂembedding_2/embedding_lookupЂ8embedding_2/embeddings/Regularizer/Square/ReadVariableOpЂembedding_3/embedding_lookupЂ8embedding_3/embeddings/Regularizer/Square/ReadVariableOpЂ!prediction/BiasAdd/ReadVariableOpЂ prediction/MatMul/ReadVariableOpc
embedding_3/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџэ
embedding_3/embedding_lookupResourceGather$embedding_3_embedding_lookup_8606442embedding_3/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_3/embedding_lookup/8606442*+
_output_shapes
:џџџџџџџџџ(*
dtype0Ч
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_3/embedding_lookup/8606442*+
_output_shapes
:џџџџџџџџџ(
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(c
embedding_2/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџэ
embedding_2/embedding_lookupResourceGather$embedding_2_embedding_lookup_8606448embedding_2/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_2/embedding_lookup/8606448*+
_output_shapes
:џџџџџџџџџ(*
dtype0Ч
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_2/embedding_lookup/8606448*+
_output_shapes
:џџџџџџџџџ(
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   
flatten_3/ReshapeReshape0embedding_3/embedding_lookup/Identity_1:output:0flatten_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   
flatten_2/ReshapeReshape0embedding_2/embedding_lookup/Identity_1:output:0flatten_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0
dense_9/MatMulMatMulflatten_2/Reshape:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
`
dense_7/ReluReludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_10/MatMulMatMuldense_9/Relu:activations:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
b
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:
(*
dtype0
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(b
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:
(*
dtype0
dense_8/MatMulMatMuldense_7/Relu:activations:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(V
dot_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
dot_1/ExpandDims
ExpandDimsdense_11/Relu:activations:0dot_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(X
dot_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
dot_1/ExpandDims_1
ExpandDimsdense_8/Relu:activations:0dot_1/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(
dot_1/MatMulBatchMatMulV2dot_1/ExpandDims:output:0dot_1/ExpandDims_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџP
dot_1/ShapeShapedot_1/MatMul:output:0*
T0*
_output_shapes
:x
dot_1/SqueezeSqueezedot_1/MatMul:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
squeeze_dims

 prediction/MatMul/ReadVariableOpReadVariableOp)prediction_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
prediction/MatMulMatMuldot_1/Squeeze:output:0(prediction/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!prediction/BiasAdd/ReadVariableOpReadVariableOp*prediction_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
prediction/BiasAddBiasAddprediction/MatMul:product:0)prediction/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџl
prediction/SigmoidSigmoidprediction/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_2_embedding_lookup_8606448*
_output_shapes
:	/(*
dtype0
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	/(y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_3_embedding_lookup_8606442*
_output_shapes
:	њ(*
dtype0
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	њ(y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: e
IdentityIdentityprediction/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЫ
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp^embedding_2/embedding_lookup9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp^embedding_3/embedding_lookup9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp"^prediction/BiasAdd/ReadVariableOp!^prediction/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2F
!prediction/BiasAdd/ReadVariableOp!prediction/BiasAdd/ReadVariableOp2D
 prediction/MatMul/ReadVariableOp prediction/MatMul/ReadVariableOp:Q M
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
inputs/1
Ћ	
l
B__inference_dot_1_layer_call_and_return_conditional_losses_8605785

inputs
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџ(:џџџџџџџџџ(:O K
'
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs

S
'__inference_dot_1_layer_call_fn_8606772
inputs_0
inputs_1
identityК
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dot_1_layer_call_and_return_conditional_losses_8605785`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџ(:џџџџџџџџџ(:Q M
'
_output_shapes
:џџџџџџџџџ(
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:џџџџџџџџџ(
"
_user_specified_name
inputs/1
Т

)__inference_dense_8_layer_call_fn_8606755

inputs
unknown:
(
	unknown_0:(
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_8605767o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

т
H__inference_embedding_2_layer_call_and_return_conditional_losses_8605651

inputs+
embedding_lookup_8605639:	/(
identityЂ8embedding_2/embeddings/Regularizer/Square/ReadVariableOpЂembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџН
embedding_lookupResourceGatherembedding_lookup_8605639Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/8605639*+
_output_shapes
:џџџџџџџџџ(*
dtype0Ѓ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/8605639*+
_output_shapes
:џџџџџџџџџ(
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_8605639*
_output_shapes
:	/(*
dtype0
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	/(y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ(
NoOpNoOp9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:џџџџџџџџџ: 2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
О
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_8606646

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ(:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
О
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_8605669

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ(:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs


ѕ
D__inference_dense_7_layer_call_and_return_conditional_losses_8605716

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љb
ј
"__inference__wrapped_model_8605606

user_input
movie_input?
,model_1_embedding_3_embedding_lookup_8605534:	њ(?
,model_1_embedding_2_embedding_lookup_8605540:	/(@
.model_1_dense_6_matmul_readvariableop_resource:(=
/model_1_dense_6_biasadd_readvariableop_resource:@
.model_1_dense_9_matmul_readvariableop_resource:(=
/model_1_dense_9_biasadd_readvariableop_resource:@
.model_1_dense_7_matmul_readvariableop_resource:
=
/model_1_dense_7_biasadd_readvariableop_resource:
A
/model_1_dense_10_matmul_readvariableop_resource:
>
0model_1_dense_10_biasadd_readvariableop_resource:
A
/model_1_dense_11_matmul_readvariableop_resource:
(>
0model_1_dense_11_biasadd_readvariableop_resource:(@
.model_1_dense_8_matmul_readvariableop_resource:
(=
/model_1_dense_8_biasadd_readvariableop_resource:(C
1model_1_prediction_matmul_readvariableop_resource:@
2model_1_prediction_biasadd_readvariableop_resource:
identityЂ'model_1/dense_10/BiasAdd/ReadVariableOpЂ&model_1/dense_10/MatMul/ReadVariableOpЂ'model_1/dense_11/BiasAdd/ReadVariableOpЂ&model_1/dense_11/MatMul/ReadVariableOpЂ&model_1/dense_6/BiasAdd/ReadVariableOpЂ%model_1/dense_6/MatMul/ReadVariableOpЂ&model_1/dense_7/BiasAdd/ReadVariableOpЂ%model_1/dense_7/MatMul/ReadVariableOpЂ&model_1/dense_8/BiasAdd/ReadVariableOpЂ%model_1/dense_8/MatMul/ReadVariableOpЂ&model_1/dense_9/BiasAdd/ReadVariableOpЂ%model_1/dense_9/MatMul/ReadVariableOpЂ$model_1/embedding_2/embedding_lookupЂ$model_1/embedding_3/embedding_lookupЂ)model_1/prediction/BiasAdd/ReadVariableOpЂ(model_1/prediction/MatMul/ReadVariableOpn
model_1/embedding_3/CastCastmovie_input*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ
$model_1/embedding_3/embedding_lookupResourceGather,model_1_embedding_3_embedding_lookup_8605534model_1/embedding_3/Cast:y:0*
Tindices0*?
_class5
31loc:@model_1/embedding_3/embedding_lookup/8605534*+
_output_shapes
:џџџџџџџџџ(*
dtype0п
-model_1/embedding_3/embedding_lookup/IdentityIdentity-model_1/embedding_3/embedding_lookup:output:0*
T0*?
_class5
31loc:@model_1/embedding_3/embedding_lookup/8605534*+
_output_shapes
:џџџџџџџџџ(Љ
/model_1/embedding_3/embedding_lookup/Identity_1Identity6model_1/embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(m
model_1/embedding_2/CastCast
user_input*

DstT0*

SrcT0*'
_output_shapes
:џџџџџџџџџ
$model_1/embedding_2/embedding_lookupResourceGather,model_1_embedding_2_embedding_lookup_8605540model_1/embedding_2/Cast:y:0*
Tindices0*?
_class5
31loc:@model_1/embedding_2/embedding_lookup/8605540*+
_output_shapes
:џџџџџџџџџ(*
dtype0п
-model_1/embedding_2/embedding_lookup/IdentityIdentity-model_1/embedding_2/embedding_lookup:output:0*
T0*?
_class5
31loc:@model_1/embedding_2/embedding_lookup/8605540*+
_output_shapes
:џџџџџџџџџ(Љ
/model_1/embedding_2/embedding_lookup/Identity_1Identity6model_1/embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(h
model_1/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   В
model_1/flatten_3/ReshapeReshape8model_1/embedding_3/embedding_lookup/Identity_1:output:0 model_1/flatten_3/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(h
model_1/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ(   В
model_1/flatten_2/ReshapeReshape8model_1/embedding_2/embedding_lookup/Identity_1:output:0 model_1/flatten_2/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(
%model_1/dense_6/MatMul/ReadVariableOpReadVariableOp.model_1_dense_6_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0Ѕ
model_1/dense_6/MatMulMatMul"model_1/flatten_3/Reshape:output:0-model_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
model_1/dense_6/BiasAddBiasAdd model_1/dense_6/MatMul:product:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџp
model_1/dense_6/ReluRelu model_1/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
%model_1/dense_9/MatMul/ReadVariableOpReadVariableOp.model_1_dense_9_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0Ѕ
model_1/dense_9/MatMulMatMul"model_1/flatten_2/Reshape:output:0-model_1/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&model_1/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
model_1/dense_9/BiasAddBiasAdd model_1/dense_9/MatMul:product:0.model_1/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџp
model_1/dense_9/ReluRelu model_1/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
%model_1/dense_7/MatMul/ReadVariableOpReadVariableOp.model_1_dense_7_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ѕ
model_1/dense_7/MatMulMatMul"model_1/dense_6/Relu:activations:0-model_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0І
model_1/dense_7/BiasAddBiasAdd model_1/dense_7/MatMul:product:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
p
model_1/dense_7/ReluRelu model_1/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

&model_1/dense_10/MatMul/ReadVariableOpReadVariableOp/model_1_dense_10_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ї
model_1/dense_10/MatMulMatMul"model_1/dense_9/Relu:activations:0.model_1/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

'model_1/dense_10/BiasAdd/ReadVariableOpReadVariableOp0model_1_dense_10_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Љ
model_1/dense_10/BiasAddBiasAdd!model_1/dense_10/MatMul:product:0/model_1/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
model_1/dense_10/ReluRelu!model_1/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

&model_1/dense_11/MatMul/ReadVariableOpReadVariableOp/model_1_dense_11_matmul_readvariableop_resource*
_output_shapes

:
(*
dtype0Ј
model_1/dense_11/MatMulMatMul#model_1/dense_10/Relu:activations:0.model_1/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
'model_1/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_1_dense_11_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Љ
model_1/dense_11/BiasAddBiasAdd!model_1/dense_11/MatMul:product:0/model_1/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
model_1/dense_11/ReluRelu!model_1/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(
%model_1/dense_8/MatMul/ReadVariableOpReadVariableOp.model_1_dense_8_matmul_readvariableop_resource*
_output_shapes

:
(*
dtype0Ѕ
model_1/dense_8/MatMulMatMul"model_1/dense_7/Relu:activations:0-model_1/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(
&model_1/dense_8/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0І
model_1/dense_8/BiasAddBiasAdd model_1/dense_8/MatMul:product:0.model_1/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(p
model_1/dense_8/ReluRelu model_1/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(^
model_1/dot_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ј
model_1/dot_1/ExpandDims
ExpandDims#model_1/dense_11/Relu:activations:0%model_1/dot_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(`
model_1/dot_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
model_1/dot_1/ExpandDims_1
ExpandDims"model_1/dense_8/Relu:activations:0'model_1/dot_1/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(Ѓ
model_1/dot_1/MatMulBatchMatMulV2!model_1/dot_1/ExpandDims:output:0#model_1/dot_1/ExpandDims_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ`
model_1/dot_1/ShapeShapemodel_1/dot_1/MatMul:output:0*
T0*
_output_shapes
:
model_1/dot_1/SqueezeSqueezemodel_1/dot_1/MatMul:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
squeeze_dims

(model_1/prediction/MatMul/ReadVariableOpReadVariableOp1model_1_prediction_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ї
model_1/prediction/MatMulMatMulmodel_1/dot_1/Squeeze:output:00model_1/prediction/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
)model_1/prediction/BiasAdd/ReadVariableOpReadVariableOp2model_1_prediction_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Џ
model_1/prediction/BiasAddBiasAdd#model_1/prediction/MatMul:product:01model_1/prediction/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ|
model_1/prediction/SigmoidSigmoid#model_1/prediction/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџm
IdentityIdentitymodel_1/prediction/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџе
NoOpNoOp(^model_1/dense_10/BiasAdd/ReadVariableOp'^model_1/dense_10/MatMul/ReadVariableOp(^model_1/dense_11/BiasAdd/ReadVariableOp'^model_1/dense_11/MatMul/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp&^model_1/dense_6/MatMul/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp&^model_1/dense_7/MatMul/ReadVariableOp'^model_1/dense_8/BiasAdd/ReadVariableOp&^model_1/dense_8/MatMul/ReadVariableOp'^model_1/dense_9/BiasAdd/ReadVariableOp&^model_1/dense_9/MatMul/ReadVariableOp%^model_1/embedding_2/embedding_lookup%^model_1/embedding_3/embedding_lookup*^model_1/prediction/BiasAdd/ReadVariableOp)^model_1/prediction/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2R
'model_1/dense_10/BiasAdd/ReadVariableOp'model_1/dense_10/BiasAdd/ReadVariableOp2P
&model_1/dense_10/MatMul/ReadVariableOp&model_1/dense_10/MatMul/ReadVariableOp2R
'model_1/dense_11/BiasAdd/ReadVariableOp'model_1/dense_11/BiasAdd/ReadVariableOp2P
&model_1/dense_11/MatMul/ReadVariableOp&model_1/dense_11/MatMul/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2N
%model_1/dense_6/MatMul/ReadVariableOp%model_1/dense_6/MatMul/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2N
%model_1/dense_7/MatMul/ReadVariableOp%model_1/dense_7/MatMul/ReadVariableOp2P
&model_1/dense_8/BiasAdd/ReadVariableOp&model_1/dense_8/BiasAdd/ReadVariableOp2N
%model_1/dense_8/MatMul/ReadVariableOp%model_1/dense_8/MatMul/ReadVariableOp2P
&model_1/dense_9/BiasAdd/ReadVariableOp&model_1/dense_9/BiasAdd/ReadVariableOp2N
%model_1/dense_9/MatMul/ReadVariableOp%model_1/dense_9/MatMul/ReadVariableOp2L
$model_1/embedding_2/embedding_lookup$model_1/embedding_2/embedding_lookup2L
$model_1/embedding_3/embedding_lookup$model_1/embedding_3/embedding_lookup2V
)model_1/prediction/BiasAdd/ReadVariableOp)model_1/prediction/BiasAdd/ReadVariableOp2T
(model_1/prediction/MatMul/ReadVariableOp(model_1/prediction/MatMul/ReadVariableOp:S O
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
user_input:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namemovie_input
бI
е
D__inference_model_1_layer_call_and_return_conditional_losses_8606254

user_input
movie_input&
embedding_3_8606197:	њ(&
embedding_2_8606200:	/(!
dense_6_8606205:(
dense_6_8606207:!
dense_9_8606210:(
dense_9_8606212:!
dense_7_8606215:

dense_7_8606217:
"
dense_10_8606220:

dense_10_8606222:
"
dense_11_8606225:
(
dense_11_8606227:(!
dense_8_8606230:
(
dense_8_8606232:($
prediction_8606236: 
prediction_8606238:
identityЂ dense_10/StatefulPartitionedCallЂ dense_11/StatefulPartitionedCallЂdense_6/StatefulPartitionedCallЂdense_7/StatefulPartitionedCallЂdense_8/StatefulPartitionedCallЂdense_9/StatefulPartitionedCallЂ#embedding_2/StatefulPartitionedCallЂ8embedding_2/embeddings/Regularizer/Square/ReadVariableOpЂ#embedding_3/StatefulPartitionedCallЂ8embedding_3/embeddings/Regularizer/Square/ReadVariableOpЂ"prediction/StatefulPartitionedCallё
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallmovie_inputembedding_3_8606197*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_3_layer_call_and_return_conditional_losses_8605631№
#embedding_2/StatefulPartitionedCallStatefulPartitionedCall
user_inputembedding_2_8606200*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_2_layer_call_and_return_conditional_losses_8605651с
flatten_3/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_8605661с
flatten_2/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_8605669
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_8606205dense_6_8606207*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_8605682
dense_9/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_9_8606210dense_9_8606212*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_8605699
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_8606215dense_7_8606217*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_8605716
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_8606220dense_10_8606222*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_8605733
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_8606225dense_11_8606227*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_8605750
dense_8/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0dense_8_8606230dense_8_8606232*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_8605767
dot_1/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dot_1_layer_call_and_return_conditional_losses_8605785
"prediction/StatefulPartitionedCallStatefulPartitionedCalldot_1/PartitionedCall:output:0prediction_8606236prediction_8606238*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_prediction_layer_call_and_return_conditional_losses_8605798
8embedding_2/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_2_8606200*
_output_shapes
:	/(*
dtype0
)embedding_2/embeddings/Regularizer/SquareSquare@embedding_2/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	/(y
(embedding_2/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_2/embeddings/Regularizer/SumSum-embedding_2/embeddings/Regularizer/Square:y:01embedding_2/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_2/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_2/embeddings/Regularizer/mulMul1embedding_2/embeddings/Regularizer/mul/x:output:0/embedding_2/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
8embedding_3/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_3_8606197*
_output_shapes
:	њ(*
dtype0
)embedding_3/embeddings/Regularizer/SquareSquare@embedding_3/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	њ(y
(embedding_3/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
&embedding_3/embeddings/Regularizer/SumSum-embedding_3/embeddings/Regularizer/Square:y:01embedding_3/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(embedding_3/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2В
&embedding_3/embeddings/Regularizer/mulMul1embedding_3/embeddings/Regularizer/mul/x:output:0/embedding_3/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
IdentityIdentity+prediction/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџћ
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall9^embedding_2/embeddings/Regularizer/Square/ReadVariableOp$^embedding_3/StatefulPartitionedCall9^embedding_3/embeddings/Regularizer/Square/ReadVariableOp#^prediction/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2t
8embedding_2/embeddings/Regularizer/Square/ReadVariableOp8embedding_2/embeddings/Regularizer/Square/ReadVariableOp2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2t
8embedding_3/embeddings/Regularizer/Square/ReadVariableOp8embedding_3/embeddings/Regularizer/Square/ReadVariableOp2H
"prediction/StatefulPartitionedCall"prediction/StatefulPartitionedCall:S O
'
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
user_input:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_namemovie_input
Т

)__inference_dense_7_layer_call_fn_8606715

inputs
unknown:

	unknown_0:

identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_8605716o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


і
E__inference_dense_11_layer_call_and_return_conditional_losses_8606746

inputs0
matmul_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ(P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ(a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ(w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ћ

-__inference_embedding_3_layer_call_fn_8606608

inputs
unknown:	њ(
identityЂStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ(*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_embedding_3_layer_call_and_return_conditional_losses_8605631s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:џџџџџџџџџ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"лL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ј
serving_defaultф
C
movie_input4
serving_default_movie_input:0џџџџџџџџџ
A

user_input3
serving_default_user_input:0џџџџџџџџџ>

prediction0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:юб

layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
6
_init_input_shape"
_tf_keras_input_layer
6
_init_input_shape"
_tf_keras_input_layer
Е

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
Е
!
embeddings
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Lkernel
Mbias
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

Tkernel
Ubias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

\kernel
]bias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

jkernel
kbias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer

riter

sbeta_1

tbeta_2
	udecay
vlearning_ratemР!mС4mТ5mУ<mФ=mХDmЦEmЧLmШMmЩTmЪUmЫ\mЬ]mЭjmЮkmЯvа!vб4vв5vг<vд=vеDvжEvзLvиMvйTvкUvл\vм]vнjvоkvп"
	optimizer

0
!1
42
53
<4
=5
D6
E7
L8
M9
T10
U11
\12
]13
j14
k15"
trackable_list_wrapper

0
!1
42
53
<4
=5
D6
E7
L8
M9
T10
U11
\12
]13
j14
k15"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
Ъ
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ђ2я
)__inference_model_1_layer_call_fn_8605852
)__inference_model_1_layer_call_fn_8606310
)__inference_model_1_layer_call_fn_8606348
)__inference_model_1_layer_call_fn_8606132Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
о2л
D__inference_model_1_layer_call_and_return_conditional_losses_8606437
D__inference_model_1_layer_call_and_return_conditional_losses_8606526
D__inference_model_1_layer_call_and_return_conditional_losses_8606193
D__inference_model_1_layer_call_and_return_conditional_losses_8606254Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
нBк
"__inference__wrapped_model_8605606
user_inputmovie_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
,
~serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
):'	/(2embedding_2/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
w0"
trackable_list_wrapper
Б
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
з2д
-__inference_embedding_2_layer_call_fn_8606579Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђ2я
H__inference_embedding_2_layer_call_and_return_conditional_losses_8606595Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
):'	њ(2embedding_3/embeddings
'
!0"
trackable_list_wrapper
'
!0"
trackable_list_wrapper
'
x0"
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
з2д
-__inference_embedding_3_layer_call_fn_8606608Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђ2я
H__inference_embedding_3_layer_call_and_return_conditional_losses_8606624Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_flatten_2_layer_call_fn_8606629Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_flatten_2_layer_call_and_return_conditional_losses_8606635Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
е2в
+__inference_flatten_3_layer_call_fn_8606640Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_flatten_3_layer_call_and_return_conditional_losses_8606646Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 :(2dense_9/kernel
:2dense_9/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
г2а
)__inference_dense_9_layer_call_fn_8606655Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_dense_9_layer_call_and_return_conditional_losses_8606666Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 :(2dense_6/kernel
:2dense_6/bias
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
г2а
)__inference_dense_6_layer_call_fn_8606675Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_dense_6_layer_call_and_return_conditional_losses_8606686Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
!:
2dense_10/kernel
:
2dense_10/bias
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
  layer_regularization_losses
Ёlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
д2б
*__inference_dense_10_layer_call_fn_8606695Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_dense_10_layer_call_and_return_conditional_losses_8606706Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 :
2dense_7/kernel
:
2dense_7/bias
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
г2а
)__inference_dense_7_layer_call_fn_8606715Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_dense_7_layer_call_and_return_conditional_losses_8606726Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
!:
(2dense_11/kernel
:(2dense_11/bias
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Їnon_trainable_variables
Јlayers
Љmetrics
 Њlayer_regularization_losses
Ћlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
д2б
*__inference_dense_11_layer_call_fn_8606735Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_dense_11_layer_call_and_return_conditional_losses_8606746Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 :
(2dense_8/kernel
:(2dense_8/bias
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ќnon_trainable_variables
­layers
Ўmetrics
 Џlayer_regularization_losses
Аlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
г2а
)__inference_dense_8_layer_call_fn_8606755Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_dense_8_layer_call_and_return_conditional_losses_8606766Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
б2Ю
'__inference_dot_1_layer_call_fn_8606772Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ь2щ
B__inference_dot_1_layer_call_and_return_conditional_losses_8606784Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
#:!2prediction/kernel
:2prediction/bias
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
ж2г
,__inference_prediction_layer_call_fn_8606793Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ё2ю
G__inference_prediction_layer_call_and_return_conditional_losses_8606804Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
Д2Б
__inference_loss_fn_0_8606815
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ 
Д2Б
__inference_loss_fn_1_8606826
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ 
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
(
Л0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
кBз
%__inference_signature_wrapper_8606566movie_input
user_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
w0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
x0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

Мtotal

Нcount
О	variables
П	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
М0
Н1"
trackable_list_wrapper
.
О	variables"
_generic_user_object
.:,	/(2Adam/embedding_2/embeddings/m
.:,	њ(2Adam/embedding_3/embeddings/m
%:#(2Adam/dense_9/kernel/m
:2Adam/dense_9/bias/m
%:#(2Adam/dense_6/kernel/m
:2Adam/dense_6/bias/m
&:$
2Adam/dense_10/kernel/m
 :
2Adam/dense_10/bias/m
%:#
2Adam/dense_7/kernel/m
:
2Adam/dense_7/bias/m
&:$
(2Adam/dense_11/kernel/m
 :(2Adam/dense_11/bias/m
%:#
(2Adam/dense_8/kernel/m
:(2Adam/dense_8/bias/m
(:&2Adam/prediction/kernel/m
": 2Adam/prediction/bias/m
.:,	/(2Adam/embedding_2/embeddings/v
.:,	њ(2Adam/embedding_3/embeddings/v
%:#(2Adam/dense_9/kernel/v
:2Adam/dense_9/bias/v
%:#(2Adam/dense_6/kernel/v
:2Adam/dense_6/bias/v
&:$
2Adam/dense_10/kernel/v
 :
2Adam/dense_10/bias/v
%:#
2Adam/dense_7/kernel/v
:
2Adam/dense_7/bias/v
&:$
(2Adam/dense_11/kernel/v
 :(2Adam/dense_11/bias/v
%:#
(2Adam/dense_8/kernel/v
:(2Adam/dense_8/bias/v
(:&2Adam/prediction/kernel/v
": 2Adam/prediction/bias/vг
"__inference__wrapped_model_8605606Ќ!<=45LMDETU\]jk_Ђ\
UЂR
PM
$!

user_inputџџџџџџџџџ
%"
movie_inputџџџџџџџџџ
Њ "7Њ4
2

prediction$!

predictionџџџџџџџџџЅ
E__inference_dense_10_layer_call_and_return_conditional_losses_8606706\DE/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ

 }
*__inference_dense_10_layer_call_fn_8606695ODE/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ
Ѕ
E__inference_dense_11_layer_call_and_return_conditional_losses_8606746\TU/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "%Ђ"

0џџџџџџџџџ(
 }
*__inference_dense_11_layer_call_fn_8606735OTU/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "џџџџџџџџџ(Є
D__inference_dense_6_layer_call_and_return_conditional_losses_8606686\<=/Ђ,
%Ђ"
 
inputsџџџџџџџџџ(
Њ "%Ђ"

0џџџџџџџџџ
 |
)__inference_dense_6_layer_call_fn_8606675O<=/Ђ,
%Ђ"
 
inputsџџџџџџџџџ(
Њ "џџџџџџџџџЄ
D__inference_dense_7_layer_call_and_return_conditional_losses_8606726\LM/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ

 |
)__inference_dense_7_layer_call_fn_8606715OLM/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ
Є
D__inference_dense_8_layer_call_and_return_conditional_losses_8606766\\]/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "%Ђ"

0џџџџџџџџџ(
 |
)__inference_dense_8_layer_call_fn_8606755O\]/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "џџџџџџџџџ(Є
D__inference_dense_9_layer_call_and_return_conditional_losses_8606666\45/Ђ,
%Ђ"
 
inputsџџџџџџџџџ(
Њ "%Ђ"

0џџџџџџџџџ
 |
)__inference_dense_9_layer_call_fn_8606655O45/Ђ,
%Ђ"
 
inputsџџџџџџџџџ(
Њ "џџџџџџџџџЪ
B__inference_dot_1_layer_call_and_return_conditional_losses_8606784ZЂW
PЂM
KH
"
inputs/0џџџџџџџџџ(
"
inputs/1џџџџџџџџџ(
Њ "%Ђ"

0џџџџџџџџџ
 Ё
'__inference_dot_1_layer_call_fn_8606772vZЂW
PЂM
KH
"
inputs/0џџџџџџџџџ(
"
inputs/1џџџџџџџџџ(
Њ "џџџџџџџџџЋ
H__inference_embedding_2_layer_call_and_return_conditional_losses_8606595_/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ")Ђ&

0џџџџџџџџџ(
 
-__inference_embedding_2_layer_call_fn_8606579R/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ(Ћ
H__inference_embedding_3_layer_call_and_return_conditional_losses_8606624_!/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ")Ђ&

0џџџџџџџџџ(
 
-__inference_embedding_3_layer_call_fn_8606608R!/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџ(І
F__inference_flatten_2_layer_call_and_return_conditional_losses_8606635\3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ(
Њ "%Ђ"

0џџџџџџџџџ(
 ~
+__inference_flatten_2_layer_call_fn_8606629O3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ(
Њ "џџџџџџџџџ(І
F__inference_flatten_3_layer_call_and_return_conditional_losses_8606646\3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ(
Њ "%Ђ"

0џџџџџџџџџ(
 ~
+__inference_flatten_3_layer_call_fn_8606640O3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ(
Њ "џџџџџџџџџ(<
__inference_loss_fn_0_8606815Ђ

Ђ 
Њ " <
__inference_loss_fn_1_8606826!Ђ

Ђ 
Њ " ы
D__inference_model_1_layer_call_and_return_conditional_losses_8606193Ђ!<=45LMDETU\]jkgЂd
]ЂZ
PM
$!

user_inputџџџџџџџџџ
%"
movie_inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 ы
D__inference_model_1_layer_call_and_return_conditional_losses_8606254Ђ!<=45LMDETU\]jkgЂd
]ЂZ
PM
$!

user_inputџџџџџџџџџ
%"
movie_inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 ц
D__inference_model_1_layer_call_and_return_conditional_losses_8606437!<=45LMDETU\]jkbЂ_
XЂU
KH
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 ц
D__inference_model_1_layer_call_and_return_conditional_losses_8606526!<=45LMDETU\]jkbЂ_
XЂU
KH
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 У
)__inference_model_1_layer_call_fn_8605852!<=45LMDETU\]jkgЂd
]ЂZ
PM
$!

user_inputџџџџџџџџџ
%"
movie_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџУ
)__inference_model_1_layer_call_fn_8606132!<=45LMDETU\]jkgЂd
]ЂZ
PM
$!

user_inputџџџџџџџџџ
%"
movie_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџО
)__inference_model_1_layer_call_fn_8606310!<=45LMDETU\]jkbЂ_
XЂU
KH
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
p 

 
Њ "џџџџџџџџџО
)__inference_model_1_layer_call_fn_8606348!<=45LMDETU\]jkbЂ_
XЂU
KH
"
inputs/0џџџџџџџџџ
"
inputs/1џџџџџџџџџ
p

 
Њ "џџџџџџџџџЇ
G__inference_prediction_layer_call_and_return_conditional_losses_8606804\jk/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
,__inference_prediction_layer_call_fn_8606793Ojk/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџю
%__inference_signature_wrapper_8606566Ф!<=45LMDETU\]jkwЂt
Ђ 
mЊj
4
movie_input%"
movie_inputџџџџџџџџџ
2

user_input$!

user_inputџџџџџџџџџ"7Њ4
2

prediction$!

predictionџџџџџџџџџ