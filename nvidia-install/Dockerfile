FROM nvidia/cudagl:10.2-devel-ubuntu18.04

#ENV DEBIAN_FRONTEND=noninteractive

RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|http://ubuntutym.u-toyama.ac.jp/ubuntu/|' /etc/apt/sources.list
RUN sed -i 's|http://security.ubuntu.com/ubuntu/|http://ubuntutym.u-toyama.ac.jp/ubuntu/|' /etc/apt/sources.list

#RUN apt-get update && apt-get install -y --no-install-recommends \
#        pkg-config \
#    	libglvnd-dev libglvnd-dev:i386 \
#	libgl1-mesa-dev libgl1-mesa-dev:i386 \
#	libegl1-mesa-dev libegl1-mesa-dev:i386 \
#	libgles2-mesa-dev libgles2-mesa-dev:i386 && \
#	rm -rf /var/lib/apt/lists/*

#########
# CUDNN #
#########
ENV CUDNN_VERSION 7.6.5.32
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN apt-get update && apt-get install -y --no-install-recommends \
	libcudnn7=$CUDNN_VERSION-1+cuda10.2 \
	libcudnn7-dev=$CUDNN_VERSION-1+cuda10.2 \
	&& \
	apt-mark hold libcudnn7 && \
	rm -rf /var/lib/apt/lists/*

ENV PATH /usr/local/nvidia/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}
