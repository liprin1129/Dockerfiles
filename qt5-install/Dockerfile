FROM liprin1129/ubuntu16.04:cudagl10-cudnn

#USER user170
#WORKDIR /home/user170

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    	    build-essential \
	    qtcreator \
    	    qt5-default \
    	    libqt5opengl5-dev \
    	    qt5-doc \
    	    qt5-doc-html qtbase5-doc-html \
    	    qtbase5-examples \
    	    dbus

#RUN apt-get update && apt-get install -y --no-install-recommends dbus
RUN dbus-uuidgen > /var/lib/dbus/machine-id
