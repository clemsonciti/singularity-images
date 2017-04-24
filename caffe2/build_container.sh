sudo rm -f ubuntu_caffe2_gpu.img
sudo singularity create ubuntu_caffe2_gpu.img
sudo singularity expand --size 8192 ubuntu_caffe2_gpu.img
sudo singularity bootstrap ubuntu_caffe2_gpu.img ubuntu.def
sudo singularity exec -B `pwd`:/mnt -w ubuntu_caffe2_gpu.img sh /mnt/install_cuda.sh
sudo singularity exec -B `pwd`:/mnt -w ubuntu_caffe2_gpu.img sh /mnt/install_caffe2_deps.sh
sudo singularity exec -B `pwd`:/mnt -w ubuntu_caffe2_gpu.img sh /mnt/install_caffe2.sh
sudo singularity exec -B `pwd`:/mnt -w ubuntu_caffe2_gpu.img mkdir /local_scratch
sudo singularity exec -B `pwd`:/mnt -w ubuntu_caffe2_gpu.img mkdir /scratch2
sudo singularity exec -B `pwd`:/mnt -w ubuntu_caffe2_gpu.img mkdir /software
