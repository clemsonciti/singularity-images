apt-get install -y --force-yes software-properties-common python-software-properties
apt-add-repository -y ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install -y --force-yes gcc-5 g++-5
apt-get install -y --force-yes git
apt-get install -y --force-yes libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler libopenblas-dev
apt-get install -y --force-yes --no-install-recommends libboost-all-dev
apt-get install -y --force-yes libgflags-dev libgoogle-glog-dev liblmdb-dev
apt-get install -y --force-yes libatlas-base-dev
apt-get install -y --force-yes python-dev
apt-get install -y --force-yes python-pip
