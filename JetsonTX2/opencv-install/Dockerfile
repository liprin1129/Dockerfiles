# We will use Ubuntu for our image

FROM liprin1129/jdocker-base:qt5

##############################
# INSTALL PACKAGES     #
##############################
RUN apt update
RUN apt install -y build-essential cmake unzip pkg-config
RUN apt install -y libjpeg-dev libpng-dev libtiff-dev
RUN apt install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
RUN apt install -y libxvidcore-dev libx264-dev
RUN apt install -y libgtk-3-dev
RUN apt install -y libatlas-base-dev gfortran
#apt install -y software-properties-common
#RUN apt install -y python-dev python-pip
RUN apt install -y python3-dev python3-pip #python3-numpy
#RUN sudo -H pip3 install numpy
RUN pip3 install numpy
##############################
# DOWNLOAD OPENCV     #
##############################
RUN cd /tmp && \
wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.5.zip &&\
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.5.zip &&\
unzip opencv.zip &&\
unzip opencv_contrib.zip

##############################
# CMAKE AND MAKE OPENCV     #
##############################
#-D PYTHON3_EXECUTABLE=/usr/bin/python3.5 \

RUN cd /tmp/opencv-3.4.5 &&\
mkdir build &&\
cd build &&\
cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D INSTALL_PYTHON_EXAMPLES=OFF \
-D INSTALL_C_EXAMPLES=OFF \
-D OPENCV_ENABLE_NONFREE=OFF \
-D OPENCV_EXTRA_MODULES_PATH=/tmp/opencv_contrib-3.4.5/modules \
-D BUILD_opencv_python3=ON \
-D BUILD_opencv_python2=OFF \
-D BUILD_EXAMPLES=OFF \
-D WITH_TBB=ON \
-D WITH_QT=ON \
-D WITH_OPENGL=ON \
-D WITH_V4L=ON \
-D WITH_FFMPEG=ON \
-D WITH_XINE=ON \
-D BUILD_opencv_xfeatures2d=OFF \
-D BUILD_NEW_PYTHON_SUPPORT=ON \
-D WITH_CUBLAS=ON \
-D WITH_NVCUVID=ON \
-D ENABLE_FAST_MATH=OFF \
-D WITH_CUDA=ON \
-D CUDA_FAST_MATH=ON \
-D CUDA_ARCH_BIN="6.2" \
-D CUDA_ARCH_PTX="6.2" \
-D CMAKE_LIBRARY_PATH=/usr/local/cuda-10.0/lib64/stubs ..

RUN cd /tmp/opencv-3.4.5/build &&\
make -j4 &&\
make install

##############################
# REMOVE DOWNLOADED FILE     #
##############################
RUN rm -rf /tmp/*
