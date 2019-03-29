# We will use Ubuntu for our image
FROM liprin1129/ubuntu16.04:cudagl-cudnn-miniconda

##############################
# CONDA ENVIRONMENT SETUP    #
##############################
#ENV PATH /usr/local/conda/bin:$PATH

#RUN conda create -n Py37Conda python=3.7
#RUN echo "source activate Py37Conda" > ~/.bashrc
#ENV PATH /home/user170/.conda/envs/Py37Conda/bin:$PATH
#RUN /bin/bash -c "source ~/.bashrc"

##############################
# INSTALL PYTHON PACKAGES    #
##############################
RUN conda update conda
RUN conda install numpy

##############################
# INSTALL OPENCV     #
##############################
#USER root
#RUN /bin/bash /home/user170/shared-data/Personal_Dev/Dockerfiles/3_opencv-install-miniconda/install.sh
