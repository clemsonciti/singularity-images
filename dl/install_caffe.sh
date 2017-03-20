git clone https://github.com/nvidia/caffe.git
cd caffe
cp /mnt/Makefile.config.example Makefile.config
make all -j8
make pycaffe
make distribute
mv distribute /opt/caffe
for file in /opt/caffe/bin/*
do
    mv $file /opt/caffe/bin/`basename $file .bin`
done
echo "export PYTHONPATH=/opt/caffe/python:\$PYTHONPATH" >> /environment
echo "export PATH=/opt/caffe/bin:\$PATH" >> /environment
echo "export LD_LIBRARY_PATH=/opt/caffe/lib:\$LD_LIBRARY_PATH" >> /environment
echo "export LIBRARY_PATH=/opt/caffe/lib:\$LIBRARY_PATH" >> /environment
rm -rf ~/caffe
