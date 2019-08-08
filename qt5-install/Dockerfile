FROM liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5

#RUN apt-get update && \
#    apt-get install -y --no-install-recommends \
#    	    build-essential \
#	    qtcreator \
#    	    qt5-default \
#    	    libqt5opengl5-dev \
#    	    qt5-doc \
#    	    qt5-doc-html qtbase5-doc-html \
#    	    qtbase5-examples \
#    	    dbus

RUN apt update
RUN apt install -y --no-install-recommends build-essential qt5-default qtcreator qtbase5-examples qt5-doc qt5-doc-html qtbase5-doc-html
RUN apt install -y --no-install-recommends libqt5opengl5-dev dbus

RUN apt install -y --no-install-recommends dbus
RUN dbus-uuidgen > /var/lib/dbus/machine-id

