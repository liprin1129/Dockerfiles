FROM nvidia/cudagl:9.0-devel-ubuntu18.04

# Updating Ubuntu packages
RUN apt-get update && yes | apt-get upgrade

# Adding emacs wget and bzip2 sudo
RUN apt update && apt install -y software-properties-common
#RUN add-apt-repository -r ppa:kelleyk/emacs
#RUN apt update && apt install -y emacs25-nox wget bzip2 sudo
RUN apt update && apt install -y wget bzip2 sudo

# SET ENV
ENV USER dockerbuntu
ENV HOME /home/${USER} 

# ADD USER 
RUN useradd -m ${USER}

# GIVE USER SUDO AUTHENTICATION 
RUN gpasswd -a ${USER}  sudo 

# SET USER PASSWARDS
RUN echo  "${USER}:KSv65nFs" | chpasswd

#USER ${USER}
#WORKDIR ${HOME}

RUN chmod a+rwx ${HOME}

####################################################
# Update to latest cuDNN v7 (7.4.1.5) for CUDA 9.0 #
####################################################
#LABEL maintainer "NVIDIA CORPORATION <cudatools@nvidia.com>"

#ENV CUDNN_VERSION 7.4.1.5
#LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

##USER root

#RUN apt-get update && apt-get install -y --no-install-recommends sudo \
#            libcudnn7=$CUDNN_VERSION-1+cuda9.0 \
#            libcudnn7-dev=$CUDNN_VERSION-1+cuda9.0
#RUN apt-mark hold libcudnn7
#RUN rm -rf /var/lib/apt/lists/*

######################################################
# Update to latest cuDNN v7 (7.5.0.56) for CUDA 10.0 #
######################################################
#RUN export FILEID=1_7fa3PSZQO6EPp1hRO7nqg5Ot58pxirZ
#RUN export FILENAME=cudnn-10.0-linux-x64-v7.5.0.56.tgz

RUN cd /tmp \
    && wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1_7fa3PSZQO6EPp1hRO7nqg5Ot58pxirZ' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1_7fa3PSZQO6EPp1hRO7nqg5Ot58pxirZ" -O cudnn-10.0-linux-x64-v7.5.0.56.tgz && rm -rf /tmp/cookies.txt

RUN cd /tmp \
    #&& wget gdrive_download 1_7fa3PSZQO6EPp1hRO7nqg5Ot58pxirZ cudnn-10.0-linux-x64-v7.5.0.56.tgz \
    && tar -xzvf cudnn-10.0-linux-x64-v7.5.0.56.tgz \
    && sudo cp cuda/include/cudnn.h /usr/local/cuda/include \
    && sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64 \
    && sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
    
RUN rm -rf /tmp/*

############################
# nvidia-container-runtime #
############################
ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics


#####################
# install GLX-Gears #
#####################
RUN sudo apt update && \
    sudo apt install -y --no-install-recommends mesa-utils x11-apps && \
    sudo rm -rf /var/lib/apt/lists/*
