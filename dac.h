#ifndef __DAC_H
#define __DAC_H
#include "stm32f4xx.h"
#include "delay.h"

void initDAC1(void);	
void initDAC2(void);	
void setDAC1(uint16_t dac_data);
void initDmaDAC1(uint16_t * dBuff, uint16_t size);

#endif 

