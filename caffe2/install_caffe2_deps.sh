apt-get install -y --force-yes software-properties-common python-software-properties
apt-add-repository -y ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install -y --force-yes gcc-5 g++-5 gfortran
apt-get install -y --force-yes git

apt-get install -y --no-install-recommends \
      build-essential \
      cmake \
      git \
      libgoogle-glog-dev \
      libprotobuf-dev \
      protobuf-compiler \
      python-dev \
      python-pip

python -m pip install --upgrade --force pip
pip install setuptools==33.1.1

pip install numpy protobuf
apt-get install -y --no-install-recommends libgflags-dev
apt-get install -y --no-install-recommends \
      libgtest-dev \
      libiomp-dev \
      libleveldb-dev \
      liblmdb-dev \
      libopencv-dev \
      libopenmpi-dev \
      libsnappy-dev \
      openmpi-bin \
      openmpi-doc \
      python-pydot
pip install \
      flask \
      graphviz \
      hypothesis \
      jupyter \
      matplotlib \
      pydot python-nvd3 \
      pyyaml \
      requests \
      scikit-image \
      scipy \
      setuptools \
      tornado

