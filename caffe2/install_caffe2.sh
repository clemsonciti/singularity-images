git clone --recursive https://github.com/caffe2/caffe2.git
cd caffe2
make -j16 && cd build && make -j16 install
echo "export PYTHONPATH=/usr/local:\$PYTHONPATH" >> /environment
echo "export LD_LIBRARY_PATH=/usr/local/lib:\$LD_LIBRARY_PATH" >> /environment
rm -rf ~/caffe
