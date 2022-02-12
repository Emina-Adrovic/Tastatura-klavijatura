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
	.loc 1 6 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 8 0
	ldr	r1, .L13
	.loc 1 9 0
	ldr	r2, .L13+4
	.loc 1 8 0
	ldr	r3, [r1, #64]
	orr	r3, r3, #64
	.loc 1 6 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 8 0
	str	r3, [r1, #64]
	.loc 1 9 0
	movs	r5, #83
	.loc 1 12 0
	movs	r3, #132
	.loc 1 11 0
	mov	r4, #1000
	.loc 1 9 0
	strh	r5, [r2, #40]	@ movhi
	.loc 1 11 0
	str	r4, [r2, #44]
	.loc 1 12 0
	strh	r3, [r2]	@ movhi
	.loc 1 14 0
	ldrh	r3, [r2, #20]
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 15 0
	ldrh	r3, [r2]
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 16 0
	cbz	r0, .L2
.L3:
	.loc 1 19 0 discriminator 1
	ldrh	r3, [r2, #16]
	lsls	r3, r3, #31
	bpl	.L3
.LVL1:
	.loc 1 21 0
	ldrh	r3, [r2, #16]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 16 0
	subs	r0, r0, #1
.LVL2:
	.loc 1 21 0
	strh	r3, [r2, #16]	@ movhi
	.loc 1 16 0
	bne	.L3
.L2:
	.loc 1 24 0
	ldr	r1, .L13+4
	.loc 1 25 0
	ldr	r2, .L13
	.loc 1 24 0
	ldrh	r3, [r1]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]	@ movhi
	.loc 1 25 0
	ldr	r3, [r2, #64]
	bic	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 26 0
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
	.loc 1 29 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3:
	.loc 1 31 0
	ldr	r1, .L26
	.loc 1 32 0
	ldr	r2, .L26+4
	.loc 1 31 0
	ldr	r3, [r1, #64]
	orr	r3, r3, #64
	.loc 1 29 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 31 0
	str	r3, [r1, #64]
	.loc 1 32 0
	movs	r5, #0
	.loc 1 35 0
	movs	r3, #132
	.loc 1 34 0
	movs	r4, #84
	.loc 1 32 0
	strh	r5, [r2, #40]	@ movhi
	.loc 1 34 0
	str	r4, [r2, #44]
	.loc 1 35 0
	strh	r3, [r2]	@ movhi
	.loc 1 38 0
	ldrh	r3, [r2, #20]
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 39 0
	ldrh	r3, [r2]
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 40 0
	cbz	r0, .L16
.L17:
	.loc 1 42 0 discriminator 1
	ldrh	r3, [r2, #16]
	lsls	r3, r3, #31
	bpl	.L17
.LVL4:
	.loc 1 44 0
	ldrh	r3, [r2, #16]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 40 0
	subs	r0, r0, #1
.LVL5:
	.loc 1 44 0
	strh	r3, [r2, #16]	@ movhi
	.loc 1 40 0
	bne	.L17
.L16:
	.loc 1 47 0
	ldr	r1, .L26+4
	.loc 1 48 0
	ldr	r2, .L26
	.loc 1 47 0
	ldrh	r3, [r1]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]	@ movhi
	.loc 1 48 0
	ldr	r3, [r2, #64]
	bic	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 49 0
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
	.loc 1 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 53 0
	ldr	r1, .L30
	.loc 1 54 0
	ldr	r3, .L30+4
	.loc 1 53 0
	ldr	r2, [r1, #64]
	.loc 1 52 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 53 0
	orr	r2, r2, #8
	str	r2, [r1, #64]
	.loc 1 54 0
	movs	r5, #83
	.loc 1 56 0
	mov	r4, #-1
	.loc 1 59 0
	movs	r2, #0
	.loc 1 57 0
	movs	r0, #132
	.loc 1 54 0
	strh	r5, [r3, #40]	@ movhi
	.loc 1 56 0
	str	r4, [r3, #44]
	.loc 1 57 0
	strh	r0, [r3]	@ movhi
	.loc 1 62 0
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 59 0
	strh	r2, [r3, #4]	@ movhi
	.loc 1 60 0
	str	r2, [r3, #36]
	.loc 1 62 0
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
	.loc 1 65 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 66 0
	ldr	r3, .L33
	ldrh	r2, [r3, #20]
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 67 0
	ldrh	r2, [r3]
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 68 0
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
	.loc 1 71 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 74 0
	ldr	r2, .L36
	ldr	r0, [r2, #36]
.LVL6:
	.loc 1 75 0
	ldrh	r3, [r2]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]	@ movhi
	.loc 1 77 0
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
	.loc 1 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 81 0
	ldr	r1, .L40
	ldr	r2, [r1, #64]
	.loc 1 82 0
	mov	r3, #1073741824
	.loc 1 81 0
	orr	r2, r2, #1
	.loc 1 80 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 85 0
	movs	r0, #132
	.loc 1 81 0
	str	r2, [r1, #64]
	.loc 1 82 0
	movs	r5, #83
	.loc 1 87 0
	movs	r2, #0
	.loc 1 84 0
	mov	r4, #-1
	.loc 1 82 0
	strh	r5, [r3, #40]	@ movhi
	.loc 1 84 0
	str	r4, [r3, #44]
	.loc 1 85 0
	strh	r0, [r3]	@ movhi
	.loc 1 87 0
	strh	r2, [r3, #4]	@ movhi
	.loc 1 88 0
	str	r2, [r3, #36]
	.loc 1 89 0
	ldrh	r2, [r3, #20]
	orr	r2, r2, #1
	strh	r2, [r3, #20]	@ movhi
	.loc 1 90 0
	ldrh	r2, [r3]
	orr	r2, r2, #1
	strh	r2, [r3]	@ movhi
	.loc 1 91 0
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
	.loc 1 94 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 95 0
	mov	r3, #1073741824
	ldr	r0, [r3, #36]
.LVL7:
	.loc 1 97 0
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
	.loc 1 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL8:
	.loc 1 101 0
	mov	r3, #1073741824
	ldr	r3, [r3, #36]
.LVL9:
	.loc 1 102 0
	cmp	r3, r0
	bcc	.L44
	.loc 1 104 0
	add	r0, r0, r1
.LVL10:
	.loc 1 105 0
	cmp	r0, r3
	ite	ls
	movls	r0, #0
	movhi	r0, #1
	bx	lr
.LVL11:
.L44:
.LBB6:
	.loc 1 111 0
	mvns	r0, r0
.LVL12:
	.loc 1 112 0
	add	r0, r0, r3
.LVL13:
.LBE6:
	.loc 1 105 0
	cmp	r0, r1
	ite	cs
	movcs	r0, #0
	movcc	r0, #1
	.loc 1 117 0
	bx	lr
	.cfi_endproc
.LFE117:
	.size	chk4TimeoutSYSTIMER, .-chk4TimeoutSYSTIMER
	.align	1
	.p2align 2,,3
	.global	initSYSTIM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initSYSTIM, %function
initSYSTIM:
.LFB118:
	.loc 1 120 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 121 0
	ldr	r1, .L48
	.loc 1 122 0
	ldr	r3, .L48+4
	.loc 1 121 0
	ldr	r2, [r1, #64]
.LBB7:
.LBB8:
	.file 2 "../sdk/core_cm4.h"
	.loc 2 1162 0
	ldr	r0, .L48+8
.LBE8:
.LBE7:
	.loc 1 121 0
	orr	r2, r2, #32
	.loc 1 120 0
	push	{r4, r5}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 121 0
	str	r2, [r1, #64]
	.loc 1 122 0
	movs	r5, #83
	.loc 1 127 0
	movs	r2, #0
	.loc 1 124 0
	mov	r4, #1000
	.loc 1 125 0
	movs	r1, #132
	.loc 1 122 0
	strh	r5, [r3, #40]	@ movhi
	.loc 1 124 0
	str	r4, [r3, #44]
	.loc 1 125 0
	strh	r1, [r3]	@ movhi
	.loc 1 127 0
	strh	r2, [r3, #4]	@ movhi
	.loc 1 128 0
	str	r2, [r3, #36]
	.loc 1 129 0
	ldrh	r1, [r3, #20]
	.loc 1 130 0
	movs	r5, #1
	.loc 1 129 0
	orrs	r1, r1, r5
.LBB10:
.LBB11:
	.loc 2 1075 0
	mov	r4, #8388608
.LBE11:
.LBE10:
	.loc 1 129 0
	strh	r1, [r3, #20]	@ movhi
	.loc 1 130 0
	strh	r5, [r3, #12]	@ movhi
.LVL14:
.LBB13:
.LBB9:
	.loc 2 1162 0
	strb	r2, [r0, #823]
.LVL15:
.LBE9:
.LBE13:
.LBB14:
.LBB12:
	.loc 2 1075 0
	str	r4, [r0, #4]
.LVL16:
.LBE12:
.LBE14:
	.loc 1 134 0
	ldrh	r2, [r3]
	orrs	r2, r2, r5
	strh	r2, [r3]	@ movhi
	.loc 1 135 0
	pop	{r4, r5}
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L49:
	.align	2
.L48:
	.word	1073887232
	.word	1073746944
	.word	-536813312
	.cfi_endproc
.LFE118:
	.size	initSYSTIM, .-initSYSTIM
	.align	1
	.p2align 2,,3
	.global	TIM7_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	TIM7_IRQHandler, %function
TIM7_IRQHandler:
.LFB119:
	.loc 1 138 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 139 0
	ldr	r3, .L55
	ldrh	r2, [r3, #16]
	lsls	r2, r2, #31
	bpl	.L50
	.loc 1 141 0
	ldr	r1, .L55+4
	ldr	r2, [r1]
	.loc 1 142 0
	movs	r0, #0
	.loc 1 141 0
	adds	r2, r2, #1
	str	r2, [r1]
	.loc 1 142 0
	strh	r0, [r3, #16]	@ movhi
.L50:
	.loc 1 144 0
	bx	lr
.L56:
	.align	2
.L55:
	.word	1073746944
	.word	.LANCHOR0
	.cfi_endproc
.LFE119:
	.size	TIM7_IRQHandler, .-TIM7_IRQHandler
	.align	1
	.p2align 2,,3
	.global	getSYSTIM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getSYSTIM, %function
getSYSTIM:
.LFB120:
	.loc 1 147 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 148 0
	ldr	r3, .L58
	ldr	r0, [r3]
	.loc 1 149 0
	bx	lr
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.cfi_endproc
.LFE120:
	.size	getSYSTIM, .-getSYSTIM
	.align	1
	.p2align 2,,3
	.global	chk4TimeoutSYSTIM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	chk4TimeoutSYSTIM, %function
chk4TimeoutSYSTIM:
.LFB121:
	.loc 1 152 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL17:
	.loc 1 153 0
	ldr	r3, .L63
	ldr	r3, [r3]
.LVL18:
	.loc 1 154 0
	cmp	r3, r0
	bcc	.L61
	.loc 1 156 0
	add	r0, r0, r1
.LVL19:
	.loc 1 157 0
	cmp	r0, r3
	ite	ls
	movls	r0, #0
	movhi	r0, #1
	bx	lr
.LVL20:
.L61:
.LBB15:
	.loc 1 163 0
	mvns	r0, r0
.LVL21:
	.loc 1 164 0
	add	r0, r0, r3
.LVL22:
.LBE15:
	.loc 1 157 0
	cmp	r0, r1
	ite	cs
	movcs	r0, #0
	movcc	r0, #1
	.loc 1 169 0
	bx	lr
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.cfi_endproc
.LFE121:
	.size	chk4TimeoutSYSTIM, .-chk4TimeoutSYSTIM
	.global	g_tim7_val
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_tim7_val, %object
	.size	g_tim7_val, 4
g_tim7_val:
	.space	4
	.text
.Letext0:
	.file 3 "../sdk/stm32f4xx.h"
	.file 4 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "../sdk/system_stm32f4xx.h"
	.file 7 "delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xbc9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF199
	.byte	0xc
	.4byte	.LASF200
	.4byte	.LASF201
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0x5
	.byte	0x1
	.4byte	0x253
	.byte	0x3
	.byte	0x91
	.4byte	0x253
	.uleb128 0x3
	.4byte	.LASF0
	.sleb128 -14
	.uleb128 0x3
	.4byte	.LASF1
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF2
	.sleb128 -11
	.uleb128 0x3
	.4byte	.LASF3
	.sleb128 -10
	.uleb128 0x3
	.4byte	.LASF4
	.sleb128 -5
	.uleb128 0x3
	.4byte	.LASF5
	.sleb128 -4
	.uleb128 0x3
	.4byte	.LASF6
	.sleb128 -2
	.uleb128 0x3
	.4byte	.LASF7
	.sleb128 -1
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0xf
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x11
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x13
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x15
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x16
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x17
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x19
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x1a
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x1b
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x1d
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x1e
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x1f
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x21
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x22
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x23
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x25
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x26
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x27
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x29
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x2a
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x2b
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x2d
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x2e
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x2f
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x30
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x31
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x32
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x33
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x35
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x36
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x37
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x38
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x39
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x3a
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x3b
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x3c
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x3d
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x3e
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x3f
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x40
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x41
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x42
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x43
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x45
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x46
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x47
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x49
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x4a
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x4b
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0x4c
	.uleb128 0x4
	.4byte	.LASF85
	.byte	0x4d
	.uleb128 0x4
	.4byte	.LASF86
	.byte	0x4e
	.uleb128 0x4
	.4byte	.LASF87
	.byte	0x4f
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0x51
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF92
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x3
	.byte	0xef
	.4byte	0x25
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x4
	.byte	0x2b
	.4byte	0x270
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF94
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0x4
	.byte	0x39
	.4byte	0x289
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF96
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x4
	.byte	0x4d
	.4byte	0x29b
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF98
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x4
	.byte	0x4f
	.4byte	0x2ad
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF100
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF101
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF102
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF103
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0x5
	.byte	0x18
	.4byte	0x265
	.uleb128 0x8
	.4byte	0x2d0
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x5
	.byte	0x24
	.4byte	0x27e
	.uleb128 0x8
	.4byte	0x2e0
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0x5
	.byte	0x2c
	.4byte	0x290
	.uleb128 0x8
	.4byte	0x2f0
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0x5
	.byte	0x30
	.4byte	0x2a2
	.uleb128 0x8
	.4byte	0x300
	.uleb128 0x9
	.4byte	0x30b
	.uleb128 0xa
	.2byte	0xe04
	.byte	0x2
	.2byte	0x130
	.4byte	0x3d1
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x132
	.4byte	0x3e1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x133
	.4byte	0x3e6
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x134
	.4byte	0x3e1
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x135
	.4byte	0x3e6
	.byte	0xa0
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x136
	.4byte	0x3e1
	.2byte	0x100
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x137
	.4byte	0x3e6
	.2byte	0x120
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x138
	.4byte	0x3e1
	.2byte	0x180
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x139
	.4byte	0x3e6
	.2byte	0x1a0
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x13a
	.4byte	0x3e1
	.2byte	0x200
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x13b
	.4byte	0x3f6
	.2byte	0x220
	.uleb128 0xd
	.ascii	"IP\000"
	.byte	0x2
	.2byte	0x13c
	.4byte	0x416
	.2byte	0x300
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x13d
	.4byte	0x41b
	.2byte	0x3f0
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x13e
	.4byte	0x30b
	.2byte	0xe00
	.byte	0
	.uleb128 0xe
	.4byte	0x30b
	.4byte	0x3e1
	.uleb128 0xf
	.4byte	0x2c9
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x3d1
	.uleb128 0xe
	.4byte	0x300
	.4byte	0x3f6
	.uleb128 0xf
	.4byte	0x2c9
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	0x300
	.4byte	0x406
	.uleb128 0xf
	.4byte	0x2c9
	.byte	0x37
	.byte	0
	.uleb128 0xe
	.4byte	0x2db
	.4byte	0x416
	.uleb128 0xf
	.4byte	0x2c9
	.byte	0xef
	.byte	0
	.uleb128 0x8
	.4byte	0x406
	.uleb128 0xe
	.4byte	0x300
	.4byte	0x42c
	.uleb128 0x10
	.4byte	0x2c9
	.2byte	0x283
	.byte	0
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x2
	.2byte	0x13f
	.4byte	0x315
	.uleb128 0x12
	.byte	0x8c
	.byte	0x2
	.2byte	0x150
	.4byte	0x553
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x152
	.4byte	0x310
	.byte	0
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x153
	.4byte	0x30b
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x154
	.4byte	0x30b
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x155
	.4byte	0x30b
	.byte	0xc
	.uleb128 0x13
	.ascii	"SCR\000"
	.byte	0x2
	.2byte	0x156
	.4byte	0x30b
	.byte	0x10
	.uleb128 0x13
	.ascii	"CCR\000"
	.byte	0x2
	.2byte	0x157
	.4byte	0x30b
	.byte	0x14
	.uleb128 0x13
	.ascii	"SHP\000"
	.byte	0x2
	.2byte	0x158
	.4byte	0x563
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x159
	.4byte	0x30b
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x15a
	.4byte	0x30b
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x15b
	.4byte	0x30b
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x15c
	.4byte	0x30b
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x15d
	.4byte	0x30b
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x15e
	.4byte	0x30b
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x15f
	.4byte	0x30b
	.byte	0x3c
	.uleb128 0x13
	.ascii	"PFR\000"
	.byte	0x2
	.2byte	0x160
	.4byte	0x57d
	.byte	0x40
	.uleb128 0x13
	.ascii	"DFR\000"
	.byte	0x2
	.2byte	0x161
	.4byte	0x310
	.byte	0x48
	.uleb128 0x13
	.ascii	"ADR\000"
	.byte	0x2
	.2byte	0x162
	.4byte	0x310
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x163
	.4byte	0x597
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x2
	.2byte	0x164
	.4byte	0x5b1
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x165
	.4byte	0x5b6
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x2
	.2byte	0x166
	.4byte	0x30b
	.byte	0x88
	.byte	0
	.uleb128 0xe
	.4byte	0x2db
	.4byte	0x563
	.uleb128 0xf
	.4byte	0x2c9
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0x553
	.uleb128 0xe
	.4byte	0x310
	.4byte	0x578
	.uleb128 0xf
	.4byte	0x2c9
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x568
	.uleb128 0x8
	.4byte	0x578
	.uleb128 0xe
	.4byte	0x310
	.4byte	0x592
	.uleb128 0xf
	.4byte	0x2c9
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x582
	.uleb128 0x8
	.4byte	0x592
	.uleb128 0xe
	.4byte	0x310
	.4byte	0x5ac
	.uleb128 0xf
	.4byte	0x2c9
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x59c
	.uleb128 0x8
	.4byte	0x5ac
	.uleb128 0xe
	.4byte	0x300
	.4byte	0x5c6
	.uleb128 0xf
	.4byte	0x2c9
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0x2
	.2byte	0x167
	.4byte	0x438
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0x2
	.2byte	0x51b
	.4byte	0x2fb
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x6
	.byte	0x35
	.4byte	0x300
	.uleb128 0xe
	.4byte	0x300
	.4byte	0x5f9
	.uleb128 0xf
	.4byte	0x2c9
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0x88
	.byte	0x3
	.2byte	0x2dd
	.4byte	0x788
	.uleb128 0x13
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x2df
	.4byte	0x30b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x2e0
	.4byte	0x30b
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x3
	.2byte	0x2e1
	.4byte	0x30b
	.byte	0x8
	.uleb128 0x13
	.ascii	"CIR\000"
	.byte	0x3
	.2byte	0x2e2
	.4byte	0x30b
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x3
	.2byte	0x2e3
	.4byte	0x30b
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x3
	.2byte	0x2e4
	.4byte	0x30b
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x3
	.2byte	0x2e5
	.4byte	0x30b
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x3
	.2byte	0x2e6
	.4byte	0x300
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x3
	.2byte	0x2e7
	.4byte	0x30b
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x3
	.2byte	0x2e8
	.4byte	0x30b
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x2e9
	.4byte	0x5e9
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x3
	.2byte	0x2ea
	.4byte	0x30b
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x3
	.2byte	0x2eb
	.4byte	0x30b
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x2ec
	.4byte	0x30b
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x3
	.2byte	0x2ed
	.4byte	0x300
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x2ee
	.4byte	0x30b
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0x3
	.2byte	0x2ef
	.4byte	0x30b
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x2f0
	.4byte	0x5e9
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x3
	.2byte	0x2f1
	.4byte	0x30b
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x2f2
	.4byte	0x30b
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x2f3
	.4byte	0x30b
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x3
	.2byte	0x2f4
	.4byte	0x300
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x2f5
	.4byte	0x30b
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x3
	.2byte	0x2f6
	.4byte	0x30b
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x2f7
	.4byte	0x5e9
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x2f8
	.4byte	0x30b
	.byte	0x70
	.uleb128 0x13
	.ascii	"CSR\000"
	.byte	0x3
	.2byte	0x2f9
	.4byte	0x30b
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x3
	.2byte	0x2fa
	.4byte	0x5e9
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0x3
	.2byte	0x2fb
	.4byte	0x30b
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x2fc
	.4byte	0x30b
	.byte	0x84
	.byte	0
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0x3
	.2byte	0x2fd
	.4byte	0x5f9
	.uleb128 0x12
	.byte	0x54
	.byte	0x3
	.2byte	0x369
	.4byte	0x970
	.uleb128 0x13
	.ascii	"CR1\000"
	.byte	0x3
	.2byte	0x36b
	.4byte	0x2eb
	.byte	0
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x3
	.2byte	0x36c
	.4byte	0x2e0
	.byte	0x2
	.uleb128 0x13
	.ascii	"CR2\000"
	.byte	0x3
	.2byte	0x36d
	.4byte	0x2eb
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x36e
	.4byte	0x2e0
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0x3
	.2byte	0x36f
	.4byte	0x2eb
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x3
	.2byte	0x370
	.4byte	0x2e0
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0x3
	.2byte	0x371
	.4byte	0x2eb
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x372
	.4byte	0x2e0
	.byte	0xe
	.uleb128 0x13
	.ascii	"SR\000"
	.byte	0x3
	.2byte	0x373
	.4byte	0x2eb
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x3
	.2byte	0x374
	.4byte	0x2e0
	.byte	0x12
	.uleb128 0x13
	.ascii	"EGR\000"
	.byte	0x3
	.2byte	0x375
	.4byte	0x2eb
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x376
	.4byte	0x2e0
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0x3
	.2byte	0x377
	.4byte	0x2eb
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x3
	.2byte	0x378
	.4byte	0x2e0
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x379
	.4byte	0x2eb
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x37a
	.4byte	0x2e0
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x3
	.2byte	0x37b
	.4byte	0x2eb
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0x3
	.2byte	0x37c
	.4byte	0x2e0
	.byte	0x22
	.uleb128 0x13
	.ascii	"CNT\000"
	.byte	0x3
	.2byte	0x37d
	.4byte	0x30b
	.byte	0x24
	.uleb128 0x13
	.ascii	"PSC\000"
	.byte	0x3
	.2byte	0x37e
	.4byte	0x2eb
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0x3
	.2byte	0x37f
	.4byte	0x2e0
	.byte	0x2a
	.uleb128 0x13
	.ascii	"ARR\000"
	.byte	0x3
	.2byte	0x380
	.4byte	0x30b
	.byte	0x2c
	.uleb128 0x13
	.ascii	"RCR\000"
	.byte	0x3
	.2byte	0x381
	.4byte	0x2eb
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0x3
	.2byte	0x382
	.4byte	0x2e0
	.byte	0x32
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0x3
	.2byte	0x383
	.4byte	0x30b
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0x3
	.2byte	0x384
	.4byte	0x30b
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0x3
	.2byte	0x385
	.4byte	0x30b
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0x3
	.2byte	0x386
	.4byte	0x30b
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0x3
	.2byte	0x387
	.4byte	0x2eb
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0x3
	.2byte	0x388
	.4byte	0x2e0
	.byte	0x46
	.uleb128 0x13
	.ascii	"DCR\000"
	.byte	0x3
	.2byte	0x389
	.4byte	0x2eb
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0x3
	.2byte	0x38a
	.4byte	0x2e0
	.byte	0x4a
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0x3
	.2byte	0x38b
	.4byte	0x2eb
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0x3
	.2byte	0x38c
	.4byte	0x2e0
	.byte	0x4e
	.uleb128 0x13
	.ascii	"OR\000"
	.byte	0x3
	.2byte	0x38d
	.4byte	0x2eb
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x3
	.2byte	0x38e
	.4byte	0x2e0
	.byte	0x52
	.byte	0
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0x3
	.2byte	0x38f
	.4byte	0x794
	.uleb128 0x15
	.4byte	.LASF181
	.byte	0x7
	.byte	0x1c
	.4byte	0x30b
	.uleb128 0x16
	.4byte	0x97c
	.byte	0x1
	.byte	0x3
	.uleb128 0x5
	.byte	0x3
	.4byte	g_tim7_val
	.uleb128 0x17
	.4byte	.LASF186
	.byte	0x1
	.byte	0x97
	.4byte	0x2d0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f0
	.uleb128 0x18
	.4byte	.LASF182
	.byte	0x1
	.byte	0x97
	.4byte	0x300
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x1
	.byte	0x97
	.4byte	0x300
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1a
	.4byte	.LASF184
	.byte	0x1
	.byte	0x99
	.4byte	0x300
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.uleb128 0x1c
	.4byte	.LASF185
	.byte	0x1
	.byte	0xa3
	.4byte	0x300
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF202
	.byte	0x1
	.byte	0x92
	.4byte	0x300
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF189
	.byte	0x1
	.byte	0x89
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF194
	.byte	0x1
	.byte	0x77
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6b
	.uleb128 0x20
	.4byte	0xb90
	.4byte	.LBB7
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x84
	.4byte	0xa51
	.uleb128 0x21
	.4byte	0xba9
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	0xb9d
	.4byte	.LLST5
	.byte	0
	.uleb128 0x22
	.4byte	0xbb6
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x85
	.uleb128 0x21
	.4byte	0xbbf
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF187
	.byte	0x1
	.byte	0x63
	.4byte	0x2d0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac7
	.uleb128 0x18
	.4byte	.LASF182
	.byte	0x1
	.byte	0x63
	.4byte	0x300
	.4byte	.LLST2
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x1
	.byte	0x63
	.4byte	0x300
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1a
	.4byte	.LASF184
	.byte	0x1
	.byte	0x65
	.4byte	0x300
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1c
	.4byte	.LASF185
	.byte	0x1
	.byte	0x6f
	.4byte	0x300
	.4byte	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF188
	.byte	0x1
	.byte	0x5d
	.4byte	0x300
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaee
	.uleb128 0x1a
	.4byte	.LASF184
	.byte	0x1
	.byte	0x5f
	.4byte	0x300
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF190
	.byte	0x1
	.byte	0x4f
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF191
	.byte	0x1
	.byte	0x46
	.4byte	0x300
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb26
	.uleb128 0x1a
	.4byte	.LASF184
	.byte	0x1
	.byte	0x48
	.4byte	0x300
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF192
	.byte	0x1
	.byte	0x40
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF193
	.byte	0x1
	.byte	0x33
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF195
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6c
	.uleb128 0x23
	.ascii	"us\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0x300
	.4byte	.LLST1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF196
	.byte	0x1
	.byte	0x5
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb90
	.uleb128 0x23
	.ascii	"ms\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x300
	.4byte	.LLST0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF203
	.byte	0x2
	.2byte	0x485
	.byte	0x3
	.4byte	0xbb6
	.uleb128 0x25
	.4byte	.LASF197
	.byte	0x2
	.2byte	0x485
	.4byte	0x25a
	.uleb128 0x25
	.4byte	.LASF198
	.byte	0x2
	.2byte	0x485
	.4byte	0x300
	.byte	0
	.uleb128 0x26
	.4byte	.LASF204
	.byte	0x2
	.2byte	0x430
	.byte	0x3
	.uleb128 0x25
	.4byte	.LASF197
	.byte	0x2
	.2byte	0x430
	.4byte	0x25a
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST7:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
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
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF86:
	.ascii	"DCMI_IRQn\000"
.LASF88:
	.ascii	"HASH_RNG_IRQn\000"
.LASF149:
	.ascii	"APB1ENR\000"
.LASF134:
	.ascii	"CPACR\000"
.LASF137:
	.ascii	"SystemCoreClock\000"
.LASF163:
	.ascii	"CCMR1\000"
.LASF155:
	.ascii	"APB2LPENR\000"
.LASF76:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF57:
	.ascii	"SDIO_IRQn\000"
.LASF144:
	.ascii	"APB2RSTR\000"
.LASF30:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF87:
	.ascii	"CRYP_IRQn\000"
.LASF42:
	.ascii	"I2C2_ER_IRQn\000"
.LASF64:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF38:
	.ascii	"TIM4_IRQn\000"
.LASF70:
	.ascii	"ETH_WKUP_IRQn\000"
.LASF203:
	.ascii	"NVIC_SetPriority\000"
.LASF103:
	.ascii	"unsigned int\000"
.LASF194:
	.ascii	"initSYSTIM\000"
.LASF24:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF128:
	.ascii	"DFSR\000"
.LASF156:
	.ascii	"BDCR\000"
.LASF97:
	.ascii	"__int32_t\000"
.LASF19:
	.ascii	"DMA1_Stream0_IRQn\000"
.LASF12:
	.ascii	"FLASH_IRQn\000"
.LASF14:
	.ascii	"EXTI0_IRQn\000"
.LASF83:
	.ascii	"OTG_HS_EP1_IN_IRQn\000"
.LASF94:
	.ascii	"short int\000"
.LASF48:
	.ascii	"EXTI15_10_IRQn\000"
.LASF132:
	.ascii	"MMFR\000"
.LASF51:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF152:
	.ascii	"AHB2LPENR\000"
.LASF6:
	.ascii	"PendSV_IRQn\000"
.LASF50:
	.ascii	"OTG_FS_WKUP_IRQn\000"
.LASF60:
	.ascii	"UART4_IRQn\000"
.LASF13:
	.ascii	"RCC_IRQn\000"
.LASF1:
	.ascii	"MemoryManagement_IRQn\000"
.LASF180:
	.ascii	"TIM_TypeDef\000"
.LASF92:
	.ascii	"signed char\000"
.LASF166:
	.ascii	"CCER\000"
.LASF107:
	.ascii	"uint32_t\000"
.LASF190:
	.ascii	"initSYSTIMER\000"
.LASF10:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF174:
	.ascii	"BDTR\000"
.LASF108:
	.ascii	"ISER\000"
.LASF75:
	.ascii	"OTG_FS_IRQn\000"
.LASF146:
	.ascii	"AHB1ENR\000"
.LASF170:
	.ascii	"CCR1\000"
.LASF158:
	.ascii	"SSCGR\000"
.LASF172:
	.ascii	"CCR3\000"
.LASF111:
	.ascii	"RSERVED1\000"
.LASF188:
	.ascii	"getSYSTIMER\000"
.LASF66:
	.ascii	"DMA2_Stream2_IRQn\000"
.LASF164:
	.ascii	"CCMR2\000"
.LASF43:
	.ascii	"SPI1_IRQn\000"
.LASF192:
	.ascii	"startSTOPWATCH\000"
.LASF32:
	.ascii	"TIM1_BRK_TIM9_IRQn\000"
.LASF204:
	.ascii	"NVIC_EnableIRQ\000"
.LASF102:
	.ascii	"long long unsigned int\000"
.LASF165:
	.ascii	"RESERVED7\000"
.LASF55:
	.ascii	"DMA1_Stream7_IRQn\000"
.LASF189:
	.ascii	"TIM7_IRQHandler\000"
.LASF95:
	.ascii	"__uint16_t\000"
.LASF21:
	.ascii	"DMA1_Stream2_IRQn\000"
.LASF74:
	.ascii	"CAN2_SCE_IRQn\000"
.LASF29:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF184:
	.ascii	"time\000"
.LASF142:
	.ascii	"AHB3RSTR\000"
.LASF193:
	.ascii	"initSTOPWATCH\000"
.LASF181:
	.ascii	"g_tim7_val\000"
.LASF90:
	.ascii	"IRQn_Type\000"
.LASF78:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF46:
	.ascii	"USART2_IRQn\000"
.LASF121:
	.ascii	"CPUID\000"
.LASF160:
	.ascii	"RCC_TypeDef\000"
.LASF81:
	.ascii	"I2C3_ER_IRQn\000"
.LASF130:
	.ascii	"BFAR\000"
.LASF11:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF85:
	.ascii	"OTG_HS_IRQn\000"
.LASF131:
	.ascii	"AFSR\000"
.LASF162:
	.ascii	"DIER\000"
.LASF148:
	.ascii	"AHB3ENR\000"
.LASF16:
	.ascii	"EXTI2_IRQn\000"
.LASF143:
	.ascii	"APB1RSTR\000"
.LASF41:
	.ascii	"I2C2_EV_IRQn\000"
.LASF127:
	.ascii	"HFSR\000"
.LASF59:
	.ascii	"SPI3_IRQn\000"
.LASF124:
	.ascii	"AIRCR\000"
.LASF37:
	.ascii	"TIM3_IRQn\000"
.LASF23:
	.ascii	"DMA1_Stream4_IRQn\000"
.LASF104:
	.ascii	"uint8_t\000"
.LASF171:
	.ascii	"CCR2\000"
.LASF173:
	.ascii	"CCR4\000"
.LASF161:
	.ascii	"SMCR\000"
.LASF52:
	.ascii	"TIM8_UP_TIM13_IRQn\000"
.LASF101:
	.ascii	"long long int\000"
.LASF8:
	.ascii	"WWDG_IRQn\000"
.LASF125:
	.ascii	"SHCSR\000"
.LASF199:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF73:
	.ascii	"CAN2_RX1_IRQn\000"
.LASF154:
	.ascii	"APB1LPENR\000"
.LASF68:
	.ascii	"DMA2_Stream4_IRQn\000"
.LASF126:
	.ascii	"CFSR\000"
.LASF2:
	.ascii	"BusFault_IRQn\000"
.LASF34:
	.ascii	"TIM1_TRG_COM_TIM11_IRQn\000"
.LASF18:
	.ascii	"EXTI4_IRQn\000"
.LASF196:
	.ascii	"delay_ms\000"
.LASF185:
	.ascii	"utmp32\000"
.LASF9:
	.ascii	"PVD_IRQn\000"
.LASF26:
	.ascii	"ADC_IRQn\000"
.LASF114:
	.ascii	"ICPR\000"
.LASF150:
	.ascii	"APB2ENR\000"
.LASF58:
	.ascii	"TIM5_IRQn\000"
.LASF151:
	.ascii	"AHB1LPENR\000"
.LASF39:
	.ascii	"I2C1_EV_IRQn\000"
.LASF182:
	.ascii	"btime\000"
.LASF27:
	.ascii	"CAN1_TX_IRQn\000"
.LASF105:
	.ascii	"uint16_t\000"
.LASF20:
	.ascii	"DMA1_Stream1_IRQn\000"
.LASF197:
	.ascii	"IRQn\000"
.LASF28:
	.ascii	"CAN1_RX0_IRQn\000"
.LASF141:
	.ascii	"AHB2RSTR\000"
.LASF119:
	.ascii	"STIR\000"
.LASF129:
	.ascii	"MMFAR\000"
.LASF49:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF109:
	.ascii	"RESERVED0\000"
.LASF145:
	.ascii	"RESERVED1\000"
.LASF113:
	.ascii	"RESERVED2\000"
.LASF115:
	.ascii	"RESERVED3\000"
.LASF117:
	.ascii	"RESERVED4\000"
.LASF118:
	.ascii	"RESERVED5\000"
.LASF157:
	.ascii	"RESERVED6\000"
.LASF201:
	.ascii	"/home/emina/msut/Tastatura-klavijatura\000"
.LASF167:
	.ascii	"RESERVED8\000"
.LASF168:
	.ascii	"RESERVED9\000"
.LASF77:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF80:
	.ascii	"I2C3_EV_IRQn\000"
.LASF98:
	.ascii	"long int\000"
.LASF45:
	.ascii	"USART1_IRQn\000"
.LASF177:
	.ascii	"DMAR\000"
.LASF61:
	.ascii	"UART5_IRQn\000"
.LASF136:
	.ascii	"ITM_RxBuffer\000"
.LASF0:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF65:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF198:
	.ascii	"priority\000"
.LASF35:
	.ascii	"TIM1_CC_IRQn\000"
.LASF54:
	.ascii	"TIM8_CC_IRQn\000"
.LASF25:
	.ascii	"DMA1_Stream6_IRQn\000"
.LASF186:
	.ascii	"chk4TimeoutSYSTIM\000"
.LASF139:
	.ascii	"CFGR\000"
.LASF187:
	.ascii	"chk4TimeoutSYSTIMER\000"
.LASF56:
	.ascii	"FSMC_IRQn\000"
.LASF15:
	.ascii	"EXTI1_IRQn\000"
.LASF120:
	.ascii	"NVIC_Type\000"
.LASF135:
	.ascii	"SCB_Type\000"
.LASF62:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF138:
	.ascii	"PLLCFGR\000"
.LASF123:
	.ascii	"VTOR\000"
.LASF40:
	.ascii	"I2C1_ER_IRQn\000"
.LASF79:
	.ascii	"USART6_IRQn\000"
.LASF7:
	.ascii	"SysTick_IRQn\000"
.LASF153:
	.ascii	"AHB3LPENR\000"
.LASF122:
	.ascii	"ICSR\000"
.LASF100:
	.ascii	"long unsigned int\000"
.LASF36:
	.ascii	"TIM2_IRQn\000"
.LASF202:
	.ascii	"getSYSTIM\000"
.LASF147:
	.ascii	"AHB2ENR\000"
.LASF106:
	.ascii	"int32_t\000"
.LASF200:
	.ascii	"delay.c\000"
.LASF84:
	.ascii	"OTG_HS_WKUP_IRQn\000"
.LASF5:
	.ascii	"DebugMonitor_IRQn\000"
.LASF159:
	.ascii	"PLLI2SCFGR\000"
.LASF3:
	.ascii	"UsageFault_IRQn\000"
.LASF93:
	.ascii	"unsigned char\000"
.LASF99:
	.ascii	"__uint32_t\000"
.LASF31:
	.ascii	"EXTI9_5_IRQn\000"
.LASF4:
	.ascii	"SVCall_IRQn\000"
.LASF53:
	.ascii	"TIM8_TRG_COM_TIM14_IRQn\000"
.LASF169:
	.ascii	"RESERVED10\000"
.LASF175:
	.ascii	"RESERVED11\000"
.LASF176:
	.ascii	"RESERVED12\000"
.LASF178:
	.ascii	"RESERVED13\000"
.LASF179:
	.ascii	"RESERVED14\000"
.LASF72:
	.ascii	"CAN2_RX0_IRQn\000"
.LASF110:
	.ascii	"ICER\000"
.LASF67:
	.ascii	"DMA2_Stream3_IRQn\000"
.LASF44:
	.ascii	"SPI2_IRQn\000"
.LASF116:
	.ascii	"IABR\000"
.LASF63:
	.ascii	"TIM7_IRQn\000"
.LASF91:
	.ascii	"__uint8_t\000"
.LASF195:
	.ascii	"delay_us\000"
.LASF22:
	.ascii	"DMA1_Stream3_IRQn\000"
.LASF71:
	.ascii	"CAN2_TX_IRQn\000"
.LASF183:
	.ascii	"period\000"
.LASF96:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"EXTI3_IRQn\000"
.LASF112:
	.ascii	"ISPR\000"
.LASF133:
	.ascii	"ISAR\000"
.LASF82:
	.ascii	"OTG_HS_EP1_OUT_IRQn\000"
.LASF47:
	.ascii	"USART3_IRQn\000"
.LASF33:
	.ascii	"TIM1_UP_TIM10_IRQn\000"
.LASF191:
	.ascii	"stopSTOPWATCH\000"
.LASF89:
	.ascii	"FPU_IRQn\000"
.LASF69:
	.ascii	"ETH_IRQn\000"
.LASF140:
	.ascii	"AHB1RSTR\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
