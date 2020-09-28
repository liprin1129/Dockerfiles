#sudo xhost +si:localuser:root
#       --runtime nvidia \
docker run \
       --rm -it \
       -v /usr/bin/qemu-aarch64-static:/usr/bin/qemu-aarch64-static \
       -v /media/user170/DataDisk/DATASETs/:/DATASETs \
       -v /media/user170/DataDisk/DEVs/:/DEVs \
       liprin1129/jdocker-base:qt5-inprogress
