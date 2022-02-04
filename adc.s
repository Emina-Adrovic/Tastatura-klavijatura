	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"adc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	initADC1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initADC1, %function
initADC1:
.LFB143:
	.file 1 "adc.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 9 0
	ldr	r1, .L4
	.loc 1 11 0
	ldr	r2, .L4+4
	.loc 1 9 0
	ldr	r0, [r1, #48]
	.loc 1 14 0
	ldr	r3, .L4+8
	.loc 1 9 0
	orr	r0, r0, #1
	.loc 1 4 0
	push	{r4, r5, r6}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	.loc 1 9 0
	str	r0, [r1, #48]
	.loc 1 10 0
	ldr	r0, [r1, #68]
	.loc 1 21 0
	ldr	r4, .L4+12
	.loc 1 10 0
	orr	r0, r0, #256
	str	r0, [r1, #68]
	.loc 1 11 0
	ldr	r1, [r2]
	orr	r1, r1, #12
	str	r1, [r2]
	.loc 1 12 0
	ldr	r1, [r2, #12]
	bic	r1, r1, #12
	str	r1, [r2, #12]
	.loc 1 19 0
	movs	r5, #1
	.loc 1 14 0
	mov	r6, #2048
	.loc 1 17 0
	movs	r0, #0
	.loc 1 21 0
	mov	r2, #196608
	.loc 1 20 0
	mov	r1, #512
	.loc 1 14 0
	str	r6, [r3, #4]
	.loc 1 17 0
	str	r0, [r3, #12]
	.loc 1 18 0
	str	r0, [r3, #44]
	.loc 1 19 0
	str	r5, [r3, #52]
	.loc 1 20 0
	str	r1, [r3, #8]
	.loc 1 21 0
	str	r2, [r4, #4]
	.loc 1 23 0
	ldr	r2, [r3, #8]
	orrs	r2, r2, r5
	str	r2, [r3, #8]
	.loc 1 24 0
	pop	{r4, r5, r6}
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L5:
	.align	2
.L4:
	.word	1073887232
	.word	1073872896
	.word	1073815552
	.word	1073816320
	.cfi_endproc
.LFE143:
	.size	initADC1, .-initADC1
	.align	1
	.p2align 2,,3
	.global	getADC1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getADC1, %function
getADC1:
.LFB144:
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 30 0
	ldr	r2, .L10
	ldr	r3, [r2, #8]
	orr	r3, r3, #1073741824
	str	r3, [r2, #8]
.L7:
	.loc 1 32 0 discriminator 1
	ldr	r3, [r2]
	lsls	r3, r3, #30
	bpl	.L7
	.loc 1 34 0
	ldr	r0, [r2, #76]
.LVL0:
	.loc 1 37 0
	uxth	r0, r0
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073815552
	.cfi_endproc
.LFE144:
	.size	getADC1, .-getADC1
	.align	1
	.p2align 2,,3
	.global	initADC1Temp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initADC1Temp, %function
initADC1Temp:
.LFB145:
	.loc 1 40 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 45 0
	ldr	r1, .L14
	.loc 1 47 0
	ldr	r3, .L14+4
	.loc 1 45 0
	ldr	r2, [r1, #68]
	.loc 1 54 0
	ldr	r0, .L14+8
	.loc 1 45 0
	orr	r2, r2, #256
	.loc 1 40 0
	push	{r4, r5, r6, r7}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	.loc 1 45 0
	str	r2, [r1, #68]
	.loc 1 47 0
	mov	r7, #2048
	.loc 1 50 0
	mov	r6, #1835008
	.loc 1 51 0
	movs	r5, #0
	.loc 1 52 0
	movs	r4, #16
	.loc 1 54 0
	mov	r2, #196608
	.loc 1 53 0
	mov	r1, #512
	.loc 1 47 0
	str	r7, [r3, #4]
	.loc 1 50 0
	str	r6, [r3, #12]
	.loc 1 51 0
	str	r5, [r3, #44]
	.loc 1 52 0
	str	r4, [r3, #52]
	.loc 1 53 0
	str	r1, [r3, #8]
	.loc 1 54 0
	str	r2, [r0, #4]
	.loc 1 56 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #1
	str	r2, [r3, #8]
	.loc 1 57 0
	movs	r0, #10
	.loc 1 58 0
	pop	{r4, r5, r6, r7}
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 57 0
	b	delay_us
.LVL1:
.L15:
	.align	2
.L14:
	.word	1073887232
	.word	1073815552
	.word	1073816320
	.cfi_endproc
.LFE145:
	.size	initADC1Temp, .-initADC1Temp
	.align	1
	.p2align 2,,3
	.global	getADC1Temp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getADC1Temp, %function
getADC1Temp:
.LFB146:
	.loc 1 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 64 0
	ldr	r1, .L20
.LBB4:
.LBB5:
	.loc 1 30 0
	ldr	r2, .L20+4
.LBE5:
.LBE4:
	.loc 1 64 0
	ldr	r3, [r1, #4]
	orr	r3, r3, #8388608
	str	r3, [r1, #4]
.LBB7:
.LBB6:
	.loc 1 30 0
	ldr	r3, [r2, #8]
	orr	r3, r3, #1073741824
	str	r3, [r2, #8]
.L17:
	.loc 1 32 0
	ldr	r3, [r2]
	lsls	r3, r3, #30
	bpl	.L17
	.loc 1 34 0
	ldr	r1, [r2, #76]
.LVL2:
.LBE6:
.LBE7:
	.loc 1 65 0
	ldr	r3, .L20+8
	.loc 1 66 0
	ldr	r0, .L20
	.loc 1 65 0
	uxth	r1, r1
.LVL3:
	movw	r2, #3000
	mul	r2, r2, r1
	umull	r1, r3, r3, r2
	subs	r2, r2, r3
	add	r3, r3, r2, lsr #1
	lsrs	r3, r3, #11
	.loc 1 68 0
	sub	r3, r3, #760
	vmov	s15, r3	@ int
	vcvt.f32.u32	s15, s15
	vmov.f32	s13, #2.5e+0
	vdiv.f32	s14, s15, s13
	.loc 1 66 0
	ldr	r3, [r0, #4]
	bic	r3, r3, #8388608
	str	r3, [r0, #4]
	.loc 1 68 0
	vmov.f32	s15, #2.5e+1
	vadd.f32	s15, s14, s15
.LVL4:
	vcvt.u32.f32	s15, s15
.LVL5:
	.loc 1 71 0
	vmov	r3, s15	@ int
	uxth	r0, r3
	bx	lr
.L21:
	.align	2
.L20:
	.word	1073816320
	.word	1073815552
	.word	1048833
	.cfi_endproc
.LFE146:
	.size	getADC1Temp, .-getADC1Temp
.Letext0:
	.file 2 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../sdk/core_cm4.h"
	.file 5 "../sdk/system_stm32f4xx.h"
	.file 6 "../sdk/stm32f4xx.h"
	.file 7 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 8 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 9 "/home/emina/msut/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 10 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 11 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/math.h"
	.file 12 "../sdk/arm_math.h"
	.file 13 "delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xdd4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF193
	.byte	0xc
	.4byte	.LASF194
	.4byte	.LASF195
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4d
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.4byte	0x82
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x24
	.4byte	0x53
	.uleb128 0x5
	.4byte	0xa9
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x5
	.4byte	0xb9
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x30
	.4byte	0x77
	.uleb128 0x5
	.4byte	0xc9
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x51b
	.4byte	0xc4
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x35
	.4byte	0xc9
	.uleb128 0x8
	.byte	0x50
	.byte	0x6
	.2byte	0x130
	.4byte	0x1fc
	.uleb128 0x9
	.ascii	"SR\000"
	.byte	0x6
	.2byte	0x132
	.4byte	0xd4
	.byte	0
	.uleb128 0x9
	.ascii	"CR1\000"
	.byte	0x6
	.2byte	0x133
	.4byte	0xd4
	.byte	0x4
	.uleb128 0x9
	.ascii	"CR2\000"
	.byte	0x6
	.2byte	0x134
	.4byte	0xd4
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x135
	.4byte	0xd4
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x136
	.4byte	0xd4
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x137
	.4byte	0xd4
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x138
	.4byte	0xd4
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x139
	.4byte	0xd4
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x13a
	.4byte	0xd4
	.byte	0x20
	.uleb128 0x9
	.ascii	"HTR\000"
	.byte	0x6
	.2byte	0x13b
	.4byte	0xd4
	.byte	0x24
	.uleb128 0x9
	.ascii	"LTR\000"
	.byte	0x6
	.2byte	0x13c
	.4byte	0xd4
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x13d
	.4byte	0xd4
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x13e
	.4byte	0xd4
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x13f
	.4byte	0xd4
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x140
	.4byte	0xd4
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x141
	.4byte	0xd4
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x142
	.4byte	0xd4
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x143
	.4byte	0xd4
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x144
	.4byte	0xd4
	.byte	0x48
	.uleb128 0x9
	.ascii	"DR\000"
	.byte	0x6
	.2byte	0x145
	.4byte	0xd4
	.byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x146
	.4byte	0xf0
	.uleb128 0x8
	.byte	0xc
	.byte	0x6
	.2byte	0x148
	.4byte	0x239
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x14a
	.4byte	0xd4
	.byte	0
	.uleb128 0x9
	.ascii	"CCR\000"
	.byte	0x6
	.2byte	0x14b
	.4byte	0xd4
	.byte	0x4
	.uleb128 0x9
	.ascii	"CDR\000"
	.byte	0x6
	.2byte	0x14c
	.4byte	0xd4
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x14e
	.4byte	0x208
	.uleb128 0xc
	.4byte	0xc9
	.4byte	0x255
	.uleb128 0xd
	.4byte	0x25
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x28
	.byte	0x6
	.2byte	0x28e
	.4byte	0x2e1
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x290
	.4byte	0xd4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x291
	.4byte	0xd4
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x292
	.4byte	0xd4
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x293
	.4byte	0xd4
	.byte	0xc
	.uleb128 0x9
	.ascii	"IDR\000"
	.byte	0x6
	.2byte	0x294
	.4byte	0xd4
	.byte	0x10
	.uleb128 0x9
	.ascii	"ODR\000"
	.byte	0x6
	.2byte	0x295
	.4byte	0xd4
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x296
	.4byte	0xb4
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x297
	.4byte	0xb4
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x298
	.4byte	0xd4
	.byte	0x1c
	.uleb128 0x9
	.ascii	"AFR\000"
	.byte	0x6
	.2byte	0x299
	.4byte	0x2f1
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.4byte	0xd4
	.4byte	0x2f1
	.uleb128 0xd
	.4byte	0x25
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x2e1
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x29a
	.4byte	0x255
	.uleb128 0x8
	.byte	0x88
	.byte	0x6
	.2byte	0x2dd
	.4byte	0x491
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x2df
	.4byte	0xd4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2e0
	.4byte	0xd4
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x2e1
	.4byte	0xd4
	.byte	0x8
	.uleb128 0x9
	.ascii	"CIR\000"
	.byte	0x6
	.2byte	0x2e2
	.4byte	0xd4
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2e3
	.4byte	0xd4
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x2e4
	.4byte	0xd4
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x2e5
	.4byte	0xd4
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x2e6
	.4byte	0xc9
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x2e7
	.4byte	0xd4
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x2e8
	.4byte	0xd4
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x2e9
	.4byte	0x245
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x2ea
	.4byte	0xd4
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x2eb
	.4byte	0xd4
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x2ec
	.4byte	0xd4
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x2ed
	.4byte	0xc9
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x2ee
	.4byte	0xd4
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x2ef
	.4byte	0xd4
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x2f0
	.4byte	0x245
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x2f1
	.4byte	0xd4
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x2f2
	.4byte	0xd4
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x2f3
	.4byte	0xd4
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x2f4
	.4byte	0xc9
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x2f5
	.4byte	0xd4
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x2f6
	.4byte	0xd4
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x2f7
	.4byte	0x245
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x2f8
	.4byte	0xd4
	.byte	0x70
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x2f9
	.4byte	0xd4
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x2fa
	.4byte	0x245
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x2fb
	.4byte	0xd4
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x2fc
	.4byte	0xd4
	.byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x2fd
	.4byte	0x302
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF72
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x7
	.byte	0x22
	.4byte	0x4af
	.uleb128 0xe
	.byte	0x4
	.4byte	0x4b5
	.uleb128 0xf
	.4byte	.LASF180
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x8
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x8
	.byte	0x72
	.4byte	0x70
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x165
	.4byte	0x25
	.uleb128 0x10
	.byte	0x4
	.byte	0x8
	.byte	0xa6
	.4byte	0x4fb
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x8
	.byte	0xa8
	.4byte	0x4d0
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x8
	.byte	0xa9
	.4byte	0x4fb
	.byte	0
	.uleb128 0xc
	.4byte	0x45
	.4byte	0x50b
	.uleb128 0xd
	.4byte	0x25
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0x8
	.byte	0xa3
	.4byte	0x52c
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x8
	.byte	0xa5
	.4byte	0x97
	.byte	0
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x8
	.byte	0xaa
	.4byte	0x4dc
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x8
	.byte	0xab
	.4byte	0x50b
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x8
	.byte	0xaf
	.4byte	0x4a4
	.uleb128 0x14
	.byte	0x4
	.uleb128 0xe
	.byte	0x4
	.4byte	0x54a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF83
	.uleb128 0x15
	.4byte	0x54a
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xa
	.byte	0x16
	.4byte	0x82
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x18
	.byte	0xa
	.byte	0x2f
	.4byte	0x5b4
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0xa
	.byte	0x31
	.4byte	0x5b4
	.byte	0
	.uleb128 0x17
	.ascii	"_k\000"
	.byte	0xa
	.byte	0x32
	.4byte	0x97
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0xa
	.byte	0x32
	.4byte	0x97
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0xa
	.byte	0x32
	.4byte	0x97
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0xa
	.byte	0x32
	.4byte	0x97
	.byte	0x10
	.uleb128 0x17
	.ascii	"_x\000"
	.byte	0xa
	.byte	0x33
	.4byte	0x5ba
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x561
	.uleb128 0xc
	.4byte	0x556
	.4byte	0x5ca
	.uleb128 0xd
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x24
	.byte	0xa
	.byte	0x37
	.4byte	0x643
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0xa
	.byte	0x39
	.4byte	0x97
	.byte	0
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0xa
	.byte	0x3a
	.4byte	0x97
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0xa
	.byte	0x3b
	.4byte	0x97
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0xa
	.byte	0x3c
	.4byte	0x97
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0xa
	.byte	0x3d
	.4byte	0x97
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0xa
	.byte	0x3e
	.4byte	0x97
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0xa
	.byte	0x3f
	.4byte	0x97
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0xa
	.byte	0x40
	.4byte	0x97
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0xa
	.byte	0x41
	.4byte	0x97
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF100
	.2byte	0x108
	.byte	0xa
	.byte	0x4a
	.4byte	0x683
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0xa
	.byte	0x4b
	.4byte	0x683
	.byte	0
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0xa
	.byte	0x4c
	.4byte	0x683
	.byte	0x80
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0xa
	.byte	0x4e
	.4byte	0x556
	.2byte	0x100
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0xa
	.byte	0x51
	.4byte	0x556
	.2byte	0x104
	.byte	0
	.uleb128 0xc
	.4byte	0x542
	.4byte	0x693
	.uleb128 0xd
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF105
	.2byte	0x190
	.byte	0xa
	.byte	0x5d
	.4byte	0x6d1
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0xa
	.byte	0x5e
	.4byte	0x6d1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0xa
	.byte	0x5f
	.4byte	0x97
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0xa
	.byte	0x61
	.4byte	0x6d7
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0xa
	.byte	0x62
	.4byte	0x643
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x693
	.uleb128 0xc
	.4byte	0x6e7
	.4byte	0x6e7
	.uleb128 0xd
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6ed
	.uleb128 0x1a
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x8
	.byte	0xa
	.byte	0x75
	.4byte	0x713
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0xa
	.byte	0x76
	.4byte	0x713
	.byte	0
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0xa
	.byte	0x77
	.4byte	0x97
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x45
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x68
	.byte	0xa
	.byte	0xb5
	.4byte	0x843
	.uleb128 0x17
	.ascii	"_p\000"
	.byte	0xa
	.byte	0xb6
	.4byte	0x713
	.byte	0
	.uleb128 0x17
	.ascii	"_r\000"
	.byte	0xa
	.byte	0xb7
	.4byte	0x97
	.byte	0x4
	.uleb128 0x17
	.ascii	"_w\000"
	.byte	0xa
	.byte	0xb8
	.4byte	0x97
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0xa
	.byte	0xb9
	.4byte	0x4c
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0xa
	.byte	0xba
	.4byte	0x4c
	.byte	0xe
	.uleb128 0x17
	.ascii	"_bf\000"
	.byte	0xa
	.byte	0xbb
	.4byte	0x6ee
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF114
	.byte	0xa
	.byte	0xbc
	.4byte	0x97
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0xa
	.byte	0xc3
	.4byte	0x542
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0xa
	.byte	0xc5
	.4byte	0x99e
	.byte	0x20
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0xa
	.byte	0xc7
	.4byte	0x9c8
	.byte	0x24
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0xa
	.byte	0xca
	.4byte	0x9ec
	.byte	0x28
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0xa
	.byte	0xcb
	.4byte	0xa06
	.byte	0x2c
	.uleb128 0x17
	.ascii	"_ub\000"
	.byte	0xa
	.byte	0xce
	.4byte	0x6ee
	.byte	0x30
	.uleb128 0x17
	.ascii	"_up\000"
	.byte	0xa
	.byte	0xcf
	.4byte	0x713
	.byte	0x38
	.uleb128 0x17
	.ascii	"_ur\000"
	.byte	0xa
	.byte	0xd0
	.4byte	0x97
	.byte	0x3c
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0xa
	.byte	0xd3
	.4byte	0xa0c
	.byte	0x40
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0xa
	.byte	0xd4
	.4byte	0xa1c
	.byte	0x43
	.uleb128 0x17
	.ascii	"_lb\000"
	.byte	0xa
	.byte	0xd7
	.4byte	0x6ee
	.byte	0x44
	.uleb128 0x13
	.4byte	.LASF122
	.byte	0xa
	.byte	0xda
	.4byte	0x97
	.byte	0x4c
	.uleb128 0x13
	.4byte	.LASF123
	.byte	0xa
	.byte	0xdb
	.4byte	0x4ba
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF124
	.byte	0xa
	.byte	0xde
	.4byte	0x861
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF125
	.byte	0xa
	.byte	0xe2
	.4byte	0x537
	.byte	0x58
	.uleb128 0x13
	.4byte	.LASF126
	.byte	0xa
	.byte	0xe4
	.4byte	0x52c
	.byte	0x5c
	.uleb128 0x13
	.4byte	.LASF127
	.byte	0xa
	.byte	0xe5
	.4byte	0x97
	.byte	0x64
	.byte	0
	.uleb128 0x1b
	.4byte	0x97
	.4byte	0x861
	.uleb128 0x1c
	.4byte	0x861
	.uleb128 0x1c
	.4byte	0x542
	.uleb128 0x1c
	.4byte	0x544
	.uleb128 0x1c
	.4byte	0x97
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x86c
	.uleb128 0x15
	.4byte	0x861
	.uleb128 0x1d
	.4byte	.LASF128
	.2byte	0x428
	.byte	0xa
	.2byte	0x260
	.4byte	0x99e
	.uleb128 0xa
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x262
	.4byte	0x97
	.byte	0
	.uleb128 0xa
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x267
	.4byte	0xa73
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x267
	.4byte	0xa73
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x267
	.4byte	0xa73
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x269
	.4byte	0x97
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x26a
	.4byte	0xc55
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x26d
	.4byte	0x97
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x26e
	.4byte	0xc6a
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x270
	.4byte	0x97
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x272
	.4byte	0xc7b
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x275
	.4byte	0x5b4
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x276
	.4byte	0x97
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x277
	.4byte	0x5b4
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x278
	.4byte	0xc81
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x27b
	.4byte	0x97
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x27c
	.4byte	0x544
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x29f
	.4byte	0xc33
	.byte	0x58
	.uleb128 0x1e
	.4byte	.LASF105
	.byte	0xa
	.2byte	0x2a3
	.4byte	0x6d1
	.2byte	0x148
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x2a4
	.4byte	0x693
	.2byte	0x14c
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0xa
	.2byte	0x2a8
	.4byte	0xc92
	.2byte	0x2dc
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0xa
	.2byte	0x2ad
	.4byte	0xa38
	.2byte	0x2e0
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x2af
	.4byte	0xc9e
	.2byte	0x2ec
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x843
	.uleb128 0x1b
	.4byte	0x97
	.4byte	0x9c2
	.uleb128 0x1c
	.4byte	0x861
	.uleb128 0x1c
	.4byte	0x542
	.uleb128 0x1c
	.4byte	0x9c2
	.uleb128 0x1c
	.4byte	0x97
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x551
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9a4
	.uleb128 0x1b
	.4byte	0x4c5
	.4byte	0x9ec
	.uleb128 0x1c
	.4byte	0x861
	.uleb128 0x1c
	.4byte	0x542
	.uleb128 0x1c
	.4byte	0x4c5
	.uleb128 0x1c
	.4byte	0x97
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9ce
	.uleb128 0x1b
	.4byte	0x97
	.4byte	0xa06
	.uleb128 0x1c
	.4byte	0x861
	.uleb128 0x1c
	.4byte	0x542
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9f2
	.uleb128 0xc
	.4byte	0x45
	.4byte	0xa1c
	.uleb128 0xd
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	0x45
	.4byte	0xa2c
	.uleb128 0xd
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x11f
	.4byte	0x719
	.uleb128 0x1f
	.4byte	.LASF151
	.byte	0xc
	.byte	0xa
	.2byte	0x123
	.4byte	0xa6d
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0xa
	.2byte	0x125
	.4byte	0xa6d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF152
	.byte	0xa
	.2byte	0x126
	.4byte	0x97
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x127
	.4byte	0xa73
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa38
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa2c
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0xe
	.byte	0xa
	.2byte	0x13f
	.4byte	0xaae
	.uleb128 0xa
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x140
	.4byte	0xaae
	.byte	0
	.uleb128 0xa
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x141
	.4byte	0xaae
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF157
	.byte	0xa
	.2byte	0x142
	.4byte	0x5e
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	0x5e
	.4byte	0xabe
	.uleb128 0xd
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0xd0
	.byte	0xa
	.2byte	0x280
	.4byte	0xbbf
	.uleb128 0xa
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x282
	.4byte	0x25
	.byte	0
	.uleb128 0xa
	.4byte	.LASF159
	.byte	0xa
	.2byte	0x283
	.4byte	0x544
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x284
	.4byte	0xbbf
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF161
	.byte	0xa
	.2byte	0x285
	.4byte	0x5ca
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x286
	.4byte	0x97
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x287
	.4byte	0x90
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF164
	.byte	0xa
	.2byte	0x288
	.4byte	0xa79
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF165
	.byte	0xa
	.2byte	0x289
	.4byte	0x52c
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF166
	.byte	0xa
	.2byte	0x28a
	.4byte	0x52c
	.byte	0x70
	.uleb128 0xa
	.4byte	.LASF167
	.byte	0xa
	.2byte	0x28b
	.4byte	0x52c
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF168
	.byte	0xa
	.2byte	0x28c
	.4byte	0xbcf
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF169
	.byte	0xa
	.2byte	0x28d
	.4byte	0xbdf
	.byte	0x88
	.uleb128 0xa
	.4byte	.LASF170
	.byte	0xa
	.2byte	0x28e
	.4byte	0x97
	.byte	0xa0
	.uleb128 0xa
	.4byte	.LASF171
	.byte	0xa
	.2byte	0x28f
	.4byte	0x52c
	.byte	0xa4
	.uleb128 0xa
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x290
	.4byte	0x52c
	.byte	0xac
	.uleb128 0xa
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x291
	.4byte	0x52c
	.byte	0xb4
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0xa
	.2byte	0x292
	.4byte	0x52c
	.byte	0xbc
	.uleb128 0xa
	.4byte	.LASF175
	.byte	0xa
	.2byte	0x293
	.4byte	0x52c
	.byte	0xc4
	.uleb128 0xa
	.4byte	.LASF176
	.byte	0xa
	.2byte	0x294
	.4byte	0x97
	.byte	0xcc
	.byte	0
	.uleb128 0xc
	.4byte	0x54a
	.4byte	0xbcf
	.uleb128 0xd
	.4byte	0x25
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.4byte	0x54a
	.4byte	0xbdf
	.uleb128 0xd
	.4byte	0x25
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	0x54a
	.4byte	0xbef
	.uleb128 0xd
	.4byte	0x25
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.byte	0xf0
	.byte	0xa
	.2byte	0x299
	.4byte	0xc13
	.uleb128 0xa
	.4byte	.LASF177
	.byte	0xa
	.2byte	0x29c
	.4byte	0xc13
	.byte	0
	.uleb128 0xa
	.4byte	.LASF178
	.byte	0xa
	.2byte	0x29d
	.4byte	0xc23
	.byte	0x78
	.byte	0
	.uleb128 0xc
	.4byte	0x713
	.4byte	0xc23
	.uleb128 0xd
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.4byte	0x25
	.4byte	0xc33
	.uleb128 0xd
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.uleb128 0x20
	.byte	0xf0
	.byte	0xa
	.2byte	0x27e
	.4byte	0xc55
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x295
	.4byte	0xabe
	.uleb128 0x21
	.4byte	.LASF179
	.byte	0xa
	.2byte	0x29e
	.4byte	0xbef
	.byte	0
	.uleb128 0xc
	.4byte	0x54a
	.4byte	0xc65
	.uleb128 0xd
	.4byte	0x25
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF181
	.uleb128 0xe
	.byte	0x4
	.4byte	0xc65
	.uleb128 0x22
	.4byte	0xc7b
	.uleb128 0x1c
	.4byte	0x861
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xc70
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5b4
	.uleb128 0x22
	.4byte	0xc92
	.uleb128 0x1c
	.4byte	0x97
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xc98
	.uleb128 0xe
	.byte	0x4
	.4byte	0xc87
	.uleb128 0xc
	.4byte	0xa2c
	.4byte	0xcae
	.uleb128 0xd
	.4byte	0x25
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF182
	.byte	0xa
	.2byte	0x32e
	.4byte	0x861
	.uleb128 0x6
	.4byte	.LASF183
	.byte	0xa
	.2byte	0x32f
	.4byte	0x867
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF184
	.uleb128 0x23
	.4byte	.LASF196
	.byte	0x5
	.byte	0x1
	.4byte	0x33
	.byte	0xb
	.2byte	0x282
	.4byte	0xcf8
	.uleb128 0x24
	.4byte	.LASF185
	.sleb128 -1
	.uleb128 0x25
	.4byte	.LASF186
	.byte	0
	.uleb128 0x25
	.4byte	.LASF187
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF188
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF189
	.byte	0xb
	.2byte	0x28d
	.4byte	0xccd
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0xc
	.2byte	0x157
	.4byte	0x2c
	.uleb128 0x26
	.4byte	.LASF197
	.byte	0x1
	.byte	0x3c
	.4byte	0xa9
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd5f
	.uleb128 0x27
	.4byte	.LASF198
	.byte	0x1
	.byte	0x3e
	.4byte	0xc9
	.4byte	.LLST0
	.uleb128 0x28
	.4byte	.LASF191
	.byte	0x1
	.byte	0x3f
	.4byte	0xd04
	.uleb128 0x29
	.4byte	0xd84
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x41
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2b
	.4byte	0xdc4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF199
	.byte	0x1
	.byte	0x27
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd84
	.uleb128 0x2d
	.4byte	.LVL1
	.4byte	0xdcc
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF200
	.byte	0x1
	.byte	0x1a
	.4byte	0xa9
	.byte	0x1
	.4byte	0xda0
	.uleb128 0x28
	.4byte	.LASF192
	.byte	0x1
	.byte	0x1c
	.4byte	0xa9
	.byte	0
	.uleb128 0x30
	.4byte	.LASF201
	.byte	0x1
	.byte	0x3
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.4byte	0xd84
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdcc
	.uleb128 0x32
	.4byte	0xd94
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0xd
	.byte	0xa
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
	.uleb128 0x7
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0x17
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x15
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0xbb8
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x25
	.byte	0xa
	.2byte	0xfff
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x6
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE146-.Ltext0
	.2byte	0xe
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x2c
	.byte	0xf4
	.uleb128 0x2c
	.byte	0x4
	.4byte	0x41c80000
	.byte	0x22
	.byte	0xf7
	.uleb128 0x25
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
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF102:
	.ascii	"_dso_handle\000"
.LASF4:
	.ascii	"short int\000"
.LASF39:
	.ascii	"PUPDR\000"
.LASF42:
	.ascii	"LCKR\000"
.LASF111:
	.ascii	"__sFILE\000"
.LASF154:
	.ascii	"_rand48\000"
.LASF187:
	.ascii	"__fdlibm_xopen\000"
.LASF134:
	.ascii	"_emergency\000"
.LASF37:
	.ascii	"OTYPER\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF21:
	.ascii	"SMPR2\000"
.LASF174:
	.ascii	"_wcrtomb_state\000"
.LASF175:
	.ascii	"_wcsrtombs_state\000"
.LASF36:
	.ascii	"MODER\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF188:
	.ascii	"__fdlibm_posix\000"
.LASF114:
	.ascii	"_lbfsize\000"
.LASF181:
	.ascii	"__locale_t\000"
.LASF18:
	.ascii	"ITM_RxBuffer\000"
.LASF189:
	.ascii	"__fdlib_version\000"
.LASF172:
	.ascii	"_mbrtowc_state\000"
.LASF60:
	.ascii	"AHB1LPENR\000"
.LASF167:
	.ascii	"_wctomb_state\000"
.LASF91:
	.ascii	"__tm_sec\000"
.LASF29:
	.ascii	"JSQR\000"
.LASF74:
	.ascii	"_off_t\000"
.LASF119:
	.ascii	"_close\000"
.LASF2:
	.ascii	"signed char\000"
.LASF46:
	.ascii	"AHB1RSTR\000"
.LASF120:
	.ascii	"_ubuf\000"
.LASF109:
	.ascii	"_base\000"
.LASF93:
	.ascii	"__tm_hour\000"
.LASF77:
	.ascii	"__wch\000"
.LASF149:
	.ascii	"__sf\000"
.LASF100:
	.ascii	"_on_exit_args\000"
.LASF55:
	.ascii	"AHB3ENR\000"
.LASF115:
	.ascii	"_cookie\000"
.LASF148:
	.ascii	"__sglue\000"
.LASF9:
	.ascii	"long int\000"
.LASF51:
	.ascii	"APB2RSTR\000"
.LASF64:
	.ascii	"APB1LPENR\000"
.LASF112:
	.ascii	"_flags\000"
.LASF104:
	.ascii	"_is_cxa\000"
.LASF130:
	.ascii	"_stdin\000"
.LASF186:
	.ascii	"__fdlibm_svid\000"
.LASF140:
	.ascii	"_result_k\000"
.LASF12:
	.ascii	"long long int\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF184:
	.ascii	"double\000"
.LASF34:
	.ascii	"ADC_TypeDef\000"
.LASF144:
	.ascii	"_cvtbuf\000"
.LASF123:
	.ascii	"_offset\000"
.LASF44:
	.ascii	"PLLCFGR\000"
.LASF173:
	.ascii	"_mbsrtowcs_state\000"
.LASF159:
	.ascii	"_strtok_last\000"
.LASF171:
	.ascii	"_mbrlen_state\000"
.LASF107:
	.ascii	"_fns\000"
.LASF38:
	.ascii	"OSPEEDR\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF87:
	.ascii	"_sign\000"
.LASF182:
	.ascii	"_impure_ptr\000"
.LASF132:
	.ascii	"_stderr\000"
.LASF89:
	.ascii	"_Bigint\000"
.LASF85:
	.ascii	"_next\000"
.LASF116:
	.ascii	"_read\000"
.LASF198:
	.ascii	"temp\000"
.LASF90:
	.ascii	"__tm\000"
.LASF78:
	.ascii	"__wchb\000"
.LASF45:
	.ascii	"CFGR\000"
.LASF131:
	.ascii	"_stdout\000"
.LASF143:
	.ascii	"_cvtlen\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF43:
	.ascii	"GPIO_TypeDef\000"
.LASF113:
	.ascii	"_file\000"
.LASF71:
	.ascii	"RCC_TypeDef\000"
.LASF124:
	.ascii	"_data\000"
.LASF152:
	.ascii	"_niobs\000"
.LASF163:
	.ascii	"_rand_next\000"
.LASF146:
	.ascii	"_atexit0\000"
.LASF70:
	.ascii	"PLLI2SCFGR\000"
.LASF169:
	.ascii	"_signal_buf\000"
.LASF160:
	.ascii	"_asctime_buf\000"
.LASF197:
	.ascii	"getADC1Temp\000"
.LASF48:
	.ascii	"AHB3RSTR\000"
.LASF139:
	.ascii	"_result\000"
.LASF193:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF177:
	.ascii	"_nextf\000"
.LASF73:
	.ascii	"_LOCK_T\000"
.LASF145:
	.ascii	"_new\000"
.LASF195:
	.ascii	"/home/emina/msut/msut_project\000"
.LASF65:
	.ascii	"APB2LPENR\000"
.LASF125:
	.ascii	"_lock\000"
.LASF156:
	.ascii	"_mult\000"
.LASF117:
	.ascii	"_write\000"
.LASF22:
	.ascii	"JOFR1\000"
.LASF23:
	.ascii	"JOFR2\000"
.LASF24:
	.ascii	"JOFR3\000"
.LASF178:
	.ascii	"_nmalloc\000"
.LASF196:
	.ascii	"__fdlibm_version\000"
.LASF88:
	.ascii	"_wds\000"
.LASF35:
	.ascii	"ADC_Common_TypeDef\000"
.LASF61:
	.ascii	"AHB2LPENR\000"
.LASF20:
	.ascii	"SMPR1\000"
.LASF95:
	.ascii	"__tm_mon\000"
.LASF105:
	.ascii	"_atexit\000"
.LASF137:
	.ascii	"__sdidinit\000"
.LASF162:
	.ascii	"_gamma_signgam\000"
.LASF50:
	.ascii	"APB1RSTR\000"
.LASF26:
	.ascii	"SQR1\000"
.LASF27:
	.ascii	"SQR2\000"
.LASF28:
	.ascii	"SQR3\000"
.LASF192:
	.ascii	"r_val\000"
.LASF1:
	.ascii	"float\000"
.LASF142:
	.ascii	"_freelist\000"
.LASF49:
	.ascii	"RESERVED0\000"
.LASF52:
	.ascii	"RESERVED1\000"
.LASF56:
	.ascii	"RESERVED2\000"
.LASF59:
	.ascii	"RESERVED3\000"
.LASF63:
	.ascii	"RESERVED4\000"
.LASF66:
	.ascii	"RESERVED5\000"
.LASF68:
	.ascii	"RESERVED6\000"
.LASF191:
	.ascii	"v_sensor\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF153:
	.ascii	"_iobs\000"
.LASF176:
	.ascii	"_h_errno\000"
.LASF82:
	.ascii	"_flock_t\000"
.LASF98:
	.ascii	"__tm_yday\000"
.LASF108:
	.ascii	"__sbuf\000"
.LASF127:
	.ascii	"_flags2\000"
.LASF62:
	.ascii	"AHB3LPENR\000"
.LASF150:
	.ascii	"__FILE\000"
.LASF81:
	.ascii	"_mbstate_t\000"
.LASF126:
	.ascii	"_mbstate\000"
.LASF165:
	.ascii	"_mblen_state\000"
.LASF133:
	.ascii	"_inc\000"
.LASF106:
	.ascii	"_ind\000"
.LASF58:
	.ascii	"APB2ENR\000"
.LASF136:
	.ascii	"_locale\000"
.LASF138:
	.ascii	"__cleanup\000"
.LASF135:
	.ascii	"_unspecified_locale_info\000"
.LASF86:
	.ascii	"_maxwds\000"
.LASF128:
	.ascii	"_reent\000"
.LASF155:
	.ascii	"_seed\000"
.LASF76:
	.ascii	"wint_t\000"
.LASF79:
	.ascii	"__count\000"
.LASF180:
	.ascii	"__lock\000"
.LASF80:
	.ascii	"__value\000"
.LASF118:
	.ascii	"_seek\000"
.LASF97:
	.ascii	"__tm_wday\000"
.LASF75:
	.ascii	"_fpos_t\000"
.LASF194:
	.ascii	"adc.c\000"
.LASF72:
	.ascii	"long double\000"
.LASF96:
	.ascii	"__tm_year\000"
.LASF129:
	.ascii	"_errno\000"
.LASF83:
	.ascii	"char\000"
.LASF122:
	.ascii	"_blksize\000"
.LASF110:
	.ascii	"_size\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF47:
	.ascii	"AHB2RSTR\000"
.LASF202:
	.ascii	"delay_us\000"
.LASF101:
	.ascii	"_fnargs\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF201:
	.ascii	"initADC1\000"
.LASF57:
	.ascii	"APB1ENR\000"
.LASF103:
	.ascii	"_fntypes\000"
.LASF54:
	.ascii	"AHB2ENR\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF157:
	.ascii	"_add\000"
.LASF84:
	.ascii	"__ULong\000"
.LASF170:
	.ascii	"_getdate_err\000"
.LASF199:
	.ascii	"initADC1Temp\000"
.LASF190:
	.ascii	"float32_t\000"
.LASF19:
	.ascii	"SystemCoreClock\000"
.LASF183:
	.ascii	"_global_impure_ptr\000"
.LASF185:
	.ascii	"__fdlibm_ieee\000"
.LASF69:
	.ascii	"SSCGR\000"
.LASF158:
	.ascii	"_unused_rand\000"
.LASF40:
	.ascii	"BSRRL\000"
.LASF67:
	.ascii	"BDCR\000"
.LASF151:
	.ascii	"_glue\000"
.LASF41:
	.ascii	"BSRRH\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF168:
	.ascii	"_l64a_buf\000"
.LASF25:
	.ascii	"JOFR4\000"
.LASF147:
	.ascii	"_sig_func\000"
.LASF30:
	.ascii	"JDR1\000"
.LASF31:
	.ascii	"JDR2\000"
.LASF32:
	.ascii	"JDR3\000"
.LASF33:
	.ascii	"JDR4\000"
.LASF121:
	.ascii	"_nbuf\000"
.LASF179:
	.ascii	"_unused\000"
.LASF53:
	.ascii	"AHB1ENR\000"
.LASF99:
	.ascii	"__tm_isdst\000"
.LASF161:
	.ascii	"_localtime_buf\000"
.LASF92:
	.ascii	"__tm_min\000"
.LASF164:
	.ascii	"_r48\000"
.LASF166:
	.ascii	"_mbtowc_state\000"
.LASF141:
	.ascii	"_p5s\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF94:
	.ascii	"__tm_mday\000"
.LASF200:
	.ascii	"getADC1\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
