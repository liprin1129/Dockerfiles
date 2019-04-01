FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5

##############################
# INSTALL PYTHON PACKAGES    #
##############################
# PYTHON 3.7
#RUN sudo apt update && \
#apt install -y software-properties-common && \
#add-apt-repository ppa:deadsnakes/ppa -y

#RUN apt update && \
#apt install -y python3.7 && \
#python3.7 --version

RUN apt update && \
apt install -y build-essential libssl-dev zlib1g-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libgdbm-dev libdb5.3-dev libbz2-dev libexpat1-dev liblzma-dev tk-dev libffi-dev

RUN cd /tmp && \
wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz && \
tar xf Python-3.7.0.tar.xz && \
cd Python-3.7.0 && \
./configure --enable-optimizations && \
make -j 8 && \
make altinstall && \
python3.7 --version

RUN sudo -H pip3.7 install numpy

RUN rm -rf /tmp/*
#apt install python3-pip 

# PYTHON 3.6
