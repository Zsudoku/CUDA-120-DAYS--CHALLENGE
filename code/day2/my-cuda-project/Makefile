PROJECT = cuda_app
NVCC = nvcc
SRCS = src/main.cu src/kernels.cu
INCLUDES = -I./include
ARCH = -arch=sm_75
FLAGS = -Xcompiler "-Wall -O2"
CMAKE_CUDA_FLAGS = -allow-unsupported-compiler -g -G

all: $(PROJECT)

$(PROJECT): $(SRCS)
	$(NVCC) $(ARCH) $(FLAGS) $(CMAKE_CUDA_FLAGS) $(INCLUDES) -o $(PROJECT) $(SRCS)

clean:
	rm -f $(PROJECT) *.o