cafeVersion="master"
mkdir installation
cd installation
cwd=$(pwd)

sudo apt-get install -y cmake git unzip
sudo apt-get install -y libprotobuf-dev libleveldb-dev liblmdb-dev
sudo apt-get install -y libsnappy-dev libhdf5-serial-dev protobuf-compiler
sudo apt-get install -y --no-install-recommends libboost-all-dev
sudo apt-get install -y libatlas-base-dev libopenblas-dev
sudo pip3 install pydot scikit-learn
sudo apt-get install -y graphviz

wget -O caffe.zip https://github.com/Qengineering/caffe/archive/ssd.zip
unzip caffe.zip

mv caffe-ssd caffe

