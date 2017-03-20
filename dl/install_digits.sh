apt-get install -y --force-yes --no-install-recommends graphviz python-dev python-flask python-flaskext.wtf python-gevent python-pyparsing
DIGITS_ROOT=/opt/DIGITS
git clone https://github.com/NVIDIA/DIGITS.git $DIGITS_ROOT
pip install setuptools==33.1.1 # needed to avoid pyparsing errors..
cp /mnt/requirements.txt $DIGITS_ROOT/
pip install -r $DIGITS_ROOT/requirements.txt
pip install -e $DIGITS_ROOT
echo "export DIGITS_JOBS_DIR=/home/\$USER/.digits_jobs" >> /environment

pip install -U pip
