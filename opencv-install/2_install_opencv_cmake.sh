cvVersion="master"
cwd=$(pwd)/installation/OpenCV-"$cvVersion"

mkdir $cwd/opencv/build
cd $cwd/opencv/build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D INSTALL_C_EXAMPLES=OFF \
-D INSTALL_PYTHON_EXAMPLES=OFF \
-D WITH_TBB=ON \
-D WITH_V4L=ON \
-D PYTHON_DEFAULT_EXECUTABLE=$(which python3) \
-D WITH_QT=ON \
-D WITH_OPENGL=ON \
-D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
-D OPENCV_GENERATE_PKGCONFIG=YES \
-D BUILD_EXAMPLES=OFF .. \
-D BUILD_TIFF=ON \
-D WITH_TIFF=ON \
-D WITH_FFMPEG=ON \
-D WITH_XINE=ON \
-D WITH_NVCUVID=ON \
-D WITH_CUDA=ON \
-D OPENCV_DNN_CUDA=ON \
-D ENABLE_FAST_MATH=ON \
-D CUDA_FAST_MATH=ON \
-D WITH_CUBLAS=ON \
-D WITH_CUDNN=ON \
-D CMAKE_LIBRARY_PATH=/usr/local/cuda-10.2/lib64/stubs ..

#-D OPENCV_PYTHON3_INSTALL_PATH=$cwd/OpenCV-$cvVersion-py3/lib/python3.6/site-packages \


