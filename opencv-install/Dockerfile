FROM liprin1129/dev:v6-zed

##############################
# INSTALL PACKAGES     #
##############################
RUN apt update
RUN apt install -y build-essential cmake unzip pkg-config wget
RUN apt install -y libjpeg-dev libpng-dev libtiff-dev
RUN apt install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
RUN apt install -y libxvidcore-dev libx264-dev
RUN apt install -y libgtk-3-dev
RUN apt install -y libatlas-base-dev gfortran
#apt install -y software-properties-common
#RUN apt install -y python-dev python-pip
RUN apt install -y python3-dev python3-pip
RUN pip3 install numpy

##############################
# DOWNLOAD OPENCV     #
##############################
RUN cd /tmp && wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.10.zip
RUN cd /tmp && wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.10.zip
RUN cd /tmp && unzip opencv.zip
RUN cd /tmp && unzip opencv_contrib.zip

##############################
# CMAKE AND MAKE OPENCV     #
##############################
RUN cd /tmp/opencv-3.4.10 &&\
mkdir build &&\
cd build &&\
cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D INSTALL_PYTHON_EXAMPLES=OFF \
-D INSTALL_C_EXAMPLES=OFF \
-D OPENCV_ENABLE_NONFREE=OFF \
-D OPENCV_EXTRA_MODULES_PATH=/tmp/opencv_contrib-3.4.10/modules \ 
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
-D ENABLE_FAST_MATH=ON \
-D WITH_CUDA=ON \
-D CUDA_FAST_MATH=ON \
#-D CUDA_ARCH_BIN="7.5" \
#-D CUDA_ARCH_PTX="7.5" \
-D CMAKE_LIBRARY_PATH=/usr/local/cuda-10.2/lib64/stubs ..

RUN cd /tmp/opencv-3.4.10/build &&\
make -j15 &&\
make install

##############################
# REMOVE DOWNLOADED FILE     #
##############################
#RUN rm -rf /tmp/*
#RUN rm -rf /var/lib/apt/lists/*
