#include "dac.h"

void initDAC1(void)
{/// init DAC1 on PA4 -> DAC1_OUT 
	//wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	// DAC1 init
	//------------------------------------------------------------------ 
	
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN; 								//
	RCC->APB1ENR |= RCC_APB1ENR_DACEN; 								 	//	
	GPIOA->MODER |= GPIO_MODER_MODER4;  								//
	GPIOA->PUPDR &= ~GPIO_PUPDR_PUPDR4; 								//
	
	DAC->CR = (DAC_CR_TSEL1)|(DAC_CR_TEN1)|(DAC_CR_EN1);				//
}

void setDAC1(uint16_t dac_data)
{
	while((DAC->SWTRIGR & DAC_SWTRIGR_SWTRIG1) == DAC_SWTRIGR_SWTRIG1);	// 
																		// 
																		
	DAC->DHR12R1 = (dac_data & 0x0FFF);									// 				
																		// 
	DAC->SWTRIGR = DAC_SWTRIGR_SWTRIG1;									//  
}


void initDmaDAC1(uint16_t * dBuff, uint16_t size)
{
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// PA4 -> DAC1_OUT
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN; 								//	
	GPIOA->MODER |= GPIO_MODER_MODER4;  								//
																
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// setup TIM6 for generation of request
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	RCC->APB1ENR |= RCC_APB1ENR_TIM6EN; 								// 
	TIM6->PSC = 42 - 0x0001;										// 
																		// 
	TIM6->ARR = 100;													// 
	TIM6->CR1 = 0x0084;													// 
																		// 
	TIM6->CR2 = TIM_CR2_MMS_1;											// 

	TIM6->EGR |= TIM_EGR_UG;											// 
	TIM6->CR1 |= TIM_CR1_CEN;											// 
	
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// Enable DAC1 DMA
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	RCC->APB1ENR |= RCC_APB1ENR_DACEN; 								 	//	
	
	DAC->CR &= ~(DAC_CR_EN1);
	
	DAC->CR = (DAC_CR_DMAEN1);											//
	DAC->CR |= (DAC_CR_TEN1);
	
																		// 
	DAC->CR |= DAC_CR_EN1;												// 

	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// Init DMA controller for circular transfer of data for DAC1 
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	RCC->AHB1ENR |= RCC_AHB1ENR_DMA1EN;									// 
	
	DMA1_Stream5->CR = 0x00000000;										// 
	while((DMA1_Stream5->CR & DMA_SxCR_EN) == DMA_SxCR_EN);				// 
	
	DMA1->LIFCR = 0xFFFFFFFF;	
	DMA1->HIFCR = 0xFFFFFFFF;	
	
	DMA1_Stream5->PAR = (uint32_t)&DAC->DHR12R1;						// 
	DMA1_Stream5->M0AR = (uint32_t)dBuff;								// 
	DMA1_Stream5->NDTR = size;											// 
	
	DMA1_Stream5->CR |= DMA_SxCR_CHSEL;									// 
	DMA1_Stream5->CR |= DMA_SxCR_PL;									// 
																		// 
																		// 	
	DMA1_Stream5->CR |= DMA_SxCR_MINC;									// 
																		// 
	DMA1_Stream5->CR |= DMA_SxCR_CIRC;									// 
																		
	DMA1_Stream5->CR |= DMA_SxCR_PSIZE_0;								// 
																		// 
	DMA1_Stream5->CR |= DMA_SxCR_MSIZE_0;								// 
																		// 
	DMA1_Stream5->CR |= DMA_SxCR_DIR_0;									// 
																		//
	DMA1_Stream5->CR |= DMA_SxCR_EN;									// 
}


