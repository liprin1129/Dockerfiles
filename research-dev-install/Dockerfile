FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-opencv-zed

########################
# GFLAGS, GLOG INSTALL #
########################
RUN apt update
RUN apt install libgflags-dev python-gflags libgoogle-glog0v5 libgoogle-glog-dev
RUN apt install libprotobuf-dev protobuf-compiler
RUN apt install libhdf5-serial-dev
RUN apt install libncurses5-dev

###################
# PYTORCH INSTALL #
###################
RUN pip --no-cache-dir install https://download.pytorch.org/whl/cu100/torch-1.1.0-cp27-cp27mu-linux_x86_64.whl
RUN pip --no-cache-dir install torchvision

#################
# CMAKE INSTALL #
#################
RUN cd /tmp \
    && wget https://github.com/Kitware/CMake/releases/download/v3.14.4/cmake-3.14.4.tar.gz \
    && tar xzf cmake-3.14.4.tar.gz \

RUN cd /tmp/cmake-3.14.4 \
    && ./bootstrap \
    && make install

RUN cd /tmp/cmake-3.14.4 \
    && cmake -D BUILD_CursesDialog=ON \
    && make -j8 \
    && make install

####################
# OPENPOSE INSTALL #
####################
# https://github.com/adujardin/zed-openpose
RUN cd /home/dockerbuntu/ \
    && git clone https://github.com/CMU-Perceptual-Computing-Lab/openpose/

RUN cd /home/dockerbuntu/openpose \
    && mkdir build && cd build

RUN cd /home/dockerbuntu/openpose/build \
    && cmake ..

RUN cd /home/dockerbuntu/openpose/build \
    && make -j8

RUN cd /home/dockerbuntu/openpose/build \
    && make install
