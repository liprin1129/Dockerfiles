FROM liprin1129/ubuntu16.04:cudagl-cudnn-qt5-opencv-zed-tensorflow-boost

RUN mkdir /tmp/vscode \
    && cd /tmp/vscode \
    && apt update \
    && apt install -y -qq --no-install-recommends libnotify4 libnss3 libsecret-1-0 libsecret-1-0 libgtk-3-0 libgconf-2-4 libxss1 libxtst6 \
    && wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868 \
    && dpkg -i vscode.deb \
    && cd / \
    && rm -rf /tmp/vscode \
    && code --install-extension ms-python.python --user-data-dir /home \
    && code --install-extension smockle.xcode-default-theme --user-data-dir /home
