docker run \
       --gpus all \
       --rm -it \
       --env=DISPLAY \
       --privileged \
       --ipc host \
       -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
       -v /home/user170/Downloads:/home/Downloads \
       -v /mnt/DataDisk/DEVs:/DEVs \
       -v /mnt/DataDisk/DATASETs:/DATASETs \
       liprin1129/dev:2070-v1-opencv
#	liprin1129/dev:v8-vscode
#       -v /home/user170/NVIDIA_CUDA-10.2_Samples:/home/NVIDIA_CUDA-10.2_Samples \
#	face_col_demo:zed_sdk
#	face_rec_demo:code_setting


