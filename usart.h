#ifndef __USART_H
#define __USART_H

#include "stm32f4xx.h"
#include <stdio.h>
#include <stdarg.h>
#include "delay.h"
#include "misc.h"

#define USART_RX_DATA_READY			0
#define USART_RX_DATA_NOT_READY		1

#define USART2_BAUDRATE_1500000		0x0000001C
#define USART2_BAUDRATE_921600		0x0000002D
#define USART2_BAUDRATE_460800		0x0000005B
#define USART2_BAUDRATE_115200		0x0000016C
#define USART2_BAUDRATE_9600		0x00001117
#define USART2_BUFFER_SIZE			512
#define USART3_BUFFER_SIZE			512

#define USART2_RECEIVED			1
#define USART2_NOT_RECEIVED		0

#define STREAM_ON		1
#define STREAM_OFF		0

extern volatile uint8_t received;
extern volatile uint8_t noteTag;
extern volatile uint8_t streamFlag;

uint8_t chkNoteTag(void);

void initUSART2(uint32_t baudrate);
void printUSART2(char * str, ... );
void sprintUSART2(uint8_t * str);

uint8_t getcharUSART2(void);
void putcharUSART2(uint8_t data);

uint8_t getRxStateUSART2(void);
void enableRxUSART2(void);

void enIrqUSART2(void);
void USART2_IRQHandler(void);
void serviceUSART2(void);
void chkBuffUSART2(void);

void initUSART3(uint32_t baudrate);
void putcharUSART3(uint8_t data);
void enIrqUSART3(void);
void USART3_IRQHandler(void);
void chkRxBuffUSART3(void);
int8_t getcharUSART3(void);
int8_t chkUSART3flag();

#endif 
