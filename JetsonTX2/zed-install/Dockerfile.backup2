#FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-opencv
FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-opencv

# Setup the ZED SDK
RUN apt-get update
RUN apt-get install lsb-release wget less udev sudo apt-transport-https -y
#RUN cd /tmp && wget -O ZED_SDK_Linux_Ubuntu16.run https://www.stereolabs.com/developers/downloads/ZED_SDK_Ubuntu16_v2.7.1.run
RUN cd /tmp && wget -O ZED_SDK_Linux_Ubuntu18.run https://www.stereolabs.com/developers/downloads/ZED_SDK_Ubuntu18_v2.7.1.run
RUN cd /tmp && echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
RUN cd /tmp && chmod +x ZED_SDK_Linux_Ubuntu18.run ; ./ZED_SDK_Linux_Ubuntu18.run silent
RUN rm -rf /tmp/*

# Make some tools happy
RUN mkdir -p /root/Documents/ZED/
# Install some other packages
RUN apt-get install nano cmake usbutils git libqt5xml5 libxmu-dev libxi-dev -y
RUN /bin/chmod -R +rx /usr/local/zed/

RUN sudo -H pip install cython
RUN sudo -H pip3 install cython

RUN cd /tmp \
    && git clone https://github.com/stereolabs/zed-python-api

RUN cd /tmp/zed-python-api \
    && python3 setup.py build

RUN cd /tmp/zed-python-api \
    && python3 setup.py install

RUN rm -rf /tmp/*
