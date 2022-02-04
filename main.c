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

//void serviceIRQA(void);
//void EXTI0_IRQHandler(void);


//#define PWM_CNT_ARRAY_SIZE			21
//#define POSITION_ARRAY_SIZE         12
//#define PERIOD_ARRAY_SIZE           20


//void GUI(void);

//void move_to(uint8_t row,uint8_t col);

//void led_idle(uint8_t r,uint8_t c, uint32_t dioda);
//void led_on(uint8_t r,uint8_t c, uint32_t dioda);
//void led_off(uint8_t r,uint8_t c, uint32_t dioda);
//void led_pwm(uint32_t dioda);
//void led_blink(uint32_t dioda);
//void led_status_blink(uint8_t r,uint8_t c, uint32_t dioda,uint8_t status);

//void position_strelica_desno(void);
//void position_strelica_levo(void);
//void position_strelica_gore(void);
//void position_strelica_dole(void);

//void clear_position1_white(uint8_t r,uint8_t c);
//void clear_position1_red(uint8_t r,uint8_t c);
//void clear_position2(uint8_t r,uint8_t c);
//void clear_position3(uint8_t r,uint8_t c);
//void clear_position(uint8_t r,uint8_t c);
//void print_button(void);
//void print_temp(void);
//uint32_t getCPUTemparature(void);
//void getCPUTemparature_scale(uint8_t);


//volatile uint32_t temparature;
//volatile uint8_t position[POSITION_ARRAY_SIZE]={0,1,2,3,4,5,6,7,8,9,10,11};
//volatile uint16_t pwm[PWM_CNT_ARRAY_SIZE] = {0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100};
//volatile uint32_t period[PERIOD_ARRAY_SIZE]={100,200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000};

//volatile uint64_t blink_period1;
//volatile uint64_t blink_period2;
//volatile uint64_t blink_period3;
//volatile uint64_t blink_period4;

//volatile uint64_t blink_cnt_period1;
//volatile uint64_t blink_cnt_period2;
//volatile uint64_t blink_cnt_period3;
//volatile uint64_t blink_cnt_period4;

//volatile uint8_t pwm_cnt_led1=10;
//volatile uint8_t pwm_cnt_led2=10;
//volatile uint8_t pwm_cnt_led3=10;
//volatile uint8_t pwm_cnt_led4=10;

//volatile uint8_t period_cnt_led1=9;
//volatile uint8_t period_cnt_led2=9;
//volatile uint8_t period_cnt_led3=9;
//volatile uint8_t period_cnt_led4=9;

//volatile uint8_t position_cnt=0;

//volatile int plava=0;
//volatile int crvena=0;
//volatile int zuta=0;
//volatile int zelena=0;
volatile uint32_t strelica;

//uint32_t temp_timer;

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
	//printUSART2("\e[2J\e[3J");//clear screen
	
	//GUI();
		
	////push button-white
	//print_button();

	////temperatura
	//print_temp();
		
	//temp_timer = getSYSTIMER();
	//blink_period1=getSYSTIMER();
	//blink_period2=getSYSTIMER();
	//blink_period3=getSYSTIMER();
	//blink_period4=getSYSTIMER();
	
	while(1)
	{
		//serviceIRQA();//push button
		
		//blink_cnt_period1=period[period_cnt_led1]*1000;
		//blink_cnt_period2=period[period_cnt_led2]*1000;
		//blink_cnt_period3=period[period_cnt_led3]*1000;
		//blink_cnt_period4=period[period_cnt_led4]*1000;
		
		
		//if(chk4TimeoutSYSTIMER(temp_timer, 1000000) == (SYSTIMER_TIMEOUT))//cpu temparature
		//{
		//print_temp();
		//temp_timer = getSYSTIMER();
		//}
		
		//if(zelena==3){
		//if(chk4TimeoutSYSTIMER(blink_period1,blink_cnt_period1) == (SYSTIMER_TIMEOUT))
		//{
		//GPIOD->MODER &=~(0x03000000);
		//GPIOD->MODER |= 0x01000000;
		//GPIOD->ODR ^= 0x1000;
		//blink_period1=getSYSTIMER();
		//}
	//}
		//if(zuta==3){
		//if(chk4TimeoutSYSTIMER(blink_period2, blink_cnt_period2) == (SYSTIMER_TIMEOUT))
		//{
		//GPIOD->MODER &=~(0x0C0000000);
		//GPIOD->MODER |= 0x04000000;
		//GPIOD->ODR ^= 0x2000;
		//blink_period2=getSYSTIMER();
		//}
	//}if(crvena==3){
		//if(chk4TimeoutSYSTIMER(blink_period3, blink_cnt_period3) == (SYSTIMER_TIMEOUT))
		//{
		//GPIOD->MODER &=~(0x30000000);
		//GPIOD->MODER |= 0x10000000;
		//GPIOD->ODR ^= 0x4000;
		//blink_period3=getSYSTIMER();
		//}
	//}
		//if(plava==3){
		//if(chk4TimeoutSYSTIMER(blink_period4, blink_cnt_period4) == (SYSTIMER_TIMEOUT))
		//{
		//GPIOD->MODER &=~(0xC0000000);
		//GPIOD->MODER |= 0x40000000;
		//GPIOD->ODR ^= 0x8000;
		//blink_period4=getSYSTIMER();
		//}
	//}
		
		//kretanje po terminalu
		 #ifndef USART_ECHO
		 strelica=chkRxBuffUSART2();
		 #endif
		  
		  //funkcija chkRXBuffUSART2 vraca vrijednost na osnovu pritisnute strelice, te se na osnovu dobijene vrijednosti vrsi poziv odgovarajuce funkcije
			  //if(strelica==3){ //desno
			     //position_strelica_desno();
			     
				  //};
			  //if(strelica==4){ //levo
				 //position_strelica_levo();
				 
				  //}
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


//void EXTI0_IRQHandler(void)
 //{
 	//if((EXTI->PR & EXTI_PR_PR0) == EXTI_PR_PR0)							
 	//{
 		//if(g_gpioa_irq_state == (IRQ_IDLE))
 		//{
 			          								                    
 			//g_gpioa_irq_state = (IRQ_DETECTED);
 		//}
		//EXTI->PR = EXTI_PR_PR0;											
 	//}
 //}
 
 
//void serviceIRQA(void)
//{
	//switch(g_gpioa_irq_state)
	//{
		//case(IRQ_IDLE):
		//{
			//break;
		//}
		//case(IRQ_DETECTED):
		//{
		    //move_to(31,70);
			//printUSART2("\e[0;32mACTIVE  ");

			//g_gpioa_irq_state = (IRQ_WAIT4LOW); 
			//break;
		//}
		//case(IRQ_WAIT4LOW):
		//{
			//if((GPIOA->IDR & 0x0001) == 0x0000)
			//{
				//move_to(31,70);
			    //printUSART2("\e[0;31mINACTIVE");
				//g_gpioa_irq_state = (IRQ_DEBOUNCE);
				//g_irq_timer = getSYSTIMER(); 
			//}
			//break;
		//}
		//case(IRQ_DEBOUNCE):
		//{
			//if(chk4TimeoutSYSTIMER(g_irq_timer, 50000) == (SYSTIMER_TIMEOUT))
			//{
				//g_gpioa_irq_state = (IRQ_IDLE); 
			//}
		//}
		//default:
		//{
			//break;
		//}
	//}
	
//}

	 
//void GUI(void){
	
	//printUSART2("\x1b[%d;%df",2,4);//pozicija u terminalu (...,ROWS,COLUMNS) 
	//printUSART2("\e[0;35m-------------------------------------------------------------------------------------------------");
	//printUSART2("\x1b[%d;%df",3,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",4,4);
	//printUSART2("|                           Mikroprocesorski sistemi u Telekomunikacijama                       |");
	//printUSART2("\x1b[%d;%df",5,4);
	//printUSART2("|                           Zadaca1                                  2021                       |");
	//printUSART2("\x1b[%d;%df",6,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",7,4);
	//printUSART2("-------------------------------------------------------------------------------------------------");
	//printUSART2("\x1b[%d;%df",9,4);//pozicija u terminalu (...,ROWS,COLUMNS) 
	//printUSART2("\e[0;32m-------------------------------------------------------------------------------------------------");
	//printUSART2("\x1b[%d;%df",10,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",11,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",12,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",13,4);
	//printUSART2("-------------------------------------------------------------------------------------------------");
	//printUSART2("\x1b[%d;%df",14,4);//pozicija u terminalu (...,ROWS,COLUMNS) 
	//printUSART2("\e[0;33m-------------------------------------------------------------------------------------------------");
	//printUSART2("\x1b[%d;%df",15,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",16,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",17,4);
	//printUSART2("|                                                                                               |");
    //printUSART2("\x1b[%d;%df",18,4);
	//printUSART2("-------------------------------------------------------------------------------------------------");
	//printUSART2("\x1b[%d;%df",19,4);//pozicija u terminalu (...,ROWS,COLUMNS) 
	//printUSART2("\e[0;31m-------------------------------------------------------------------------------------------------");
	//printUSART2("\x1b[%d;%df",20,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",21,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",22,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",23,4);
	//printUSART2("-------------------------------------------------------------------------------------------------");
	//printUSART2("\x1b[%d;%df",24,4);//pozicija u terminalu (...,ROWS,COLUMNS) 
	//printUSART2("\e[0;34m-------------------------------------------------------------------------------------------------");
	//printUSART2("\x1b[%d;%df",25,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",26,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",27,4);
	//printUSART2("|                                                                                               |");
	//printUSART2("\x1b[%d;%df",28,4);
	//printUSART2("-------------------------------------------------------------------------------------------------");
	//printUSART2("\x1b[%d;%df",29,4);//pozicija u terminalu (...,ROWS,COLUMNS) 
	//printUSART2("\e[0;36m-------------------------------------------------------------------------------------------------");
	//printUSART2("\x1b[%d;%df",30,4);
	//printUSART2("|                                                |                                              |");
	//printUSART2("\x1b[%d;%df",31,4);
	//printUSART2("|                                                |                                              |");
	//printUSART2("\x1b[%d;%df",32,4); 
	//printUSART2("|                                                |                                              |");
	//printUSART2("\x1b[%d;%df",33,4); 
	//printUSART2("-------------------------------------------------------------------------------------------------\e[0;33m");
	//printUSART2("\x1b[%d;%df",11,10);
	//printUSART2("\e[0;37mLED 1");
    //printUSART2("\x1b[%d;%df",16,10);
	//printUSART2("\e[0;37mLED 2");
	//printUSART2("\x1b[%d;%df",21,10);
	//printUSART2("\e[0;37mLED 3");
	//printUSART2("\x1b[%d;%df",26,10);
	//printUSART2("\e[0;37mLED 4");
	//printUSART2("\x1b[%d;%df",11,20);
	//printUSART2("\e[0;37mMode:");
	//printUSART2("\x1b[%d;%df",16,20);
	//printUSART2("\e[0;37mMode:");
	//printUSART2("\x1b[%d;%df",21,20);
	//printUSART2("\e[0;37mMode:");
	//printUSART2("\x1b[%d;%df",26,20);
	//printUSART2("\e[0;37mMode:");
	//printUSART2("\x1b[%d;%df",11,45);
	//printUSART2("\e[0;37mPeriod:");
	//printUSART2("\x1b[%d;%df",16,45);
	//printUSART2("\e[0;37mPeriod:");
	//printUSART2("\x1b[%d;%df",21,45);
	//printUSART2("\e[0;37mPeriod:");
	//printUSART2("\x1b[%d;%df",26,45);
	//printUSART2("\e[0;37mPeriod:");
	//printUSART2("\x1b[%d;%df",11,55);
	//printUSART2("\e[0;37m%d [ms]",period[period_cnt_led1]);
	//printUSART2("\x1b[%d;%df",16,55);
	//printUSART2("\e[0;37m%d [ms]",period[period_cnt_led2]);
	//printUSART2("\x1b[%d;%df",21,55);
	//printUSART2("\e[0;37m%d [ms]",period[period_cnt_led3]);;
	//printUSART2("\x1b[%d;%df",26,55);
	//printUSART2("\e[0;37m%d [ms]",period[period_cnt_led4]);
	//printUSART2("\x1b[%d;%df",11,75);
	//printUSART2("\e[0;37mDuty cycle:");
	//printUSART2("\x1b[%d;%df",16,75);
	//printUSART2("\e[0;37mDuty cycle:");
	//printUSART2("\x1b[%d;%df",21,75);
	//printUSART2("\e[0;37mDuty cycle:");
	//printUSART2("\x1b[%d;%df",26,75);
	//printUSART2("\e[0;37mDuty cycle:");
	//printUSART2("\x1b[%d;%df",11,90);
	//printUSART2("\e[0;37m%d",pwm[pwm_cnt_led1]);
	//printUSART2("\x1b[%d;%df",16,90);
	//printUSART2("\e[0;37m%d",pwm[pwm_cnt_led2]);
	//printUSART2("\x1b[%d;%df",21,90);
	//printUSART2("\e[0;37m%d",pwm[pwm_cnt_led3]);
	//printUSART2("\x1b[%d;%df",26,90);
	//printUSART2("\e[0;37m%d",pwm[pwm_cnt_led4]);
	//printUSART2("\x1b[%d;%df",11,30);
    //printUSART2("\e[0;97;41mIDLE");
	//printUSART2("\x1b[%d;%df",16,30);
	//printUSART2("\e[0;37mIDLE");
	//printUSART2("\x1b[%d;%df",21,30);
	//printUSART2("\e[0;37mIDLE");
	//printUSART2("\x1b[%d;%df",26,30);
	//printUSART2("\e[0;37mIDLE");
//};

	 	
//void print_temp(void){
		//temparature = getCPUTemparature();
		//move_to(30,10);
		//printUSART2("\e[0;37mCPU temparature: %d", temparature);
		//clear_position(31,32);
        //move_to(31,6);
		//getCPUTemparature_scale(temparature);
		//clear_position(32,32);
		//move_to(32,6);
		//getCPUTemparature_scale(temparature);
	
 //};
	
//void print_button(void){
	//move_to(30,65);
	//printUSART2("\e[0;37mPush-Button state:\n");
	//move_to(31,70);
	//printUSART2("\e[0;31mINACTIVE");
	//};


//uint32_t getCPUTemparature(void){
	//uint32_t temp;
	//temp = getADC1Temp();
	//return temp;	
	//};

//void getCPUTemparature_scale(uint8_t tem){
	//uint8_t i;

	//for (i=1;i<=tem;++i){
		//if (i>24){
		//printUSART2("\e[0;33m|");
			//}
		//else{
		//printUSART2("\e[0;34m|");
	    //}
     //}
//};

//void move_to(uint8_t row,uint8_t col){
	
	//printUSART2("\x1b[%d;%df",row,col);
//};


//void clear_position1_red(uint8_t r,uint8_t c){ //funkcija koja ispisuje MODE diode sa crvenom pozadinom
//if((r==11)&(c==30)){
	//if(zelena==0){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mIDLE ");
//}else if(zelena==1){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mON   ");
//}else if(zelena==2){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mOFF  ");
//}else if(zelena==3){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mBLINK");
//}else if(zelena==4){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mPWM  ");
//}
//}else if((r==16)&(c==30)){
	//if(zuta==0){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mIDLE ");
//}else if(zuta==1){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mON   ");
//}else if(zuta==2){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mOFF  ");
//}else if(zuta==3){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mBLINK");
//}else if(zuta==4){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mPWM  ");
//}
//}else if((r==21)&(c==30)){
	//if(crvena==0){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mIDLE ");
//}else if(crvena==1){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mON   ");
//}else if(crvena==2){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mOFF  ");
//}else if(crvena==3){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mBLINK");
//}else if(crvena==4){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mPWM  ");
//}
//}else if((r==26)&(c==30)){
	//if(plava==0){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mIDLE ");
//}else if(plava==1){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mON   ");
//}else if(plava==2){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mOFF  ");
//}else if(plava==3){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mBLINK");
//}else if(plava==4){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mPWM  ");
//}
//}
	//};






//void clear_position1_white(uint8_t r,uint8_t c){  //funkcija koja ispisuje MODE dioda bez crvene pozadine
//if((r==11)&(c==30)){
	//if(zelena==0){
	//move_to(r,c);
	//printUSART2("\e[0;37mIDLE ");
//}else if(zelena==1){
	//move_to(r,c);
	//printUSART2("\e[0;37mON   ");
//}else if(zelena==2){
	//move_to(r,c);
	//printUSART2("\e[0;37mOFF  ");
//}else if(zelena==3){
	//move_to(r,c);
	//printUSART2("\e[0;37mBLINK");
//}else if(zelena==4){
	//move_to(r,c);
	//printUSART2("\e[0;37mPWM  ");
//}
//}else if((r==16)&(c==30)){
	//if(zuta==0){
	//move_to(r,c);
	//printUSART2("\e[0;37mIDLE ");
//}else if(zuta==1){
	//move_to(r,c);
	//printUSART2("\e[0;37mON   ");
//}else if(zuta==2){
	//move_to(r,c);
	//printUSART2("\e[0;37mOFF  ");
//}else if(zuta==3){
	//move_to(r,c);
	//printUSART2("\e[0;37mBLINK");
//}else if(zuta==4){
	//move_to(r,c);
	//printUSART2("\e[0;37mPWM  ");
//}
//}else if((r==21)&(c==30)){
	//if(crvena==0){
	//move_to(r,c);
	//printUSART2("\e[0;37mIDLE ");
//}else if(crvena==1){
	//move_to(r,c);
	//printUSART2("\e[0;37mON   ");
//}else if(crvena==2){
	//move_to(r,c);
	//printUSART2("\e[0;37mOFF  ");
//}else if(crvena==3){
	//move_to(r,c);
	//printUSART2("\e[0;37mBLINK");
//}else if(crvena==4){
	//move_to(r,c);
	//printUSART2("\e[0;37mPWM  ");
//}
//}else if((r==26)&(c==30)){
	//if(plava==0){
	//move_to(r,c);
	//printUSART2("\e[0;37mIDLE ");
//}else if(plava==1){
	//move_to(r,c);
	//printUSART2("\e[0;37mON   ");
//}else if(plava==2){
	//move_to(r,c);
	//printUSART2("\e[0;37mOFF  ");
//}else if(plava==3){
	//move_to(r,c);
	//printUSART2("\e[0;37mBLINK");
//}else if(plava==4){
	//move_to(r,c);
	//printUSART2("\e[0;37mPWM  ");
//}
//}
	//};
	
//void clear_position2(uint8_t r,uint8_t c){ //funkcija koja cisti PERIOD bez crvene pozadine
	//if((r==11)&(c==55)){
	//move_to(r,c);
	//printUSART2("         ");
	//move_to(r,c);
	//printUSART2("\e[0;37m%d [ms]",period[period_cnt_led1]);
//}else if((r==16)&(c==55)){
	//move_to(r,c);
	//printUSART2("         ");
	//move_to(r,c);
	//printUSART2("\e[0;37m%d [ms]",period[period_cnt_led2]);
//}else if((r==21)&(c==55)){
	//move_to(r,c);
	//printUSART2("         ");
	//move_to(r,c);
	//printUSART2("\e[0;37m%d [ms]",period[period_cnt_led3]);
//}else if((r==26)&(c==55)){
	//move_to(r,c);
	//printUSART2("         ");
	//move_to(r,c);
	//printUSART2("\e[0;37m%d [ms]",period[period_cnt_led4]);
//}
	//};
	
//void clear_position3(uint8_t r,uint8_t c){ //funkcija koja cisti PWM bez crvene pozadine
	//if((r==11)&(c==90)){
	//move_to(r,c);
	//printUSART2("   ");
	//move_to(r,c);
	//printUSART2("\e[0;37m%d",pwm[pwm_cnt_led1]);
//}else if((r==16)&(c==90)){
	//move_to(r,c);
	//printUSART2("   ");
	//move_to(r,c);
	//printUSART2("\e[0;37m%d",pwm[pwm_cnt_led2]);
//}else if((r==21)&(c==90)){
	//move_to(r,c);
	//printUSART2("    ");
	//move_to(r,c);
	//printUSART2("\e[0;37m%d",pwm[pwm_cnt_led3]);
//}else if((r==26)&(c==90)){
	//move_to(r,c);
	//printUSART2("   ");
	//move_to(r,c);
	//printUSART2("\e[0;37m%d",pwm[pwm_cnt_led4]);
//}
	//};
	
//void clear_position(uint8_t r,uint8_t c){ //funckija koja cisti 
	 //move_to(r,c);
	 //printUSART2("      ");
	 //};
	
	
//void position_strelica_desno(void){  //funkcija koja se poziva pri pritisku strelice desno i sve radi na osnovu pozicija 0 1 2
																													  //// 3 4 5
																													////   6 7 8
																													////   9 10 11  niz vrijednosti sa (x,y)koordinatama
	//if(position[position_cnt]==0){ //provjerava svaku poziciju, clear-poziciju, premjesti se i ispise trenutno stanje, poveca index position niza jer je pritisnuta strelica 
			  //clear_position1_white(11,30);
			  //move_to(11,55);
			  //printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led1]);
			  //position_cnt+=1;
				//}
			 //else if (position[position_cnt]==1){
			  //clear_position2(11,55);
			  //move_to(11,90);
			  //printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led1]);
			  //position_cnt+=1;
			 //}
			 //else if (position[position_cnt]==2){
			  //clear_position3(11,90);
			  //clear_position1_red(16,30);
			  //position_cnt+=1;
			 //}
			 //else if (position[position_cnt]==3){
			  //clear_position1_white(16,30);
			  //move_to(16,55);
			  //printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led2]);
			  //position_cnt+=1;
		     //}
			 //else if (position[position_cnt]==4){
			  //clear_position2(16,55);
			  //move_to(16,90);
			  //printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led2]);
			  //position_cnt+=1;
			 //}
			 //else if (position[position_cnt]==5){
			  //clear_position3(16,90);
			  //clear_position1_red(21,30);
			  //position_cnt+=1;
		     //}
		     //else if (position[position_cnt]==6){
			  //clear_position1_white(21,30);
			  //move_to(21,55);
			  //printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led3]);
			  //position_cnt+=1;
		     //}
		     //else if (position[position_cnt]==7){
			  //clear_position2(21,55);
			  //move_to(21,90);
			  //printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led3]);
			  //position_cnt+=1;
			 //}
			  //else if (position[position_cnt]==8){
			  //clear_position3(21,90);
			  //clear_position1_red(26,30);
			  //position_cnt+=1;
		     //}
			  //else if (position[position_cnt]==9){
			  //clear_position1_white(26,30);
			  //move_to(26,55);
			  //printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led4]);
			  //position_cnt+=1;
		     //}
		      //else if (position[position_cnt]==10){
			  //clear_position2(26,55);
			  //move_to(26,90);
			  //printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led4]);
			  //position_cnt+=1;
			//} else if (position[position_cnt]==11){
			  //clear_position2(26,55);
			  //move_to(26,90);
			  //printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led4]); 
		  //}
			//else  {
			  //clear_position3(26,90); //ne dozvoljava izlazak van niza
			  //position_cnt=11;
				//}
			//}
		
		
			
//void position_strelica_levo(void){ //isti princip kao i desno
	//if (position[position_cnt]==0){
	    //clear_position1_red(11,30);
	    //position_cnt=0;
		//}

	//if(position[position_cnt]==1){
			  //clear_position2(11,55);
			  //clear_position1_red(11,30);
			  //position_cnt-=1;
				//}
			 //else if (position[position_cnt]==2){
			  //clear_position3(11,90);
			  //move_to(11,55);
			  //printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led1]);
			  //position_cnt-=1;
			  
			 //}
			 //else if (position[position_cnt]==3){
			  //clear_position1_white(16,30);
			  //move_to(11,90);
			  //printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led1]);
			  //position_cnt-=1;
			  
			 //}
			 //else if (position[position_cnt]==4){
			  //clear_position2(16,55);
			  //clear_position1_red(16,30);
			  //position_cnt-=1;
		  //}
			 //else if (position[position_cnt]==5){
			  //clear_position3(16,90);
			  //move_to(16,55);
			  //printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led2]);
			  //position_cnt-=1;
			 //}
			 //else if (position[position_cnt]==6){
			  //clear_position1_white(21,30);
			  //move_to(16,90);
			  //printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led2]);
			  //position_cnt-=1;
		     //}
		     //else if (position[position_cnt]==7){
			  //clear_position2(21,55);
			  //clear_position1_red(21,30);
			  //position_cnt-=1;		   
		    //}
		     //else if (position[position_cnt]==8){
			  //clear_position3(21,90);
			  //move_to(21,55);
			  //printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led3]);
			  //position_cnt-=1;
			 //}
			  //else if (position[position_cnt]==9){
			  //clear_position1_white(26,30);
			  //move_to(21,90);
			  //printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led3]);
			  //position_cnt-=1;
		     //}
			  //else if (position[position_cnt]==10){
			  //clear_position2(26,55);
			  //clear_position1_red(26,30);
			  //position_cnt-=1;
		     //}
		      //else if (position[position_cnt]==11){
			  //clear_position3(26,90);
			  //move_to(26,55);
			  //printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led4]);
			  //position_cnt-=1;
			//}
		//}
			

//void position_strelica_gore(void){ // provjera poziciju u nizu i na osnovu toga prati status didode ili period ili pwm 
								////napravljene su 4 globalne varijable po bojama diode da bi se pratilo idle,on,off,blink ili pwm svake ponaosob
								//// svako stanje je predstavljeno brojem i na osnovu toga je izvrsena funkcionalnost
								//// inkrementacija svake boje se desava na pritisak strelice 
	////status led
	//if(position[position_cnt]==0){
		
			//zelena++;
		
			//if(zelena==1){
				//GPIOD->MODER &=~(0x03000000);
				//GPIOD->MODER |= 0x01000000;
				//led_on(11,30,0x1000);
			//}else if(zelena==2){
				//GPIOD->MODER &=~(0x03000000);
				//GPIOD->MODER |= 0x01000000;
				//led_off(11,30,0x1000);
			//}else if(zelena==3){
				//GPIOD->MODER &=~(0x03000000);
				//GPIOD->MODER |= 0x01000000;
				//move_to(11,30);
		        //printUSART2("\e[0;97;41mBLINK");
			//}
			//if(zelena>=4){
				//zelena=4;
				//move_to(11,30);
				//printUSART2("\e[0;97;41mPWM  ");
				//led_pwm(0x1000);
				//}
			//}	
	
	//else if(position[position_cnt]==3){
			//zuta++;
			//if(zuta==1){
				//GPIOD->MODER &=~(0x0C0000000);
				//GPIOD->MODER |= 0x04000000;
				//led_on(16,30,0x2000);
			//}else if(zuta==2){
				//GPIOD->MODER &=~(0x0C000000);
				//GPIOD->MODER |= 0x04000000;
				//led_off(16,30,0x2000);
			//}else if(zuta==3){
				//GPIOD->MODER &=~(0x0C000000);
				//GPIOD->MODER |= 0x04000000;
				//move_to(16,30);
		        //printUSART2("\e[0;97;41mBLINK");
			//}
			//if(zuta>=4){
				//zuta=4;
				//move_to(16,30);
				//printUSART2("\e[0;97;41mPWM  ");
				//led_pwm(0x2000);
				//}
			//}	
	
	//else if(position[position_cnt]==6){
			//crvena++;
			//if(crvena==1){
				//GPIOD->MODER &=~(0x30000000);
				//GPIOD->MODER |= 0x10000000;
				//led_on(21,30,0x4000);
			//}else if(crvena==2){
				//GPIOD->MODER &=~(0x30000000);
				//GPIOD->MODER |= 0x10000000;
				//led_off(21,30,0x4000);
			//}else if(crvena==3){
				//GPIOD->MODER &=~(0x30000000);
				//GPIOD->MODER |= 0x10000000;
				//move_to(21,30);
				//printUSART2("\e[0;97;41mBLINK");
				//}
			//if(crvena>=4){
				//crvena=4;
				//move_to(21,30);
				//printUSART2("\e[0;97;41mPWM  ");
				//led_pwm(0x4000);
				//}
			
			//}	
	//else if(position[position_cnt]==9){
			//plava++;
			//if(plava==1){
				//GPIOD->MODER &=~(0xC0000000);
				//GPIOD->MODER |= 0x40000000;
				//led_on(26,30,0x8000);
			//}else if(plava==2){
				//GPIOD->MODER &=~(0xC0000000);
				//GPIOD->MODER |= 0x40000000;
				//led_off(26,30,0x8000);
			//}else if(plava==3){
				//GPIOD->MODER &=~(0xC0000000);
				//GPIOD->MODER |= 0x40000000;
				//move_to(26,30);
		        //printUSART2("\e[0;97;41mBLINK");
		  //}
			//if(plava>=4){
				//plava=4;
				//move_to(26,30);
				//printUSART2("\e[0;97;41mPWM  ");
				//led_pwm(0x8000);
				//}
			
			//}	
			
			////pwm
		//else if(position[position_cnt]==2){ //napravljen niz pwm vrijednosti koji se ispisuje ukoliko smo na toj poziciji
			//if(pwm_cnt_led1!=20){
				//pwm_cnt_led1++;
			//}else{
				//pwm_cnt_led1=20;
				//};
			//move_to(11,90);
			//printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led1]);
			//if(zelena==4){
			//led_pwm(0x1000);
	       //}
		   //}	
		//else if(position[position_cnt]==5){
			//if(pwm_cnt_led2!=20){
				//pwm_cnt_led2++;
			//}else{
				//pwm_cnt_led2=20;
				//};
			//move_to(16,90);
			//printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led2]);
			//if(zuta==4){
			//led_pwm(0x2000);
		//}
		   //}	
		//else if(position[position_cnt]==8){
			//if(pwm_cnt_led3!=20){
				//pwm_cnt_led3++;
			//}else{
				//pwm_cnt_led3=20;
				//};
			//move_to(21,90);
			//printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led3]);
			//if(crvena==4){
			//led_pwm(0x4000);
		//}
		   //}	
		//else if(position[position_cnt]==11){
			//if(pwm_cnt_led4!=20){
				//pwm_cnt_led4++;
			//}else{
				//pwm_cnt_led4=20;
				//};
			//move_to(26,90);
			//printUSART2("\e[0;97;41m%d", pwm[pwm_cnt_led4]);
			//if(plava==4){
			//led_pwm(0x8000);
		//}
		   //}
		   
		   ////period
		   //else if(position[position_cnt]==1){ //napravljen niz vrijednsti za period koji se ispisuje ako smo na toj poziciji 
			//if(period_cnt_led1!=19){
				//period_cnt_led1++;
			
			//}else{
				//period_cnt_led1=19;
				//};
			//move_to(11,55);
			//printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led1]);
			
		
		   //}	
		   //else if(position[position_cnt]==4){
			//if(period_cnt_led2!=19){
				//period_cnt_led2++;
			//}else{
				//period_cnt_led2=19;
				//};
			//move_to(16,55);
			//printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led2]);
			
		   //}	
		   //else if(position[position_cnt]==7){
			//if(period_cnt_led3!=19){
				//period_cnt_led3++;
			//}else{
				//period_cnt_led3=19;
				//};
			//move_to(21,55);
			//printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led3]);
			
		   //}	
		   //else if(position[position_cnt]==10){
			//if(period_cnt_led4!=19){
				//period_cnt_led4++;
			//}else{
				//period_cnt_led4=19;
				//};
			//move_to(26,55);
			//printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led4]);
			
		   //}	
		   
		   	
			 
	
	//}
		
//void position_strelica_dole(void){ // isto kao i strelica gore samo dekrementiranje varijabli i indexa niza 
	//if(position[position_cnt]==0){
			//zelena--;
			//if(zelena==1){
				//GPIOD->MODER &=~(0x03000000);
				//GPIOD->MODER |= 0x01000000;
				//led_on(11,30,0x1000);
			//}else if(zelena==2){
				//GPIOD->MODER &=~(0x03000000);
				//GPIOD->MODER |= 0x01000000;
				//led_off(11,30,0x1000);
			//}else if(zelena==3){
				//GPIOD->MODER &=~(0x03000000);
				//GPIOD->MODER |= 0x01000000;
				//move_to(11,30);
		        //printUSART2("\e[0;97;41mBLINK");
			//}if(zelena<=0){
				//zelena=0;
				//led_idle(11,30,0x1000);
				//}
			//}
			
			
	
	//else if(position[position_cnt]==3){
			//zuta--;
			//if(zuta==1){
				//GPIOD->MODER &=~(0x0C0000000);
				//GPIOD->MODER |= 0x04000000;
				//led_on(16,30,0x2000);
			//}else if(zuta==2){
				//GPIOD->MODER &=~(0x0C000000);
				//GPIOD->MODER |= 0x04000000;
				//led_off(16,30,0x2000);
			//}else if(zuta==3){
				//GPIOD->MODER &=~(0x0C000000);
				//GPIOD->MODER |= 0x04000000;
				//move_to(16,30);
		        //printUSART2("\e[0;97;41mBLINK");
			//}
			//if(zuta<=0){
				//zuta=0;
				//led_idle(16,30,0x2000);
				//}
			//}	
	
	//else if(position[position_cnt]==6){
			//crvena--;
			//if(crvena==1){
				//GPIOD->MODER &=~(0x30000000);
				//GPIOD->MODER |= 0x10000000;
				//led_on(21,30,0x4000);
			//}else if(crvena==2){
				//GPIOD->MODER &=~(0x30000000);
				//GPIOD->MODER |= 0x10000000;
				//led_off(21,30,0x4000);
			//}else if(crvena==3){
				//GPIOD->MODER &=~(0x30000000);
				//GPIOD->MODER |= 0x10000000;
				//move_to(21,30);
		        //printUSART2("\e[0;97;41mBLINK");
			//}
			//if(crvena<=0){
				//crvena=0;
				
				//led_idle(21,30,0x4000);
				//}
			
			//}	
	//else if(position[position_cnt]==9){
			//plava--;
			//if(plava==1){
				//GPIOD->MODER &=~(0xC0000000);
				//GPIOD->MODER |= 0x40000000;
				//led_on(26,30,0x8000);
			//}else if(plava==2){
				//GPIOD->MODER &=~(0xC0000000);
				//GPIOD->MODER |= 0x40000000;
				//led_off(26,30,0x8000);
			//}else if(plava==3){
				//GPIOD->MODER &=~(0xC0000000);
				//GPIOD->MODER |= 0x40000000;
				//move_to(26,30);
		        //printUSART2("\e[0;97;41mBLINK");
			//}
			//if(plava<=0){
				//plava=0;
				
				//led_idle(26,30,0x8000);
				//}
			
			//}			
				////pwm
		//else if(position[position_cnt]==2){
			//if(pwm_cnt_led1!=0){
				//pwm_cnt_led1--;
			//}else{
				//pwm_cnt_led1=0;
				//};
			//move_to(11,90);
			//printUSART2("   ");
			//move_to(11,90);
			//printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led1]);
			//if(zelena==4){
			//led_pwm(0x1000);
		   //}
		   //}	
		//else if(position[position_cnt]==5){
			//if(pwm_cnt_led2!=0){
				//pwm_cnt_led2--;
			//}else{
				//pwm_cnt_led2=0;
				//};
			//move_to(16,90);
			//printUSART2("   ");
			//move_to(16,90);
			//printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led2]);
			//if(zuta==4){
			//led_pwm(0x2000);
		//}
		   //}	
		//else if(position[position_cnt]==8){
			//if(pwm_cnt_led3!=0){
				//pwm_cnt_led3--;
			//}else{
				//pwm_cnt_led3=0;
				//};
			//move_to(21,90);
			//printUSART2("   ");
			//move_to(21,90);
			//printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led3]);
			//if(crvena==4){
			//led_pwm(0x4000);
		//}
		   //}	
		//else if(position[position_cnt]==11){
			//if(pwm_cnt_led4!=0){
				//pwm_cnt_led4--;
			//}else{
				//pwm_cnt_led4=0;
				//};
			//move_to(26,90);
			//printUSART2("   ");
			//move_to(26,90);
			//printUSART2("\e[0;97;41m%d",pwm[pwm_cnt_led4]);
			//if(plava==4){
			//led_pwm(0x8000);
		//}
		   //}	
		   
		    ////period
		   //else if(position[position_cnt]==1){
			//if(period_cnt_led1!=0){
				//period_cnt_led1--;
			//}else{
				//period_cnt_led1=0;
				//};
			//if(zelena==3){
			//move_to(11,55);
			//printUSART2("         ");
			//move_to(11,55);
			//printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led1]);
		//}
		   //}	
		   //else if(position[position_cnt]==4){
			//if(period_cnt_led2!=0){
				//period_cnt_led2--;
			//}else{
				//period_cnt_led2=0;
				//};
			//move_to(16,55);
			//printUSART2("         ");
			//move_to(16,55);
			//printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led2]);
		   //}	
		   //else if(position[position_cnt]==7){
			//if(period_cnt_led3!=0){
				//period_cnt_led3--;
			//}else{
				//period_cnt_led3=0;
				//};
			//move_to(21,55);
			//printUSART2("         ");
			//move_to(21,55);
			//printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led3]);
		   //}	
		   //else if(position[position_cnt]==10){
			//if(period_cnt_led4!=0){
				//period_cnt_led4--;
			//}else{
				//period_cnt_led4=0;
				//};
			//move_to(26,55);
			//printUSART2("         ");
			//move_to(26,55);
			//printUSART2("\e[0;97;41m%d [ms]",period[period_cnt_led4]);
		   //}	
		   
		   	
			 
	
	//};
	
//void led_idle(uint8_t r,uint8_t c, uint32_t dioda){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mIDLE ");
	//GPIOD->ODR &=~(dioda);
	//};
	
//void led_on(uint8_t r,uint8_t c, uint32_t dioda){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mON  ");
	//GPIOD->ODR |=dioda;
	//};
	
//void led_off(uint8_t r,uint8_t c, uint32_t dioda){
	//move_to(r,c);
	//printUSART2("\e[0;97;41mOFF  ");
	//GPIOD->ODR &=~(dioda);
//};

//void led_pwm(uint32_t dioda){
	//RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;  	
	//if(dioda==0x1000){
	//GPIOD->MODER &=~(0x03000000);
	//GPIOD->MODER |= (0x02000000); 
//}else if(dioda==0x2000){
	//GPIOD->MODER &=~(0x0C000000);
	//GPIOD->MODER |= (0x08000000);
//}else if(dioda==0x4000){
	//GPIOD->MODER &=~(0x30000000);
	//GPIOD->MODER |= (0x20000000);   
//}else if(dioda==0x8000){
	//GPIOD->MODER &=~(0xC0000000);
	//GPIOD->MODER |= (0x80000000);    
//}   							
    //GPIOD->OTYPER |= 0x00000000; 										
	//GPIOD->AFR[1] |= 0x22220000;										  
	
	//{ 
		//RCC->APB1ENR |= RCC_APB1ENR_TIM4EN; 							
		//TIM4->PSC = 0x0054 - 0x0001;									 
																		
		//TIM4->ARR = 0x03E8;												
		
		//TIM4->CCR1 = 0x0000;											// duty cycle for the PWM set to 0%
		//TIM4->CCR2 = 0x0000;
		//TIM4->CCR3 = 0x0000;
		//TIM4->CCR4 = 0x0000;

		
		//TIM4->CCMR1 |= (TIM_CCMR1_OC1PE)|(TIM_CCMR1_OC1M_2)|(TIM_CCMR1_OC1M_1);
		//TIM4->CCMR1 |= (TIM_CCMR1_OC2PE)|(TIM_CCMR1_OC2M_2)|(TIM_CCMR1_OC2M_1);	
		//TIM4->CCMR2 |= (TIM_CCMR2_OC3PE)|(TIM_CCMR2_OC3M_2)|(TIM_CCMR2_OC3M_1);	
		//TIM4->CCMR2 |= (TIM_CCMR2_OC4PE)|(TIM_CCMR2_OC4M_2)|(TIM_CCMR2_OC4M_1);					
																			//// set PWM 1 mod, enable OC1PE preload mode 
																			
		//// set active mode high for pulse polarity
		//TIM4->CCER &= ~((TIM_CCER_CC1P)|(TIM_CCER_CC2P)|(TIM_CCER_CC3P)|(TIM_CCER_CC4P));
		//TIM4->CR1 |= (TIM_CR1_ARPE)|(TIM_CR1_URS);
		
		//// update event, reload all config 
		//TIM4->EGR |= TIM_EGR_UG;											
		//// activate capture compare mode
		//TIM4->CCER |= (TIM_CCER_CC1E)|(TIM_CCER_CC2E)|(TIM_CCER_CC3E)|(TIM_CCER_CC4E);
		//// start counter										
		//TIM4->CR1 |= TIM_CR1_CEN;											
	//}	
		//TIM4->CCR1 = pwm[pwm_cnt_led1]; //niz pwm sa vrijednostima od 0-100 sa korakom od 5 i 4 countera za svaku diodu po 1 koja rade na osnovu inexa niza
		//TIM4->CCR2 = pwm[pwm_cnt_led2];
		//TIM4->CCR3 = pwm[pwm_cnt_led3];
		//TIM4->CCR4 = pwm[pwm_cnt_led4];									
//};


 
		
