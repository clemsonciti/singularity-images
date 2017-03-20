driver_version=367.44

sh /mnt/NVIDIA-Linux-x86_64-$driver_version.run -x
mv NVIDIA-Linux-x86_64-$driver_version /usr/local/
sh /mnt/links.sh $driver_version

apt-get -y --force-yes install perl gcc

sh /mnt/cuda_8.0.44_linux-run --toolkit --silent --toolkitpath=/usr/local/cuda-8.0
cp -r -f --symbolic-link /usr/local/cuda-8.0/* /usr/local/cuda/

tar xvf /mnt/cudnn-8.0-linux-x64-v5.1.tgz -C /usr/local

driver_path=/usr/local/NVIDIA-Linux-x86_64-$driver_version
echo "export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$driver_path:\$LD_LIBRARY_PATH" >> /environment
echo "export LIBRARY_PATH=\$LD_LIBRARY_PATH" >> /environment
echo "export PATH=$driver_path:\$PATH" >> /environment
