# We will use Ubuntu for our image

FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-qt5-pytorch

##############################
# INSTALL PACKAGES     #
##############################
RUN apt install -y build-essential cmake unzip pkg-config
RUN apt install -y libjpeg-dev libpng-dev libtiff-dev
RUN apt install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
RUN apt install -y libxvidcore-dev libx264-dev
RUN apt install -y libgtk-3-dev
RUN apt install -y libatlas-base-dev gfortran
#apt install -y software-properties-common
#RUN apt install -y python-dev python-pip
RUN apt install -y python3-dev python3-pip

##############################
# INSTALL CUDACODEC     #
##############################
RUN cd /tmp \
    && wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1CSH35N-doFMO8VGPj10woLgr9FXuPdS5' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1CSH35N-doFMO8VGPj10woLgr9FXuPdS5" -O Video_Codec_SDK_9.1.23.zip && rm -rf /tmp/cookies.txt

RUN cd /tmp \
    && unzip Video_Codec_SDK_9.1.23.zip

RUN cd /tmp/Video_Codec_SDK_9.1.23/Lib/linux/stubs/x86_64/ \
    #&& cp libnvcuvid.so /usr/local/cuda-10.0/lib64/ \
    #&& cp libnvcuvid.so /usr/local/cuda/lib64/ \
    && cp * /usr/local/cuda-10.0/lib64/stubs/ \
    && cp libnvidia-encode.so /usr/lib/x86_64-linux-gnu/

RUN cd /tmp/Video_Codec_SDK_9.1.23/include/ \
    && cp * /usr/local/cuda-10.0/include/ \
    && cp * /usr/local/cuda/include/

##############################
# DOWNLOAD OPENCV     #
##############################
#RUN cd /tmp && \
    # Opencv version 3.4.5
    #wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.5.zip &&\
    #wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.5.zip &&\

# Opencv master
RUN cd /tmp && \
    wget -O opencv.zip https://github.com/opencv/opencv/archive/master.zip
RUN cd /tmp && \
    wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/master.zip

RUN cd /tmp && \
    unzip opencv.zip &&\
    unzip opencv_contrib.zip

RUN cd /tmp/ && \
    cp opencv-master/modules/videoio/src/cap_ffmpeg_impl.hpp /tmp/opencv_contrib-master/modules/cudacodec/src/

##############################
# CMAKE AND MAKE OPENCV     #
##############################
#RUN cd /tmp/opencv-3.4.5 &&\

RUN cd /tmp/opencv-master &&\
mkdir build &&\
cd build &&\
cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D INSTALL_PYTHON_EXAMPLES=OFF \
-D INSTALL_C_EXAMPLES=OFF \
-D OPENCV_ENABLE_NONFREE=OFF \
#-D OPENCV_EXTRA_MODULES_PATH=/tmp/opencv_contrib-3.4.5/modules \
-D OPENCV_EXTRA_MODULES_PATH=/tmp/opencv_contrib-master/modules \ 
-D BUILD_opencv_python3=ON \ 
-D BUILD_opencv_python2=OFF \
#-D PYTHON3_EXECUTABLE=/usr/bin/python3.5 \
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
-D CUDA_ARCH_BIN="7.5" \
-D CUDA_ARCH_PTX="7.5" \
-D CMAKE_LIBRARY_PATH=/usr/local/cuda-10.0/lib64/stubs ..


#RUN cd /tmp/opencv-3.4.5/build &&\

RUN cd /tmp/opencv-master/build &&\
make -j16 &&\
make install

##############################
# REMOVE DOWNLOADED FILE     #
##############################
RUN rm -rf /tmp/*