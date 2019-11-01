FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-qt5-pytorch-opencv-zed-code
ENV DEBIAN_FRONTEND=noninteractive

RUN pip3 install gym

RUN apt install -y -qq --no-install-recommends qtbase5-dev libqt5opengl5-dev libassimp-dev cmake patchelf

RUN pip3 install roboschool
RUN LD_LIBRARY_PATH=/usr/lib#:/usr/lib/x86_64-linux-gnu:/usr/lib/i386-linux-gnu:/usr/lib/x86_64-linux-gnu/qt5/plugins/platforms

RUN pip3 install tensorflow-gpu