sudo rm -f ubuntu_caffe.img
sudo singularity create ubuntu_caffe_gpu.img
sudo singularity expand --size 8192 ubuntu_caffe_gpu.img
sudo singularity bootstrap ubuntu_caffe_gpu.img ubuntu.def
sudo singularity exec -B `pwd`:/mnt -w ubuntu_caffe_gpu.img sh /mnt/install_cuda.sh
sudo singularity exec -B `pwd`:/mnt -w ubuntu_caffe_gpu.img sh /mnt/install_caffe_deps.sh
