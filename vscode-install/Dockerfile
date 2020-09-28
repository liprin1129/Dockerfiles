<<<<<<< HEAD
#FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-qt5-pytorch-opencv-zed
FROM liprin1129/stock-analysis:python
=======
FROM liprin1129/dev:v7-opencv
>>>>>>> 52e002260c171ea92cbecddeb353ad19ca9bc5d2

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y -qq --no-install-recommends libnotify4 libnss3 libsecret-1-0 libsecret-1-0 libgtk-3-0 libgconf-2-4 libxss1 libxtst6 libxkbfile1

RUN mkdir /tmp/vscode \
&& cd /tmp/vscode \
&& wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868

RUN dpkg -i /tmp/vscode/vscode.deb

RUN apt install -y libasound2

RUN rm -rf /tmp/* \
    && code --install-extension ms-python.python --user-data-dir /home \
    && code --install-extension smockle.xcode-default-theme --user-data-dir /home \
    && code --install-extension ms-vscode.cpptools --user-data-dir /home \
    && code --install-extension njpwerner.autodocstring --user-data-dir /home

#RUN echo "export LC_ALL=C" >> ~/.bashrc

#RUN apt install -y -qq --no-install-recommends python-pip
RUN apt install -y -qq --no-install-recommends python3-pip

#RUN sudo -H pip3 install setuptools
#RUN pip3 install pylint
<<<<<<< HEAD
=======
RUN pip3 install flake8
>>>>>>> 52e002260c171ea92cbecddeb353ad19ca9bc5d2
#RUN sudo -H pip install setuptools #pylint

RUN rm -rf /tmp/*
RUN rm -rf /var/lib/apt/lists/*

