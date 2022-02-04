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
	.file	"delay.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	delay_ms
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	delay_ms, %function
delay_ms:
.LFB110:
	.file 1 "delay.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 6 0
	ldr	r1, .L13
	.loc 1 7 0
	ldr	r2, .L13+4
	.loc 1 6 0
	ldr	r3, [r1, #64]
	orr	r3, r3, #64
	.loc 1 4 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 6 0
	str	r3, [r1, #64]
	.loc 1 7 0
	movs	r5, #83
	.loc 1 10 0
	movs	r3, #132
	.loc 1 9 0
	mov	r4, #1000
	.loc 1 7 0
	strh	r5, [r2, #40]	@ movhi
	.loc 1 9 0
	str	r4, [r2, #44]
	.loc 1 10 0
	strh	r3, [r2]	@ movhi
	.loc 1 12 0
	ldrh	r3, [r2, #20]
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 13 0
	ldrh	r3, [r2]
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 14 0
	cbz	r0, .L2
.L3:
	.loc 1 17 0 discriminator 1
	ldrh	r3, [r2, #16]
	lsls	r3, r3, #31
	bpl	.L3
.LVL1:
	.loc 1 19 0
	ldrh	r3, [r2, #16]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 14 0
	subs	r0, r0, #1
.LVL2:
	.loc 1 19 0
	strh	r3, [r2, #16]	@ movhi
	.loc 1 14 0
	bne	.L3
.L2:
	.loc 1 22 0
	ldr	r1, .L13+4
	.loc 1 23 0
	ldr	r2, .L13
	.loc 1 22 0
	ldrh	r3, [r1]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]	@ movhi
	.loc 1 23 0
	ldr	r3, [r2, #64]
	bic	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 24 0
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L14:
	.align	2
.L13:
	.word	1073887232
	.word	1073747968
	.cfi_endproc
.LFE110:
	.size	delay_ms, .-delay_ms
	.align	1
	.p2align 2,,3
	.global	delay_us
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	delay_us, %function
delay_us:
.LFB111:
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3:
	.loc 1 29 0
	ldr	r1, .L26
	.loc 1 30 0
	ldr	r2, .L26+4
	.loc 1 29 0
	ldr	r3, [r1, #64]
	orr	r3, r3, #64
	.loc 1 27 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 29 0
	str	r3, [r1, #64]
	.loc 1 30 0
	movs	r5, #0
	.loc 1 33 0
	movs	r3, #132
	.loc 1 32 0
	movs	r4, #84
	.loc 1 30 0
	strh	r5, [r2, #40]	@ movhi
	.loc 1 32 0
	str	r4, [r2, #44]
	.loc 1 33 0
	strh	r3, [r2]	@ movhi
	.loc 1 36 0
	ldrh	r3, [r2, #20]
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 37 0
	ldrh	r3, [r2]
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 38 0
	cbz	r0, .L16
.L17:
	.loc 1 40 0 discriminator 1
	ldrh	r3, [r2, #16]
	lsls	r3, r3, #31
	bpl	.L17
.LVL4:
	.loc 1 42 0
	ldrh	r3, [r2, #16]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 38 0
	subs	r0, r0, #1
.LVL5:
	.loc 1 42 0
	strh	r3, [r2, #16]	@ movhi
	.loc 1 38 0
	bne	.L17
.L16:
	.loc 1 45 0
	ldr	r1, .L26+4
	.loc 1 46 0
	ldr	r2, .L26
	.loc 1 45 0
	ldrh	r3, [r1]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]	@ movhi
	.loc 1 46 0
	ldr	r3, [r2, #64]
	bic	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 47 0
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L27:
	.align	2
.L26:
	.word	1073887232
	.word	1073747968
	.cfi_endproc
.LFE111:
	.size	delay_us, .-delay_us
	.align	1
	.p2align 2,,3
	.global	initSTOPWATCH
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initSTOPWATCH, %function
initSTOPWATCH:
.LFB112:
	.loc 1 50 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 51 0
	ldr	r1, .L30
	.loc 1 52 0
	ldr	r3, .L30+4
	.loc 1 51 0
	ldr	r2, [r1, #64]
	.loc 1 50 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 51 0
	orr	r2, r2, #8
	str	r2, [r1, #64]
	.loc 1 52 0
	movs	r5, #83
	.loc 1 54 0
	mov	r4, #-1
	.loc 1 57 0
	movs	r2, #0
	.loc 1 55 0
	movs	r0, #132
	.loc 1 52 0
	strh	r5, [r3, #40]	@ movhi
	.loc 1 54 0
	str	r4, [r3, #44]
	.loc 1 55 0
	strh	r0, [r3]	@ movhi
	.loc 1 60 0
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 57 0
	strh	r2, [r3, #4]	@ movhi
	.loc 1 58 0
	str	r2, [r3, #36]
	.loc 1 60 0
	bx	lr
.L31:
	.align	2
.L30:
	.word	1073887232
	.word	1073744896
	.cfi_endproc
.LFE112:
	.size	initSTOPWATCH, .-initSTOPWATCH
	.align	1
	.p2align 2,,3
	.global	startSTOPWATCH
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	startSTOPWATCH, %function
startSTOPWATCH:
.LFB113:
	.loc 1 63 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 64 0
	ldr	r3, .L33
	ldrh	r2, [r3, #20]
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 65 0
	ldrh	r2, [r3]
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 66 0
	bx	lr
.L34:
	.align	2
.L33:
	.word	1073744896
	.cfi_endproc
.LFE113:
	.size	startSTOPWATCH, .-startSTOPWATCH
	.align	1
	.p2align 2,,3
	.global	stopSTOPWATCH
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	stopSTOPWATCH, %function
stopSTOPWATCH:
.LFB114:
	.loc 1 69 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 72 0
	ldr	r2, .L36
	ldr	r0, [r2, #36]
.LVL6:
	.loc 1 73 0
	ldrh	r3, [r2]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]	@ movhi
	.loc 1 75 0
	bx	lr
.L37:
	.align	2
.L36:
	.word	1073744896
	.cfi_endproc
.LFE114:
	.size	stopSTOPWATCH, .-stopSTOPWATCH
	.align	1
	.p2align 2,,3
	.global	initSYSTIMER
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initSYSTIMER, %function
initSYSTIMER:
.LFB115:
	.loc 1 78 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 79 0
	ldr	r1, .L40
	ldr	r2, [r1, #64]
	.loc 1 80 0
	mov	r3, #1073741824
	.loc 1 79 0
	orr	r2, r2, #1
	.loc 1 78 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 83 0
	movs	r0, #132
	.loc 1 79 0
	str	r2, [r1, #64]
	.loc 1 80 0
	movs	r5, #83
	.loc 1 85 0
	movs	r2, #0
	.loc 1 82 0
	mov	r4, #-1
	.loc 1 80 0
	strh	r5, [r3, #40]	@ movhi
	.loc 1 82 0
	str	r4, [r3, #44]
	.loc 1 83 0
	strh	r0, [r3]	@ movhi
	.loc 1 85 0
	strh	r2, [r3, #4]	@ movhi
	.loc 1 86 0
	str	r2, [r3, #36]
	.loc 1 87 0
	ldrh	r2, [r3, #20]
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 88 0
	ldrh	r2, [r3]
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 89 0
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L41:
	.align	2
.L40:
	.word	1073887232
	.cfi_endproc
.LFE115:
	.size	initSYSTIMER, .-initSYSTIMER
	.align	1
	.p2align 2,,3
	.global	getSYSTIMER
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getSYSTIMER, %function
getSYSTIMER:
.LFB116:
	.loc 1 92 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 93 0
	mov	r3, #1073741824
	ldr	r0, [r3, #36]
.LVL7:
	.loc 1 95 0
	bx	lr
	.cfi_endproc
.LFE116:
	.size	getSYSTIMER, .-getSYSTIMER
	.align	1
	.p2align 2,,3
	.global	chk4TimeoutSYSTIMER
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	chk4TimeoutSYSTIMER, %function
chk4TimeoutSYSTIMER:
.LFB117:
	.loc 1 98 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL8:
	.loc 1 99 0
	mov	r3, #1073741824
	ldr	r3, [r3, #36]
.LVL9:
	.loc 1 100 0
	cmp	r3, r0
	bcc	.L44
	.loc 1 102 0
	add	r0, r0, r1
.LVL10:
	.loc 1 103 0
	cmp	r0, r3
	ite	ls
	movls	r0, #0
	movhi	r0, #1
	bx	lr
.LVL11:
.L44:
.LBB2:
	.loc 1 109 0
	mvns	r0, r0
.LVL12:
	.loc 1 110 0
	add	r0, r0, r3
.LVL13:
.LBE2:
	.loc 1 103 0
	cmp	r0, r1
	ite	cs
	movcs	r0, #0
	movcc	r0, #1
	.loc 1 115 0
	bx	lr
	.cfi_endproc
.LFE117:
	.size	chk4TimeoutSYSTIMER, .-chk4TimeoutSYSTIMER
.Letext0:
	.file 2 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../sdk/core_cm4.h"
	.file 5 "../sdk/system_stm32f4xx.h"
	.file 6 "../sdk/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x59a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0xc
	.4byte	.LASF78
	.4byte	.LASF79
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
	.byte	0x2b
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
	.byte	0x39
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
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
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.4byte	0x45
	.uleb128 0x5
	.4byte	0xa2
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x5
	.4byte	0xb2
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.4byte	0x69
	.uleb128 0x5
	.4byte	0xc2
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x51b
	.4byte	0xbd
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x35
	.4byte	0xc2
	.uleb128 0x8
	.4byte	0xc2
	.4byte	0xf9
	.uleb128 0x9
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x88
	.byte	0x6
	.2byte	0x2dd
	.4byte	0x288
	.uleb128 0xb
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x2df
	.4byte	0xcd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x2e0
	.4byte	0xcd
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x2e1
	.4byte	0xcd
	.byte	0x8
	.uleb128 0xb
	.ascii	"CIR\000"
	.byte	0x6
	.2byte	0x2e2
	.4byte	0xcd
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x2e3
	.4byte	0xcd
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x2e4
	.4byte	0xcd
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x2e5
	.4byte	0xcd
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x2e6
	.4byte	0xc2
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x2e7
	.4byte	0xcd
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x2e8
	.4byte	0xcd
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x2e9
	.4byte	0xe9
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x2ea
	.4byte	0xcd
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x2eb
	.4byte	0xcd
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x2ec
	.4byte	0xcd
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x2ed
	.4byte	0xc2
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x2ee
	.4byte	0xcd
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x2ef
	.4byte	0xcd
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x2f0
	.4byte	0xe9
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x2f1
	.4byte	0xcd
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x2f2
	.4byte	0xcd
	.byte	0x54
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x2f3
	.4byte	0xcd
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x2f4
	.4byte	0xc2
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x2f5
	.4byte	0xcd
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x2f6
	.4byte	0xcd
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x2f7
	.4byte	0xe9
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x2f8
	.4byte	0xcd
	.byte	0x70
	.uleb128 0xb
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x2f9
	.4byte	0xcd
	.byte	0x74
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x2fa
	.4byte	0xe9
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2fb
	.4byte	0xcd
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x2fc
	.4byte	0xcd
	.byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2fd
	.4byte	0xf9
	.uleb128 0xa
	.byte	0x54
	.byte	0x6
	.2byte	0x369
	.4byte	0x470
	.uleb128 0xb
	.ascii	"CR1\000"
	.byte	0x6
	.2byte	0x36b
	.4byte	0xad
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x36c
	.4byte	0xa2
	.byte	0x2
	.uleb128 0xb
	.ascii	"CR2\000"
	.byte	0x6
	.2byte	0x36d
	.4byte	0xad
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x36e
	.4byte	0xa2
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x36f
	.4byte	0xad
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x370
	.4byte	0xa2
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x371
	.4byte	0xad
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x372
	.4byte	0xa2
	.byte	0xe
	.uleb128 0xb
	.ascii	"SR\000"
	.byte	0x6
	.2byte	0x373
	.4byte	0xad
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x374
	.4byte	0xa2
	.byte	0x12
	.uleb128 0xb
	.ascii	"EGR\000"
	.byte	0x6
	.2byte	0x375
	.4byte	0xad
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x376
	.4byte	0xa2
	.byte	0x16
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x377
	.4byte	0xad
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x378
	.4byte	0xa2
	.byte	0x1a
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x379
	.4byte	0xad
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x37a
	.4byte	0xa2
	.byte	0x1e
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x37b
	.4byte	0xad
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x37c
	.4byte	0xa2
	.byte	0x22
	.uleb128 0xb
	.ascii	"CNT\000"
	.byte	0x6
	.2byte	0x37d
	.4byte	0xcd
	.byte	0x24
	.uleb128 0xb
	.ascii	"PSC\000"
	.byte	0x6
	.2byte	0x37e
	.4byte	0xad
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x37f
	.4byte	0xa2
	.byte	0x2a
	.uleb128 0xb
	.ascii	"ARR\000"
	.byte	0x6
	.2byte	0x380
	.4byte	0xcd
	.byte	0x2c
	.uleb128 0xb
	.ascii	"RCR\000"
	.byte	0x6
	.2byte	0x381
	.4byte	0xad
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x382
	.4byte	0xa2
	.byte	0x32
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x383
	.4byte	0xcd
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x384
	.4byte	0xcd
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x385
	.4byte	0xcd
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x386
	.4byte	0xcd
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x387
	.4byte	0xad
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x388
	.4byte	0xa2
	.byte	0x46
	.uleb128 0xb
	.ascii	"DCR\000"
	.byte	0x6
	.2byte	0x389
	.4byte	0xad
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x38a
	.4byte	0xa2
	.byte	0x4a
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x38b
	.4byte	0xad
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x38c
	.4byte	0xa2
	.byte	0x4e
	.uleb128 0xb
	.ascii	"OR\000"
	.byte	0x6
	.2byte	0x38d
	.4byte	0xad
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x38e
	.4byte	0xa2
	.byte	0x52
	.byte	0
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x38f
	.4byte	0x294
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x1
	.byte	0x61
	.4byte	0x97
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d8
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x1
	.byte	0x61
	.4byte	0xc2
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.byte	0x61
	.4byte	0xc2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.byte	0x63
	.4byte	0xc2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x1
	.byte	0x6d
	.4byte	0xc2
	.4byte	.LLST3
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x1
	.byte	0x5b
	.4byte	0xc2
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ff
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.byte	0x5d
	.4byte	0xc2
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x1
	.byte	0x44
	.4byte	0xc2
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x537
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.byte	0x46
	.4byte	0xc2
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x1
	.byte	0x31
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.byte	0x1a
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57d
	.uleb128 0x16
	.ascii	"us\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0xc2
	.4byte	.LLST1
	.byte	0
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x1
	.byte	0x3
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.ascii	"ms\000"
	.byte	0x1
	.byte	0x3
	.4byte	0xc2
	.4byte	.LLST0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x50
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
.LASF35:
	.ascii	"AHB1LPENR\000"
.LASF52:
	.ascii	"CCER\000"
.LASF81:
	.ascii	"delay_ms\000"
.LASF25:
	.ascii	"APB1RSTR\000"
.LASF29:
	.ascii	"AHB2ENR\000"
.LASF63:
	.ascii	"DMAR\000"
.LASF49:
	.ascii	"CCMR1\000"
.LASF50:
	.ascii	"CCMR2\000"
.LASF2:
	.ascii	"short int\000"
.LASF42:
	.ascii	"BDCR\000"
.LASF45:
	.ascii	"PLLI2SCFGR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF75:
	.ascii	"startSTOPWATCH\000"
.LASF80:
	.ascii	"delay_us\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF44:
	.ascii	"SSCGR\000"
.LASF37:
	.ascii	"AHB3LPENR\000"
.LASF20:
	.ascii	"CFGR\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF32:
	.ascii	"APB1ENR\000"
.LASF78:
	.ascii	"delay.c\000"
.LASF30:
	.ascii	"AHB3ENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF56:
	.ascii	"CCR1\000"
.LASF7:
	.ascii	"long int\000"
.LASF58:
	.ascii	"CCR3\000"
.LASF59:
	.ascii	"CCR4\000"
.LASF46:
	.ascii	"RCC_TypeDef\000"
.LASF72:
	.ascii	"getSYSTIMER\000"
.LASF68:
	.ascii	"period\000"
.LASF26:
	.ascii	"APB2RSTR\000"
.LASF77:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF64:
	.ascii	"RESERVED13\000"
.LASF66:
	.ascii	"TIM_TypeDef\000"
.LASF47:
	.ascii	"SMCR\000"
.LASF57:
	.ascii	"CCR2\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF55:
	.ascii	"RESERVED10\000"
.LASF61:
	.ascii	"RESERVED11\000"
.LASF62:
	.ascii	"RESERVED12\000"
.LASF33:
	.ascii	"APB2ENR\000"
.LASF65:
	.ascii	"RESERVED14\000"
.LASF73:
	.ascii	"stopSTOPWATCH\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF74:
	.ascii	"initSYSTIMER\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF22:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF69:
	.ascii	"time\000"
.LASF48:
	.ascii	"DIER\000"
.LASF19:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF39:
	.ascii	"APB1LPENR\000"
.LASF60:
	.ascii	"BDTR\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF36:
	.ascii	"AHB2LPENR\000"
.LASF24:
	.ascii	"RESERVED0\000"
.LASF27:
	.ascii	"RESERVED1\000"
.LASF31:
	.ascii	"RESERVED2\000"
.LASF34:
	.ascii	"RESERVED3\000"
.LASF38:
	.ascii	"RESERVED4\000"
.LASF41:
	.ascii	"RESERVED5\000"
.LASF43:
	.ascii	"RESERVED6\000"
.LASF51:
	.ascii	"RESERVED7\000"
.LASF53:
	.ascii	"RESERVED8\000"
.LASF54:
	.ascii	"RESERVED9\000"
.LASF28:
	.ascii	"AHB1ENR\000"
.LASF70:
	.ascii	"utmp32\000"
.LASF67:
	.ascii	"btime\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF76:
	.ascii	"initSTOPWATCH\000"
.LASF71:
	.ascii	"chk4TimeoutSYSTIMER\000"
.LASF21:
	.ascii	"AHB1RSTR\000"
.LASF23:
	.ascii	"AHB3RSTR\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF40:
	.ascii	"APB2LPENR\000"
.LASF79:
	.ascii	"/home/emina/msut/msut_project\000"
.LASF3:
	.ascii	"__uint8_t\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
