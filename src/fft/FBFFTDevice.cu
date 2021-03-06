// Copyright 2004-present Facebook. All Rights Reserved.

#include "cuda/fbfft/FBFFT.cuh"
#include "cuda/fbfft/FBFFTCommon.cuh"

namespace facebook { namespace cuda { namespace fbfft {

template
facebook::cuda::fbfft::FBFFTParameters::ErrorCode fbfft1D<1>(
    DeviceTensor<float, 2>& real,
    DeviceTensor<float, 3>& complex,
    const int padL,
    cudaStream_t s);

template
facebook::cuda::fbfft::FBFFTParameters::ErrorCode fbfft2D<1>(
    DeviceTensor<float, 3>& real,
    DeviceTensor<float, 4>& complex,
    const int padL,
    const int padU,
    cudaStream_t s);

template
facebook::cuda::fbfft::FBFFTParameters::ErrorCode fbfft2D<1>(
    DeviceTensor<Complex, 3>& complexSrc,
    DeviceTensor<Complex, 3>& complexDst,
    cudaStream_t s);

template
facebook::cuda::fbfft::FBFFTParameters::ErrorCode fbifft1D<1>(
    DeviceTensor<float, 2>& real,
    DeviceTensor<float, 3>& complex,
    const int padL,
    cudaStream_t s);

template
facebook::cuda::fbfft::FBFFTParameters::ErrorCode fbifft2D<1>(
    DeviceTensor<float, 4>& srcComplexAsFloat,
    DeviceTensor<float, 4>& dstComplexAsFloat,
    cudaStream_t s);

template
facebook::cuda::fbfft::FBFFTParameters::ErrorCode fbifft2D<1>(
    DeviceTensor<Complex, 3>& srcComplex,
    DeviceTensor<float, 3>& realDst,
    const int padL,
    const int padU,
    cudaStream_t s);

}}}
