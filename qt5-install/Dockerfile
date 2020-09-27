FROM liprin1129/dev:v4-cmake

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update

RUN apt install -y --no-install-recommends build-essential qt5-default qtcreator qtbase5-examples qt5-doc qt5-doc-html qtbase5-doc-html

RUN apt install -y --no-install-recommends libqt5opengl5-dev dbus

RUN apt install -y --no-install-recommends dbus
RUN dbus-uuidgen > /var/lib/dbus/machine-id

RUN mkdir /tmp/qtcreator-root
RUN export XDG_RUNTIME_DIR=/tmp/qtcreator-root

RUN rm -rf /var/lib/apt/lists/*

