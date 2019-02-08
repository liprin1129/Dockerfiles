FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-opencv-zed-tensorflow-boost

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/user170 && \
    echo "user170:x:${uid}:${gid}:170,,,:/home/user170:/bin/bash" >> /etc/passwd && \
    echo "user170:x:${uid}:" >> /etc/group && \
    echo "user170 ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user170 && \
    chmod 0440 /etc/sudoers.d/user170 && \
    chown ${uid}:${gid} -R /home/user170

USER user170
ENV HOME /home/user170

RUN mkdir /tmp/vscode \
    && cd /tmp/vscode \
    && sudo apt update \
    && sudo apt install -y -qq --no-install-recommends libnotify4 libnss3 libsecret-1-0 libsecret-1-0 libgtk-3-0 libgconf-2-4 libxss1 libxtst6 \
    && wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868 \
    && sudo dpkg -i vscode.deb \
    && cd / \
    && rm -rf /tmp/vscode \
    && code --install-extension ms-python.python \
    && code --install-extension smockle.xcode-default-theme \
    #&& code --install-extension ms-python.python --user-data-dir /home \
    #&& code --install-extension smockle.xcode-default-theme --user-data-dir /home
    && cd /home/user170
