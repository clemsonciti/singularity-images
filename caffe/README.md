# Singularity container for Caffe with GPU support

This repository provides everything needed to build a
singularity container for Caffe with GPU support.
It is based on the following project:

https://github.com/jdongca2003/Tensorflow-singularity-container-with-GPU-support/

## How to build

1. Download nvidia driver `NVIDIA-Linux-x86_64-352.93.run`, cuda 7.5 `cuda_7.5.18_linux.run` and cudnn5 `cudnn-7.5-linux-x64-v5.1.tgz`
(Here I assume that the same nvidia driver/cuda have been installed in your host machine)
and store the downloaded files and above scripts under the same folder.
1. Run `sh build_container.sh` (assumes that you have sudo access) 
1. The `.img` will be produced, which has all the dependencies for setting up caffe installed.
Simply run a shell inside the container with `singularity shell <path-to-img>`

