FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-opencv-zed-tensorflow

RUN mkdir /tmp/boost-install \
    && cd /tmp/boost-install \
    && wget https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.tar.bz2 \
    && tar -xvjf boost_1_69_0.tar.bz2 \
    && cd boost_1_69_0 \
    && echo "using python : 3.5 : /usr/bin/python3.5 : /usr/include/python3.5m : /usr/local/lib;" >> tools/build/example/user-config.jam \
    && ./bootstrap.sh --prefix=/usr/local --with-python=/usr/bin/python3.5 \
    && ./b2 \
    && ./b2 install \
    && cd /tmp \
    && rm -rf boost-install
