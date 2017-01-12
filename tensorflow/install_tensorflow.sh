apt-get install -y --force-yes git
apt-get install -y --force-yes libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
apt-get install -y --force-yes --no-install-recommends libboost-all-dev
apt-get install -y --force-yes libgflags-dev libgoogle-glog-dev liblmdb-dev
apt-get install -y --force-yes libatlas-base-dev
apt-get install -y --force-yes python-pip python-dev

export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.12.1-cp27-none-linux_x86_64.whl
pip install --upgrade $TF_BINARY_URL
