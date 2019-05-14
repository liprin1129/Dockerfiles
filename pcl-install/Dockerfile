FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-opencv

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update

#################
# INSTALL EIGEN #
#################

RUN apt install -y --no-install-recommends libeigen3-dev

###############
# INSTALL VTK #
###############

#RUN apt install -y --no-install-recommends libvtk7-dev
#https://kezunlin.me/post/b901735e/
RUN apt install -y --no-install-recommends libxt-dev

RUN cd /tmp \
    && wget https://www.vtk.org/files/release/8.1/VTK-8.1.0.tar.gz
    #&& wget https://www.vtk.org/files/release/8.1/VTKData-8.1.0.tar.gz

RUN cd /tmp\
    && tar xvf VTK-8.1.0.tar.gz
RUN cd /tmp \
    && cd VTK-8.1.0 && mkdir build && cd build

RUN cd /tmp/VTK-8.1.0/build \
    && cmake ..

RUN cd /tmp/VTK-8.1.0/build \
    && make -j8

RUN cd /tmp/VTK-8.1.0/build \
    && make install

#################
# INSTALL FLANN #
#################
RUN apt install -y --no-install-recommends libflann-dev

################
# INSTALL PCL  #
################
RUN cd /tmp \
    && wget https://github.com/PointCloudLibrary/pcl/archive/pcl-1.9.1.tar.gz    
RUN cd /tmp\ 
    && tar xvf pcl-1.9.1.tar.gz

#RUN cd /tmp \
#    && rm -rf pcl-*
    
#RUN cd /tmp \
#    && wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/open?id=1djy90LurzhYjUcsOP3z6QlDE4GAoZo6R' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1djy90LurzhYjUcsOP3z6QlDE4GAoZo6R" -O pcl-pcl-1.9.1.tar.xz && rm -rf /tmp/cookies.txt

#RUN cd /tmp\ 
#    && tar xvf pcl-pcl-1.9.1.tar.xz

RUN cd /tmp/pcl-pcl-1.9.1 \
    && mkdir build && cd build \
    && cmake ..

RUN cd /tmp/pcl-pcl-1.9.1/build \
    && make -j8\
