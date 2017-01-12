apt-get install -y --force-yes git
apt-get install wget
apt-get install sudo
apt-get install -y --force-yes python-dev libzmq3-dev

# Clone mxnet repository. In terminal, run the commands WITHOUT "sudo"
git clone https://github.com/dmlc/mxnet.git /mxnet --recursive

# If building with GPU, add configurations to config.mk file:
cd /mxnet
cp make/config.mk .
echo "USE_CUDA=1" >>config.mk
echo "USE_CUDA_PATH=/usr/local/cuda" >>config.mk
echo "USE_CUDNN=1" >>config.mk
echo "USE_DIST_KVSTORE=1" >>config.mk

# Install MXNet for Python with all required dependencies
cd /mxnet/setup-utils
HOME=/ bash install-mxnet-ubuntu-python.sh

# Add changes to environment
echo "PYTHONPATH=/mxnet/python" >> /environment
echo "LD_LIBRARY_PATH=/mxnet/lib:$LD_LIBRARY_PATH" >> /environment
