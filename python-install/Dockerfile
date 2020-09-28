<<<<<<< HEAD
#FROM liprin1129/ubuntu16.04:cudagl10-cudnn-qt5
FROM liprin1129/stock-analysis:cuda10.0-cudnn7.5
=======
FROM liprin1129/dev:v1-cudnn7.6.5.32
>>>>>>> 52e002260c171ea92cbecddeb353ad19ca9bc5d2

##############################
# INSTALL PYTHON PACKAGES    #
##############################
# PYTHON 3.7

# DEFAULT PYTHON
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
&& apt install -y python3-dev python3-tk python3-pip

<<<<<<< HEAD
#RUN sudo -H pip3 install numpy
RUN pip3 install numpy
RUN pip3 install pandas
RUN pip3 install matplotlib
=======
RUN pip3 install numpy matplotlib pandas scikit-learn pyopengl

RUN rm -rf /var/lib/apt/lists/*
>>>>>>> 52e002260c171ea92cbecddeb353ad19ca9bc5d2
