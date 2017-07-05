sudo rm -f centos7-openquake.img
sudo singularity create centos7-openquake.img
sudo singularity expand --size 8192 centos7-openquake.img
sudo singularity import centos7-openquake.img docker://centos:7
sudo singularity exec -w -B `pwd`:/mnt centos7-openquake.img sh /mnt/install_openquake.sh
