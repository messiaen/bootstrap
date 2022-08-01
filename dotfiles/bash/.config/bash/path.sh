NVIM_HOME=${HOME}/opt/nvim-linux64
export PATH=${NVIM_HOME}/bin:${PATH}

GOROOT=${HOME}/opt/go
export PATH=${GOROOT}/bin:${PATH}
GOPATH=${HOME}/go
export PATH=${GOPATH}/bin:${PATH}

export PATH=${HOME}/bin:${PATH}

ZIG_HOME=${HOME}/opt/zig-linux-x86_64-0.10.0-dev.3051+b8bf5de75
export PATH=${ZIG_HOME}/bin:${PATH}

CUDA_HOME=/usr/local/cuda-11.7
CUDNN_HOME=/usr/local/cuda-11.7
TENSORRT_HOME=/usr/local/cuda-11.7/TensorRT-8.4.1.5

export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:${TENSORRT_HOME}/lib:${LD_LIBRARY_PATH}
export PATH=${CUDA_HOME}/bin:${TENSORRT_HOME}/bin:${PATH}

eval "$(/home/moose/anaconda3/bin/conda shell.bash hook)"
