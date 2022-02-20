#include "stm32f4xx.h"
#include "usart.h"
#include "delay.h"
#include "cs43l22.h"
#include "dac.h"
#include "math.h"

#define DAC_BUFF_SIZE		500
#define ADC_BUFF_SIZE		(DAC_BUFF_SIZE)

#define PI 					3.14159

#define IRQ_IDLE			0
#define IRQ_DETECTED		1
#define IRQ_WAIT4LOW		2
#define IRQ_DEBOUNCE		3

volatile uint8_t g_gpioa_irq_state = IRQ_IDLE;
volatile uint32_t g_irq_timer = 0;

uint16_t dac_buff[DAC_BUFF_SIZE];
uint8_t tempTag;
uint32_t btime;

volatile float y_out;

void serviceNOTE(void);
void getData4DacUSART2(uint16_t * dac_buff, uint8_t noteTag);

int main(void)
{
	
	//uint8_t t_pbtn_cnt = g_pbtn_cnt;
	
	initUSART2(USART2_BAUDRATE_921600);
	initSYSTIM();
	enIrqUSART2();
	
	initDmaDAC1(dac_buff, DAC_BUFF_SIZE);
	
	printUSART2("\x1b[2J");
	printUSART2("\x1b[1;1f");
	
	printUSART2("\n+----------------------------------------------------------------------+\n");
	printUSART2("| STM32F407 - CS43L22 Audio DAC Projekat - Emina Adrovic & Samir Cirak |");
	printUSART2("\n+----------------------------------------------------------------------+\n");
	
	initCS43L22(30, 48000);
	initSYSTIM();
	
	btime = getSYSTIM();
	
	printUSART2("-> SYS: init completed\n");
	printUSART2("Input: ");
	uint32_t k = 0;
	
	while(1)
	{
		// send dummy data causing the I2S interface to generate the MCK
		while((SPI3->SR & 0x00000002) == 0);
		SPI3->DR = 0x00; 
		
		//-------------PRVA VERZIJA-----------------
		chkBuffUSART2();
		
		//volume[0] = 0x00;
		//writeI2C(CS43L22_REG_PASSTHROUGH_VOLA, volume, 1);
		//volume[0] = 0x00;
		//writeI2C(CS43L22_REG_PASSTHROUGH_VOLB, volume, 1);
		
		getData4DacUSART2(dac_buff, noteTag);
		
		//-----------DRUGA VERZIJA-----------------
		//if(chk4TimeoutSYSTIM(btime, 25) == SYSTIM_TIMEOUT){
			//if(received == 1){
				//chkBuffUSART2();
				//getData4DacUSART2(dac_buff, noteTag);
				//received = 0;
			//}
			//else if(received == 0){
				//getData4DacUSART2(dac_buff, 0);
			//}
			//btime = getSYSTIM();
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
			//y_out = sinf(2 * PI * 20 * t); //Testni zvuk
			y_out = sinf(2 * PI * 261.6256 * t); //c
		}
		else if(noteTag == 2)
		{
			//y_out = sinf(2 * PI * 40 * t);
			y_out = sinf(2 * PI * 585.37 * t);//d
		}
		else if(noteTag == 3)
		{
			//y_out = sinf(2 * PI * 70 * t);
			y_out = sinf(2 * PI * 329.6276 * t);//e
		}
		else if(noteTag == 4)
		{
			y_out = sinf(2 * PI * 349.2282 * t);//f
		}
		else if(noteTag == 5)
		{
			y_out = sinf(2 * PI * 391.9954 * t);//g
		}
		else if(noteTag == 6)
		{
			y_out = sinf(2 * PI * 440 * t);//a
		}
		else if(noteTag == 7)
		{
			y_out = sinf(2 * PI * 493.8833 * t);//h
		}
		else if(noteTag == 8)
		{
			y_out = sinf(2 * PI * 523.2511 * t);//c
		}
		else if(noteTag == 0)
		{
			y_out = 0;
		}
		else
		{
			y_out = 0;
		}
		//dac_buff[n] = (uint16_t)(y_out*4095);
		
		//t = t + 1e-4;
		dac_buff[n] = (uint16_t)(y_out*4090);
		
		t = t + 0.5e-4;
	}
	
}


void serviceNOTE()
{
	switch(usartIRQ_state)
	{
		case(IRQ_IDLE):
		{
			getData4DacUSART2(dac_buff, 0);
			break;
		}
		case(IRQ_DETECTED):
		{
			tempTag = chkNoteTag();
			getData4DacUSART2(dac_buff, tempTag);
			usartIRQ_state = (IRQ_WAIT4LOW);
			
			break;
		}
		case(IRQ_WAIT4LOW):
		{
			if(tempTag != noteTag){
				usartIRQ_state = (IRQ_DEBOUNCE);
				usartIRQ_timer = getSYSTIM();
			}
			break;
		}
		case(IRQ_DEBOUNCE):
		{
			if(chk4TimeoutSYSTIM(usartIRQ_timer, 1000) == (SYSTIM_TIMEOUT))
			{
				usartIRQ_state = (IRQ_IDLE);
			}
			break;
		}
		default:
		{
			break;
		}
	}
}

