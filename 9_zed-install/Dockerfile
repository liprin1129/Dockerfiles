#FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-opencv
FROM liprin1129/ubuntu16.04:cudagl10-cudnn-qt5-py-opencv

# Setup the ZED SDK
RUN apt-get update
RUN apt-get install lsb-release wget less udev sudo apt-transport-https -y
RUN cd /tmp && wget -O ZED_SDK_Linux_Ubuntu16.run https://www.stereolabs.com/developers/downloads/ZED_SDK_Ubuntu16_v2.7.1.run
RUN cd /tmp && echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
RUN cd /tmp && chmod +x ZED_SDK_Linux_Ubuntu16.run ; ./ZED_SDK_Linux_Ubuntu16.run silent
RUN rm -rf /tmp/*

# Make some tools happy
RUN mkdir -p /root/Documents/ZED/
# Install some other packages
RUN apt-get install nano cmake usbutils git libqt5xml5 libxmu-dev libxi-dev -y
RUN /bin/chmod -R +rx /usr/local/zed/
