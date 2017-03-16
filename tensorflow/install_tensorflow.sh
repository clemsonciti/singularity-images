apt-get install -y --force-yes git
apt-get install -y --force-yes libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
apt-get install -y --force-yes --no-install-recommends libboost-all-dev
apt-get install -y --force-yes libgflags-dev libgoogle-glog-dev liblmdb-dev
apt-get install -y --force-yes libatlas-base-dev
apt-get install -y --force-yes python-dev python-numpy python-matplotlib python-pillow python-pandas python-h5py
apt-get install -y --force-yes python-setuptools
easy_install pip
export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.0.0-cp27-none-linux_x86_64.whl
pip install --upgrade $TF_BINARY_URL
pip install tflearn
