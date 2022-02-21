#include "cs43l22.h"

uint8_t volume[5] = {0x88, 0xF8, 0x00, 0x07, 0x18};


void initCS43L22(uint8_t volume, uint32_t sample_rate)
{
	uint8_t data[4];
	uint32_t utmp32 = volume;
	volume = (utmp32*255)/100;
	
    //wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
    // init I2S interface fo CS43L22 
    // PD4 	- RESET
	// PC7  - I2S MCK
	// PC10 - I2S SCK
	// PC12 - I2S SD
    //wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;  						
    GPIOD->MODER |= (GPIO_MODER_MODER4_0); 		
    GPIOD->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR4_1);
    
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;  						
    GPIOC->MODER |= (GPIO_MODER_MODER7_1)|(GPIO_MODER_MODER10_1)|(GPIO_MODER_MODER12_1); 		
    GPIOC->AFR[0] = 0x60000000;
    GPIOC->AFR[1] = 0x00060600;
    
    //wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
    // init I2C interface 
    // PB6 - I2C SCL
    // PB9 - I2C SDA
    //wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	initI2C(CS43L22_I2C_ADDR);
	
    
    // reset coded
    GPIOD->ODR &= ~0x0010;
    delay_ms(50);
    GPIOD->ODR |= 0x0010;
    delay_ms(50);
	
	readI2C(CS43L22_REG_ID, data, 1);
	utmp32 = data[0];
	printUSART2(" Ready to play \n");
	
	// power down codec 
	data[0] = 0x01;
	writeI2C(CS43L22_REG_POWER_CONTROL1, data, 1);
	
	// speaker power off but headphones power on  
	data[0] = 0xAF;
	writeI2C(CS43L22_REG_POWER_CONTROL2, data, 1);

	// auto clock configuration and MCLK/2   
	data[0] = 0x80;
	writeI2C(CS43L22_REG_CLOCK_CONTROL, data, 1);
	
	// set I2S slave mode and Phillips I2S audio standard, 16 bit data format and left justified
	//data[0] = 0x07;
	data[0] = 0x03;
	writeI2C(CS43L22_REG_INTERFACE_CONTROL, data, 1);
	

	{/// DAC type input related control
		
		// Enable PassThrough on AIN1A and AIN1B
		data[0] = 0x01;
		writeI2C(CS43L22_REG_PASSTHROUGH_A, data, 1);
		data[0] = 0x01;
		writeI2C(CS43L22_REG_PASSTHROUGH_B, data, 1);
		
		// Route the analog input to the HP line 
		data[0] = 0xC0;
		writeI2C(CS43L22_REG_MISC_CONTROL, data, 1);
		
		// unmute all
		data[0] = 0x00;
		writeI2C(CS43L22_REG_PLAYBACK_CONTROL2, data, 1);
		
		
		// set volume PCM-A and PCM-B
		data[0] = 0x00;
		writeI2C(CS43L22_REG_PCMA_VOLUME, data, 1);
		data[0] = 0x00;
		writeI2C(CS43L22_REG_PCMB_VOLUME, data, 1);
		
		//set volume Passthrough A and Passthrough B
		data[0] = 0x00;
		writeI2C(CS43L22_REG_PASSTHROUGH_VOLA, data, 1);
		data[0] = 0x00;
		writeI2C(CS43L22_REG_PASSTHROUGH_VOLB, data, 1);
	}
	
	// power on the Codec  
	data[0] = 0x9E;
	writeI2C(CS43L22_REG_POWER_CONTROL1, data, 1);
	delay_ms(500);
	
	{
		//wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
		// Additional configuration for the CODEC. 
		//--------------------------------------------------------------------------------
		
		// disable the analog soft ramp
		data[0] = 0x99;
		writeI2C(0x00, data, 1);
		
		data[0] = 0x80;
		writeI2C(0x47, data, 1);
		
		data[0] = 0x80;
		writeI2C(0x32, data, 1);
		
		data[0] = 0x00;
		writeI2C(0x32, data, 1);
		
		data[0] = 0x00;
		writeI2C(0x00, data, 1);
		
		data[0] = 0x9E;
		writeI2C(0x02, data, 1);
	}	
	
	{
		uint32_t sample_rate = 48000;
		RCC->APB1ENR |= (RCC_APB1ENR_SPI3EN); 								// enable SPI2 Peripherial clock 
		RCC->AHB1ENR |= RCC_AHB1ENR_CRCEN;	
		
		// I2SxCLK = ((HSE)/(PLLM))*(I2S_PLLN)/(I2S_PLLR) = 86 MHz
		// HSE 			- 8MHz
		// PLLM			- 8
		// I2S_PLLN		- 3
		// I2S_PLLR		- 258
		
		utmp32 = (86000000*10)/((sample_rate)*256);
		utmp32 = (utmp32 + 5)/10;											// rounding on next integer

		
		if(utmp32 & 0x00000001)
		{
			utmp32--;
			utmp32 = utmp32/2;
			SPI3->I2SPR = (0x0100)|utmp32;
		}
		else
		{
			SPI3->I2SPR = utmp32/2;
		}
		//SPI3->I2SPR |= (SPI_I2SPR_MCKOE)|0x0002;
		SPI3->I2SPR |= (SPI_I2SPR_MCKOE);
		
		
		
		
		SPI3->I2SCFGR = (SPI_I2SCFGR_I2SMOD)| \
					(SPI_I2SCFGR_I2SCFG_1)|(SPI_I2SCFGR_I2SSTD_0)| \
					(SPI_I2SCFGR_CKPOL)|(SPI_I2SCFGR_I2SE);								
	}
	
}
