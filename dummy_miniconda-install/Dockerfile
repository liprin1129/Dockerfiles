FROM liprin1129/ubuntu16.04:cudagl-cudnn

RUN cd /tmp/ && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

RUN cd /tmp/ && /bin/bash Miniconda3-latest-Linux-x86_64.sh -b -p /usr/local/conda

ENV PATH /usr/local/conda/bin:$PATH
#RUN echo "PATH=$PATH:/usr/local/conda/bin" >> ~/.bashrc

RUN rm /tmp/*

