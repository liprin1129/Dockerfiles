FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5

##############
# boost 1.69 #
##############

#RUN mkdir /tmp/boost-install \
#    && cd /tmp/boost-install \
#    && wget https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.tar.bz2

#RUN cd /tmp/boost-install \
#&& tar -xvjf boost_1_69_0.tar.bz2

#RUN cd /tmp/boost-install/boost_1_69_0 \
#    && echo "using python : 3.5 : /usr/bin/python3.5 : /usr/bin/python3.5m : /usr/local/lib;" >> tools/build/example/user-config.jam \
#    && ./bootstrap.sh --prefix=/usr/local --with-python=/usr/bin/python3.5 \
#    && ./b2 -q

#RUN cd /tmp/boost-install/boost_1_69_0 \
#    && ./b2 install \
#    && rm -rf /tmp/*

##############
# boost 1.70 #
##############

RUN mkdir /tmp/boost-install \
    && cd /tmp/boost-install \
    && wget https://dl.bintray.com/boostorg/release/1.70.0/source/boost_1_70_0.tar.bz2

RUN cd /tmp/boost-install \
    && tar -xvjf boost_1_70_0.tar.bz2

RUN cd /tmp/boost-install/boost_1_70_0 \
    && ./bootstrap.sh --prefix=/usr --with-python=python3

RUN cd /tmp/boost-install/boost_1_70_0 \
    && ./b2 stage threading=multi link=shared

RUN cd /tmp/boost-install/boost_1_70_0 \
    && ./b2 install threading=multi link=shared \
    && ln -svf detail/sha1.hpp /usr/include/boost/uuid/sha1.hpp

RUN rm -rf /tmp/*
