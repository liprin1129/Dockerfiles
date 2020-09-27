FROM liprin1129/dev:v1-cudnn7.6.5.32

##############################
# INSTALL PYTHON PACKAGES    #
##############################
# PYTHON 3.7

# DEFAULT PYTHON
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
&& apt install -y python3-dev python3-tk python3-pip

RUN pip3 install numpy matplotlib pandas scikit-learn pyopengl

RUN rm -rf /var/lib/apt/lists/*
