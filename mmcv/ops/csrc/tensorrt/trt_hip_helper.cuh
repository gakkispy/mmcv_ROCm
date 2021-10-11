// !!! This is a file automatically generated by hipify!!!
// Copyright (c) OpenMMLab. All rights reserved
#ifndef TRT_CUDA_HELPER_HPP
#define TRT_CUDA_HELPER_HPP
#include <rocblas.h>

#define DIVUP(m, n) ((m) / (n) + ((m) % (n) > 0))

#define cudaCheckError()                                       \
  {                                                            \
    hipError_t e = hipGetLastError();                        \
    if (e != hipSuccess) {                                    \
      printf("Cuda failure %s:%d: '%s'\n", __FILE__, __LINE__, \
             hipGetErrorString(e));                           \
      exit(0);                                                 \
    }                                                          \
  }

/**
 * Returns a view of the original tensor with its dimensions permuted.
 *
 * @param[out] dst pointer to the destination tensor
 * @param[in] src pointer to the source tensor
 * @param[in] src_size shape of the src tensor
 * @param[in] permute The desired ordering of dimensions
 * @param[in] src_dim dim of src tensor
 * @param[in] stream cuda stream handle
 */
template <class scalar_t>
void memcpyPermute(scalar_t* dst, const scalar_t* src, int* src_size,
                   int* permute, int src_dim, hipStream_t stream = 0);

template <typename scalar_t>
rocblas_status cublasGemmWrap(rocblas_handle handle, rocblas_operation transa,
                              rocblas_operation transb, int m, int n, int k,
                              const scalar_t* alpha, const scalar_t* A, int lda,
                              const scalar_t* B, int ldb, const scalar_t* beta,
                              scalar_t* C, int ldc) {
  return rocblas_status_internal_error;
}

#endif  // TRT_CUDA_HELPER_HPP
