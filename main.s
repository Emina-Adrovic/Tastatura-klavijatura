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
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	getData4DacUSART2
	.thumb
	.thumb_func
	.type	getData4DacUSART2, %function
getData4DacUSART2:
.LFB111:
	.file 1 "main.c"
	.loc 1 89 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	fstmfdd	sp!, {d8, d9, d10, d11, d12}
	.cfi_def_cfa_offset 64
	.cfi_offset 80, -64
	.cfi_offset 81, -60
	.cfi_offset 82, -56
	.cfi_offset 83, -52
	.cfi_offset 84, -48
	.cfi_offset 85, -44
	.cfi_offset 86, -40
	.cfi_offset 87, -36
	.cfi_offset 88, -32
	.cfi_offset 89, -28
	.loc 1 91 0
	flds	s16, .L24
	ldr	r6, .L24+4
	.loc 1 128 0
	flds	s25, .L24+8
	.loc 1 124 0
	flds	s24, .L24+12
	.loc 1 120 0
	flds	s23, .L24+16
	.loc 1 116 0
	flds	s21, .L24+20
	.loc 1 112 0
	flds	s20, .L24+24
	.loc 1 108 0
	flds	s19, .L24+28
	.loc 1 103 0
	flds	s18, .L24+32
	.loc 1 98 0
	flds	s17, .L24+36
	.loc 1 136 0
	fcpys	s22, s16
	.loc 1 89 0
	mov	r4, r1
	subs	r5, r0, #2
	addw	r7, r0, #998
	b	.L12
.LVL1:
.L2:
	.loc 1 100 0
	cmp	r4, #2
	beq	.L16
	.loc 1 105 0
	cmp	r4, #3
	beq	.L17
	.loc 1 110 0
	cmp	r4, #4
	beq	.L18
	.loc 1 114 0
	cmp	r4, #5
	beq	.L19
	.loc 1 118 0
	cmp	r4, #6
	beq	.L20
	.loc 1 122 0
	cmp	r4, #7
	beq	.L21
	.loc 1 126 0
	cmp	r4, #8
	beq	.L22
	.loc 1 132 0
	fsts	s22, [r6]
.L3:
	.loc 1 141 0 discriminator 2
	flds	s15, [r6]
	flds	s13, .L24+40
	.loc 1 143 0 discriminator 2
	flds	s14, .L24+44
	.loc 1 141 0 discriminator 2
	fmuls	s15, s15, s13
	.loc 1 143 0 discriminator 2
	fadds	s16, s16, s14
.LVL2:
	.loc 1 141 0 discriminator 2
	ftouizs	s15, s15
	fmrs	r3, s15	@ int
	strh	r3, [r5, #2]!	@ movhi
	.loc 1 93 0 discriminator 2
	cmp	r5, r7
	beq	.L23
.LVL3:
.L12:
	.loc 1 95 0
	cmp	r4, #1
	bne	.L2
	.loc 1 98 0
	fmuls	s0, s16, s17
	bl	sinf
.LVL4:
	fsts	s0, [r6]
	b	.L3
.L16:
	.loc 1 103 0
	fmuls	s0, s16, s18
	bl	sinf
.LVL5:
	fsts	s0, [r6]
	b	.L3
.L17:
	.loc 1 108 0
	fmuls	s0, s16, s19
	bl	sinf
.LVL6:
	fsts	s0, [r6]
	b	.L3
.L18:
	.loc 1 112 0
	fmuls	s0, s16, s20
	bl	sinf
.LVL7:
	fsts	s0, [r6]
	b	.L3
.L19:
	.loc 1 116 0
	fmuls	s0, s16, s21
	bl	sinf
.LVL8:
	fsts	s0, [r6]
	b	.L3
.L20:
	.loc 1 120 0
	fmuls	s0, s16, s23
	bl	sinf
.LVL9:
	fsts	s0, [r6]
	b	.L3
.L21:
	.loc 1 124 0
	fmuls	s0, s16, s24
	bl	sinf
.LVL10:
	fsts	s0, [r6]
	b	.L3
.L22:
	.loc 1 128 0
	fmuls	s0, s16, s25
	bl	sinf
.LVL11:
	fsts	s0, [r6]
	b	.L3
.L23:
	.loc 1 146 0
	fldmfdd	sp!, {d8-d12}
	.cfi_restore 88
	.cfi_restore 89
	.cfi_restore 86
	.cfi_restore 87
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 24
.LVL12:
	pop	{r3, r4, r5, r6, r7, pc}
.LVL13:
.L25:
	.align	2
.L24:
	.word	0
	.word	y_out
	.word	1162705637
	.word	1161949830
	.word	1160563095
	.word	1159327653
	.word	1158227000
	.word	1157722561
	.word	1162666747
	.word	1154317032
	.word	1165991936
	.word	944879383
	.cfi_endproc
.LFE111:
	.size	getData4DacUSART2, .-getData4DacUSART2
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB110:
	.loc 1 31 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 35 0
	movs	r0, #45
	bl	initUSART2
.LVL14:
	.loc 1 36 0
	bl	initSYSTIM
.LVL15:
	.loc 1 37 0
	bl	enIrqUSART2
.LVL16:
	.loc 1 39 0
	mov	r1, #500
	ldr	r0, .L32
	.loc 1 60 0
	ldr	r4, .L32+4
	ldr	r7, .L32+8
	.loc 1 39 0
	bl	initDmaDAC1
.LVL17:
	.loc 1 41 0
	ldr	r0, .L32+12
	bl	printUSART2
.LVL18:
	.loc 1 42 0
	ldr	r0, .L32+16
	bl	printUSART2
.LVL19:
	.loc 1 44 0
	ldr	r0, .L32+20
	bl	printUSART2
.LVL20:
	.loc 1 45 0
	ldr	r0, .L32+24
	bl	printUSART2
.LVL21:
	.loc 1 46 0
	ldr	r0, .L32+20
	bl	printUSART2
.LVL22:
	.loc 1 48 0
	movw	r1, #48000
	movs	r0, #30
	bl	initCS43L22
.LVL23:
	.loc 1 49 0
	bl	initSYSTIM
.LVL24:
	.loc 1 51 0
	bl	getSYSTIM
.LVL25:
	ldr	r3, .L32+28
	str	r0, [r3]
	.loc 1 53 0
	ldr	r0, .L32+32
	bl	printUSART2
.LVL26:
	.loc 1 54 0
	ldr	r0, .L32+36
	bl	printUSART2
.LVL27:
	.loc 1 60 0
	mov	r6, r4
	.loc 1 61 0
	mov	r5, #0	@ movhi
.L27:
	.loc 1 60 0 discriminator 1
	ldrh	r3, [r4, #8]
	lsls	r3, r3, #30
	bpl	.L27
	.loc 1 61 0
	strh	r5, [r6, #12]	@ movhi
	.loc 1 64 0
	bl	chkBuffUSART2
.LVL28:
	.loc 1 71 0
	ldrb	r1, [r7]	@ zero_extendqisi2
	ldr	r0, .L32
	bl	getData4DacUSART2
.LVL29:
	.loc 1 85 0
	b	.L27
.L33:
	.align	2
.L32:
	.word	dac_buff
	.word	1073757184
	.word	noteTag
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	btime
	.word	.LC4
	.word	.LC5
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.text
	.align	2
	.global	serviceNOTE
	.thumb
	.thumb_func
	.type	serviceNOTE, %function
serviceNOTE:
.LFB112:
	.loc 1 150 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 151 0
	ldr	r4, .L44
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L34
	tbb	[pc, r3]
.L37:
	.byte	(.L36-.L37)/2
	.byte	(.L38-.L37)/2
	.byte	(.L39-.L37)/2
	.byte	(.L40-.L37)/2
	.p2align 1
.L40:
	.loc 1 176 0
	ldr	r3, .L44+4
	mov	r1, #1000
	ldrb	r0, [r3]	@ zero_extendqisi2
	bl	chk4TimeoutSYSTIM
.LVL30:
	cbnz	r0, .L34
	.loc 1 178 0
	strb	r0, [r4]
.L34:
	pop	{r4, pc}
.L39:
	.loc 1 168 0
	ldr	r3, .L44+8
	ldr	r2, .L44+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L34
	.loc 1 169 0
	movs	r3, #3
	strb	r3, [r4]
	.loc 1 170 0
	bl	getSYSTIM
.LVL31:
	ldr	r3, .L44+4
	uxtb	r0, r0
	strb	r0, [r3]
	pop	{r4, pc}
.L38:
	.loc 1 160 0
	bl	chkNoteTag
.LVL32:
	ldr	r3, .L44+12
	mov	r1, r0
	.loc 1 161 0
	ldr	r0, .L44+16
	.loc 1 160 0
	strb	r1, [r3]
	.loc 1 161 0
	bl	getData4DacUSART2
.LVL33:
	.loc 1 162 0
	movs	r3, #2
	strb	r3, [r4]
	.loc 1 164 0
	pop	{r4, pc}
.L36:
	.loc 1 155 0
	ldr	r0, .L44+16
	movs	r1, #0
	.loc 1 187 0
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 155 0
	b	getData4DacUSART2
.LVL34:
.L45:
	.align	2
.L44:
	.word	usartIRQ_state
	.word	usartIRQ_timer
	.word	noteTag
	.word	tempTag
	.word	dac_buff
	.cfi_endproc
.LFE112:
	.size	serviceNOTE, .-serviceNOTE
	.comm	y_out,4,4
	.comm	btime,4,4
	.comm	tempTag,1,1
	.comm	dac_buff,1000,4
	.global	g_irq_timer
	.global	g_gpioa_irq_state
	.comm	dev_addr,1,1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\033[2J\000"
	.space	3
.LC1:
	.ascii	"\033[1;1f\000"
	.space	1
.LC2:
	.ascii	"\012+----------------------------------------------"
	.ascii	"------------------------+\012\000"
	.space	1
.LC3:
	.ascii	"| STM32F407 - CS43L22 Audio DAC Projekat - Emina Ad"
	.ascii	"rovic & Samir Cirak |\000"
	.space	3
.LC4:
	.ascii	"-> SYS: init completed\012\000"
.LC5:
	.ascii	"Input: \000"
	.bss
	.align	2
	.type	g_irq_timer, %object
	.size	g_irq_timer, 4
g_irq_timer:
	.space	4
	.type	g_gpioa_irq_state, %object
	.size	g_gpioa_irq_state, 1
g_gpioa_irq_state:
	.space	1
	.text
.Letext0:
	.file 2 "/home/samir/Documents/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/samir/Documents/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.file 6 "usart.h"
	.file 7 "i2c.h"
	.file 8 "delay.h"
	.file 9 "dac.h"
	.file 10 "cs43l22.h"
	.file 11 "/home/samir/Documents/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/math.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x63c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1
	.4byte	.LASF62
	.4byte	.LASF63
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x5
	.4byte	0xbf
	.uleb128 0x5
	.4byte	0x9e
	.uleb128 0x5
	.4byte	0xa9
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x6
	.byte	0x24
	.byte	0x4
	.2byte	0x34f
	.4byte	0x1d7
	.uleb128 0x7
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x351
	.4byte	0xdb
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x352
	.4byte	0xa9
	.byte	0x2
	.uleb128 0x7
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x353
	.4byte	0xdb
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x354
	.4byte	0xa9
	.byte	0x6
	.uleb128 0x7
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x355
	.4byte	0xdb
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x356
	.4byte	0xa9
	.byte	0xa
	.uleb128 0x7
	.ascii	"DR\000"
	.byte	0x4
	.2byte	0x357
	.4byte	0xdb
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x358
	.4byte	0xa9
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x359
	.4byte	0xdb
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x35a
	.4byte	0xa9
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x35b
	.4byte	0xdb
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x35c
	.4byte	0xa9
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x35d
	.4byte	0xdb
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x35e
	.4byte	0xa9
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x35f
	.4byte	0xdb
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x360
	.4byte	0xa9
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x361
	.4byte	0xdb
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x362
	.4byte	0xa9
	.byte	0x22
	.byte	0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x363
	.4byte	0xe5
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1e9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF34
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF35
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF36
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x58
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x318
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x1
	.byte	0x58
	.4byte	0x318
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x1
	.byte	0x58
	.4byte	0x9e
	.4byte	.LLST1
	.uleb128 0xd
	.ascii	"n\000"
	.byte	0x1
	.byte	0x5a
	.4byte	0xa9
	.4byte	.LLST2
	.uleb128 0xd
	.ascii	"t\000"
	.byte	0x1
	.byte	0x5b
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LVL4
	.4byte	0x595
	.4byte	0x265
	.uleb128 0xf
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x51
	.uleb128 0x25
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x595
	.4byte	0x27f
	.uleb128 0xf
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x25
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LVL6
	.4byte	0x595
	.4byte	0x299
	.uleb128 0xf
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x53
	.uleb128 0x25
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LVL7
	.4byte	0x595
	.4byte	0x2b3
	.uleb128 0xf
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x54
	.uleb128 0x25
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LVL8
	.4byte	0x595
	.4byte	0x2cd
	.uleb128 0xf
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x55
	.uleb128 0x25
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LVL9
	.4byte	0x595
	.4byte	0x2e7
	.uleb128 0xf
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x57
	.uleb128 0x25
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LVL10
	.4byte	0x595
	.4byte	0x301
	.uleb128 0xf
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x58
	.uleb128 0x25
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.4byte	.LVL11
	.4byte	0x595
	.uleb128 0xf
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x25
	.byte	0xf5
	.uleb128 0x59
	.uleb128 0x25
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x1
	.byte	0x1e
	.4byte	0x90
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46f
	.uleb128 0x12
	.ascii	"k\000"
	.byte	0x1
	.byte	0x37
	.4byte	0xbf
	.byte	0
	.uleb128 0xe
	.4byte	.LVL14
	.4byte	0x5ab
	.4byte	0x355
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x13
	.4byte	.LVL15
	.4byte	0x5bc
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0x5c3
	.uleb128 0xe
	.4byte	.LVL17
	.4byte	0x5ca
	.4byte	0x385
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	dac_buff
	.byte	0
	.uleb128 0xe
	.4byte	.LVL18
	.4byte	0x5e0
	.4byte	0x39c
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL19
	.4byte	0x5e0
	.4byte	0x3b3
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0xe
	.4byte	.LVL20
	.4byte	0x5e0
	.4byte	0x3ca
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0xe
	.4byte	.LVL21
	.4byte	0x5e0
	.4byte	0x3e1
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0xe
	.4byte	.LVL22
	.4byte	0x5e0
	.4byte	0x3f8
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0xe
	.4byte	.LVL23
	.4byte	0x5f2
	.4byte	0x412
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0xbb80
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x13
	.4byte	.LVL24
	.4byte	0x5bc
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0x608
	.uleb128 0xe
	.4byte	.LVL26
	.4byte	0x5e0
	.4byte	0x43b
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0xe
	.4byte	.LVL27
	.4byte	0x5e0
	.4byte	0x452
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x13
	.4byte	.LVL28
	.4byte	0x613
	.uleb128 0x10
	.4byte	.LVL29
	.4byte	0x1fe
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	dac_buff
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x95
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4db
	.uleb128 0xe
	.4byte	.LVL30
	.4byte	0x61a
	.4byte	0x499
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x13
	.4byte	.LVL31
	.4byte	0x608
	.uleb128 0x13
	.4byte	.LVL32
	.4byte	0x634
	.uleb128 0xe
	.4byte	.LVL33
	.4byte	0x1fe
	.4byte	0x4c2
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	dac_buff
	.byte	0
	.uleb128 0x14
	.4byte	.LVL34
	.4byte	0x1fe
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	dac_buff
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x51b
	.4byte	0xe0
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x6
	.byte	0x18
	.4byte	0xd6
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x6
	.byte	0x1a
	.4byte	0xd6
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x6
	.byte	0x1b
	.4byte	0xd6
	.uleb128 0x17
	.4byte	.LASF44
	.byte	0x7
	.byte	0x14
	.4byte	0xd6
	.uleb128 0x5
	.byte	0x3
	.4byte	dev_addr
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x1
	.byte	0x12
	.4byte	0xd6
	.uleb128 0x5
	.byte	0x3
	.4byte	g_gpioa_irq_state
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x1
	.byte	0x13
	.4byte	0xd1
	.uleb128 0x5
	.byte	0x3
	.4byte	g_irq_timer
	.uleb128 0x18
	.4byte	0xa9
	.4byte	0x54c
	.uleb128 0x19
	.4byte	0xca
	.2byte	0x1f3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x1
	.byte	0x15
	.4byte	0x53b
	.uleb128 0x5
	.byte	0x3
	.4byte	dac_buff
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0x16
	.4byte	0x9e
	.uleb128 0x5
	.byte	0x3
	.4byte	tempTag
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x17
	.4byte	0xbf
	.uleb128 0x5
	.byte	0x3
	.4byte	btime
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x1
	.byte	0x19
	.4byte	0x590
	.uleb128 0x5
	.byte	0x3
	.4byte	y_out
	.uleb128 0x5
	.4byte	0x25
	.uleb128 0x1a
	.4byte	.LASF57
	.byte	0xb
	.2byte	0x13c
	.4byte	0x25
	.4byte	0x5ab
	.uleb128 0x1b
	.4byte	0x25
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x6
	.byte	0x1f
	.4byte	0x5bc
	.uleb128 0x1b
	.4byte	0xbf
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF50
	.byte	0x8
	.byte	0x17
	.uleb128 0x1d
	.4byte	.LASF51
	.byte	0x6
	.byte	0x29
	.uleb128 0x1c
	.4byte	.LASF53
	.byte	0x9
	.byte	0x9
	.4byte	0x5e0
	.uleb128 0x1b
	.4byte	0x318
	.uleb128 0x1b
	.4byte	0xa9
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF54
	.byte	0x6
	.byte	0x20
	.4byte	0x5f2
	.uleb128 0x1b
	.4byte	0x1e3
	.uleb128 0x1e
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF55
	.byte	0xa
	.byte	0x2b
	.4byte	0x608
	.uleb128 0x1b
	.4byte	0x9e
	.uleb128 0x1b
	.4byte	0xbf
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF59
	.byte	0x8
	.byte	0x18
	.4byte	0xbf
	.uleb128 0x1d
	.4byte	.LASF56
	.byte	0x6
	.byte	0x2c
	.uleb128 0x20
	.4byte	.LASF58
	.byte	0x8
	.byte	0x19
	.4byte	0x9e
	.4byte	0x634
	.uleb128 0x1b
	.4byte	0xbf
	.uleb128 0x1b
	.4byte	0xbf
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x6
	.byte	0x1d
	.4byte	0x9e
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0x77
	.sleb128 -998
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1
	.4byte	.LFE111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL1
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF63:
	.ascii	"/home/samir/Documents/MSUT/STM32F407/examples/audio"
	.ascii	"-passthrough-dac-dma-Samir\000"
.LASF42:
	.ascii	"usartIRQ_state\000"
.LASF47:
	.ascii	"tempTag\000"
.LASF3:
	.ascii	"short int\000"
.LASF50:
	.ascii	"initSYSTIM\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF46:
	.ascii	"g_irq_timer\000"
.LASF64:
	.ascii	"main\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF51:
	.ascii	"enIrqUSART2\000"
.LASF59:
	.ascii	"getSYSTIM\000"
.LASF25:
	.ascii	"RXCRCR\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF37:
	.ascii	"dac_buff\000"
.LASF0:
	.ascii	"float\000"
.LASF27:
	.ascii	"TXCRCR\000"
.LASF11:
	.ascii	"long long int\000"
.LASF8:
	.ascii	"long int\000"
.LASF52:
	.ascii	"initUSART2\000"
.LASF4:
	.ascii	"__uint8_t\000"
.LASF49:
	.ascii	"y_out\000"
.LASF36:
	.ascii	"long double\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF60:
	.ascii	"chkNoteTag\000"
.LASF1:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF40:
	.ascii	"serviceNOTE\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF44:
	.ascii	"dev_addr\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF57:
	.ascii	"sinf\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF54:
	.ascii	"printUSART2\000"
.LASF34:
	.ascii	"char\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF33:
	.ascii	"SPI_TypeDef\000"
.LASF53:
	.ascii	"initDmaDAC1\000"
.LASF31:
	.ascii	"I2SPR\000"
.LASF23:
	.ascii	"CRCPR\000"
.LASF19:
	.ascii	"RESERVED0\000"
.LASF20:
	.ascii	"RESERVED1\000"
.LASF21:
	.ascii	"RESERVED2\000"
.LASF22:
	.ascii	"RESERVED3\000"
.LASF24:
	.ascii	"RESERVED4\000"
.LASF26:
	.ascii	"RESERVED5\000"
.LASF28:
	.ascii	"RESERVED6\000"
.LASF30:
	.ascii	"RESERVED7\000"
.LASF32:
	.ascii	"RESERVED8\000"
.LASF35:
	.ascii	"double\000"
.LASF41:
	.ascii	"ITM_RxBuffer\000"
.LASF39:
	.ascii	"getData4DacUSART2\000"
.LASF48:
	.ascii	"btime\000"
.LASF55:
	.ascii	"initCS43L22\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF38:
	.ascii	"noteTag\000"
.LASF56:
	.ascii	"chkBuffUSART2\000"
.LASF45:
	.ascii	"g_gpioa_irq_state\000"
.LASF62:
	.ascii	"main.c\000"
.LASF43:
	.ascii	"usartIRQ_timer\000"
.LASF29:
	.ascii	"I2SCFGR\000"
.LASF58:
	.ascii	"chk4TimeoutSYSTIM\000"
.LASF61:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
