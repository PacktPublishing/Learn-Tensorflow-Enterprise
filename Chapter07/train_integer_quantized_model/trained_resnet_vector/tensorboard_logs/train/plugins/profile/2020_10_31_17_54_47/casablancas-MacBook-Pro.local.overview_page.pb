�	w��/��@w��/��@!w��/��@	�a��5sv?�a��5sv?!�a��5sv?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$w��/��@���(\��?A�l�����@Y
ףp=
�?*     P�@    L
A2�
YIterator::Model::Prefetch::BatchV2::ShuffleAndRepeat::MemoryCacheImpl::ParallelMapV2::Map X9�Ȇ_@!��=�L@)�$��s_@1�Ћ���L@:Preprocessing2�
TIterator::Model::Prefetch::BatchV2::ShuffleAndRepeat::MemoryCacheImpl::ParallelMapV25^�I�M@!��i�!;@)5^�I�M@1��i�!;@:Preprocessing2|
EIterator::Model::Prefetch::BatchV2::ShuffleAndRepeat::MemoryCacheImpl^�I�F@!t_�P�4@)y�&1�/@1)�;m�)@:Preprocessing2x
AIterator::Model::Prefetch::BatchV2::ShuffleAndRepeat::MemoryCache��|?5�E@!�i�]�3@)m�����+@1f"�Qk@:Preprocessing2�
|Iterator::Model::Prefetch::BatchV2::ShuffleAndRepeat::MemoryCacheImpl::ParallelMapV2::Map::ParallelInterleaveV4[0]::TFRecord���K7�?! 6
D߰�?)���K7�?1 6
D߰�?:Advanced file read2�
|Iterator::Model::Prefetch::BatchV2::ShuffleAndRepeat::MemoryCacheImpl::ParallelMapV2::Map::ParallelInterleaveV4[1]::TFRecord���Q��?!�50i�?)���Q��?1�50i�?:Advanced file read2�
oIterator::Model::Prefetch::BatchV2::ShuffleAndRepeat::MemoryCacheImpl::ParallelMapV2::Map::ParallelInterleaveV4 333333�?!�<�c��?)333333�?1�<�c��?:Preprocessing2k
4Iterator::Model::Prefetch::BatchV2::ShuffleAndRepeat�Zd;�=@!���.KJ+@)���Q��?1*a�}��?:Preprocessing2F
Iterator::Model�������?!�PH�.c�?)�� �rh�?1��}��?:Preprocessing2P
Iterator::Model::Prefetch����Mb�?!p4����m?)����Mb�?1p4����m?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9�a��5sv?#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	���(\��?���(\��?!���(\��?      ��!       "      ��!       *      ��!       2	�l�����@�l�����@!�l�����@:      ��!       B      ��!       J	
ףp=
�?
ףp=
�?!
ףp=
�?R      ��!       Z	
ףp=
�?
ףp=
�?!
ףp=
�?JCPU_ONLYY�a��5sv?b Y      Y@qN<P[y>|?"�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2I
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono:
Refer to the TF2 Profiler FAQ2"CPU: B 