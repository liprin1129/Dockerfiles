FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-opencv-zed-boost-vscode-pytorch

RUN apt update \
    && apt install -y -qq --no-install-recommends python3-pip python3-tk \
    && pip install --upgrade pip && pip3 install --upgrade pip \
    && pip3.5 install tensorflow-gpu==1.12\
    && pip3.5 install tensorflow-hub \
    && pip3.5 install tqdm matplotlib
