<<<<<<< Updated upstream
#FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-opencv-zed-boost-vscode
FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-opencv-vscode-zed
=======
FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost
>>>>>>> Stashed changes

ENV DEBIAN_FRONTEND=noninteractive

#RUN sudo -H pip3 install torch torchvision torchsummary
<<<<<<< Updated upstream
RUN sudo -H pip3 install jupyterlab
RUN sudo -H pip3 install matplotlib numpy pandas scikit-learn scikit-image
RUN sudo -H pip3 install requests
RUN sudo -H pip3 install h5py
=======
RUN apt install -y python3-pip

RUN pip3 install jupyterlab
RUN pip3 install matplotlib numpy pandas scikit-learn scikit-image
RUN pip3 install requests
RUN pip3 install h5py
>>>>>>> Stashed changes

RUN apt-get update \
    && apt-get install -y -qq --no-install-recommends libappindicator3-1 xdg-utils python3-tk && \
apt install -y fonts-liberation libnspr4 libnss3 lsb-release

#RUN cd /tmp \
#    && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
#    && dpkg -i google-chrome-stable_current_amd64.deb

#RUN rm -rf /tmp/*

<<<<<<< Updated upstream
RUN cd /tmp \
    && sudo -H pip3 install https://download.pytorch.org/whl/cu100/torch-1.1.0-cp36-cp36m-linux_x86_64.whl

RUN cd /tmp \
    && sudo -H pip3 install https://download.pytorch.org/whl/cu100/torchvision-0.3.0-cp36-cp36m-linux_x86_64.whl

RUN rm -rf /tmp/*
=======
RUN pip3 install https://download.pytorch.org/whl/cu100/torch-1.1.0-cp36-cp36m-linux_x86_64.whl
RUN pip3 install https://download.pytorch.org/whl/cu100/torchvision-0.3.0-cp36-cp36m-linux_x86_64.whl
>>>>>>> Stashed changes
