#include "stm32f4xx.h"
#include "usart.h"
#include "delay.h"
#include "cs43l22.h"
#include "dac.h"
#include "math.h"

#define DAC_BUFF_SIZE		500
#define PI 					3.14159

volatile uint8_t g_gpioa_irq_state;
volatile uint32_t g_irq_timer = 0;

uint16_t dac_buff[DAC_BUFF_SIZE];
uint32_t btime = 0;

volatile float y_out;

void getData4DacUSART2(uint16_t * dac_buff, uint8_t noteTag);
void streamDAC(uint16_t * dac_buff);

int main(void)
{	
	initUSART2(USART2_BAUDRATE_921600);
	enIrqUSART2();
	
	//initUSART3(USART2_BAUDRATE_921600);
	//enIrqUSART3();
	
	initSYSTIM();
	
	initDmaDAC1(dac_buff, DAC_BUFF_SIZE);
	getData4DacUSART2(dac_buff, 0);
	
	printUSART2("\x1b[2J");
	printUSART2("\x1b[1;1f");
	
	printUSART2("\n+----------------------------------------------------------------------+\n");
	printUSART2("|           Tastatura klavijatura - Emina Adrovic & Samir Cirak        |");
	printUSART2("\n+----------------------------------------------------------------------+\n");
	
	initCS43L22(30, 48000);
	initSYSTIM();
	
	btime = getSYSTIM();
	
	printUSART2(" PLAY NOW:");
	uint32_t k = 0;
	
	while(1)
	{
		// send dummy data causing the I2S interface to generate the MCK
		while((SPI3->SR & 0x00000002) == 0);
		SPI3->DR = 0x00; 
		
		//-------------PRVA VERZIJA-----------------
		chkBuffUSART2();
		getData4DacUSART2(dac_buff, noteTag);
		
		//volume[0] = 0x00;
		//writeI2C(CS43L22_REG_PASSTHROUGH_VOLA, volume, 1);
		//volume[0] = 0x00;
		//writeI2C(CS43L22_REG_PASSTHROUGH_VOLB, volume, 1);
		
		//-----------DRUGA VERZIJA-----------------
		//if(chk4TimeoutSYSTIM(btime, 25) == SYSTIM_TIMEOUT){
			//if(received == USART2_RECEIVED){
				//chkBuffUSART2();
				//getData4DacUSART2(dac_buff, noteTag);
				//received = USART2_NOT_RECEIVED;
			//}
			//else if(received == USART2_NOT_RECEIVED){
				//getData4DacUSART2(dac_buff, 0);
			//}
			//btime = getSYSTIM();
		//}
		
		//-----------STREAM SIGNALA-----------
		//streamFlag = chkUSART3flag();
		//if(streamFlag == STREAM_ON)
		//{
			//streamDAC(dac_buff);
		//}
	}
}

void getData4DacUSART2(uint16_t* dac_buff, uint8_t noteTag)
{
	uint16_t n;
	float t =0;
	
	for(n=0;n<(DAC_BUFF_SIZE);n++)
	{
		if(noteTag == 1)
		{
			y_out = sinf(2 * PI * 261.6256 * t); // C
		}
		else if(noteTag == 2)
		{
			y_out = sinf(2 * PI * 293.6648 * t); // D
		}
		else if(noteTag == 3)
		{
			y_out = sinf(2 * PI * 329.6276 * t); // E
		}
		else if(noteTag == 4)
		{
			y_out = sinf(2 * PI * 349.2282 * t); // F
		}
		else if(noteTag == 5)
		{
			y_out = sinf(2 * PI * 391.9954 * t); // G
		}
		else if(noteTag == 6)
		{
			y_out = sinf(2 * PI * 440 * t); // A
		}
		else if(noteTag == 7)
		{
			y_out = sinf(2 * PI * 493.8833 * t); // H
		}
		else if(noteTag == 8)
		{
			y_out = sinf(2 * PI * 523.2511 * t); // C
		}
		else if(noteTag == 0)
		{
			y_out = 0; //Pause
		}
		else
		{
			y_out = 0;
		}
		
		dac_buff[n] = (uint16_t)(y_out*4090);
		
		t = t + 0.5e-4;
	}
}

void streamDAC(uint16_t * dac_buff)
{
	uint16_t utmp16;
	uint32_t k = 0;

	for(k=0;k<(DAC_BUFF_SIZE);k++)
	{
		utmp16 = dac_buff[k];
		putcharUSART3((utmp16&0xFF00)>>8);
		putcharUSART3(utmp16&0x00FF);
	}
}



 
		
