??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
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
delete_old_dirsbool(?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.22v2.8.2-0-g2ea19cbb5758??
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,+* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:,+*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:+*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:+*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:+$* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:+$*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:$*
dtype0
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:$*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
dtype0
z
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

:*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:*
dtype0
z
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

:*
dtype0
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:*
dtype0
j
Adamax/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdamax/iter
c
Adamax/iter/Read/ReadVariableOpReadVariableOpAdamax/iter*
_output_shapes
: *
dtype0	
n
Adamax/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_1
g
!Adamax/beta_1/Read/ReadVariableOpReadVariableOpAdamax/beta_1*
_output_shapes
: *
dtype0
n
Adamax/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_2
g
!Adamax/beta_2/Read/ReadVariableOpReadVariableOpAdamax/beta_2*
_output_shapes
: *
dtype0
l
Adamax/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/decay
e
 Adamax/decay/Read/ReadVariableOpReadVariableOpAdamax/decay*
_output_shapes
: *
dtype0
|
Adamax/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdamax/learning_rate
u
(Adamax/learning_rate/Read/ReadVariableOpReadVariableOpAdamax/learning_rate*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adamax/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,+*)
shared_nameAdamax/dense_13/kernel/m
?
,Adamax/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_13/kernel/m*
_output_shapes

:,+*
dtype0
?
Adamax/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:+*'
shared_nameAdamax/dense_13/bias/m
}
*Adamax/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_13/bias/m*
_output_shapes
:+*
dtype0
?
Adamax/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:+$*)
shared_nameAdamax/dense_14/kernel/m
?
,Adamax/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_14/kernel/m*
_output_shapes

:+$*
dtype0
?
Adamax/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*'
shared_nameAdamax/dense_14/bias/m
}
*Adamax/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_14/bias/m*
_output_shapes
:$*
dtype0
?
Adamax/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$*)
shared_nameAdamax/dense_15/kernel/m
?
,Adamax/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_15/kernel/m*
_output_shapes

:$*
dtype0
?
Adamax/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_15/bias/m
}
*Adamax/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_15/bias/m*
_output_shapes
:*
dtype0
?
Adamax/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameAdamax/dense_16/kernel/m
?
,Adamax/dense_16/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_16/kernel/m*
_output_shapes

:*
dtype0
?
Adamax/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_16/bias/m
}
*Adamax/dense_16/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_16/bias/m*
_output_shapes
:*
dtype0
?
Adamax/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameAdamax/dense_17/kernel/m
?
,Adamax/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_17/kernel/m*
_output_shapes

:*
dtype0
?
Adamax/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_17/bias/m
}
*Adamax/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_17/bias/m*
_output_shapes
:*
dtype0
?
Adamax/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,+*)
shared_nameAdamax/dense_13/kernel/v
?
,Adamax/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_13/kernel/v*
_output_shapes

:,+*
dtype0
?
Adamax/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:+*'
shared_nameAdamax/dense_13/bias/v
}
*Adamax/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_13/bias/v*
_output_shapes
:+*
dtype0
?
Adamax/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:+$*)
shared_nameAdamax/dense_14/kernel/v
?
,Adamax/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_14/kernel/v*
_output_shapes

:+$*
dtype0
?
Adamax/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*'
shared_nameAdamax/dense_14/bias/v
}
*Adamax/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_14/bias/v*
_output_shapes
:$*
dtype0
?
Adamax/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$*)
shared_nameAdamax/dense_15/kernel/v
?
,Adamax/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_15/kernel/v*
_output_shapes

:$*
dtype0
?
Adamax/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_15/bias/v
}
*Adamax/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_15/bias/v*
_output_shapes
:*
dtype0
?
Adamax/dense_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameAdamax/dense_16/kernel/v
?
,Adamax/dense_16/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_16/kernel/v*
_output_shapes

:*
dtype0
?
Adamax/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_16/bias/v
}
*Adamax/dense_16/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_16/bias/v*
_output_shapes
:*
dtype0
?
Adamax/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*)
shared_nameAdamax/dense_17/kernel/v
?
,Adamax/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_17/kernel/v*
_output_shapes

:*
dtype0
?
Adamax/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_17/bias/v
}
*Adamax/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_17/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?B
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?B
value?BB?B B?B
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses*
?

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses*
?

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses*
?
8iter

9beta_1

:beta_2
	;decay
<learning_ratemgmhmimj mk!ml(mm)mn0mo1mpvqvrvsvt vu!vv(vw)vx0vy1vz*
J
0
1
2
3
 4
!5
(6
)7
08
19*
* 
* 
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Bserving_default* 
_Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_13/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*
* 
* 
?
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*
* 
* 
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_15/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

 0
!1*
* 
* 
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_16/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

(0
)1*
* 
* 
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_17/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

00
11*
* 
* 
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*
* 
* 
NH
VARIABLE_VALUEAdamax/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEAdamax/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEAdamax/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdamax/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamax/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
J
0
1
2
3
 4
!5
(6
)7
08
19*
.
0
1
2
3
4
5*

\0
]1*
* 
* 
* 

0
1*
* 
* 
* 
* 

0
1*
* 
* 
* 
* 

 0
!1*
* 
* 
* 
* 

(0
)1*
* 
* 
* 
* 

00
11*
* 
* 
* 
* 
8
	^total
	_count
`	variables
a	keras_api*
H
	btotal
	ccount
d
_fn_kwargs
e	variables
f	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

`	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

b0
c1*

e	variables*
?~
VARIABLE_VALUEAdamax/dense_13/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdamax/dense_13/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdamax/dense_14/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdamax/dense_14/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdamax/dense_15/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdamax/dense_15/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdamax/dense_16/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdamax/dense_16/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdamax/dense_17/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdamax/dense_17/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdamax/dense_13/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdamax/dense_13/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdamax/dense_14/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdamax/dense_14/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdamax/dense_15/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdamax/dense_15/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdamax/dense_16/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdamax/dense_16/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdamax/dense_17/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdamax/dense_17/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_3Placeholder*'
_output_shapes
:?????????,*
dtype0*
shape:?????????,
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3dense_13/kerneldense_13/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_140399
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOpAdamax/iter/Read/ReadVariableOp!Adamax/beta_1/Read/ReadVariableOp!Adamax/beta_2/Read/ReadVariableOp Adamax/decay/Read/ReadVariableOp(Adamax/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adamax/dense_13/kernel/m/Read/ReadVariableOp*Adamax/dense_13/bias/m/Read/ReadVariableOp,Adamax/dense_14/kernel/m/Read/ReadVariableOp*Adamax/dense_14/bias/m/Read/ReadVariableOp,Adamax/dense_15/kernel/m/Read/ReadVariableOp*Adamax/dense_15/bias/m/Read/ReadVariableOp,Adamax/dense_16/kernel/m/Read/ReadVariableOp*Adamax/dense_16/bias/m/Read/ReadVariableOp,Adamax/dense_17/kernel/m/Read/ReadVariableOp*Adamax/dense_17/bias/m/Read/ReadVariableOp,Adamax/dense_13/kernel/v/Read/ReadVariableOp*Adamax/dense_13/bias/v/Read/ReadVariableOp,Adamax/dense_14/kernel/v/Read/ReadVariableOp*Adamax/dense_14/bias/v/Read/ReadVariableOp,Adamax/dense_15/kernel/v/Read/ReadVariableOp*Adamax/dense_15/bias/v/Read/ReadVariableOp,Adamax/dense_16/kernel/v/Read/ReadVariableOp*Adamax/dense_16/bias/v/Read/ReadVariableOp,Adamax/dense_17/kernel/v/Read/ReadVariableOp*Adamax/dense_17/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_140639
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_13/kerneldense_13/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/biasAdamax/iterAdamax/beta_1Adamax/beta_2Adamax/decayAdamax/learning_ratetotalcounttotal_1count_1Adamax/dense_13/kernel/mAdamax/dense_13/bias/mAdamax/dense_14/kernel/mAdamax/dense_14/bias/mAdamax/dense_15/kernel/mAdamax/dense_15/bias/mAdamax/dense_16/kernel/mAdamax/dense_16/bias/mAdamax/dense_17/kernel/mAdamax/dense_17/bias/mAdamax/dense_13/kernel/vAdamax/dense_13/bias/vAdamax/dense_14/kernel/vAdamax/dense_14/bias/vAdamax/dense_15/kernel/vAdamax/dense_15/bias/vAdamax/dense_16/kernel/vAdamax/dense_16/bias/vAdamax/dense_17/kernel/vAdamax/dense_17/bias/v*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_140766??
?

?
D__inference_dense_13_layer_call_and_return_conditional_losses_139928

inputs0
matmul_readvariableop_resource:,+-
biasadd_readvariableop_resource:+
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,+*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:+*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????+a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????+w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?

?
D__inference_dense_16_layer_call_and_return_conditional_losses_139979

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?Q
?
__inference__traced_save_140639
file_prefix.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop*
&savev2_adamax_iter_read_readvariableop	,
(savev2_adamax_beta_1_read_readvariableop,
(savev2_adamax_beta_2_read_readvariableop+
'savev2_adamax_decay_read_readvariableop3
/savev2_adamax_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adamax_dense_13_kernel_m_read_readvariableop5
1savev2_adamax_dense_13_bias_m_read_readvariableop7
3savev2_adamax_dense_14_kernel_m_read_readvariableop5
1savev2_adamax_dense_14_bias_m_read_readvariableop7
3savev2_adamax_dense_15_kernel_m_read_readvariableop5
1savev2_adamax_dense_15_bias_m_read_readvariableop7
3savev2_adamax_dense_16_kernel_m_read_readvariableop5
1savev2_adamax_dense_16_bias_m_read_readvariableop7
3savev2_adamax_dense_17_kernel_m_read_readvariableop5
1savev2_adamax_dense_17_bias_m_read_readvariableop7
3savev2_adamax_dense_13_kernel_v_read_readvariableop5
1savev2_adamax_dense_13_bias_v_read_readvariableop7
3savev2_adamax_dense_14_kernel_v_read_readvariableop5
1savev2_adamax_dense_14_bias_v_read_readvariableop7
3savev2_adamax_dense_15_kernel_v_read_readvariableop5
1savev2_adamax_dense_15_bias_v_read_readvariableop7
3savev2_adamax_dense_16_kernel_v_read_readvariableop5
1savev2_adamax_dense_16_bias_v_read_readvariableop7
3savev2_adamax_dense_17_kernel_v_read_readvariableop5
1savev2_adamax_dense_17_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop&savev2_adamax_iter_read_readvariableop(savev2_adamax_beta_1_read_readvariableop(savev2_adamax_beta_2_read_readvariableop'savev2_adamax_decay_read_readvariableop/savev2_adamax_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adamax_dense_13_kernel_m_read_readvariableop1savev2_adamax_dense_13_bias_m_read_readvariableop3savev2_adamax_dense_14_kernel_m_read_readvariableop1savev2_adamax_dense_14_bias_m_read_readvariableop3savev2_adamax_dense_15_kernel_m_read_readvariableop1savev2_adamax_dense_15_bias_m_read_readvariableop3savev2_adamax_dense_16_kernel_m_read_readvariableop1savev2_adamax_dense_16_bias_m_read_readvariableop3savev2_adamax_dense_17_kernel_m_read_readvariableop1savev2_adamax_dense_17_bias_m_read_readvariableop3savev2_adamax_dense_13_kernel_v_read_readvariableop1savev2_adamax_dense_13_bias_v_read_readvariableop3savev2_adamax_dense_14_kernel_v_read_readvariableop1savev2_adamax_dense_14_bias_v_read_readvariableop3savev2_adamax_dense_15_kernel_v_read_readvariableop1savev2_adamax_dense_15_bias_v_read_readvariableop3savev2_adamax_dense_16_kernel_v_read_readvariableop1savev2_adamax_dense_16_bias_v_read_readvariableop3savev2_adamax_dense_17_kernel_v_read_readvariableop1savev2_adamax_dense_17_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :,+:+:+$:$:$:::::: : : : : : : : : :,+:+:+$:$:$::::::,+:+:+$:$:$:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:,+: 

_output_shapes
:+:$ 

_output_shapes

:+$: 

_output_shapes
:$:$ 

_output_shapes

:$: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:,+: 

_output_shapes
:+:$ 

_output_shapes

:+$: 

_output_shapes
:$:$ 

_output_shapes

:$: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:,+: 

_output_shapes
:+:$  

_output_shapes

:+$: !

_output_shapes
:$:$" 

_output_shapes

:$: #

_output_shapes
::$$ 

_output_shapes

:: %

_output_shapes
::$& 

_output_shapes

:: '

_output_shapes
::(

_output_shapes
: 
?
?
C__inference_model_2_layer_call_and_return_conditional_losses_140003

inputs!
dense_13_139929:,+
dense_13_139931:+!
dense_14_139946:+$
dense_14_139948:$!
dense_15_139963:$
dense_15_139965:!
dense_16_139980:
dense_16_139982:!
dense_17_139997:
dense_17_139999:
identity?? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCallinputsdense_13_139929dense_13_139931*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_139928?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_139946dense_14_139948*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_139945?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_139963dense_15_139965*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_139962?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_139980dense_16_139982*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_139979?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_139997dense_17_139999*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_139996x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????,: : : : : : : : : : 2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?

?
D__inference_dense_16_layer_call_and_return_conditional_losses_140479

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_17_layer_call_and_return_conditional_losses_140499

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?3
?
!__inference__wrapped_model_139910
input_3A
/model_2_dense_13_matmul_readvariableop_resource:,+>
0model_2_dense_13_biasadd_readvariableop_resource:+A
/model_2_dense_14_matmul_readvariableop_resource:+$>
0model_2_dense_14_biasadd_readvariableop_resource:$A
/model_2_dense_15_matmul_readvariableop_resource:$>
0model_2_dense_15_biasadd_readvariableop_resource:A
/model_2_dense_16_matmul_readvariableop_resource:>
0model_2_dense_16_biasadd_readvariableop_resource:A
/model_2_dense_17_matmul_readvariableop_resource:>
0model_2_dense_17_biasadd_readvariableop_resource:
identity??'model_2/dense_13/BiasAdd/ReadVariableOp?&model_2/dense_13/MatMul/ReadVariableOp?'model_2/dense_14/BiasAdd/ReadVariableOp?&model_2/dense_14/MatMul/ReadVariableOp?'model_2/dense_15/BiasAdd/ReadVariableOp?&model_2/dense_15/MatMul/ReadVariableOp?'model_2/dense_16/BiasAdd/ReadVariableOp?&model_2/dense_16/MatMul/ReadVariableOp?'model_2/dense_17/BiasAdd/ReadVariableOp?&model_2/dense_17/MatMul/ReadVariableOp?
&model_2/dense_13/MatMul/ReadVariableOpReadVariableOp/model_2_dense_13_matmul_readvariableop_resource*
_output_shapes

:,+*
dtype0?
model_2/dense_13/MatMulMatMulinput_3.model_2/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+?
'model_2/dense_13/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_13_biasadd_readvariableop_resource*
_output_shapes
:+*
dtype0?
model_2/dense_13/BiasAddBiasAdd!model_2/dense_13/MatMul:product:0/model_2/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+r
model_2/dense_13/ReluRelu!model_2/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:?????????+?
&model_2/dense_14/MatMul/ReadVariableOpReadVariableOp/model_2_dense_14_matmul_readvariableop_resource*
_output_shapes

:+$*
dtype0?
model_2/dense_14/MatMulMatMul#model_2/dense_13/Relu:activations:0.model_2/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$?
'model_2/dense_14/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_14_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0?
model_2/dense_14/BiasAddBiasAdd!model_2/dense_14/MatMul:product:0/model_2/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$r
model_2/dense_14/ReluRelu!model_2/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????$?
&model_2/dense_15/MatMul/ReadVariableOpReadVariableOp/model_2_dense_15_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0?
model_2/dense_15/MatMulMatMul#model_2/dense_14/Relu:activations:0.model_2/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_2/dense_15/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/dense_15/BiasAddBiasAdd!model_2/dense_15/MatMul:product:0/model_2/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
model_2/dense_15/ReluRelu!model_2/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
&model_2/dense_16/MatMul/ReadVariableOpReadVariableOp/model_2_dense_16_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
model_2/dense_16/MatMulMatMul#model_2/dense_15/Relu:activations:0.model_2/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_2/dense_16/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/dense_16/BiasAddBiasAdd!model_2/dense_16/MatMul:product:0/model_2/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
model_2/dense_16/ReluRelu!model_2/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
&model_2/dense_17/MatMul/ReadVariableOpReadVariableOp/model_2_dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
model_2/dense_17/MatMulMatMul#model_2/dense_16/Relu:activations:0.model_2/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_2/dense_17/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/dense_17/BiasAddBiasAdd!model_2/dense_17/MatMul:product:0/model_2/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
model_2/dense_17/SigmoidSigmoid!model_2/dense_17/BiasAdd:output:0*
T0*'
_output_shapes
:?????????k
IdentityIdentitymodel_2/dense_17/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^model_2/dense_13/BiasAdd/ReadVariableOp'^model_2/dense_13/MatMul/ReadVariableOp(^model_2/dense_14/BiasAdd/ReadVariableOp'^model_2/dense_14/MatMul/ReadVariableOp(^model_2/dense_15/BiasAdd/ReadVariableOp'^model_2/dense_15/MatMul/ReadVariableOp(^model_2/dense_16/BiasAdd/ReadVariableOp'^model_2/dense_16/MatMul/ReadVariableOp(^model_2/dense_17/BiasAdd/ReadVariableOp'^model_2/dense_17/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????,: : : : : : : : : : 2R
'model_2/dense_13/BiasAdd/ReadVariableOp'model_2/dense_13/BiasAdd/ReadVariableOp2P
&model_2/dense_13/MatMul/ReadVariableOp&model_2/dense_13/MatMul/ReadVariableOp2R
'model_2/dense_14/BiasAdd/ReadVariableOp'model_2/dense_14/BiasAdd/ReadVariableOp2P
&model_2/dense_14/MatMul/ReadVariableOp&model_2/dense_14/MatMul/ReadVariableOp2R
'model_2/dense_15/BiasAdd/ReadVariableOp'model_2/dense_15/BiasAdd/ReadVariableOp2P
&model_2/dense_15/MatMul/ReadVariableOp&model_2/dense_15/MatMul/ReadVariableOp2R
'model_2/dense_16/BiasAdd/ReadVariableOp'model_2/dense_16/BiasAdd/ReadVariableOp2P
&model_2/dense_16/MatMul/ReadVariableOp&model_2/dense_16/MatMul/ReadVariableOp2R
'model_2/dense_17/BiasAdd/ReadVariableOp'model_2/dense_17/BiasAdd/ReadVariableOp2P
&model_2/dense_17/MatMul/ReadVariableOp&model_2/dense_17/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????,
!
_user_specified_name	input_3
?

?
D__inference_dense_17_layer_call_and_return_conditional_losses_139996

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
(__inference_model_2_layer_call_fn_140294

inputs
unknown:,+
	unknown_0:+
	unknown_1:+$
	unknown_2:$
	unknown_3:$
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_140132o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????,: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?

?
(__inference_model_2_layer_call_fn_140180
input_3
unknown:,+
	unknown_0:+
	unknown_1:+$
	unknown_2:$
	unknown_3:$
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_140132o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????,: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????,
!
_user_specified_name	input_3
?

?
D__inference_dense_15_layer_call_and_return_conditional_losses_139962

inputs0
matmul_readvariableop_resource:$-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
)__inference_dense_14_layer_call_fn_140428

inputs
unknown:+$
	unknown_0:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_139945o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????+: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????+
 
_user_specified_nameinputs
?

?
D__inference_dense_14_layer_call_and_return_conditional_losses_139945

inputs0
matmul_readvariableop_resource:+$-
biasadd_readvariableop_resource:$
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:+$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????$a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????$w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????+
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_140399
input_3
unknown:,+
	unknown_0:+
	unknown_1:+$
	unknown_2:$
	unknown_3:$
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_139910o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????,: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????,
!
_user_specified_name	input_3
?

?
D__inference_dense_14_layer_call_and_return_conditional_losses_140439

inputs0
matmul_readvariableop_resource:+$-
biasadd_readvariableop_resource:$
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:+$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????$a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????$w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????+
 
_user_specified_nameinputs
?
?
C__inference_model_2_layer_call_and_return_conditional_losses_140209
input_3!
dense_13_140183:,+
dense_13_140185:+!
dense_14_140188:+$
dense_14_140190:$!
dense_15_140193:$
dense_15_140195:!
dense_16_140198:
dense_16_140200:!
dense_17_140203:
dense_17_140205:
identity?? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_13_140183dense_13_140185*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_139928?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_140188dense_14_140190*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_139945?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_140193dense_15_140195*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_139962?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_140198dense_16_140200*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_139979?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_140203dense_17_140205*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_139996x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????,: : : : : : : : : : 2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:P L
'
_output_shapes
:?????????,
!
_user_specified_name	input_3
?

?
(__inference_model_2_layer_call_fn_140269

inputs
unknown:,+
	unknown_0:+
	unknown_1:+$
	unknown_2:$
	unknown_3:$
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_140003o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????,: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?,
?
C__inference_model_2_layer_call_and_return_conditional_losses_140333

inputs9
'dense_13_matmul_readvariableop_resource:,+6
(dense_13_biasadd_readvariableop_resource:+9
'dense_14_matmul_readvariableop_resource:+$6
(dense_14_biasadd_readvariableop_resource:$9
'dense_15_matmul_readvariableop_resource:$6
(dense_15_biasadd_readvariableop_resource:9
'dense_16_matmul_readvariableop_resource:6
(dense_16_biasadd_readvariableop_resource:9
'dense_17_matmul_readvariableop_resource:6
(dense_17_biasadd_readvariableop_resource:
identity??dense_13/BiasAdd/ReadVariableOp?dense_13/MatMul/ReadVariableOp?dense_14/BiasAdd/ReadVariableOp?dense_14/MatMul/ReadVariableOp?dense_15/BiasAdd/ReadVariableOp?dense_15/MatMul/ReadVariableOp?dense_16/BiasAdd/ReadVariableOp?dense_16/MatMul/ReadVariableOp?dense_17/BiasAdd/ReadVariableOp?dense_17/MatMul/ReadVariableOp?
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:,+*
dtype0{
dense_13/MatMulMatMulinputs&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+?
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:+*
dtype0?
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+b
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:?????????+?
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:+$*
dtype0?
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$?
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0?
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$b
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????$?
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0?
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_16/MatMulMatMuldense_15/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_17/SigmoidSigmoiddense_17/BiasAdd:output:0*
T0*'
_output_shapes
:?????????c
IdentityIdentitydense_17/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????,: : : : : : : : : : 2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?
?
C__inference_model_2_layer_call_and_return_conditional_losses_140238
input_3!
dense_13_140212:,+
dense_13_140214:+!
dense_14_140217:+$
dense_14_140219:$!
dense_15_140222:$
dense_15_140224:!
dense_16_140227:
dense_16_140229:!
dense_17_140232:
dense_17_140234:
identity?? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_13_140212dense_13_140214*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_139928?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_140217dense_14_140219*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_139945?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_140222dense_15_140224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_139962?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_140227dense_16_140229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_139979?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_140232dense_17_140234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_139996x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????,: : : : : : : : : : 2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:P L
'
_output_shapes
:?????????,
!
_user_specified_name	input_3
?,
?
C__inference_model_2_layer_call_and_return_conditional_losses_140372

inputs9
'dense_13_matmul_readvariableop_resource:,+6
(dense_13_biasadd_readvariableop_resource:+9
'dense_14_matmul_readvariableop_resource:+$6
(dense_14_biasadd_readvariableop_resource:$9
'dense_15_matmul_readvariableop_resource:$6
(dense_15_biasadd_readvariableop_resource:9
'dense_16_matmul_readvariableop_resource:6
(dense_16_biasadd_readvariableop_resource:9
'dense_17_matmul_readvariableop_resource:6
(dense_17_biasadd_readvariableop_resource:
identity??dense_13/BiasAdd/ReadVariableOp?dense_13/MatMul/ReadVariableOp?dense_14/BiasAdd/ReadVariableOp?dense_14/MatMul/ReadVariableOp?dense_15/BiasAdd/ReadVariableOp?dense_15/MatMul/ReadVariableOp?dense_16/BiasAdd/ReadVariableOp?dense_16/MatMul/ReadVariableOp?dense_17/BiasAdd/ReadVariableOp?dense_17/MatMul/ReadVariableOp?
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:,+*
dtype0{
dense_13/MatMulMatMulinputs&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+?
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:+*
dtype0?
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+b
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:?????????+?
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:+$*
dtype0?
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$?
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0?
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$b
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????$?
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0?
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_16/MatMulMatMuldense_15/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_17/SigmoidSigmoiddense_17/BiasAdd:output:0*
T0*'
_output_shapes
:?????????c
IdentityIdentitydense_17/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????,: : : : : : : : : : 2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_140766
file_prefix2
 assignvariableop_dense_13_kernel:,+.
 assignvariableop_1_dense_13_bias:+4
"assignvariableop_2_dense_14_kernel:+$.
 assignvariableop_3_dense_14_bias:$4
"assignvariableop_4_dense_15_kernel:$.
 assignvariableop_5_dense_15_bias:4
"assignvariableop_6_dense_16_kernel:.
 assignvariableop_7_dense_16_bias:4
"assignvariableop_8_dense_17_kernel:.
 assignvariableop_9_dense_17_bias:)
assignvariableop_10_adamax_iter:	 +
!assignvariableop_11_adamax_beta_1: +
!assignvariableop_12_adamax_beta_2: *
 assignvariableop_13_adamax_decay: 2
(assignvariableop_14_adamax_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: >
,assignvariableop_19_adamax_dense_13_kernel_m:,+8
*assignvariableop_20_adamax_dense_13_bias_m:+>
,assignvariableop_21_adamax_dense_14_kernel_m:+$8
*assignvariableop_22_adamax_dense_14_bias_m:$>
,assignvariableop_23_adamax_dense_15_kernel_m:$8
*assignvariableop_24_adamax_dense_15_bias_m:>
,assignvariableop_25_adamax_dense_16_kernel_m:8
*assignvariableop_26_adamax_dense_16_bias_m:>
,assignvariableop_27_adamax_dense_17_kernel_m:8
*assignvariableop_28_adamax_dense_17_bias_m:>
,assignvariableop_29_adamax_dense_13_kernel_v:,+8
*assignvariableop_30_adamax_dense_13_bias_v:+>
,assignvariableop_31_adamax_dense_14_kernel_v:+$8
*assignvariableop_32_adamax_dense_14_bias_v:$>
,assignvariableop_33_adamax_dense_15_kernel_v:$8
*assignvariableop_34_adamax_dense_15_bias_v:>
,assignvariableop_35_adamax_dense_16_kernel_v:8
*assignvariableop_36_adamax_dense_16_bias_v:>
,assignvariableop_37_adamax_dense_17_kernel_v:8
*assignvariableop_38_adamax_dense_17_bias_v:
identity_40??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_dense_13_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_13_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_14_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_14_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_15_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_15_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_16_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_16_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_17_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_17_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adamax_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_adamax_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp!assignvariableop_12_adamax_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp assignvariableop_13_adamax_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adamax_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adamax_dense_13_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adamax_dense_13_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adamax_dense_14_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adamax_dense_14_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adamax_dense_15_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adamax_dense_15_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adamax_dense_16_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adamax_dense_16_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adamax_dense_17_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adamax_dense_17_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adamax_dense_13_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adamax_dense_13_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adamax_dense_14_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adamax_dense_14_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adamax_dense_15_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adamax_dense_15_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adamax_dense_16_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adamax_dense_16_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adamax_dense_17_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adamax_dense_17_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
)__inference_dense_15_layer_call_fn_140448

inputs
unknown:$
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_139962o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????$: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
)__inference_dense_17_layer_call_fn_140488

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_139996o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_model_2_layer_call_and_return_conditional_losses_140132

inputs!
dense_13_140106:,+
dense_13_140108:+!
dense_14_140111:+$
dense_14_140113:$!
dense_15_140116:$
dense_15_140118:!
dense_16_140121:
dense_16_140123:!
dense_17_140126:
dense_17_140128:
identity?? dense_13/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall? dense_16/StatefulPartitionedCall? dense_17/StatefulPartitionedCall?
 dense_13/StatefulPartitionedCallStatefulPartitionedCallinputsdense_13_140106dense_13_140108*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_139928?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_140111dense_14_140113*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_139945?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_140116dense_15_140118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_139962?
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_140121dense_16_140123*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_139979?
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_140126dense_17_140128*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_139996x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????,: : : : : : : : : : 2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?

?
(__inference_model_2_layer_call_fn_140026
input_3
unknown:,+
	unknown_0:+
	unknown_1:+$
	unknown_2:$
	unknown_3:$
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_140003o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????,: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????,
!
_user_specified_name	input_3
?

?
D__inference_dense_13_layer_call_and_return_conditional_losses_140419

inputs0
matmul_readvariableop_resource:,+-
biasadd_readvariableop_resource:+
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,+*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:+*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????+a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????+w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?
?
)__inference_dense_13_layer_call_fn_140408

inputs
unknown:,+
	unknown_0:+
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_139928o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????+`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?

?
D__inference_dense_15_layer_call_and_return_conditional_losses_140459

inputs0
matmul_readvariableop_resource:$-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
)__inference_dense_16_layer_call_fn_140468

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_139979o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_30
serving_default_input_3:0?????????,<
dense_170
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?l
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
?

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
?

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
?
8iter

9beta_1

:beta_2
	;decay
<learning_ratemgmhmimj mk!ml(mm)mn0mo1mpvqvrvsvt vu!vv(vw)vx0vy1vz"
	optimizer
f
0
1
2
3
 4
!5
(6
)7
08
19"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_model_2_layer_call_fn_140026
(__inference_model_2_layer_call_fn_140269
(__inference_model_2_layer_call_fn_140294
(__inference_model_2_layer_call_fn_140180?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_model_2_layer_call_and_return_conditional_losses_140333
C__inference_model_2_layer_call_and_return_conditional_losses_140372
C__inference_model_2_layer_call_and_return_conditional_losses_140209
C__inference_model_2_layer_call_and_return_conditional_losses_140238?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_139910input_3"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
Bserving_default"
signature_map
!:,+2dense_13/kernel
:+2dense_13/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_13_layer_call_fn_140408?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_13_layer_call_and_return_conditional_losses_140419?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:+$2dense_14/kernel
:$2dense_14/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_14_layer_call_fn_140428?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_14_layer_call_and_return_conditional_losses_140439?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:$2dense_15/kernel
:2dense_15/bias
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_15_layer_call_fn_140448?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_15_layer_call_and_return_conditional_losses_140459?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:2dense_16/kernel
:2dense_16/bias
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_16_layer_call_fn_140468?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_16_layer_call_and_return_conditional_losses_140479?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:2dense_17/kernel
:2dense_17/bias
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_17_layer_call_fn_140488?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_17_layer_call_and_return_conditional_losses_140499?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2Adamax/iter
: (2Adamax/beta_1
: (2Adamax/beta_2
: (2Adamax/decay
: (2Adamax/learning_rate
f
0
1
2
3
 4
!5
(6
)7
08
19"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_140399input_3"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	^total
	_count
`	variables
a	keras_api"
_tf_keras_metric
^
	btotal
	ccount
d
_fn_kwargs
e	variables
f	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
^0
_1"
trackable_list_wrapper
-
`	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
b0
c1"
trackable_list_wrapper
-
e	variables"
_generic_user_object
(:&,+2Adamax/dense_13/kernel/m
": +2Adamax/dense_13/bias/m
(:&+$2Adamax/dense_14/kernel/m
": $2Adamax/dense_14/bias/m
(:&$2Adamax/dense_15/kernel/m
": 2Adamax/dense_15/bias/m
(:&2Adamax/dense_16/kernel/m
": 2Adamax/dense_16/bias/m
(:&2Adamax/dense_17/kernel/m
": 2Adamax/dense_17/bias/m
(:&,+2Adamax/dense_13/kernel/v
": +2Adamax/dense_13/bias/v
(:&+$2Adamax/dense_14/kernel/v
": $2Adamax/dense_14/bias/v
(:&$2Adamax/dense_15/kernel/v
": 2Adamax/dense_15/bias/v
(:&2Adamax/dense_16/kernel/v
": 2Adamax/dense_16/bias/v
(:&2Adamax/dense_17/kernel/v
": 2Adamax/dense_17/bias/v?
!__inference__wrapped_model_139910s
 !()010?-
&?#
!?
input_3?????????,
? "3?0
.
dense_17"?
dense_17??????????
D__inference_dense_13_layer_call_and_return_conditional_losses_140419\/?,
%?"
 ?
inputs?????????,
? "%?"
?
0?????????+
? |
)__inference_dense_13_layer_call_fn_140408O/?,
%?"
 ?
inputs?????????,
? "??????????+?
D__inference_dense_14_layer_call_and_return_conditional_losses_140439\/?,
%?"
 ?
inputs?????????+
? "%?"
?
0?????????$
? |
)__inference_dense_14_layer_call_fn_140428O/?,
%?"
 ?
inputs?????????+
? "??????????$?
D__inference_dense_15_layer_call_and_return_conditional_losses_140459\ !/?,
%?"
 ?
inputs?????????$
? "%?"
?
0?????????
? |
)__inference_dense_15_layer_call_fn_140448O !/?,
%?"
 ?
inputs?????????$
? "???????????
D__inference_dense_16_layer_call_and_return_conditional_losses_140479\()/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
)__inference_dense_16_layer_call_fn_140468O()/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_dense_17_layer_call_and_return_conditional_losses_140499\01/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
)__inference_dense_17_layer_call_fn_140488O01/?,
%?"
 ?
inputs?????????
? "???????????
C__inference_model_2_layer_call_and_return_conditional_losses_140209m
 !()018?5
.?+
!?
input_3?????????,
p 

 
? "%?"
?
0?????????
? ?
C__inference_model_2_layer_call_and_return_conditional_losses_140238m
 !()018?5
.?+
!?
input_3?????????,
p

 
? "%?"
?
0?????????
? ?
C__inference_model_2_layer_call_and_return_conditional_losses_140333l
 !()017?4
-?*
 ?
inputs?????????,
p 

 
? "%?"
?
0?????????
? ?
C__inference_model_2_layer_call_and_return_conditional_losses_140372l
 !()017?4
-?*
 ?
inputs?????????,
p

 
? "%?"
?
0?????????
? ?
(__inference_model_2_layer_call_fn_140026`
 !()018?5
.?+
!?
input_3?????????,
p 

 
? "???????????
(__inference_model_2_layer_call_fn_140180`
 !()018?5
.?+
!?
input_3?????????,
p

 
? "???????????
(__inference_model_2_layer_call_fn_140269_
 !()017?4
-?*
 ?
inputs?????????,
p 

 
? "???????????
(__inference_model_2_layer_call_fn_140294_
 !()017?4
-?*
 ?
inputs?????????,
p

 
? "???????????
$__inference_signature_wrapper_140399~
 !()01;?8
? 
1?.
,
input_3!?
input_3?????????,"3?0
.
dense_17"?
dense_17?????????