#FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-opencv
FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-py-opencv-boost-pytorch-code

# Setup the ZED SDK
RUN apt-get update
RUN apt-get install lsb-release wget less udev sudo apt-transport-https -y
RUN wget -O ZED_SDK_Linux_Ubuntu16.run https://download.stereolabs.com/zedsdk/2.7/ubuntu16_cuda9 
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
RUN chmod +x ZED_SDK_Linux_Ubuntu16.run ; ./ZED_SDK_Linux_Ubuntu16.run silent
RUN rm -rf ZED_SDK_Linux_Ubuntu16.run

# Make some tools happy
RUN mkdir -p /root/Documents/ZED/
# Install some other packages
RUN apt-get install nano cmake usbutils git libqt5xml5 libxmu-dev libxi-dev -y
RUN /bin/chmod -R +rx /usr/local/zed/
