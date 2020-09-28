FROM liprin1129/dev:v3-pytorch

RUN cd /tmp && wget https://github.com/Kitware/CMake/releases/download/v3.18.0-rc2/cmake-3.18.0-rc2.tar.gz

RUN cd /tmp && tar -zxvf cmake-3.18.0-rc2.tar.gz

RUN apt update && \
	apt install -y -qq --no-install-recommends libssl-dev

RUN cd /tmp && cd cmake-3.18.0-rc2 && ./bootstrap

RUN cd /tmp && cd cmake-3.18.0-rc2 && make -j12

RUN cd /tmp && cd cmake-3.18.0-rc2 && make install

RUN rm -rf /tmp/*

RUN cmake --version

ENV DEBIAN_FRONTEND=noninteractive
RUN apt install -y -qq --no-install-recommends cmake-gui
RUN rm -rf /var/lib/apt/lists/*
