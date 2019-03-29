FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

RUN apt-get update
RUN apt-get install -y --no-install-recommends ca-certificates unzip wget
RUN apt-get install -y --no-install-recommends build-essential cmake

RUN mkdir /tmp/opencv \
    && cd /tmp/opencv \
    && wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.0.zip \
    && unzip opencv.zip \
    && wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.0.zip \
    && unzip opencv_contrib.zip \
    && cd opencv-3.4.0 \
    && mkdir build \
    && cd build \
    && pwd \
    && ls \
    && cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D WITH_TBB=ON \
      -D WITH_IPP=OFF \
      -D WITH_1394=OFF \
      -D BUILD_WITH_DEBUG_INFO=OFF \
      -D BUILD_DOCS=OFF \
      -D INSTALL_C_EXAMPLES=ON \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D BUILD_EXAMPLES=OFF \
      -D BUILD_TESTS=OFF \
      -D BUILD_PERF_TESTS=OFF \
      -D WITH_QT=ON \
      -D WITH_OPENGL=ON \
      -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-3.4.0/modules \
      -D WITH_V4L=ON  \
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
      ../ | tee /tmp/opencv_cmake.log \
      && make -j "$(nproc)"

