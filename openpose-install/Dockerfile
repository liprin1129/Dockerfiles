#from nvidia/cuda:10.0-cudnn7-devel-ubuntu16.04
FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-qt5-pytorch-opencv-zed-code

##################################
# Remove Boost Build From Source #
##################################
RUN rm -rf $(find /usr -name libboost*) /usr/include/boost

RUN echo "Installing dependencies..." && \
    apt-get -y --no-install-recommends update && \
    apt-get -y --no-install-recommends upgrade

RUN apt-get install -y --no-install-recommends \
    libatlas-base-dev \
    libprotobuf-dev \
    libleveldb-dev \
    libsnappy-dev \
    libhdf5-serial-dev \
    protobuf-compiler \
    libgflags-dev \
    libgoogle-glog-dev \
    liblmdb-dev \
    pciutils \
    libviennacl-dev \
    libcanberra-gtk-module \
    libboost-all-dev

RUN echo "Downloading and building OpenPose..." && \
    cd /usr/local/ &&\
    git clone https://github.com/CMU-Perceptual-Computing-Lab/openpose.git && \
    mkdir /usr/local/openpose/build

RUN cd /usr/local/openpose/build && \
    cmake -DOpenCV_DIR=/usr/local/share/OpenCV/ -DWITH_OPENCV_WITH_OPENGL=on \
    -DWITH_3D_RENDERER=on \
    -DDOWNLOAD_BODY_25_MODEL=on \
    -DDOWNLOAD_BODY_COCO_MODEL=on \
    -DDOWNLOAD_BODY_MPI_MODEL=on \
    -DDOWNLOAD_FACE_MODEL=on \
    -DDOWNLOAD_HAND_MODEL=on ..

RUN cd /usr/local/openpose/build && \
    make -j`nproc`

#WORKDIR /openpose