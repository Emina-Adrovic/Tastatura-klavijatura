#include "stm32f4xx.h"
#include "usart.h"
#include "delay.h"
#include "adc.h"
#include <stdio.h>
#include <string.h>


#define IRQ_IDLE			0
#define IRQ_DETECTED		1
#define IRQ_WAIT4LOW		2
#define IRQ_DEBOUNCE		3
//#define IRQ_CNT

volatile uint32_t g_irq_cnt = 0;
volatile uint8_t g_gpioa_irq_state = (IRQ_IDLE);
volatile uint32_t g_irq_timer = 0;


volatile uint32_t strelica;



int main(void)
{	
	///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/// inicijalizacija dioda
	///-----------------------------------------------------------------
	//RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;  								//  
    //GPIOD->OTYPER |= 0x00000000;										// 
    //GPIOD->OSPEEDR |= 0xFF000000; 	
    //GPIOD->ODR &= ~(0x0008 << 12);
    /////wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	/////inicijalizacija user tastera
	//RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;  
	//GPIOA->MODER &= ~(0x00000003);  
	//GPIOA->PUPDR |= 0x00000002;		

	//RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;								// enable clock on SYSCFG register
	//SYSCFG->EXTICR[0] = SYSCFG_EXTICR1_EXTI0_PA;						// select PA 0 as interrupt source p259
	//EXTI->IMR = EXTI_IMR_MR0;											// enable interrupt on EXTI_Line0
	//EXTI->EMR &= ~EXTI_EMR_MR0;											// disable event on EXTI_Line0
	//EXTI->RTSR = EXTI_RTSR_TR0;	
	//EXTI->FTSR = 0x00000000;	
	
	//NVIC_EnableIRQ(EXTI0_IRQn);				
	/////wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww 	
	initUSART2(USART2_BAUDRATE_115200);
	enIrqUSART2();
	//initADC1Temp();
	initSYSTIMER();
	/////wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
	
	
	while(1)
	{
		
		 #ifndef USART_ECHO
		 strelica=chkRxBuffUSART2();
		 #endif
		  
		
			  if(strelica==2){ //gore
				  printUSART2("a");
			      
				  }
			  if(strelica==3){ //dole
				  printUSART2("s");
			      
				 }
			  if(strelica==4){ //gore
				  printUSART2("d");
			      
				  }
			  if(strelica==5){ //dole
				  printUSART2("f");
			      
				 }
			  if(strelica==6){ //gore
				  printUSART2("j");
			      
				  }
			  if(strelica==7){ //dole
				  printUSART2("k");
			      
				 }
			  if(strelica==8){ //gore
				  printUSART2("l");
			      
				  }
			  if(strelica==9){ //dole
				  printUSART2(";");
			      
				 }
			
		  
		delay_ms(1);
		
	}//end of while
	
}// end of main	




 
		
