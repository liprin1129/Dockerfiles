FROM liprin1129/ubuntu16.04:cudagl-cudnn

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    qtcreator \
    qt5-default \
    libqt5opengl5-dev \
    qt5-doc \
    qt5-doc-html qtbase5-doc-html \
    qtbase5-examples

RUN apt-get update && apt-get install -y --no-install-recommends dbus && \
    dbus-uuidgen > /var/lib/dbus/machine-id
