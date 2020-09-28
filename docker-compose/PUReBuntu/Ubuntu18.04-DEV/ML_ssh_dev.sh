docker run \
       --gpus all \
       --rm -it \
       -e DISPLAY=192.168.10.104:0 \
       --privileged \
       --ipc host \
       -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
       -v /home/user170/Downloads:/home/Downloads \
       -v /mnt//DataDisk/Development/:/DEVs \
       -v /mnt/DataDisk/DATASETs:/DATASETs \
       liprin1129/ubuntu18.04:DEV-V1
       #liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-qt5-pytorch-opencv-zed-code
       #liprin1129/ubuntu18.04:cudagl10.0-cudnn7.5-boost-qt5-pytorch-opencv-zed-code-openpose
#/mnt/08F8996AF8995732/DATASETs:/DATASETs liprin1129/ubuntu18.04:rl
#--env=DISPLAY \
