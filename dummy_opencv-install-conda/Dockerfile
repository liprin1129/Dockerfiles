# We will use Ubuntu for our image
#FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-conda
FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5

##############################
# INSTALL PYTHON PACKAGES    #
##############################
#RUN conda install numpy pandas matplotlib scikit-learn scikit-image

##############################
# INSTALL OPENCV FROM SOURCH #
##############################
USER root

RUN apt-get update \
    && apt-get install -y -qq --no-install-recommends apt-utils \
    && apt-get install -y -qq --no-install-recommends ca-certificates unzip wget \
    && apt-get install -y -qq --no-install-recommends build-essential cmake \
    && apt-get install -y -qq --no-install-recommends pkg-config \
    && apt-get install -y -qq --no-install-recommends libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev \
    && apt-get install -y -qq --no-install-recommends ffmpeg libavresample-dev libavcodec-dev libavformat-dev libswscale-dev libxvidcore-dev libx264-dev libxine2-dev \
    && apt-get install -y -qq --no-install-recommends libv4l-dev v4l-utils \
    && apt-get install -y -qq --no-install-recommends libtbb-dev # libgtkglext1-dev libgtkgl2.0-dev

RUN mkdir /tmp/opencv \
    && cd /tmp/opencv \
    && wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.0.zip \
    && unzip opencv.zip \
    && wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.0.zip \
    && unzip opencv_contrib.zip \
    && cd opencv-3.4.0 \
    && mkdir build

RUN cd /tmp/opencv/opencv-3.4.0/build && \
    cmake -D ENABLE_CX11=ON \
    	  -D CMAKE_BUILD_TYPE=RELEASE \
	  -D CMAKE_INSTALL_PREFIX=/usr/local \
	  -D FORCE_VTK=ON \
	  -D WITH_TBB=ON \
	  -D WITH_V4L=ON \
	  -D WITH_QT=ON \
	  -D WITH_OPENGL=ON \
	  -D WITH_CUBLAS=ON \
	  -D WITH_CUDA=ON \
	  -D CUDA_NVCC_FLAGS="-D_FORCE_INLINES" \
	  -D WITH_GDAL=ON \
	  -D WITH_XINE=ON \ 
	  -D BUILD_opencv_python3=ON \
	  -D BUILD_EXAMPLES=OFF \
	  ../ | tee /tmp/opencv_cmake.log

RUN ln -s /usr/local/cuda/extras/CUPTI/include/GL/glx.h /usr/local/include/GL/glx.h
RUN ln -s /usr/local/cuda-9.0/extras/CUPTI/include/GL/glu.h /usr/local/include/GL/glu.h

RUN cd /tmp/opencv/opencv-3.4.0/build \
    && make -j "$(nproc)" \
    && make install \
    && sh -c 'echo '/usr/local/lib' > /etc/ld.so.conf.d/opencv.conf' \
    && ldconfig \
    && cd /tmp \
    && rm -rf opencv
