#include <stdio.h>
#include <cuda_runtime.h>

// __global__ indicates this function runs on the GPU.
__global__ void helloFromGPU() {
    if (threadIdx.x == 1) {
        printf("Hello from the GPU1!\n");
    }
    if (threadIdx.x == 0) {
        printf("Hello from the GPU0!\n");
    }
    
}

int main() {
    // Launch the kernel with 1 block of 1 thread.
    helloFromGPU<<<2, 2>>>();

    // Synchronize to ensure the GPU finishes before exiting.
    cudaDeviceSynchronize();

    printf("Hello from the CPU!\n");
    return 0;
}