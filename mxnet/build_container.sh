sudo rm -f ubuntu_mxnet_gpu.img
sudo singularity create ubuntu_mxnet_gpu.img
sudo singularity expand --size 8192 ubuntu_mxnet_gpu.img
sudo singularity bootstrap ubuntu_mxnet_gpu.img ubuntu.def
sudo singularity exec -B `pwd`:/mnt -w ubuntu_mxnet_gpu.img sh /mnt/install_cuda.sh
sudo singularity exec -B `pwd`:/mnt -w ubuntu_mxnet_gpu.img sh /mnt/install_mxnet.sh
