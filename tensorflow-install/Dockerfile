FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-opencv-zed

RUN apt update \
    && apt install -y -qq --no-install-recommends python3-pip \
    && pip3 install tensorflow-gpu==1.12\
    && pip3 install tqdm
