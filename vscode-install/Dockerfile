<<<<<<< Updated upstream
#FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-opencv-zed-openpose
FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-opencv-zed
# Replace 1000 with your user / group id
#RUN export uid=1000 gid=1000 && \
#    mkdir -p /home/user170 && \
#    echo "user170:x:${uid}:${gid}:170,,,:/home/user170:/bin/bash" >> /etc/passwd && \
#    echo "user170:x:${uid}:" >> /etc/group && \
#    echo "user170 ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user170 && \
#    chmod 0440 /etc/sudoers.d/user170 && \
#    chown ${uid}:${gid} -R /home/user170
=======
FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-pytorch
>>>>>>> Stashed changes

RUN apt update && \
    apt install -y -qq --no-install-recommends libnotify4 libnss3 libsecret-1-0 libsecret-1-0 libgtk-3-0 libgconf-2-4 libxss1 libxtst6

RUN mkdir /tmp/vscode \
&& cd /tmp/vscode \
&& wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868

RUN dpkg -i /tmp/vscode/vscode.deb

RUN apt install -y libasound2

RUN rm -rf /tmp/* \
    && code --install-extension ms-python.python --user-data-dir /home \
    && code --install-extension smockle.xcode-default-theme --user-data-dir /home \
    && code --install-extension ms-vscode.cpptools --user-data-dir /home 

RUN echo "export LC_ALL=C" >> ~/.bashrc

#RUN apt install -y -qq --no-install-recommends python-pip
RUN apt install -y -qq --no-install-recommends python3-pip

#RUN sudo -H pip3 install setuptools
RUN pip3 install pylint
#RUN sudo -H pip install setuptools #pylint
