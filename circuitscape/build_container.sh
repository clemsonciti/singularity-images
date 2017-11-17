sudo rm -f circuitscape.img
sudo singularity create circuitscape.img
sudo singularity expand --size 8192 circuitscape.img
sudo singularity bootstrap circuitscape.img ubuntu.def
sudo singularity exec -B `pwd`:/mnt -w circuitscape.img sh /mnt/install_circuitscape.sh
sudo singularity exec -B `pwd`:/mnt -w circuitscape.img mkdir /local_scratch
sudo singularity exec -B `pwd`:/mnt -w circuitscape.img mkdir /scratch2
sudo singularity exec -B `pwd`:/mnt -w circuitscape.img mkdir /software
