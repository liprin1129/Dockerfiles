FROM liprin1129/ubuntu16.04:cudagl10-cudnn-qt5

##############################
# INSTALL PYTHON PACKAGES    #
##############################
# PYTHON 3.7

#RUN apt update && \
#apt install -y build-essential libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev libffi-dev

#RUN cd /tmp && \
#wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz && \
#tar xf Python-3.7.0.tar.xz && \
#cd Python-3.7.0 && \
#./configure --enable-optimizations && \
#make -j 8 && \
#make altinstall && \
#python3.7 --version

#RUN sudo -H pip3.7 install numpy

#RUN rm -rf /tmp/*

# DEFAULT PYTHON
RUN apt update \
&& apt install -y python3-dev python3-tk python3-pip

RUN sudo -H pip3 install numpy
