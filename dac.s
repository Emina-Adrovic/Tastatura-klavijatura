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
	.file	"dac.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	initDAC1
	.thumb
	.thumb_func
	.type	initDAC1, %function
initDAC1:
.LFB110:
	.file 1 "dac.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 9 0
	ldr	r2, .L2
	.loc 1 11 0
	ldr	r3, .L2+4
	.loc 1 9 0
	ldr	r1, [r2, #48]
	.loc 1 14 0
	ldr	r0, .L2+8
	.loc 1 9 0
	orr	r1, r1, #1
	str	r1, [r2, #48]
	.loc 1 10 0
	ldr	r1, [r2, #64]
	orr	r1, r1, #536870912
	str	r1, [r2, #64]
	.loc 1 11 0
	ldr	r2, [r3]
	orr	r2, r2, #768
	str	r2, [r3]
	.loc 1 12 0
	ldr	r2, [r3, #12]
	.loc 1 14 0
	movs	r1, #61
	.loc 1 12 0
	bic	r2, r2, #768
	str	r2, [r3, #12]
	.loc 1 14 0
	str	r1, [r0]
	bx	lr
.L3:
	.align	2
.L2:
	.word	1073887232
	.word	1073872896
	.word	1073771520
	.cfi_endproc
.LFE110:
	.size	initDAC1, .-initDAC1
	.align	2
	.global	setDAC1
	.thumb
	.thumb_func
	.type	setDAC1, %function
setDAC1:
.LFB111:
	.loc 1 18 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 19 0
	ldr	r1, .L8
.L5:
	.loc 1 19 0 is_stmt 0 discriminator 1
	ldr	r3, [r1, #4]
	ldr	r2, .L8
	lsls	r3, r3, #31
	bmi	.L5
	.loc 1 22 0 is_stmt 1
	ubfx	r0, r0, #0, #12
.LVL1:
	.loc 1 24 0
	movs	r3, #1
	.loc 1 22 0
	str	r0, [r2, #8]
	.loc 1 24 0
	str	r3, [r2, #4]
	bx	lr
.L9:
	.align	2
.L8:
	.word	1073771520
	.cfi_endproc
.LFE111:
	.size	setDAC1, .-setDAC1
	.align	2
	.global	initDmaDAC1
	.thumb
	.thumb_func
	.type	initDmaDAC1, %function
initDmaDAC1:
.LFB112:
	.loc 1 29 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2:
	.loc 1 33 0
	ldr	r3, .L14
	.loc 1 40 0
	ldr	r2, .L14+4
	.loc 1 29 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 33 0
	ldr	r5, [r3, #48]
	.loc 1 34 0
	ldr	r7, .L14+8
	.loc 1 55 0
	ldr	r4, .L14+12
	.loc 1 68 0
	ldr	r6, .L14+16
	.loc 1 33 0
	orr	r5, r5, #1
	str	r5, [r3, #48]
	.loc 1 34 0
	ldr	r5, [r7]
	orr	r5, r5, #768
	str	r5, [r7]
	.loc 1 39 0
	ldr	r5, [r3, #64]
	.loc 1 40 0
	mov	r8, #41
	.loc 1 39 0
	orr	r5, r5, #16
	.loc 1 42 0
	mov	ip, #100
	.loc 1 43 0
	mov	lr, #132
	.loc 1 45 0
	movs	r7, #32
	.loc 1 39 0
	str	r5, [r3, #64]
	.loc 1 40 0
	strh	r8, [r2, #40]	@ movhi
	.loc 1 42 0
	str	ip, [r2, #44]
	.loc 1 43 0
	strh	lr, [r2]	@ movhi
	.loc 1 45 0
	strh	r7, [r2, #4]	@ movhi
	.loc 1 47 0
	ldrh	r5, [r2, #20]
	uxth	r5, r5
	orr	r5, r5, #1
	strh	r5, [r2, #20]	@ movhi
	.loc 1 48 0
	ldrh	r5, [r2]
	uxth	r5, r5
	orr	r5, r5, #1
	strh	r5, [r2]	@ movhi
	.loc 1 53 0
	ldr	r2, [r3, #64]
	orr	r2, r2, #536870912
	str	r2, [r3, #64]
	.loc 1 55 0
	ldr	r2, [r4]
	.loc 1 57 0
	mov	r5, #4096
	.loc 1 55 0
	bic	r2, r2, #1
	str	r2, [r4]
	.loc 1 57 0
	str	r5, [r4]
	.loc 1 58 0
	ldr	r2, [r4]
	orr	r2, r2, #4
	str	r2, [r4]
	.loc 1 61 0
	ldr	r2, [r4]
	orr	r2, r2, #1
	str	r2, [r4]
	.loc 1 66 0
	ldr	r2, [r3, #48]
	.loc 1 68 0
	movs	r5, #0
	.loc 1 66 0
	orr	r2, r2, #2097152
	str	r2, [r3, #48]
	.loc 1 69 0
	mov	r4, r6
	.loc 1 68 0
	str	r5, [r6]
.L11:
	.loc 1 69 0 discriminator 1
	ldr	r2, [r4]
	ldr	r3, .L14+16
	lsls	r2, r2, #31
	bmi	.L11
	.loc 1 71 0
	ldr	r2, .L14+20
	.loc 1 74 0
	ldr	r5, .L14+24
	.loc 1 71 0
	mov	r4, #-1
	str	r4, [r2, #8]
	.loc 1 72 0
	str	r4, [r2, #12]
	.loc 1 74 0
	str	r5, [r3, #8]
	.loc 1 75 0
	str	r0, [r3, #12]
	.loc 1 76 0
	str	r1, [r3, #4]
	.loc 1 78 0
	ldr	r2, [r3]
	orr	r2, r2, #234881024
	str	r2, [r3]
	.loc 1 79 0
	ldr	r2, [r3]
	orr	r2, r2, #196608
	str	r2, [r3]
	.loc 1 82 0
	ldr	r2, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	.loc 1 84 0
	ldr	r2, [r3]
	orr	r2, r2, #256
	str	r2, [r3]
	.loc 1 86 0
	ldr	r2, [r3]
	orr	r2, r2, #2048
	str	r2, [r3]
	.loc 1 88 0
	ldr	r2, [r3]
	orr	r2, r2, #8192
	str	r2, [r3]
	.loc 1 90 0
	ldr	r2, [r3]
	orr	r2, r2, #64
	str	r2, [r3]
	.loc 1 92 0
	ldr	r2, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	pop	{r4, r5, r6, r7, r8, pc}
.L15:
	.align	2
.L14:
	.word	1073887232
	.word	1073745920
	.word	1073872896
	.word	1073771520
	.word	1073897608
	.word	1073897472
	.word	1073771528
	.cfi_endproc
.LFE112:
	.size	initDmaDAC1, .-initDmaDAC1
.Letext0:
	.file 2 "/home/samir/Documents/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/samir/Documents/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x6f5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x1
	.4byte	.LASF102
	.4byte	.LASF103
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x3f
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x41
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
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
	.4byte	0xa2
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0x8
	.byte	0x38
	.byte	0x4
	.2byte	0x1a2
	.4byte	0x1a7
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x1a4
	.4byte	0xca
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x1a5
	.4byte	0xca
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x1a6
	.4byte	0xca
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x1a7
	.4byte	0xca
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x1a8
	.4byte	0xca
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x1a9
	.4byte	0xca
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x1aa
	.4byte	0xca
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x1ab
	.4byte	0xca
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x1ac
	.4byte	0xca
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x1ad
	.4byte	0xca
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x1ae
	.4byte	0xca
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x1af
	.4byte	0xca
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x1b0
	.4byte	0xca
	.byte	0x30
	.uleb128 0x9
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x1b1
	.4byte	0xca
	.byte	0x34
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x1b2
	.4byte	0xe9
	.uleb128 0x8
	.byte	0x18
	.byte	0x4
	.2byte	0x1d7
	.4byte	0x20a
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x1d9
	.4byte	0xca
	.byte	0
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x1da
	.4byte	0xca
	.byte	0x4
	.uleb128 0x9
	.ascii	"PAR\000"
	.byte	0x4
	.2byte	0x1db
	.4byte	0xca
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x1dc
	.4byte	0xca
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x1dd
	.4byte	0xca
	.byte	0x10
	.uleb128 0x9
	.ascii	"FCR\000"
	.byte	0x4
	.2byte	0x1de
	.4byte	0xca
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x1df
	.4byte	0x1b3
	.uleb128 0x8
	.byte	0x10
	.byte	0x4
	.2byte	0x1e1
	.4byte	0x254
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x1e3
	.4byte	0xca
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x1e4
	.4byte	0xca
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x1e5
	.4byte	0xca
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x1e6
	.4byte	0xca
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x1e7
	.4byte	0x216
	.uleb128 0x8
	.byte	0x28
	.byte	0x4
	.2byte	0x28e
	.4byte	0x2ec
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x290
	.4byte	0xca
	.byte	0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x291
	.4byte	0xca
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x292
	.4byte	0xca
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x293
	.4byte	0xca
	.byte	0xc
	.uleb128 0x9
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x294
	.4byte	0xca
	.byte	0x10
	.uleb128 0x9
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x295
	.4byte	0xca
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x296
	.4byte	0xdf
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x297
	.4byte	0xdf
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x298
	.4byte	0xca
	.byte	0x1c
	.uleb128 0x9
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x299
	.4byte	0x2ec
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x29a
	.4byte	0x260
	.uleb128 0x8
	.byte	0x88
	.byte	0x4
	.2byte	0x2dd
	.4byte	0x48c
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2df
	.4byte	0xca
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x2e0
	.4byte	0xca
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x2e1
	.4byte	0xca
	.byte	0x8
	.uleb128 0x9
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x2e2
	.4byte	0xca
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x2e3
	.4byte	0xca
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x2e4
	.4byte	0xca
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x2e5
	.4byte	0xca
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x2e6
	.4byte	0xb8
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x2e7
	.4byte	0xca
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x2e8
	.4byte	0xca
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x2e9
	.4byte	0xcf
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x2ea
	.4byte	0xca
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x2eb
	.4byte	0xca
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x2ec
	.4byte	0xca
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x2ed
	.4byte	0xb8
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x2ee
	.4byte	0xca
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x2ef
	.4byte	0xca
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x2f0
	.4byte	0xcf
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x2f1
	.4byte	0xca
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x2f2
	.4byte	0xca
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x2f3
	.4byte	0xca
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x2f4
	.4byte	0xb8
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x2f5
	.4byte	0xca
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x2f6
	.4byte	0xca
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x2f7
	.4byte	0xcf
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x2f8
	.4byte	0xca
	.byte	0x70
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2f9
	.4byte	0xca
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x2fa
	.4byte	0xcf
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x2fb
	.4byte	0xca
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x2fc
	.4byte	0xca
	.byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x2fd
	.4byte	0x2fd
	.uleb128 0x8
	.byte	0x54
	.byte	0x4
	.2byte	0x369
	.4byte	0x674
	.uleb128 0x9
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x36b
	.4byte	0xdf
	.byte	0
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x36c
	.4byte	0xa2
	.byte	0x2
	.uleb128 0x9
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x36d
	.4byte	0xdf
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x36e
	.4byte	0xa2
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x36f
	.4byte	0xdf
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x370
	.4byte	0xa2
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x371
	.4byte	0xdf
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x372
	.4byte	0xa2
	.byte	0xe
	.uleb128 0x9
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x373
	.4byte	0xdf
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x374
	.4byte	0xa2
	.byte	0x12
	.uleb128 0x9
	.ascii	"EGR\000"
	.byte	0x4
	.2byte	0x375
	.4byte	0xdf
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x376
	.4byte	0xa2
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x377
	.4byte	0xdf
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x378
	.4byte	0xa2
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x379
	.4byte	0xdf
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x37a
	.4byte	0xa2
	.byte	0x1e
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x37b
	.4byte	0xdf
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x37c
	.4byte	0xa2
	.byte	0x22
	.uleb128 0x9
	.ascii	"CNT\000"
	.byte	0x4
	.2byte	0x37d
	.4byte	0xca
	.byte	0x24
	.uleb128 0x9
	.ascii	"PSC\000"
	.byte	0x4
	.2byte	0x37e
	.4byte	0xdf
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x37f
	.4byte	0xa2
	.byte	0x2a
	.uleb128 0x9
	.ascii	"ARR\000"
	.byte	0x4
	.2byte	0x380
	.4byte	0xca
	.byte	0x2c
	.uleb128 0x9
	.ascii	"RCR\000"
	.byte	0x4
	.2byte	0x381
	.4byte	0xdf
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x382
	.4byte	0xa2
	.byte	0x32
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x383
	.4byte	0xca
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x384
	.4byte	0xca
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x385
	.4byte	0xca
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x386
	.4byte	0xca
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x387
	.4byte	0xdf
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x388
	.4byte	0xa2
	.byte	0x46
	.uleb128 0x9
	.ascii	"DCR\000"
	.byte	0x4
	.2byte	0x389
	.4byte	0xdf
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x38a
	.4byte	0xa2
	.byte	0x4a
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x38b
	.4byte	0xdf
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x38c
	.4byte	0xa2
	.byte	0x4e
	.uleb128 0x9
	.ascii	"OR\000"
	.byte	0x4
	.2byte	0x38d
	.4byte	0xdf
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x38e
	.4byte	0xa2
	.byte	0x52
	.byte	0
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x38f
	.4byte	0x498
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x1
	.byte	0x3
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x1
	.byte	0x11
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b6
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x1
	.byte	0x11
	.4byte	0xa2
	.4byte	.LLST0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e6
	.uleb128 0xf
	.4byte	.LASF99
	.byte	0x1
	.byte	0x1c
	.4byte	0x6e6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x1
	.byte	0x1c
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x51b
	.4byte	0xe4
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
	.uleb128 0xa
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
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
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
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
.LASF64:
	.ascii	"AHB1LPENR\000"
.LASF81:
	.ascii	"CCER\000"
.LASF27:
	.ascii	"DHR8RD\000"
.LASF42:
	.ascii	"OSPEEDR\000"
.LASF54:
	.ascii	"APB1RSTR\000"
.LASF92:
	.ascii	"DMAR\000"
.LASF103:
	.ascii	"/home/samir/Documents/MSUT/STM32F407/examples/audio"
	.ascii	"-passthrough-dac-dma-Samir\000"
.LASF23:
	.ascii	"DHR12L2\000"
.LASF78:
	.ascii	"CCMR1\000"
.LASF79:
	.ascii	"CCMR2\000"
.LASF2:
	.ascii	"short int\000"
.LASF71:
	.ascii	"BDCR\000"
.LASF74:
	.ascii	"PLLI2SCFGR\000"
.LASF26:
	.ascii	"DHR12LD\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF73:
	.ascii	"SSCGR\000"
.LASF66:
	.ascii	"AHB3LPENR\000"
.LASF39:
	.ascii	"DMA_TypeDef\000"
.LASF63:
	.ascii	"RESERVED3\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF29:
	.ascii	"DOR2\000"
.LASF61:
	.ascii	"APB1ENR\000"
.LASF46:
	.ascii	"LCKR\000"
.LASF82:
	.ascii	"RESERVED8\000"
.LASF41:
	.ascii	"OTYPER\000"
.LASF62:
	.ascii	"APB2ENR\000"
.LASF58:
	.ascii	"AHB2ENR\000"
.LASF59:
	.ascii	"AHB3ENR\000"
.LASF99:
	.ascii	"dBuff\000"
.LASF38:
	.ascii	"HIFCR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF43:
	.ascii	"PUPDR\000"
.LASF85:
	.ascii	"CCR1\000"
.LASF7:
	.ascii	"long int\000"
.LASF87:
	.ascii	"CCR3\000"
.LASF88:
	.ascii	"CCR4\000"
.LASF75:
	.ascii	"RCC_TypeDef\000"
.LASF45:
	.ascii	"BSRRH\000"
.LASF20:
	.ascii	"DHR12L1\000"
.LASF40:
	.ascii	"MODER\000"
.LASF55:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF93:
	.ascii	"RESERVED13\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF44:
	.ascii	"BSRRL\000"
.LASF36:
	.ascii	"HISR\000"
.LASF95:
	.ascii	"TIM_TypeDef\000"
.LASF76:
	.ascii	"SMCR\000"
.LASF86:
	.ascii	"CCR2\000"
.LASF18:
	.ascii	"SWTRIGR\000"
.LASF84:
	.ascii	"RESERVED10\000"
.LASF90:
	.ascii	"RESERVED11\000"
.LASF91:
	.ascii	"RESERVED12\000"
.LASF101:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF94:
	.ascii	"RESERVED14\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF22:
	.ascii	"DHR12R2\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF51:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF28:
	.ascii	"DOR1\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF96:
	.ascii	"setDAC1\000"
.LASF49:
	.ascii	"CFGR\000"
.LASF77:
	.ascii	"DIER\000"
.LASF48:
	.ascii	"PLLCFGR\000"
.LASF19:
	.ascii	"DHR12R1\000"
.LASF33:
	.ascii	"M1AR\000"
.LASF68:
	.ascii	"APB1LPENR\000"
.LASF104:
	.ascii	"initDAC1\000"
.LASF89:
	.ascii	"BDTR\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF97:
	.ascii	"initDmaDAC1\000"
.LASF100:
	.ascii	"size\000"
.LASF65:
	.ascii	"AHB2LPENR\000"
.LASF37:
	.ascii	"LIFCR\000"
.LASF53:
	.ascii	"RESERVED0\000"
.LASF56:
	.ascii	"RESERVED1\000"
.LASF60:
	.ascii	"RESERVED2\000"
.LASF32:
	.ascii	"M0AR\000"
.LASF67:
	.ascii	"RESERVED4\000"
.LASF70:
	.ascii	"RESERVED5\000"
.LASF72:
	.ascii	"RESERVED6\000"
.LASF80:
	.ascii	"RESERVED7\000"
.LASF31:
	.ascii	"NDTR\000"
.LASF83:
	.ascii	"RESERVED9\000"
.LASF25:
	.ascii	"DHR12RD\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF57:
	.ascii	"AHB1ENR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF98:
	.ascii	"dac_data\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF50:
	.ascii	"AHB1RSTR\000"
.LASF47:
	.ascii	"GPIO_TypeDef\000"
.LASF52:
	.ascii	"AHB3RSTR\000"
.LASF35:
	.ascii	"LISR\000"
.LASF105:
	.ascii	"ITM_RxBuffer\000"
.LASF30:
	.ascii	"DAC_TypeDef\000"
.LASF102:
	.ascii	"dac.c\000"
.LASF21:
	.ascii	"DHR8R1\000"
.LASF24:
	.ascii	"DHR8R2\000"
.LASF69:
	.ascii	"APB2LPENR\000"
.LASF34:
	.ascii	"DMA_Stream_TypeDef\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
