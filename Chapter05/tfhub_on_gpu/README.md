## Training a TFHub ResNet feature vector model on GPU


To see how this example work, you need to complete the following first:

1. Go to [`tfrecord-dataset`](https://github.com/PacktPublishing/learn-tensorflow-enterprise/tree/master/chapter_05/tfrecord_dataset) and upload the content according to demonstration there. The folder contains the data for you to upload to your own Google cloud storage. 
2. Make a note of the file path, such as: `gs://<MY_BUCKET_NAME>/<DATA_DIR_NAME>`
    In this path, you should have two training TFRecord parts, one validation part, one test part, and one small test part. This is your `data_dir` in the command below.
3. Create a target bucket for staging purpose during training and saving the trained model one training is done. Make a note of the storage bucket name as `gs://<TRAIN_BUCKET_NAME>/<SAVING_FOLDER_NAME>` (this is `model_dir` and `staging-bucket` in the training command example below).
4. Download ResNet feature vector from TensorFlow Hub in https://tfhub.dev/google/imagenet/resnet_v2_50/feature_vector/4, unzip it, and then upload it to your own storage bucket. Make a note of the path to the saved_model.pb. It should be something like: gs://<MY_BUCKET_AND_FOLDER>/imagenet_resnet_v2_50_feature_vector_4


Only then you may run the following command from this directory in your own environment:

```console
sh train_driver.sh
```

###You need to edit `trainer_driver.sh` by replacing these four inputs with that of your own: 

a job name,
`--staging-bucket`
`--model_dir`
`--data_dir`

In my case of example below, this is inside the shell script:

```console
gcloud ai-platform jobs submit training traincloudgpu_tfhub_resnet_gpu \
--staging-bucket=gs://ai-tpu-experiment \
--package-path=tfhub_resnet_fv_on_gpu \
--module-name=tfhub_resnet_fv_on_gpu.trainer_hub_gpu \
--runtime-version=2.2 \
--python-version=3.7 \
--scale-tier=BASIC_GPU \
--region=us-central1 \
-- \
--distribution_strategy=gpu \
--model_dir=gs://ai-tpu-experiment/traincloudgpu_tfhub_resnet_gpu \
--train_epochs=10 \
--data_dir=gs://ai-tpu-experiment/tfrecord-flowers \
--num_gpus=4 \
--cache_dir=gs://ai-tpu-experiment/model-cache-dir/imagenet_resnet_v2_50_feature_vector_4
```

Job name is `traincloudgpu_tfhub_resnet_gpu`  
Staging bucket is `gs://ai-tpu-experiment`  
Bucket to save the model is `gs://ai-tpu-experiment/traincloudgpu_tfhub_resnet_gpu`   
Training data is in `gs://tfrecord-dataset/flowers`  
Path to find ResNet feature vector model: `gs://ai-tpu-experiment/model-cache-dir/imagenet_resnet_v2_50_feature_vector_4`  

Notice `traincloudgpu_tfhub_resnet_gpu` is the job name you assign to this execution. Each time you run this command, you need a new job name. GCP AI-Platform doesn't let you reuse job names.




Also, after `-- \`, what you see are script specific flags. If you write your own training script like I did in this case, these flag names are up to you. This is how you would specify user flags and pass these flags into your script.

Before `-- \` are all Google Cloud ai-platform flags. Therefore these flags names should not be changed.