FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-opencv-zed-tensorflow-boost-code

# Replace 1000 with your user / group id
#RUN export uid=1000 gid=1000 && \
#    mkdir -p /home/user170 && \
#    echo "user170:x:${uid}:${gid}:170,,,:/home/user170:/bin/bash" >> /etc/passwd && \
#    echo "user170:x:${uid}:" >> /etc/group && \
#    echo "user170 ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user170 && \
#    chmod 0440 /etc/sudoers.d/user170 && \
#    chown ${uid}:${gid} -R /home/user170

# SET ENV
ENV USER user170
ENV HOME / home / ${USER} 
ENV SHELL / bin / bash

# ADD USER 
RUN useradd -m ${USER} 
# GIVE USER SUDO AUTHENTICATION 
RUN gpasswd -a ${USER}  sudo 
# SET USER PASSWARDS
RUN echo  "${USER}:KSv65nFs" | chpasswd

USER user170
ENV HOME /home/user170
