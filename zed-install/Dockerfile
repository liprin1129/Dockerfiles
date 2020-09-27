FROM liprin1129/dev:v5-qt5

RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|http://ubuntutym.u-toyama.ac.jp/ubuntu/|' /etc/apt/sources.list
RUN sed -i 's|http://security.ubuntu.com/ubuntu/|http://ubuntutym.u-toyama.ac.jp/ubuntu/|' /etc/apt/sources.list

ARG UBUNTU_RELEASE_YEAR=18
ARG CUDA_MAJOR=10
ARG CUDA_MINOR=2
ARG ZED_SDK_MAJOR=3
ARG ZED_SDK_MINOR=2.0

ENV NVIDIA_DRIVER_CAPABILITIES \
        ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}compute,video,utility,graphics

# Setup the ZED SDK
RUN apt-get update -y && apt-get install --no-install-recommends lsb-release wget less udev sudo build-essential cmake -y

RUN cd /tmp/ &&\
    wget -O ZED_SDK_Linux_Ubuntu18.run https://download.stereolabs.com/zedsdk/3.2/cu102/ubuntu18
RUN cd /tmp/ &&\
    chmod +x ZED_SDK_Linux_Ubuntu18.run ; ./ZED_SDK_Linux_Ubuntu18.run silent

RUN cd /tmp/ &&\
    rm ZED_SDK_Linux_Ubuntu18.run && \
    rm -rf /var/lib/apt/lists/*
    
# ZED Python API
#RUN apt-get update -y && apt-get install --no-install-recommends python3 python3-pip python3-tk -y

#RUN cd /tmp/ &&\
#    wget download.stereolabs.com/zedsdk/pyzed -O /usr/local/zed/get_python_api.py

#RUN cd /tmp/ &&\
#    python3 /usr/local/zed/get_python_api.py

#RUN cd /tmp/ &&\
#    python3 -m pip install numpy opencv-python pyopengl *.whl && \
#    rm *.whl ; rm -rf /var/lib/apt/lists/*

# Make some tools happy
RUN mkdir -p /root/Documents/ZED/

#WORKDIR /usr/local/zed/
