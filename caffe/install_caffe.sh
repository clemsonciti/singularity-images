git clone https://github.com/BVLC/caffe.git
cd caffe
cp /mnt/Makefile.config.example Makefile.config
make all -j8
make pycaffe
make distribute
mv distribute /opt/caffe
echo "export PYTHONPATH=/opt/caffe/python:\$PYTHONPATH" >> /environment
echo "export PATH=/opt/caffe/bin:\$PATH" >> /environment
echo "export LD_LIBRARY_PATH=/opt/caffe/lib:\$LD_LIBRARY_PATH" >> /environment
echo "export LIBRARY_PATH=/opt/caffe/lib:\$LIBRARY_PATH" >> /environment
