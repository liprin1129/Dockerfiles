FROM nvidia/cudagl:9.0-devel-ubuntu16.04

####################################################
# Update to latest cuDNN v7 (7.4.1.5) for CUDA 9.0 #
####################################################
LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

ENV CUDNN_VERSION 7.4.1.5
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN apt-get update && apt-get install -y --no-install-recommends \
            libcudnn7=$CUDNN_VERSION-1+cuda9.0 \
            libcudnn7-dev=$CUDNN_VERSION-1+cuda9.0 && \
    apt-mark hold libcudnn7 && \
    rm -rf /var/lib/apt/lists/*


############################
# nvidia-container-runtime #
############################
ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics


#####################
# install GLX-Gears #
#####################
RUN apt update && apt install -y --no-install-recommends mesa-utils x11-apps && rm -rf /var/lib/apt/lists/*
