#ifndef __CS43L22_H_
#define __CS43L22_H_

#include "stm32f4xx.h"
#include "i2c.h"
#include "usart.h"

#define CS43L22_I2C_ADDR							0x94

#define CS43L22_REG_ID								0x01
#define CS43L22_REG_POWER_CONTROL1					0x02
#define CS43L22_REG_POWER_CONTROL2					0x04
#define CS43L22_REG_CLOCK_CONTROL					0x05
#define CS43L22_REG_INTERFACE_CONTROL				0x06
#define CS43L22_REG_INTERFACE_CONTROL2				0x07
#define CS43L22_REG_PASSTHROUGH_A					0x08
#define CS43L22_REG_PASSTHROUGH_B					0x09
#define CS43L22_REG_ANALOG_ZC_AND_SR_SETTINGS		0x0A
#define CS43L22_REG_MISC_CONTROL					0x0E
#define CS43L22_REG_PLAYBACK_CONTROL2				0x0F
#define CS43L22_REG_PASSTHROUGH_VOLA				0x14
#define CS43L22_REG_PASSTHROUGH_VOLB				0x15
#define CS43L22_REG_PCMA_VOLUME						0x1A
#define CS43L22_REG_PCMB_VOLUME						0x1B
#define CS43L22_REG_TONE_CONTROL					0x1F
#define CS43L22_REG_MASTER_VOLUME_CONTROL1			0x20
#define CS43L22_REG_MASTER_VOLUME_CONTROL2			0x21
#define CS43L22_REG_LIMITER_CONTROL1				0x27

extern uint8_t volume[5];
extern volatile uint8_t volumeIn;

//#ifdef I2S_STANDARD_PHILLIPS
 //#define  CODEC_STANDARD                0x04
 //#define I2S_STANDARD                   I2S_Standard_Phillips         
//#elif defined(I2S_STANDARD_MSB)
 //#define  CODEC_STANDARD                0x00
 //#define I2S_STANDARD                   I2S_Standard_MSB    
//#elif defined(I2S_STANDARD_LSB)
 //#define  CODEC_STANDARD                0x08
 //#define I2S_STANDARD                   I2S_Standard_LSB  

void initCS43L22(uint8_t volume, uint32_t sample_rate);

#endif 
