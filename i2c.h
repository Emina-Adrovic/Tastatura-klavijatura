#ifndef __I2CS_H
#define __I2CS_H

#include "stm32f4xx.h"
#include "delay.h"
#include "misc.h"

#define I2CS_CLOCK_PERIPHERIAL			SYSCTL_PERIPH_GPIOB
#define I2CS_PORT						GPIO_PORTB_BASE

#define I2CS_DELAY						2								// half clock in us! 2996ms, with 1 you go down to 2022ms

#define I2CS_START_BIT_DELAY			5
#define I2CS_STOP_BIT_DELAY				5
#define I2CS_WRITE_DELAY				5

#define I2CS_SDA						(1<<9)
#define I2CS_SCK						(1<<6)

volatile 	uint8_t dev_addr;
void 		initI2C(uint8_t addr);
void 		readI2C(uint8_t reg, uint8_t * data, uint16_t nbyte);
void 		writeI2C(uint8_t reg, uint8_t * data, uint16_t nbyte);

void 		startI2CS(void);
void 		stopI2CS(void);
void 		writeByteI2CS(uint8_t data);
uint8_t		readByteI2CS(void);
void 		AcksI2CS(void);
void 		AckmI2CS(void);
void 		NackmI2CS(void);

#endif
