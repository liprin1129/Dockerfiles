#Specify OpenCV version
cvVersion="master"

# Clean build directories
#rm -rf opencv/build
#rm -rf opencv_contrib/build
# Create directory for installation
#mkdir installation
#mkdir installation/OpenCV-"$cvVersion"


# Save current working directory
cd installation/OpenCV-"$cvVersion"
cwd=$(pwd)
sudo apt -y update
sudo apt -y upgrade

sudo apt -y remove x264 libx264-dev
 
## Install dependencies
sudo apt -y install build-essential checkinstall cmake pkg-config yasm
sudo apt -y install git gfortran
sudo apt -y install libjpeg8-dev libpng-dev
 
sudo apt -y install software-properties-common
sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt -y update
 
sudo apt -y install libjasper1
sudo apt -y install libtiff-dev
 
sudo apt -y install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
sudo apt -y install libxine2-dev libv4l-dev
cd /usr/include/linux
sudo ln -s -f ../libv4l1-videodev.h videodev.h
cd "$cwd"
 
sudo apt -y install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
sudo apt -y install libgtk2.0-dev libtbb-dev qt5-default
sudo apt -y install libatlas-base-dev
sudo apt -y install libfaac-dev libmp3lame-dev libtheora-dev
sudo apt -y install libvorbis-dev libxvidcore-dev
sudo apt -y install libopencore-amrnb-dev libopencore-amrwb-dev
sudo apt -y install libavresample-dev
sudo apt -y install x264 v4l-utils
 
# Optional dependencies
sudo apt -y install libprotobuf-dev protobuf-compiler
sudo apt -y install libgoogle-glog-dev libgflags-dev
sudo apt -y install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen

sudo apt -y install python3-dev python3-pip
#sudo -H pip3 install -U numpy
sudo apt -y install python3-testresources

cd $cwd

sudo apt -y install gcc-8 g++-8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 80 --slave /usr/bin/g++ g++ /usr/bin/g++-8 --slave /usr/bin/gcov gcov /usr/bin/gcov-8

############ For Python 3 ############
# create virtual environment
#python3 -m venv OpenCV-"$cvVersion"-py3
#echo "# Virtual Environment Wrapper" >> ~/.bashrc
#echo "alias workoncv-$cvVersion=\"source $cwd/OpenCV-$cvVersion-py3/bin/activate\"" >> ~/.bashrc
#source "$cwd"/OpenCV-"$cvVersion"-py3/bin/activate

# now install python libraries within this virtual environment
pip3 install wheel numpy scipy matplotlib scikit-image scikit-learn ipython dlib
 
# quit virtual environment
#deactivate

############ Download OpenCV ############

#git clone https://github.com/opencv/opencv.git
#cd $cwd/opencv
#git checkout "$cvVersion"
#cd ..
 
#git clone https://github.com/opencv/opencv_contrib.git
#cd $cwd/opencv_contrib
#git checkout "$cvVersion"
#cd ..

#sudo apt -y install gstreamer1.0-omx-generic gstreamer1.0-plugins-ugly-dbg gst-omx-listcomponents gstreamer1.0-omx-generic-config gstreamer1.0-plugins-ugly-doc gstreamer0.10-qapt gstreamer1.0-opencv gstreamer1.0-pocketsphinx gstreamer1.0-alsa gstreamer1.0-packagekit gstreamer1.0-pulseaudio gstreamer1.0-clutter-3.0 gstreamer1.0-plugins-bad gstreamer1.0-crystalhd gstreamer1.0-plugins-bad-dbg gstreamer1.0-python3-plugin-loader gstreamer1.0-doc gstreamer1.0-plugins-bad-doc gstreamer1.0-qt5 gstreamer1.0-espeak gstreamer1.0-plugins-base gstreamer1.0-rtsp gstreamer1.0-fluendo-mp3 gstreamer1.0-plugins-base-apps gstreamer1.0-rtsp-dbg gstreamer1.0-gl gstreamer1.0-plugins-base-dbg gstreamer1.0-tools gstreamer1.0-gtk3 gstreamer1.0-plugins-base-doc gstreamer1.0-vaapi gstreamer1.0-libav gstreamer1.0-plugins-good gstreamer1.0-vaapi-doc gstreamer1.0-libav-dbg gstreamer1.0-plugins-good-dbg gstreamer1.0-x gstreamer1.0-nice gstreamer1.0-plugins-good-doc gstreamer-qapt gstreamer1.0-omx-bellagio-config gstreamer1.0-plugins-ugly

#gstreamer1.0-python3-dbg-plugin-loader
#/DEVs/Machine-Learning/PyTorch/Face/Prototype/opencv_test_2/FaceDetectionComparison
