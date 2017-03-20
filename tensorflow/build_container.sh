sudo rm -f ubuntu_tensorflow_gpu.img
sudo singularity create ubuntu_tensorflow_gpu.img
sudo singularity expand --size 8192 ubuntu_tensorflow_gpu.img
sudo singularity bootstrap ubuntu_tensorflow_gpu.img ubuntu.def
sudo singularity exec -B `pwd`:/mnt -w ubuntu_tensorflow_gpu.img sh /mnt/install_cuda.sh
sudo singularity exec -B `pwd`:/mnt -w ubuntu_tensorflow_gpu.img sh /mnt/install_tensorflow.sh
sudo singularity exec -B `pwd`:/mnt -w ubuntu_tensorflow_gpu.img mkdir /local_scratch
sudo singularity exec -B `pwd`:/mnt -w ubuntu_tensorflow_gpu.img mkdir /scratch2
sudo singularity exec -B `pwd`:/mnt -w ubuntu_tensorflow_gpu.img mkdir /software
