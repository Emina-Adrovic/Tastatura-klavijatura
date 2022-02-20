#ifndef __FFT256_H
#define __FFT256_H

#include "arm_math.h"
#define NFFT_DAC       64

extern const float32_t Wr_DAC[NFFT_DAC];
extern const float32_t Wi_DAC[NFFT_DAC];
extern const uint16_t RBM_DAC[NFFT_DAC];


#endif
