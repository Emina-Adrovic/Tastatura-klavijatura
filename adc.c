#include "adc.h"

void initADC1(void)
{/// initialize ADC on PA1 -> ADC123_IN1 (pin 23 on chip)
	//wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	// ADC initialization
	//------------------------------------------------------------------ 
	
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN; 								/** GPIOA Periph clock enable */	
	RCC->APB2ENR |= RCC_APB2ENR_ADC1EN; 								/** ADC1 Periph clock enable */	
	GPIOA->MODER |= GPIO_MODER_MODER1;  								/** Set Analog mode on pin 1 */
	GPIOA->PUPDR &= ~GPIO_PUPDR_PUPDR1; 								/** No pullup or pulldown */
	
	ADC1->CR1 = 0x00000800;												// 12-bit resolution (15 ADCCLK cycles), 1 channel
																		// Discontinious mode on regular channels
																		// single conversion mode
	ADC1->SMPR1 = 0x00000000;											// conversion time 3 cycles of 84MHz clock!
	ADC1->SQR1 = 0x000000000;											// select one channel in regular sequence
	ADC1->SQR3 = 0x000000001;											// select channel 1
	ADC1->CR2 =  0x000000200;
	ADC->CCR = 0x00030000;												// ADC clock 84/4 = 21MHz!
	
	ADC1->CR2 |= ADC_CR2_ADON;											// turn on the ADC
}

uint16_t getADC1(void)
{
	uint16_t r_val;
	
	ADC1->CR2 |= ADC_CR2_SWSTART;										// Start conversion of regular channels
	
	while((ADC1->SR & ADC_SR_EOC) != ADC_SR_EOC);						// wait for regular channel end of conversion
	
	r_val = ADC1->DR;	
	
	return r_val; 
}

void initADC1Temp(void)
{/// initialize ADC1 to measure temperature on channel 16 
	//wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	// ADC1 initialization
	//------------------------------------------------------------------ 

	RCC->APB2ENR |= RCC_APB2ENR_ADC1EN; 								/** ADC1 Periph clock enable */	
	
	ADC1->CR1 = 0x00000800;												// 12-bit resolution (15 ADCCLK cycles)
																		// Discontinious mode on regular channels
																		// single conversion mode
	ADC1->SMPR1 = (7<<18);												// conversion time 480 cycles
	ADC1->SQR1 = 0x000000000;											// select one channel in regular sequence
	ADC1->SQR3 = 0x000000010;											// select channel 16
	ADC1->CR2 =  0x000000200;
	ADC->CCR = 0x00030000;												// ADC clock is (0.6,14MHz) 84/8 
	
	ADC1->CR2 |= ADC_CR2_ADON;											// turn on the ADC																
	delay_us(10);
}

uint16_t getADC1Temp(void)
{
	uint32_t temp;
	float32_t v_sensor;
	ADC->CCR |= ADC_CCR_TSVREFE;										// wake up the temperature sensor
	temp = (((uint32_t)getADC1())*3000)/4095;							// sensor value in mV	
	ADC->CCR &= ~(ADC_CCR_TSVREFE);
	
	temp = (temp - (ADC1_TEMP_V25))/(ADC1_AVR_SLOPE) + 25;
			
	return temp;
}
