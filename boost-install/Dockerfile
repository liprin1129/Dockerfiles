FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-opencv-zed-tensorflow

RUN mkdir /tmp/boost-install \
    && cd /tmp/boost-install \
    && wget https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.tar.bz2 \
    && tar -xvjf boost_1_69_0.tar.bz2 \
    && cd boost_1_69_0 \
    && ./bootstrap.sh --prefix=/usr/ \
    && ./b2 \
    && ./b2 install
