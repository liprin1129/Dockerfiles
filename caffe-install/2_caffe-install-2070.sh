cd installation/caffe

#cp Makefile.config.example Makefile.config

#Configure the build by copying and modifying the example Makefile.config for your setup. The defaults should work, but uncomment the relevant lines if using Anaconda Python.

#cp Makefile.config.example Makefile.config

# Adjust Makefile.config (for example, if using Anaconda Python, or if cuDNN is desired)
#For CPU & GPU accelerated Caffe, no changes are needed.
#For cuDNN acceleration using NVIDIA’s proprietary cuDNN software, uncomment the USE_CUDNN := 1 switch in Makefile.config. cuDNN is sometimes but not always faster than Caffe’s GPU acceleration.
#For CPU-only Caffe, uncomment CPU_ONLY := 1 in Makefile.config.
#To compile the Python and MATLAB wrappers do make pycaffe and make matcaffe respectively. Be sure to set your MATLAB and Python paths in Makefile.config first!

cp Makefile.config.cp36_x86_64-linux-gnu_CUDA_example Makefile.config

make clean
make all -j17
make test -j17
make runtest -j17
