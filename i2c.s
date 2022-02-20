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
	.file	"i2c.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	initI2C
	.thumb
	.thumb_func
	.type	initI2C, %function
initI2C:
.LFB110:
	.file 1 "i2c.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 6 0
	ldr	r1, .L3
	.loc 1 7 0
	ldr	r3, .L3+4
	.loc 1 6 0
	ldr	r2, [r1, #48]
	orr	r2, r2, #2
	.loc 1 4 0
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 6 0
	str	r2, [r1, #48]
	.loc 1 7 0
	ldr	r2, [r3]
	.loc 1 13 0
	ldr	r4, .L3+8
	.loc 1 7 0
	orr	r2, r2, #266240
	str	r2, [r3]
	.loc 1 8 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #532480
	str	r2, [r3, #8]
	.loc 1 9 0
	ldr	r2, [r3, #12]
	orr	r2, r2, #266240
	str	r2, [r3, #12]
	.loc 1 12 0
	ldr	r2, [r3, #20]
	orr	r2, r2, #576
	str	r2, [r3, #20]
	.loc 1 13 0
	strb	r0, [r4]
	.loc 1 14 0
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073887232
	.word	1073873920
	.word	dev_addr
	.cfi_endproc
.LFE110:
	.size	initI2C, .-initI2C
	.align	2
	.global	startI2CS
	.thumb
	.thumb_func
	.type	startI2CS, %function
startI2CS:
.LFB113:
	.loc 1 75 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 77 0
	ldr	r4, .L7
	ldr	r3, [r4]
	orr	r3, r3, #266240
	str	r3, [r4]
	.loc 1 78 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #576
	str	r3, [r4, #20]
	.loc 1 79 0
	movs	r0, #5
	bl	delay_us
.LVL1:
	.loc 1 80 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #512
	str	r3, [r4, #20]
	.loc 1 81 0
	movs	r0, #5
	.loc 1 82 0
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 81 0
	b	delay_us
.LVL2:
.L8:
	.align	2
.L7:
	.word	1073873920
	.cfi_endproc
.LFE113:
	.size	startI2CS, .-startI2CS
	.align	2
	.global	stopI2CS
	.thumb
	.thumb_func
	.type	stopI2CS, %function
stopI2CS:
.LFB114:
	.loc 1 85 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 86 0
	ldr	r4, .L11
	ldr	r3, [r4, #20]
	bic	r3, r3, #64
	str	r3, [r4, #20]
	.loc 1 87 0
	movs	r0, #2
	bl	delay_us
.LVL3:
	.loc 1 89 0
	ldr	r3, [r4]
	orr	r3, r3, #16384
	str	r3, [r4]
	.loc 1 90 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #512
	str	r3, [r4, #20]
	.loc 1 91 0
	movs	r0, #2
	bl	delay_us
.LVL4:
	.loc 1 93 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #64
	str	r3, [r4, #20]
	.loc 1 94 0
	movs	r0, #1
	bl	delay_us
.LVL5:
	.loc 1 95 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #512
	str	r3, [r4, #20]
	.loc 1 96 0
	movs	r0, #5
	bl	delay_us
.LVL6:
	.loc 1 97 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #576
	str	r3, [r4, #20]
	pop	{r4, pc}
.L12:
	.align	2
.L11:
	.word	1073873920
	.cfi_endproc
.LFE114:
	.size	stopI2CS, .-stopI2CS
	.align	2
	.global	writeByteI2CS
	.thumb
	.thumb_func
	.type	writeByteI2CS, %function
writeByteI2CS:
.LFB115:
	.loc 1 101 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL7:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 103 0
	ldr	r4, .L20
	ldr	r3, [r4]
	orr	r3, r3, #266240
	.loc 1 101 0
	mov	r6, r0
	.loc 1 103 0
	str	r3, [r4]
.LVL8:
	movs	r5, #8
.LVL9:
.L16:
	.loc 1 107 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #64
	str	r3, [r4, #20]
	.loc 1 108 0
	movs	r0, #2
	bl	delay_us
.LVL10:
	.loc 1 111 0
	ldr	r3, [r4, #20]
	.loc 1 110 0
	lsls	r2, r6, #24
	.loc 1 111 0
	ite	mi
	orrmi	r3, r3, #512
	.loc 1 113 0
	bicpl	r3, r3, #512
	str	r3, [r4, #20]
	.loc 1 116 0
	movs	r0, #2
	bl	delay_us
.LVL11:
	.loc 1 118 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #64
	str	r3, [r4, #20]
	.loc 1 119 0
	movs	r0, #4
	bl	delay_us
.LVL12:
	subs	r3, r5, #1
	.loc 1 115 0
	lsls	r6, r6, #1
.LVL13:
	.loc 1 105 0
	ands	r5, r3, #255
.LVL14:
	.loc 1 115 0
	uxtb	r6, r6
.LVL15:
	.loc 1 105 0
	bne	.L16
	.loc 1 121 0
	pop	{r4, r5, r6, pc}
.LVL16:
.L21:
	.align	2
.L20:
	.word	1073873920
	.cfi_endproc
.LFE115:
	.size	writeByteI2CS, .-writeByteI2CS
	.align	2
	.global	readByteI2CS
	.thumb
	.thumb_func
	.type	readByteI2CS, %function
readByteI2CS:
.LFB116:
	.loc 1 124 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL17:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 127 0
	ldr	r4, .L30
	ldr	r3, [r4]
	bic	r3, r3, #786432
	str	r3, [r4]
.LVL18:
	movs	r6, #8
	.loc 1 126 0
	movs	r5, #0
.LVL19:
.L24:
	.loc 1 133 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #64
	str	r3, [r4, #20]
	.loc 1 134 0
	movs	r0, #4
	bl	delay_us
.LVL20:
	.loc 1 136 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #64
	str	r3, [r4, #20]
	.loc 1 137 0
	movs	r0, #2
	bl	delay_us
.LVL21:
	.loc 1 139 0
	ldr	r3, [r4, #16]
	.loc 1 131 0
	lsls	r5, r5, #1
.LVL22:
	.loc 1 139 0
	lsls	r3, r3, #22
	.loc 1 131 0
	uxtb	r5, r5
.LVL23:
	.loc 1 142 0
	mov	r0, #2
	.loc 1 140 0
	it	mi
	orrmi	r5, r5, #1
.LVL24:
	.loc 1 142 0
	bl	delay_us
.LVL25:
	subs	r3, r6, #1
	.loc 1 129 0
	ands	r6, r3, #255
.LVL26:
	bne	.L24
	.loc 1 146 0
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.LVL27:
.L31:
	.align	2
.L30:
	.word	1073873920
	.cfi_endproc
.LFE116:
	.size	readByteI2CS, .-readByteI2CS
	.align	2
	.global	AcksI2CS
	.thumb
	.thumb_func
	.type	AcksI2CS, %function
AcksI2CS:
.LFB117:
	.loc 1 149 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL28:
	push	{r3, r4, r5, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 152 0
	ldr	r4, .L42
	ldr	r3, [r4, #20]
	bic	r3, r3, #64
	str	r3, [r4, #20]
	.loc 1 153 0
	movs	r0, #1
	bl	delay_us
.LVL29:
	.loc 1 155 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #512
	str	r3, [r4, #20]
	.loc 1 156 0
	ldr	r3, [r4]
	bic	r3, r3, #786432
	str	r3, [r4]
	.loc 1 158 0
	movs	r0, #4
	bl	delay_us
.LVL30:
	.loc 1 160 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #64
	str	r3, [r4, #20]
	.loc 1 161 0
	movs	r0, #2
	bl	delay_us
.LVL31:
	.loc 1 163 0
	ldr	r3, [r4, #16]
	lsls	r3, r3, #22
	bpl	.L34
	mov	r5, r4
	movs	r4, #19
.LVL32:
.L33:
	.loc 1 168 0
	movs	r0, #1
	bl	delay_us
.LVL33:
	.loc 1 163 0
	ldr	r3, [r5, #16]
	subs	r4, r4, #1
.LVL34:
	tst	r3, #512
	uxth	r4, r4
	beq	.L34
	.loc 1 166 0
	cmp	r4, #0
	bne	.L33
.L34:
	.loc 1 171 0
	movs	r0, #2
	bl	delay_us
.LVL35:
	.loc 1 172 0
	ldr	r2, .L42
	ldr	r3, [r2]
	orr	r3, r3, #262144
	str	r3, [r2]
	pop	{r3, r4, r5, pc}
.L43:
	.align	2
.L42:
	.word	1073873920
	.cfi_endproc
.LFE117:
	.size	AcksI2CS, .-AcksI2CS
	.align	2
	.global	writeI2C
	.thumb
	.thumb_func
	.type	writeI2C, %function
writeI2C:
.LFB112:
	.loc 1 50 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL36:
	.loc 1 53 0
	cbz	r2, .L50
	.loc 1 50 0
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	subs	r2, r2, #1
.LVL37:
	ldr	r7, .L51
	mov	r4, r0
.LVL38:
	uxtah	r6, r1, r2
	subs	r5, r1, #1
.LVL39:
.L46:
	.loc 1 55 0 discriminator 3
	bl	startI2CS
.LVL40:
	.loc 1 57 0 discriminator 3
	ldrb	r0, [r7]	@ zero_extendqisi2
	bl	writeByteI2CS
.LVL41:
	.loc 1 58 0 discriminator 3
	bl	AcksI2CS
.LVL42:
	.loc 1 60 0 discriminator 3
	mov	r0, r4
	bl	writeByteI2CS
.LVL43:
	.loc 1 61 0 discriminator 3
	bl	AcksI2CS
.LVL44:
	.loc 1 64 0 discriminator 3
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
	bl	writeByteI2CS
.LVL45:
	.loc 1 65 0 discriminator 3
	bl	AcksI2CS
.LVL46:
	.loc 1 67 0 discriminator 3
	bl	stopI2CS
.LVL47:
	.loc 1 69 0 discriminator 3
	movs	r0, #5
	bl	delay_ms
.LVL48:
	.loc 1 70 0 discriminator 3
	adds	r4, r4, #1
.LVL49:
	.loc 1 53 0 discriminator 3
	cmp	r5, r6
	.loc 1 70 0 discriminator 3
	uxtb	r4, r4
.LVL50:
	.loc 1 53 0 discriminator 3
	bne	.L46
	pop	{r3, r4, r5, r6, r7, pc}
.LVL51:
.L50:
	.cfi_def_cfa_offset 0
	.cfi_restore 3
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
	bx	lr
.L52:
	.align	2
.L51:
	.word	dev_addr
	.cfi_endproc
.LFE112:
	.size	writeI2C, .-writeI2C
	.align	2
	.global	AckmI2CS
	.thumb
	.thumb_func
	.type	AckmI2CS, %function
AckmI2CS:
.LFB118:
	.loc 1 176 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 177 0
	ldr	r4, .L55
	ldr	r3, [r4, #20]
	bic	r3, r3, #64
	str	r3, [r4, #20]
	.loc 1 178 0
	movs	r0, #1
	bl	delay_us
.LVL52:
	.loc 1 180 0
	ldr	r3, [r4]
	orr	r3, r3, #262144
	str	r3, [r4]
	.loc 1 181 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #512
	str	r3, [r4, #20]
	.loc 1 182 0
	movs	r0, #4
	bl	delay_us
.LVL53:
	.loc 1 185 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #64
	str	r3, [r4, #20]
	.loc 1 186 0
	movs	r0, #4
	bl	delay_us
.LVL54:
	.loc 1 187 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #64
	str	r3, [r4, #20]
	pop	{r4, pc}
.L56:
	.align	2
.L55:
	.word	1073873920
	.cfi_endproc
.LFE118:
	.size	AckmI2CS, .-AckmI2CS
	.align	2
	.global	NackmI2CS
	.thumb
	.thumb_func
	.type	NackmI2CS, %function
NackmI2CS:
.LFB119:
	.loc 1 192 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 193 0
	ldr	r4, .L59
	ldr	r3, [r4, #20]
	bic	r3, r3, #64
	str	r3, [r4, #20]
	.loc 1 194 0
	movs	r0, #2
	bl	delay_us
.LVL55:
	.loc 1 196 0
	ldr	r3, [r4]
	orr	r3, r3, #262144
	str	r3, [r4]
	.loc 1 197 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #512
	str	r3, [r4, #20]
	.loc 1 198 0
	movs	r0, #2
	bl	delay_us
.LVL56:
	.loc 1 201 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #64
	str	r3, [r4, #20]
	.loc 1 202 0
	movs	r0, #4
	.loc 1 204 0
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 202 0
	b	delay_us
.LVL57:
.L60:
	.align	2
.L59:
	.word	1073873920
	.cfi_endproc
.LFE119:
	.size	NackmI2CS, .-NackmI2CS
	.align	2
	.global	readI2C
	.thumb
	.thumb_func
	.type	readI2C, %function
readI2C:
.LFB111:
	.loc 1 17 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL58:
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 22 0
	ldr	r4, .L69
	.loc 1 17 0
	mov	r5, r2
	mov	r6, r1
	mov	r7, r0
	.loc 1 20 0
	bl	startI2CS
.LVL59:
	.loc 1 22 0
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	writeByteI2CS
.LVL60:
	.loc 1 23 0
	bl	AcksI2CS
.LVL61:
	.loc 1 25 0
	mov	r0, r7
	bl	writeByteI2CS
.LVL62:
	.loc 1 26 0
	bl	AcksI2CS
.LVL63:
	.loc 1 28 0
	bl	startI2CS
.LVL64:
	.loc 1 30 0
	ldrb	r0, [r4]	@ zero_extendqisi2
	orr	r0, r0, #1
	bl	writeByteI2CS
.LVL65:
	.loc 1 31 0
	bl	AcksI2CS
.LVL66:
	.loc 1 33 0
	cbz	r5, .L61
	subs	r5, r5, #1
	uxtah	r7, r6, r5
	subs	r4, r6, #1
	b	.L65
.LVL67:
.L63:
	.loc 1 44 0
	bl	AckmI2CS
.LVL68:
	.loc 1 33 0
	cmp	r4, r7
	beq	.L61
.L65:
.LVL69:
	.loc 1 35 0
	bl	readByteI2CS
.LVL70:
	strb	r0, [r4, #1]!
.LVL71:
	subs	r3, r4, r6
	.loc 1 37 0
	cmp	r3, r5
	bne	.L63
	.loc 1 39 0
	bl	NackmI2CS
.LVL72:
	.loc 1 40 0
	bl	stopI2CS
.LVL73:
	.loc 1 33 0
	cmp	r4, r7
	bne	.L65
.L61:
	pop	{r3, r4, r5, r6, r7, pc}
.LVL74:
.L70:
	.align	2
.L69:
	.word	dev_addr
	.cfi_endproc
.LFE111:
	.size	readI2C, .-readI2C
	.comm	dev_addr,1,1
.Letext0:
	.file 2 "/home/samir/Documents/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/samir/Documents/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.file 6 "i2c.h"
	.file 7 "delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x77c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x1
	.4byte	.LASF69
	.4byte	.LASF70
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
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x1
	.byte	0x3
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x349
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3
	.4byte	0x97
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x1
	.byte	0x4a
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x381
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x761
	.4byte	0x371
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x10
	.4byte	.LVL2
	.4byte	0x761
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x1
	.byte	0x54
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3df
	.uleb128 0xe
	.4byte	.LVL3
	.4byte	0x761
	.4byte	0x3a9
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LVL4
	.4byte	0x761
	.4byte	0x3bc
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x761
	.4byte	0x3cf
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x11
	.4byte	.LVL6
	.4byte	0x761
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x1
	.byte	0x64
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x446
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x64
	.4byte	0x97
	.4byte	.LLST0
	.uleb128 0x13
	.ascii	"k\000"
	.byte	0x1
	.byte	0x66
	.4byte	0x97
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LVL10
	.4byte	0x761
	.4byte	0x423
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LVL11
	.4byte	0x761
	.4byte	0x436
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x11
	.4byte	.LVL12
	.4byte	0x761
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x1
	.byte	0x7b
	.4byte	0x97
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b1
	.uleb128 0x13
	.ascii	"k\000"
	.byte	0x1
	.byte	0x7d
	.4byte	0x97
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x1
	.byte	0x7e
	.4byte	0x97
	.4byte	.LLST3
	.uleb128 0xe
	.4byte	.LVL20
	.4byte	0x761
	.4byte	0x48e
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0xe
	.4byte	.LVL21
	.4byte	0x761
	.4byte	0x4a1
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x11
	.4byte	.LVL25
	.4byte	0x761
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x1
	.byte	0x94
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x52f
	.uleb128 0x13
	.ascii	"k\000"
	.byte	0x1
	.byte	0x96
	.4byte	0xa2
	.4byte	.LLST4
	.uleb128 0xe
	.4byte	.LVL29
	.4byte	0x761
	.4byte	0x4e6
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.4byte	.LVL30
	.4byte	0x761
	.4byte	0x4f9
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0xe
	.4byte	.LVL31
	.4byte	0x761
	.4byte	0x50c
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LVL33
	.4byte	0x761
	.4byte	0x51f
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x11
	.4byte	.LVL35
	.4byte	0x761
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x1
	.byte	0x31
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e1
	.uleb128 0x16
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x31
	.4byte	0x97
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x31
	.4byte	0x5e1
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0x31
	.4byte	0xa2
	.4byte	.LLST7
	.uleb128 0x13
	.ascii	"k\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xa2
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	.LVL40
	.4byte	0x349
	.uleb128 0x17
	.4byte	.LVL41
	.4byte	0x3df
	.uleb128 0x17
	.4byte	.LVL42
	.4byte	0x4b1
	.uleb128 0xe
	.4byte	.LVL43
	.4byte	0x3df
	.4byte	0x5ad
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL44
	.4byte	0x4b1
	.uleb128 0x17
	.4byte	.LVL45
	.4byte	0x3df
	.uleb128 0x17
	.4byte	.LVL46
	.4byte	0x4b1
	.uleb128 0x17
	.4byte	.LVL47
	.4byte	0x381
	.uleb128 0x11
	.4byte	.LVL48
	.4byte	0x772
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x97
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x1
	.byte	0xaf
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x632
	.uleb128 0xe
	.4byte	.LVL52
	.4byte	0x761
	.4byte	0x60f
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.4byte	.LVL53
	.4byte	0x761
	.4byte	0x622
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x11
	.4byte	.LVL54
	.4byte	0x761
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x1
	.byte	0xbf
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67d
	.uleb128 0xe
	.4byte	.LVL55
	.4byte	0x761
	.4byte	0x65a
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LVL56
	.4byte	0x761
	.4byte	0x66d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x10
	.4byte	.LVL57
	.4byte	0x761
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x1
	.byte	0x10
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x744
	.uleb128 0x16
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x97
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x10
	.4byte	0x5e1
	.4byte	.LLST10
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0x10
	.4byte	0xa2
	.4byte	.LLST11
	.uleb128 0x13
	.ascii	"k\000"
	.byte	0x1
	.byte	0x12
	.4byte	0xa2
	.4byte	.LLST12
	.uleb128 0x17
	.4byte	.LVL59
	.4byte	0x349
	.uleb128 0x17
	.4byte	.LVL60
	.4byte	0x3df
	.uleb128 0x17
	.4byte	.LVL61
	.4byte	0x4b1
	.uleb128 0xe
	.4byte	.LVL62
	.4byte	0x3df
	.4byte	0x6fb
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL63
	.4byte	0x4b1
	.uleb128 0x17
	.4byte	.LVL64
	.4byte	0x349
	.uleb128 0x17
	.4byte	.LVL65
	.4byte	0x3df
	.uleb128 0x17
	.4byte	.LVL66
	.4byte	0x4b1
	.uleb128 0x17
	.4byte	.LVL68
	.4byte	0x5e7
	.uleb128 0x17
	.4byte	.LVL70
	.4byte	0x446
	.uleb128 0x17
	.4byte	.LVL72
	.4byte	0x632
	.uleb128 0x17
	.4byte	.LVL73
	.4byte	0x381
	.byte	0
	.uleb128 0x19
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x51b
	.4byte	0xe9
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x6
	.byte	0x14
	.4byte	0xdf
	.uleb128 0x5
	.byte	0x3
	.4byte	dev_addr
	.uleb128 0x1b
	.4byte	.LASF72
	.byte	0x7
	.byte	0xc
	.4byte	0x772
	.uleb128 0x1c
	.4byte	0xb8
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF73
	.byte	0x7
	.byte	0xb
	.uleb128 0x1c
	.4byte	0xb8
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
	.uleb128 0xd
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
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x5
	.byte	0x38
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x5
	.byte	0x38
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x5
	.byte	0x39
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x5
	.byte	0x44
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL59-1-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL59-1-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59-1-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
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
.LASF58:
	.ascii	"addr\000"
.LASF73:
	.ascii	"delay_ms\000"
.LASF32:
	.ascii	"APB1RSTR\000"
.LASF36:
	.ascii	"AHB2ENR\000"
.LASF70:
	.ascii	"/home/samir/Documents/MSUT/STM32F407/examples/audio"
	.ascii	"-passthrough-dac-dma-Samir\000"
.LASF2:
	.ascii	"short int\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF49:
	.ascii	"BDCR\000"
.LASF52:
	.ascii	"PLLI2SCFGR\000"
.LASF57:
	.ascii	"writeByteI2CS\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF62:
	.ascii	"nbyte\000"
.LASF72:
	.ascii	"delay_us\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF51:
	.ascii	"SSCGR\000"
.LASF44:
	.ascii	"AHB3LPENR\000"
.LASF68:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF61:
	.ascii	"writeI2C\000"
.LASF41:
	.ascii	"RESERVED3\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF39:
	.ascii	"APB1ENR\000"
.LASF65:
	.ascii	"readI2C\000"
.LASF19:
	.ascii	"OTYPER\000"
.LASF64:
	.ascii	"NackmI2CS\000"
.LASF37:
	.ascii	"AHB3ENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"PUPDR\000"
.LASF7:
	.ascii	"long int\000"
.LASF53:
	.ascii	"RCC_TypeDef\000"
.LASF23:
	.ascii	"BSRRH\000"
.LASF18:
	.ascii	"MODER\000"
.LASF33:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF22:
	.ascii	"BSRRL\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF40:
	.ascii	"APB2ENR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF29:
	.ascii	"AHB2RSTR\000"
.LASF63:
	.ascii	"AckmI2CS\000"
.LASF67:
	.ascii	"dev_addr\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF27:
	.ascii	"CFGR\000"
.LASF26:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF46:
	.ascii	"APB1LPENR\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF60:
	.ascii	"AcksI2CS\000"
.LASF59:
	.ascii	"data\000"
.LASF43:
	.ascii	"AHB2LPENR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF31:
	.ascii	"RESERVED0\000"
.LASF34:
	.ascii	"RESERVED1\000"
.LASF38:
	.ascii	"RESERVED2\000"
.LASF20:
	.ascii	"OSPEEDR\000"
.LASF45:
	.ascii	"RESERVED4\000"
.LASF48:
	.ascii	"RESERVED5\000"
.LASF50:
	.ascii	"RESERVED6\000"
.LASF54:
	.ascii	"initI2C\000"
.LASF71:
	.ascii	"readByteI2CS\000"
.LASF35:
	.ascii	"AHB1ENR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF28:
	.ascii	"AHB1RSTR\000"
.LASF25:
	.ascii	"GPIO_TypeDef\000"
.LASF30:
	.ascii	"AHB3RSTR\000"
.LASF66:
	.ascii	"ITM_RxBuffer\000"
.LASF24:
	.ascii	"LCKR\000"
.LASF47:
	.ascii	"APB2LPENR\000"
.LASF69:
	.ascii	"i2c.c\000"
.LASF55:
	.ascii	"startI2CS\000"
.LASF56:
	.ascii	"stopI2CS\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
