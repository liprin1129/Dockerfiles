FROM liprin1129/dev:v2-python

ENV DEBIAN_FRONTEND=noninteractive

RUN pip3 install jupyterlab
RUN pip3 install matplotlib numpy pandas scikit-learn scikit-image
RUN pip3 install requests
RUN pip3 install h5py

#RUN apt-get update \
#    && apt-get install -y -qq --no-install-recommends libappindicator3-1 xdg-utils python3-tk && \
#apt install -y fonts-liberation libnspr4 libnss3 lsb-release

RUN pip3 install torch torchvision tensorboard

RUN apt update && \
	apt install -y -qq --no-install-recommends wget unzip firfox

RUN cd /tmp && wget https://download.pytorch.org/libtorch/cu102/libtorch-shared-with-deps-1.5.1.zip
RUN cd /tmp && unzip libtorch-shared-with-deps-1.5.1.zip
RUN cd /tmp && mv libtorch /usr/local/
RUN rm -rf /tmp/*
RUN rm -rf /var/lib/apt/lists/*
