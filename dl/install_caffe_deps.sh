apt-get install -y --force-yes software-properties-common python-software-properties
apt-add-repository -y ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install -y --force-yes gcc-5 g++-5 gfortran
apt-get install -y --force-yes git
apt-get install -y --force-yes libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler libopenblas-dev
apt-get install -y --force-yes --no-install-recommends libboost-all-dev
apt-get install -y --force-yes libgflags-dev libgoogle-glog-dev liblmdb-dev
apt-get install -y --force-yes libatlas-base-dev liblapack3
apt-get install -y --force-yes python-dev
apt-get install -y --force-yes python-pip
apt-get install -y --force-yes cython python-numpy python-scipy python-skimage python-matplotlib ipython python-h5py python-leveldb python-networkx python-nose python-pandas python-dateutil python-protobuf python-gflags python-yaml python-pillow
pip install protobuf==3.2.0
apt-get install -y --force-yes autoconf automake libtool curl make g++ unzip
git clone https://github.com/google/protobuf
cd protobuf
git checkout v3.2.0
./autogen.sh
./configure
make -j8
make install
ldconfig
cd
rm -rf ~/protobuf
