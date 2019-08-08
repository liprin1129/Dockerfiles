FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-qt5-pytorch-opencv-zed-code

ENV DEBIAN_FRONTEND=noninteractive

RUN cd /tmp \
    && git clone https://github.com/openai/roboschool && cd roboschool \
    && rm install_boost.sh install_bullet.sh exports.sh

RUN cd /tmp/roboschool \
    && wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/open?id=1qzp7GDv3IOkqQP2uZYHbKSVAnL7IZoX0' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1qzp7GDv3IOkqQP2uZYHbKSVAnL7IZoX0" -O install_bullet.sh && rm -rf /tmp/cookies.txt \
    && wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/open?id=1okf8HRn7y1Njv1USyJ-IlX5VLs39PSVk' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1okf8HRn7y1Njv1USyJ-IlX5VLs39PSVk" -O install_boost.sh && rm -rf /tmp/cookies.txt \
    && wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/open?id=1IWdAx4ksPxkYAJzqcPYpg4-x0aq2Y0sH' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1IWdAx4ksPxkYAJzqcPYpg4-x0aq2Y0sH" -O exports.sh && rm -rf /tmp/cookies.txt

RUN cd /tmp/roboschool \
    && chmod +x install_boost.sh install_bullet.sh exports.sh

RUN cd /tmp \
    && apt install -y -qq --no-install-recommends qtbase5-dev libqt5opengl5-dev libassimp-dev cmake patchelf

RUN cd /tmp/roboschool \
    && ./install_boost.sh

RUN cd /tmp/roboschool \
    && ./install_bullet.sh

# INSTEAD OF source exports.sh
RUN cd /tmp/roboschool \
    && export ROBOSCHOOL_PATH=$( cd "$(dirname "$BASH_SOURCE")" ; pwd -P ) \
    && export CPP_HOUSEHOLD=$ROBOSCHOOL_PATH/roboschool/cpp-household \
    && export BULLET_PATH=$HOME/.forked_bullet \
    && PYTHON3_BIN=$(readlink -f $(which python3)) \
    && PYTHON3_ROOT=${PYTHON3_BIN%/bin/python3*} \
    && PYTHON3_VER=${PYTHON3_BIN#$PYTHON3_ROOT/bin/python3} \
    && export PKG_CONFIG_PATH=${PYTHON3_ROOT}/lib/pkgconfig:$BULLET_PATH/lib/pkgconfig/:$PKG_CONFIG_PATH \
    && export CPATH=$CPATH:${PYTHON3_ROOT}/include/python3${PYTHON3_VER}m:$HOME/.boost/include \
    && export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$BULLET_PATH/lib:$HOME/.boost/lib



RUN cd /tmp/roboschool/roboschool/cpp-household && make clean && make -j8 && cd ../.. && pip3 install -e .

#RUN pip3 install tensorflow-gpu