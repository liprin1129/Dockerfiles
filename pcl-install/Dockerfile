FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-opencv

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y --no-install-recommends libeigen3-dev
#RUN apt install -y --no-install-recommends libvtk7-dev
#https://kezunlin.me/post/b901735e/

RUN cd /tmp \
    && wget https://www.vtk.org/files/release/8.1/VTK-8.1.0.tar.gz \
    && wget https://www.vtk.org/files/release/8.1/VTKData-8.1.0.tar.gz

RUN cd /tmp \
    && tar VTK-8.1.0.tar.gz
RUN apt install -y --no-install-recommends libflann-dev


