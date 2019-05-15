FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-opencv

# The runtime image might be enough, depending on the need

# Setup the ZED SDK
RUN apt-get update
RUN apt-get install lsb-release wget less udev sudo apt-transport-https -y
RUN wget -O ZED_SDK_Linux_Ubuntu18.run https://download.stereolabs.com/zedsdk/2.8/ubuntu18
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
RUN chmod +x ZED_SDK_Linux_Ubuntu18.run ; ./ZED_SDK_Linux_Ubuntu18.run silent

# Make some tools happy
RUN mkdir -p /root/Documents/ZED/
# Install some other packages
RUN apt-get install nano cmake usbutils git libqt5xml5 libxmu-dev libxi-dev -y