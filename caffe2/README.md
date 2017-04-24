# Singularity container for Caffe with GPU support

This repository provides everything needed to build a
singularity container for NVIDIA Caffe and DIGITS with GPU support.
It is based on the following project:

https://github.com/jdongca2003/Tensorflow-singularity-container-with-GPU-support/

## How to build

1. Download nvidia driver `NVIDIA-Linux-x86_64-352.93.run`, cuda 7.5 `cuda_8.0.44_linux-run` and cudnn5 `cudnn-8.0-linux-x64-v5.1.tgz`
(Here I assume that the same nvidia driver/cuda have been installed in your host machine),
and store the downloaded files and above scripts under the same folder.
2. Run `sh build_container.sh` (assumes that you have sudo access).
3. The `.img` will be produced, which will be able to run Caffe (NVIDIA) and DIGITS, out of the box.
Run a shell inside the container with `singularity shell <path-to-img>`.
