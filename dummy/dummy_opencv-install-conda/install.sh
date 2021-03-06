# Httpscha://www.pyimagesearch.com/2018/05/28/ubuntu-18-04-how-to-install-opencv/
# https://docs.opencv.org/trunk/d7/d9f/tutorial_linux_install.html

apt update
apt upgrade

apt install -y libcudnn7 libcudnn7-dev libnccl-dev libnccl2

apt install -y build-essential cmake unzip pkg-config
apt install -y libjpeg-dev libpng-dev libtiff-dev
apt install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
apt install -y libxvidcore-dev libx264-dev
apt install -y libgtk-3-dev
apt install -y libatlas-base-dev gfortran

apt install -y software-properties-common

cd /tmp

#############################################
## PYTHON 3.6 INSTALL ##
#add-apt-repository ppa:deadsnakes/ppa
#apt update
#apt install python3-dev
#apt install -y python3.6
#wget https://bootstrap.pypa.io/get-pip.py
#python3.6 get-pip.py
#pip3.6 install numpy
#############################################

wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.5.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.5.zip

unzip opencv.zip
unzip opencv_contrib.zip

cd opencv-3.4.5
mkdir build

cd /tmp/opencv-3.4.5/build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D INSTALL_PYTHON_EXAMPLES=OFF \
-D INSTALL_C_EXAMPLES=OFF \
-D OPENCV_ENABLE_NONFREE=OFF \
-D OPENCV_EXTRA_MODULES_PATH=/tmp/opencv_contrib-3.4.5/modules \ #-D BUILD_opencv_python3=ON \ #-D BUILD_opencv_python2=ON \
-D PYTHON3_EXECUTABLE=/home/user170/anaconda3/envs/Py37Conda/bin/python3.7 \
-D BUILD_EXAMPLES=OFF \
-D WITH_TBB=ON \
-D WITH_QT=OFF \
-D WITH_OPENGL=ON \
-D WITH_V4L=ON \
-D WITH_FFMPEG=ON \
-D WITH_XINE=ON \
-D BUILD_NEW_PYTHON_SUPPORT=ON \
-D WITH_CUBLAS=ON \
-D WITH_NVCUVID=ON \
-D ENABLE_FAST_MATH=ON \
-D WITH_CUDA=ON \
-D CUDA_FAST_MATH=ON \
-D CUDA_ARCH_BIN="6.1" \
-D CUDA_ARCH_PTX="6.1" \
-D CMAKE_LIBRARY_PATH=/usr/local/cuda-9.0/lib64/stubs ..

#sudo make -j$nproc
