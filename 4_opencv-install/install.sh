apt-get update && apt-get install -y --no-install-recommends apt-utils

apt-get install -y --no-install-recommends ca-certificates unzip wget

apt-get install -y --no-install-recommends build-essential cmake
apt-get install -y --no-install-recommends pkg-config
apt-get install -y --no-install-recommends libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
apt-get install -y --no-install-recommends ffmpeg libavresample-dev libavcodec-dev libavformat-dev libswscale-dev libxvidcore-dev libx264-dev libxine2-dev
apt-get install -y --no-install-recommends libv4l-dev v4l-utils
apt-get install -y --no-install-recommends libtbb-dev
apt-get install -y --no-install-recommends libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
apt-get install -y --no-install-recommends libqt4-dev
apt-get install -y --no-install-recommends mesa-utils libgl1-mesa-dri libqt4-opengl-dev
apt-get install -y --no-install-recommends libatlas-base-dev gfortran libeigen3-dev

cd ~
mkdir opencv
cd opencv
wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.0.zip
unzip opencv.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.0.zip
unzip opencv_contrib.zip

cd opencv-3.4.0/
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
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
      ../ | tee /tmp/opencv_cmake.log
