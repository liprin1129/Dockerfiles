sudo xhost +si:localuser:root

docker run \
--runtime nvidia \
--network host \
--rm -it \
-e DISPLAY=$DISPLAY \
-v /media/user170/DataDisk/DATASETs/:/DATASETs \
-v /media/user170/DataDisk/DEVs/:/DEVs \
liprin1129/jdocker-base

