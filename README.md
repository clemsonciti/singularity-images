# Singularity container for Caffe with GPU support

This repository provides everything needed to build a
singularity container for Caffe with GPU support.
It is based on the following project:

https://github.com/jdongca2003/Tensorflow-singularity-container-with-GPU-support/

## How to build
 1. Install [singularity](https://github.com/gmkurtzer/singularity) from master branch. You can see the installation instructions on [singularity homepage](http://singularity.lbl.gov/#install) (section: Build an RPM from the source).
 2. Download nvidia driver (NVIDIA-Linux-x86_64-352.93.run), cuda 7.5 (cuda_7.5.18_linux.run) and cudnn5 (cudnn-7.5-linux-x64-v5.1.tgz) (Here I assume that the same nvidia driver/cuda have been installed in your host machine) and store the downloaded files and above scripts under the same folder.
 3. Run "sh build.sh" (assume that you have sudo access) 
 5. copy ubuntu_tensorflow_GPU.img into your own local folder and change its owner and group (sudo chown your_user_id:your_group_id ubuntu_tensorflow_GPU.img) so that you can run it with local user.
 6. Run "singularity exec ubuntu_tensorflow_GPU.img python hello_world.py" to check whether it works.
 
## Trouble shooting
#### I don't have root access. How can I install it?
Install virtualbox and vagrant. You can build container image inside a linux VM (e.g. ubuntu 14.04) and copy it into your host machine with Nvidia GPU card.

#### My nvidia driver/cuda versions are different from those in the above scripts. How can I modify the above scripts?
At the first step, you need to run 'nvidia-smi' to identify your nvidia driver version in your host machine. Then you can download the corresponding nvidia driver
(NVIDIA-Linux-x86_64-$driver_version.run ) and cuda/cudnn version and modify the script "tensorflow.sh". 
 

