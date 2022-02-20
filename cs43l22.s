	.syntax unified
	.cpu cortex-m4
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu fpv4-sp-d16
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"cs43l22.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	initCS43L22
	.thumb
	.thumb_func
	.type	initCS43L22, %function
initCS43L22:
.LFB110:
	.file 1 "cs43l22.c"
	.loc 1 7 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	.loc 1 19 0
	ldr	r5, .L3
	.loc 1 9 0
	str	r0, [sp, #4]
.LVL1:
	.loc 1 19 0
	ldr	r3, [r5, #48]
	.loc 1 20 0
	ldr	r4, .L3+4
	.loc 1 24 0
	ldr	r2, .L3+8
	.loc 1 26 0
	ldr	r1, .L3+12
.LVL2:
	.loc 1 19 0
	orr	r3, r3, #8
	str	r3, [r5, #48]
	.loc 1 20 0
	ldr	r3, [r4]
	orr	r3, r3, #256
	str	r3, [r4]
	.loc 1 21 0
	ldr	r3, [r4, #8]
	orr	r3, r3, #512
	str	r3, [r4, #8]
	.loc 1 23 0
	ldr	r3, [r5, #48]
	orr	r3, r3, #4
	str	r3, [r5, #48]
	.loc 1 24 0
	ldr	r3, [r2]
	orr	r3, r3, #35651584
	orr	r3, r3, #32768
	.loc 1 25 0
	mov	r6, #1610612736
	.loc 1 24 0
	str	r3, [r2]
	.loc 1 33 0
	movs	r0, #148
.LVL3:
	.loc 1 25 0
	str	r6, [r2, #32]
	.loc 1 26 0
	str	r1, [r2, #36]
	.loc 1 33 0
	bl	initI2C
.LVL4:
	.loc 1 37 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #16
	str	r3, [r4, #20]
	.loc 1 38 0
	movs	r0, #50
	bl	delay_ms
.LVL5:
	.loc 1 39 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #16
	str	r3, [r4, #20]
	.loc 1 40 0
	movs	r0, #50
	bl	delay_ms
.LVL6:
	.loc 1 42 0
	movs	r0, #1
	mov	r2, r0
	mov	r1, sp
	bl	readI2C
.LVL7:
	.loc 1 43 0
	add	r1, sp, #8
	ldrb	r3, [sp]	@ zero_extendqisi2
	str	r3, [r1, #-4]!
	.loc 1 47 0
	movs	r4, #1
	.loc 1 44 0
	ldr	r0, .L3+16
	bl	printUSART2
.LVL8:
	.loc 1 48 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #2
	.loc 1 47 0
	strb	r4, [sp]
	.loc 1 48 0
	bl	writeI2C
.LVL9:
	.loc 1 51 0
	movs	r3, #175
	.loc 1 52 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #4
	.loc 1 51 0
	strb	r3, [sp]
	.loc 1 55 0
	movs	r7, #128
	.loc 1 52 0
	bl	writeI2C
.LVL10:
	.loc 1 56 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #5
	.loc 1 55 0
	strb	r7, [sp]
	.loc 1 56 0
	bl	writeI2C
.LVL11:
	.loc 1 60 0
	movs	r3, #3
	.loc 1 61 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #6
	.loc 1 60 0
	strb	r3, [sp]
	.loc 1 61 0
	bl	writeI2C
.LVL12:
	.loc 1 68 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #8
	.loc 1 67 0
	strb	r4, [sp]
	.loc 1 68 0
	bl	writeI2C
.LVL13:
	.loc 1 70 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #9
	.loc 1 69 0
	strb	r4, [sp]
	.loc 1 70 0
	bl	writeI2C
.LVL14:
	.loc 1 73 0
	movs	r3, #192
	.loc 1 74 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #14
	.loc 1 73 0
	strb	r3, [sp]
	.loc 1 77 0
	movs	r6, #0
	.loc 1 74 0
	bl	writeI2C
.LVL15:
	.loc 1 78 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #15
	.loc 1 77 0
	strb	r6, [sp]
	.loc 1 78 0
	bl	writeI2C
.LVL16:
	.loc 1 83 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #26
	.loc 1 82 0
	strb	r6, [sp]
	.loc 1 83 0
	bl	writeI2C
.LVL17:
	.loc 1 85 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #27
	.loc 1 88 0
	mov	r8, #248
	.loc 1 84 0
	strb	r6, [sp]
	.loc 1 85 0
	bl	writeI2C
.LVL18:
	.loc 1 89 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #20
	.loc 1 88 0
	strb	r8, [sp]
	.loc 1 89 0
	bl	writeI2C
.LVL19:
	.loc 1 91 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #21
	.loc 1 90 0
	strb	r8, [sp]
	.loc 1 91 0
	bl	writeI2C
.LVL20:
	.loc 1 95 0
	mov	r8, #158
	.loc 1 96 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #2
	.loc 1 95 0
	strb	r8, [sp]
	.loc 1 96 0
	bl	writeI2C
.LVL21:
	.loc 1 97 0
	mov	r0, #500
	bl	delay_ms
.LVL22:
	.loc 1 105 0
	movs	r3, #153
	.loc 1 106 0
	mov	r0, r6
	mov	r1, sp
	mov	r2, r4
	.loc 1 105 0
	strb	r3, [sp]
	.loc 1 106 0
	bl	writeI2C
.LVL23:
	.loc 1 109 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #71
	.loc 1 108 0
	strb	r7, [sp]
	.loc 1 109 0
	bl	writeI2C
.LVL24:
	.loc 1 112 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #50
	.loc 1 111 0
	strb	r7, [sp]
	.loc 1 112 0
	bl	writeI2C
.LVL25:
	.loc 1 115 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #50
	.loc 1 114 0
	strb	r6, [sp]
	.loc 1 115 0
	bl	writeI2C
.LVL26:
	.loc 1 118 0
	mov	r0, r6
	mov	r1, sp
	mov	r2, r4
	.loc 1 117 0
	strb	r6, [sp]
	.loc 1 118 0
	bl	writeI2C
.LVL27:
	.loc 1 121 0
	mov	r1, sp
	mov	r2, r4
	movs	r0, #2
	.loc 1 120 0
	strb	r8, [sp]
	.loc 1 121 0
	bl	writeI2C
.LVL28:
.LBB2:
	.loc 1 126 0
	ldr	r3, [r5, #64]
	.loc 1 143 0
	ldr	r2, .L3+20
	.loc 1 126 0
	orr	r3, r3, #32768
	str	r3, [r5, #64]
	.loc 1 127 0
	ldr	r3, [r5, #48]
	.loc 1 143 0
	movw	r1, #259
	.loc 1 127 0
	orr	r3, r3, #4096
	str	r3, [r5, #48]
	.loc 1 143 0
	strh	r1, [r2, #32]	@ movhi
	.loc 1 150 0
	ldrh	r3, [r2, #32]
	uxth	r3, r3
	orr	r3, r3, #512
	.loc 1 155 0
	movw	r1, #3608
	.loc 1 150 0
	strh	r3, [r2, #32]	@ movhi
	.loc 1 155 0
	strh	r1, [r2, #28]	@ movhi
.LBE2:
	.loc 1 160 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L4:
	.align	2
.L3:
	.word	1073887232
	.word	1073875968
	.word	1073874944
	.word	394752
	.word	.LC0
	.word	1073757184
	.cfi_endproc
.LFE110:
	.size	initCS43L22, .-initCS43L22
	.global	volumeIn
	.global	volume
	.comm	dev_addr,1,1
	.data
	.align	2
	.type	volumeIn, %object
	.size	volumeIn, 1
volumeIn:
	.byte	2
	.space	3
	.type	volume, %object
	.size	volume, 5
volume:
	.byte	0
	.byte	-8
	.byte	0
	.byte	7
	.byte	24
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-> CS43L22: ID [%x] \012\000"
	.text
.Letext0:
	.file 2 "/home/samir/Documents/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/samir/Documents/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.file 6 "i2c.h"
	.file 7 "delay.h"
	.file 8 "usart.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x83e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x1
	.4byte	.LASF75
	.4byte	.LASF76
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x1d
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x3f
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x41
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x21
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	0xb8
	.uleb128 0x6
	.4byte	0xb8
	.4byte	0xdf
	.uleb128 0x7
	.4byte	0xc3
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x97
	.uleb128 0x5
	.4byte	0xa2
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0x8
	.byte	0x28
	.byte	0x4
	.2byte	0x28e
	.4byte	0x17a
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x290
	.4byte	0xca
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x291
	.4byte	0xca
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x292
	.4byte	0xca
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x293
	.4byte	0xca
	.byte	0xc
	.uleb128 0xa
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x294
	.4byte	0xca
	.byte	0x10
	.uleb128 0xa
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x295
	.4byte	0xca
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x296
	.4byte	0xe4
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x297
	.4byte	0xe4
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x298
	.4byte	0xca
	.byte	0x1c
	.uleb128 0xa
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x299
	.4byte	0x17a
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x29a
	.4byte	0xee
	.uleb128 0x8
	.byte	0x88
	.byte	0x4
	.2byte	0x2dd
	.4byte	0x31a
	.uleb128 0xa
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2df
	.4byte	0xca
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x2e0
	.4byte	0xca
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x2e1
	.4byte	0xca
	.byte	0x8
	.uleb128 0xa
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x2e2
	.4byte	0xca
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x2e3
	.4byte	0xca
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x2e4
	.4byte	0xca
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x2e5
	.4byte	0xca
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x2e6
	.4byte	0xb8
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x2e7
	.4byte	0xca
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x2e8
	.4byte	0xca
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x2e9
	.4byte	0xcf
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x2ea
	.4byte	0xca
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x2eb
	.4byte	0xca
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x2ec
	.4byte	0xca
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x2ed
	.4byte	0xb8
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x2ee
	.4byte	0xca
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x2ef
	.4byte	0xca
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x2f0
	.4byte	0xcf
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x2f1
	.4byte	0xca
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x2f2
	.4byte	0xca
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x2f3
	.4byte	0xca
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x2f4
	.4byte	0xb8
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x2f5
	.4byte	0xca
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x2f6
	.4byte	0xca
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x2f7
	.4byte	0xcf
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x2f8
	.4byte	0xca
	.byte	0x70
	.uleb128 0xa
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2f9
	.4byte	0xca
	.byte	0x74
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x2fa
	.4byte	0xcf
	.byte	0x78
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x2fb
	.4byte	0xca
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x2fc
	.4byte	0xca
	.byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x2fd
	.4byte	0x18b
	.uleb128 0x8
	.byte	0x24
	.byte	0x4
	.2byte	0x34f
	.4byte	0x418
	.uleb128 0xa
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x351
	.4byte	0xe4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x352
	.4byte	0xa2
	.byte	0x2
	.uleb128 0xa
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x353
	.4byte	0xe4
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x354
	.4byte	0xa2
	.byte	0x6
	.uleb128 0xa
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x355
	.4byte	0xe4
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x356
	.4byte	0xa2
	.byte	0xa
	.uleb128 0xa
	.ascii	"DR\000"
	.byte	0x4
	.2byte	0x357
	.4byte	0xe4
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x358
	.4byte	0xa2
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x359
	.4byte	0xe4
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x35a
	.4byte	0xa2
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x35b
	.4byte	0xe4
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x35c
	.4byte	0xa2
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x35d
	.4byte	0xe4
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x35e
	.4byte	0xa2
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x35f
	.4byte	0xe4
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x360
	.4byte	0xa2
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x361
	.4byte	0xe4
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x362
	.4byte	0xa2
	.byte	0x22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x363
	.4byte	0x326
	.uleb128 0xc
	.byte	0x4
	.4byte	0x42a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF62
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x1
	.byte	0x6
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x776
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x1
	.byte	0x6
	.4byte	0x97
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x1
	.byte	0x6
	.4byte	0xb8
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x8
	.4byte	0x776
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x1
	.byte	0x9
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x49b
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x1
	.byte	0x7d
	.4byte	0xb8
	.2byte	0xbb80
	.byte	0
	.uleb128 0x12
	.4byte	.LVL4
	.4byte	0x7d5
	.4byte	0x4af
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0x94
	.byte	0
	.uleb128 0x12
	.4byte	.LVL5
	.4byte	0x7e6
	.4byte	0x4c3
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x12
	.4byte	.LVL6
	.4byte	0x7e6
	.4byte	0x4d7
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x12
	.4byte	.LVL7
	.4byte	0x7f7
	.4byte	0x4f5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL8
	.4byte	0x818
	.4byte	0x512
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL9
	.4byte	0x82a
	.4byte	0x531
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x12
	.4byte	.LVL10
	.4byte	0x82a
	.4byte	0x550
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x12
	.4byte	.LVL11
	.4byte	0x82a
	.4byte	0x56f
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x12
	.4byte	.LVL12
	.4byte	0x82a
	.4byte	0x58e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x12
	.4byte	.LVL13
	.4byte	0x82a
	.4byte	0x5ad
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x12
	.4byte	.LVL14
	.4byte	0x82a
	.4byte	0x5cc
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x12
	.4byte	.LVL15
	.4byte	0x82a
	.4byte	0x5eb
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x12
	.4byte	.LVL16
	.4byte	0x82a
	.4byte	0x60a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x12
	.4byte	.LVL17
	.4byte	0x82a
	.4byte	0x629
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.uleb128 0x12
	.4byte	.LVL18
	.4byte	0x82a
	.4byte	0x648
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4b
	.byte	0
	.uleb128 0x12
	.4byte	.LVL19
	.4byte	0x82a
	.4byte	0x667
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x12
	.4byte	.LVL20
	.4byte	0x82a
	.4byte	0x686
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x45
	.byte	0
	.uleb128 0x12
	.4byte	.LVL21
	.4byte	0x82a
	.4byte	0x6a5
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x12
	.4byte	.LVL22
	.4byte	0x7e6
	.4byte	0x6ba
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x12
	.4byte	.LVL23
	.4byte	0x82a
	.4byte	0x6da
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL24
	.4byte	0x82a
	.4byte	0x6fa
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.byte	0
	.uleb128 0x12
	.4byte	.LVL25
	.4byte	0x82a
	.4byte	0x71a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x12
	.4byte	.LVL26
	.4byte	0x82a
	.4byte	0x73a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x12
	.4byte	.LVL27
	.4byte	0x82a
	.4byte	0x75a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL28
	.4byte	0x82a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x97
	.4byte	0x786
	.uleb128 0x7
	.4byte	0xc3
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x51b
	.4byte	0xe9
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x6
	.byte	0x14
	.4byte	0xdf
	.uleb128 0x5
	.byte	0x3
	.4byte	dev_addr
	.uleb128 0x6
	.4byte	0x97
	.4byte	0x7b3
	.uleb128 0x7
	.4byte	0xc3
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x1
	.byte	0x3
	.4byte	0x7a3
	.uleb128 0x5
	.byte	0x3
	.4byte	volume
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x1
	.byte	0x4
	.4byte	0xdf
	.uleb128 0x5
	.byte	0x3
	.4byte	volumeIn
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x6
	.byte	0x15
	.4byte	0x7e6
	.uleb128 0x18
	.4byte	0x97
	.byte	0
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x7
	.byte	0xb
	.4byte	0x7f7
	.uleb128 0x18
	.4byte	0xb8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x6
	.byte	0x16
	.4byte	0x812
	.uleb128 0x18
	.4byte	0x97
	.uleb128 0x18
	.4byte	0x812
	.uleb128 0x18
	.4byte	0xa2
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x97
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x8
	.byte	0x20
	.4byte	0x82a
	.uleb128 0x18
	.4byte	0x424
	.uleb128 0x19
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF78
	.byte	0x6
	.byte	0x17
	.uleb128 0x18
	.4byte	0x97
	.uleb128 0x18
	.4byte	0x812
	.uleb128 0x18
	.4byte	0xa2
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0xf
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x25
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF42:
	.ascii	"AHB1LPENR\000"
.LASF20:
	.ascii	"OSPEEDR\000"
.LASF71:
	.ascii	"delay_ms\000"
.LASF32:
	.ascii	"APB1RSTR\000"
.LASF36:
	.ascii	"AHB2ENR\000"
.LASF76:
	.ascii	"/home/samir/Documents/MSUT/STM32F407/examples/audio"
	.ascii	"-passthrough-dac-dma-Samir\000"
.LASF3:
	.ascii	"short int\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF49:
	.ascii	"BDCR\000"
.LASF52:
	.ascii	"PLLI2SCFGR\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF51:
	.ascii	"SSCGR\000"
.LASF56:
	.ascii	"TXCRCR\000"
.LASF28:
	.ascii	"AHB1RSTR\000"
.LASF27:
	.ascii	"CFGR\000"
.LASF44:
	.ascii	"AHB3LPENR\000"
.LASF78:
	.ascii	"writeI2C\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF39:
	.ascii	"APB1ENR\000"
.LASF72:
	.ascii	"readI2C\000"
.LASF74:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF19:
	.ascii	"OTYPER\000"
.LASF64:
	.ascii	"sample_rate\000"
.LASF37:
	.ascii	"AHB3ENR\000"
.LASF11:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"PUPDR\000"
.LASF8:
	.ascii	"long int\000"
.LASF53:
	.ascii	"RCC_TypeDef\000"
.LASF23:
	.ascii	"BSRRH\000"
.LASF18:
	.ascii	"MODER\000"
.LASF33:
	.ascii	"APB2RSTR\000"
.LASF4:
	.ascii	"__uint8_t\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF40:
	.ascii	"APB2ENR\000"
.LASF1:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF57:
	.ascii	"I2SCFGR\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF29:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF68:
	.ascii	"dev_addr\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF26:
	.ascii	"PLLCFGR\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF46:
	.ascii	"APB1LPENR\000"
.LASF73:
	.ascii	"printUSART2\000"
.LASF62:
	.ascii	"char\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF61:
	.ascii	"SPI_TypeDef\000"
.LASF59:
	.ascii	"I2SPR\000"
.LASF65:
	.ascii	"data\000"
.LASF43:
	.ascii	"AHB2LPENR\000"
.LASF54:
	.ascii	"CRCPR\000"
.LASF31:
	.ascii	"RESERVED0\000"
.LASF34:
	.ascii	"RESERVED1\000"
.LASF38:
	.ascii	"RESERVED2\000"
.LASF41:
	.ascii	"RESERVED3\000"
.LASF45:
	.ascii	"RESERVED4\000"
.LASF48:
	.ascii	"RESERVED5\000"
.LASF50:
	.ascii	"RESERVED6\000"
.LASF58:
	.ascii	"RESERVED7\000"
.LASF60:
	.ascii	"RESERVED8\000"
.LASF70:
	.ascii	"initI2C\000"
.LASF75:
	.ascii	"cs43l22.c\000"
.LASF67:
	.ascii	"ITM_RxBuffer\000"
.LASF35:
	.ascii	"AHB1ENR\000"
.LASF66:
	.ascii	"utmp32\000"
.LASF77:
	.ascii	"initCS43L22\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF63:
	.ascii	"volume\000"
.LASF25:
	.ascii	"GPIO_TypeDef\000"
.LASF30:
	.ascii	"AHB3RSTR\000"
.LASF22:
	.ascii	"BSRRL\000"
.LASF69:
	.ascii	"volumeIn\000"
.LASF24:
	.ascii	"LCKR\000"
.LASF47:
	.ascii	"APB2LPENR\000"
.LASF55:
	.ascii	"RXCRCR\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
