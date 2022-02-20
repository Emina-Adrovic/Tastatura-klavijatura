# Put your stlink folder here so make burn will work.
STLINK=../../stlink

# Binaries will be generated with this name (.elf, .bin, .hex, etc)
PROJ_NAME=main

# Put your STM32F4 library code directory here
STM_COMMON=../../../STM32F407

# Put your source files here (or *.c, etc)
SRCS = main.c system_stm32f4xx.c 
SRCS += delay.c 
SRCS += usart.c misc.c 
SRCS += cs43l22.c 
SRCS += i2c.c dac.c

# Normally you shouldn't need to change anything below this line!
#######################################################################################
GNUGCC = $(STM_COMMON)/gcc-arm-none-eabi/bin
CC = $(GNUGCC)/arm-none-eabi-gcc
OBJCOPY = $(GNUGCC)/arm-none-eabi-objcopy
SIZE =  $(GNUGCC)/arm-none-eabi-size


CFLAGS  = -g -O2 -Wfatal-errors 
CFLAGS += -mlittle-endian -mthumb -mcpu=cortex-m4 -mthumb-interwork 
# important flag is -fsingle-precision-constant which prevents the double precision emulation
CFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fsingle-precision-constant
CFLAGS += -I./ 
# define path for libPDMFilter_CM4F_GCC.a
CFLAGS += -L./		

# Include files from STM libraries
#CFLAGS += -I$(STM_COMMON)/Utilities/STM32F4-Discovery
CFLAGS += -I$(STM_COMMON)/Libraries/CMSIS/Include 
CFLAGS += -I$(STM_COMMON)/Libraries/CMSIS/ST/STM32F4xx/Include
CFLAGS += -I./matlab


#LDFLAGS=-Tlightshow.ld -nostartfiles -Wl,-Map=build/flash.map
LDFLAGS = -Tstm32_flash.ld 


# add startup file to build
SRCS += $(STM_COMMON)/Libraries/CMSIS/ST/STM32F4xx/Source/Templates/TrueSTUDIO/startup_stm32f4xx.s 
OBJS = $(SRCS:.c=.o)


.PHONY: proj

all: $(PROJ_NAME).elf


$(PROJ_NAME).elf: $(SRCS)
	$(CC) $(LDFLAGS) $(CFLAGS) $^ -lm -lc -lnosys -lPDMFilter_CM4F_GCC -o $@ 
	$(CC) $(LDFLAGS) $(CFLAGS) -S $< $^
	$(OBJCOPY) -O ihex $(PROJ_NAME).elf $(PROJ_NAME).hex
	$(OBJCOPY) -O binary $(PROJ_NAME).elf $(PROJ_NAME).bin
	$(SIZE) -B  $(PROJ_NAME).elf
	ls -l $(PROJ_NAME).bin


clean:
	rm -rf *.o $(PROJ_NAME).elf $(PROJ_NAME).hex $(PROJ_NAME).bin *.s
	ls

# Flash the STM32F4
upload: proj
	$(STLINK)/st-flash write $(PROJ_NAME).bin 0x08000000
