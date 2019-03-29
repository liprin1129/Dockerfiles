#FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-opencv-zed-boost-vscode
FROM liprin1129/ubuntu16.04:cudagl-cudnn-conda-opencv

RUN sudo -H pip3 install torch torchvision torchsummary
RUN sudo -H pip3 install jupyterlab
RUN sudo -H pip3 install matplotlib numpy pandas scikit-learn scikit-image
RUN sudo -H pip3 install requests

RUN apt-get update \
    && apt-get install -y -qq --no-install-recommends libappindicator3-1 xdg-utils python3-tk

RUN cd /tmp \
    && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && dpkg -i google-chrome-stable_current_amd64.deb
