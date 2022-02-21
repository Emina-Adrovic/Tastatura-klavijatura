#include "i2c.h"

void initI2C(uint8_t addr)
{/// Init I2C software on pins PB8 (SCK) & PB7 (SDA)
	
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;  								// enable the clock for GPIOB
    GPIOB->MODER |= (GPIO_MODER_MODER6_0)|(GPIO_MODER_MODER9_0); 		// set as output
    GPIOB->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR6_1)|(GPIO_OSPEEDER_OSPEEDR9_1);// set pin clock to 50 MHz
	GPIOB->PUPDR |= (GPIO_PUPDR_PUPDR6_0)|(GPIO_PUPDR_PUPDR9_0);		// enable pullup's on PB6 and PB9
	//GPIOB->OTYPER |= (GPIO_OTYPER_IDR_7)|(GPIO_OTYPER_IDR_8);			// open collector
	
	GPIOB->ODR |= (I2CS_SDA)|(I2CS_SCK);
	dev_addr = addr;
}

void readI2C(uint8_t reg, uint8_t * data, uint16_t nbyte)
{/// read data from I2C slave
	uint16_t k;											
	
	startI2CS();														// start condition
	
	writeByteI2CS(dev_addr);											// send device addr and write flag
	AcksI2CS();
	
	writeByteI2CS(reg);													// send LSB address
	AcksI2CS();

	startI2CS();														// start condition

	writeByteI2CS(dev_addr|0x01);										// send device addr and read flag
	AcksI2CS();
	
	for(k=0;k<nbyte;k++)
	{
		data[k] = readByteI2CS();										// read data

		if(k==(nbyte-1))
		{
			NackmI2CS();												// nack from master to end the transmission
			stopI2CS();													// stop condition
		}
		else
		{
			AckmI2CS();													// master ACK
		}
	}
}

void writeI2C(uint8_t reg, uint8_t * data, uint16_t nbyte)
{/// write data to I2C slave max 64*8 = 256B!!! (which is page size)
	uint16_t k;

	for(k=0;k<nbyte;k++)
	{
		startI2CS();													// start condition
		
		writeByteI2CS(dev_addr);										// send device addr and write flag
		AcksI2CS();
		
		writeByteI2CS(reg);												// send reg
		AcksI2CS();
		
			
		writeByteI2CS(data[k]);											// write data
		AcksI2CS();
		
		stopI2CS();														// stop condition
			
		delay_ms(I2CS_WRITE_DELAY);
		reg++;
	}
}

void startI2CS(void)
{/// Start condition for the I2C
	
    GPIOB->MODER |= (GPIO_MODER_MODER6_0)|(GPIO_MODER_MODER9_0); 		// set as output
	GPIOB->ODR |= ((I2CS_SDA)|(I2CS_SCK));
	delay_us(I2CS_START_BIT_DELAY);
	GPIOB->ODR &= ~(I2CS_SDA);
	delay_us(I2CS_START_BIT_DELAY);
}

void stopI2CS(void)
{/// Stop condition for the I2C
	GPIOB->ODR &= ~(I2CS_SCK);											// set SCK low 
	delay_us(I2CS_DELAY);
	
    GPIOB->MODER |= (GPIO_MODER_MODER7_0); 								// set SDA as output
	GPIOB->ODR &= ~(I2CS_SDA);											// set SDA low
	delay_us(I2CS_DELAY);
	
	GPIOB->ODR |= (I2CS_SCK);											// set SCK high
	delay_us(1);
	GPIOB->ODR |= (I2CS_SDA);											// set SDA high
	delay_us((I2CS_STOP_BIT_DELAY));
	GPIOB->ODR |= (I2CS_SDA)|(I2CS_SCK);
}

void writeByteI2CS(uint8_t data)
{/// write byte to I2C slave
	uint8_t k;
    GPIOB->MODER |= (GPIO_MODER_MODER6_0)|(GPIO_MODER_MODER9_0); 		// set as output
	
	for(k=0;k<8;k++)
	{
		GPIOB->ODR &= ~(I2CS_SCK); 										// set SCK low
		delay_us(I2CS_DELAY);
		
		if((data & 0x80) == 0x80)
			GPIOB->ODR |= (I2CS_SDA);									// set SDA high
		else
			GPIOB->ODR &= ~(I2CS_SDA);									// set SDA low	
		
		data = data << 1;
		delay_us((I2CS_DELAY));

		GPIOB->ODR |= (I2CS_SCK);										// set SCK high
		delay_us(2*(I2CS_DELAY));
	}
}

uint8_t readByteI2CS(void)
{/// write byte to I2C slave
	uint8_t k;
	uint8_t data = 0;
    GPIOB->MODER &= ~(GPIO_MODER_MODER9); 								// set SDA as input         
	
	for(k=0;k<8;k++)
	{
		data = data << 1;
		
		GPIOB->ODR &= ~(I2CS_SCK);										// set SCK low
		delay_us(2*(I2CS_DELAY));
		
		GPIOB->ODR |= (I2CS_SCK);										// set SCK high
		delay_us(I2CS_DELAY);
		
		if((GPIOB->IDR & I2CS_SDA) == I2CS_SDA)
			data |= 0x01;
			
		delay_us(I2CS_DELAY);
	}
	//GPIOB->MODER |= (GPIO_MODER_MODER7_0); 								// set SDA as output
	return data;
}

void AcksI2CS(void)
{
	uint16_t k = 0;  
    
    GPIOB->ODR &= ~(I2CS_SCK);											// set SCK low
    delay_us(1);
    
    GPIOB->ODR &= ~(I2CS_SDA);
    GPIOB->MODER &= ~(GPIO_MODER_MODER9); 								// set SDA as input         
	
	delay_us(2*(I2CS_DELAY));	
	
	GPIOB->ODR |= (I2CS_SCK);											// set SCK high
	delay_us(I2CS_DELAY);

	while((GPIOB->IDR & I2CS_SDA) == I2CS_SDA)
	{
		k++;
		if(k >= 10*I2CS_DELAY)
			break;
		delay_us(1);
	};
	
	delay_us(I2CS_DELAY);
	GPIOB->MODER |= (GPIO_MODER_MODER9_0); 								// set SDA as output
}

void AckmI2CS(void)
{                        
	GPIOB->ODR &= ~(I2CS_SCK);											// set SCK low
	delay_us(1);
	
	GPIOB->MODER |= (GPIO_MODER_MODER9_0);								// set SDA as output
	GPIOB->ODR &= ~(I2CS_SDA);											// set SDA low
	delay_us(2*(I2CS_DELAY));
	
	
	GPIOB->ODR |= (I2CS_SCK);											// set SCK high
	delay_us(2*(I2CS_DELAY));
	GPIOB->ODR &= ~(I2CS_SCK);											// set SCK low
	
}

void NackmI2CS(void)
{
	GPIOB->ODR &= ~(I2CS_SCK);											// set SCK low
	delay_us(I2CS_DELAY);
	
	GPIOB->MODER |= (GPIO_MODER_MODER9_0);								// set SDA as output
	GPIOB->ODR |= (I2CS_SDA);											// set SDA high
	delay_us(I2CS_DELAY);
	
	
	GPIOB->ODR |= (I2CS_SCK);											// set SCK high
	delay_us(2*(I2CS_DELAY));
	
}

