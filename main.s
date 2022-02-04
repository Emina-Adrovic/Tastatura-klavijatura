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
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	main, %function
main:
.LFB146:
	.file 1 "main.c"
	.loc 1 91 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 114 0
	mov	r0, #364
	bl	initUSART2
.LVL0:
	ldr	r4, .L20
	.loc 1 202 0
	ldr	r7, .L20+4
	.loc 1 206 0
	ldr	r6, .L20+8
	.loc 1 210 0
	ldr	r5, .L20+12
	.loc 1 115 0
	bl	enIrqUSART2
.LVL1:
	.loc 1 117 0
	bl	initSYSTIMER
.LVL2:
	b	.L10
.L2:
	.loc 1 205 0
	ldr	r3, [r4]
	cmp	r3, #3
	beq	.L13
.L3:
	.loc 1 209 0
	ldr	r3, [r4]
	cmp	r3, #4
	beq	.L14
.L4:
	.loc 1 213 0
	ldr	r3, [r4]
	cmp	r3, #5
	beq	.L15
.L5:
	.loc 1 217 0
	ldr	r3, [r4]
	cmp	r3, #6
	beq	.L16
.L6:
	.loc 1 221 0
	ldr	r3, [r4]
	cmp	r3, #7
	beq	.L17
.L7:
	.loc 1 225 0
	ldr	r3, [r4]
	cmp	r3, #8
	beq	.L18
.L8:
	.loc 1 229 0
	ldr	r3, [r4]
	cmp	r3, #9
	beq	.L19
.L9:
	.loc 1 235 0
	movs	r0, #1
	bl	delay_ms
.LVL3:
.L10:
	.loc 1 189 0
	bl	chkRxBuffUSART2
.LVL4:
	str	r0, [r4]
	.loc 1 201 0
	ldr	r3, [r4]
	cmp	r3, #2
	bne	.L2
	.loc 1 202 0
	mov	r0, r7
	bl	printUSART2
.LVL5:
	.loc 1 205 0
	ldr	r3, [r4]
	cmp	r3, #3
	bne	.L3
.L13:
	.loc 1 206 0
	mov	r0, r6
	bl	printUSART2
.LVL6:
	.loc 1 209 0
	ldr	r3, [r4]
	cmp	r3, #4
	bne	.L4
.L14:
	.loc 1 210 0
	mov	r0, r5
	bl	printUSART2
.LVL7:
	.loc 1 213 0
	ldr	r3, [r4]
	cmp	r3, #5
	bne	.L5
.L15:
	.loc 1 214 0
	ldr	r0, .L20+16
	bl	printUSART2
.LVL8:
	.loc 1 217 0
	ldr	r3, [r4]
	cmp	r3, #6
	bne	.L6
.L16:
	.loc 1 218 0
	ldr	r0, .L20+20
	bl	printUSART2
.LVL9:
	.loc 1 221 0
	ldr	r3, [r4]
	cmp	r3, #7
	bne	.L7
.L17:
	.loc 1 222 0
	ldr	r0, .L20+24
	bl	printUSART2
.LVL10:
	.loc 1 225 0
	ldr	r3, [r4]
	cmp	r3, #8
	bne	.L8
.L18:
	.loc 1 226 0
	ldr	r0, .L20+28
	bl	printUSART2
.LVL11:
	.loc 1 229 0
	ldr	r3, [r4]
	cmp	r3, #9
	bne	.L9
.L19:
	.loc 1 230 0
	ldr	r0, .L20+32
	bl	printUSART2
.LVL12:
	b	.L9
.L21:
	.align	2
.L20:
	.word	strelica
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.cfi_endproc
.LFE146:
	.size	main, .-main
	.comm	strelica,4,4
	.global	g_irq_timer
	.global	g_gpioa_irq_state
	.global	g_irq_cnt
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
	.space	3
	.type	g_irq_cnt, %object
	.size	g_irq_cnt, 4
g_irq_cnt:
	.space	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"a\000"
	.space	2
.LC1:
	.ascii	"s\000"
	.space	2
.LC2:
	.ascii	"d\000"
	.space	2
.LC3:
	.ascii	"f\000"
	.space	2
.LC4:
	.ascii	"j\000"
	.space	2
.LC5:
	.ascii	"k\000"
	.space	2
.LC6:
	.ascii	"l\000"
	.space	2
.LC7:
	.ascii	";\000"
	.text
.Letext0:
	.file 2 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../sdk/core_cm4.h"
	.file 5 "../sdk/system_stm32f4xx.h"
	.file 6 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 7 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 8 "/home/emina/msut/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.3.1/include/stddef.h"
	.file 9 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 10 "usart.h"
	.file 11 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/math.h"
	.file 12 "delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb1e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0xc
	.4byte	.LASF152
	.4byte	.LASF153
	.4byte	.Ldebug_ranges0+0
	.4byte	0
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
	.uleb128 0x5
	.4byte	0x97
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.4byte	0x45
	.uleb128 0x5
	.4byte	0xa7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x5
	.4byte	0xb7
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.4byte	0x69
	.uleb128 0x5
	.4byte	0xc7
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x51b
	.4byte	0xc2
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x35
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x22
	.4byte	0x102
	.uleb128 0x9
	.byte	0x4
	.4byte	0x108
	.uleb128 0xa
	.4byte	.LASF127
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x72
	.4byte	0x62
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.2byte	0x165
	.4byte	0x90
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.4byte	0x14e
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x7
	.byte	0xa8
	.4byte	0x123
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x7
	.byte	0xa9
	.4byte	0x14e
	.byte	0
	.uleb128 0xe
	.4byte	0x37
	.4byte	0x15e
	.uleb128 0xf
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.byte	0xa3
	.4byte	0x17f
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x7
	.byte	0xa5
	.4byte	0x89
	.byte	0
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x7
	.byte	0xaa
	.4byte	0x12f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0xab
	.4byte	0x15e
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0xaf
	.4byte	0xf7
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x9
	.byte	0x16
	.4byte	0x74
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x18
	.byte	0x9
	.byte	0x2f
	.4byte	0x1f3
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x9
	.byte	0x31
	.4byte	0x1f3
	.byte	0
	.uleb128 0x13
	.ascii	"_k\000"
	.byte	0x9
	.byte	0x32
	.4byte	0x89
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x9
	.byte	0x32
	.4byte	0x89
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x9
	.byte	0x32
	.4byte	0x89
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x9
	.byte	0x32
	.4byte	0x89
	.byte	0x10
	.uleb128 0x13
	.ascii	"_x\000"
	.byte	0x9
	.byte	0x33
	.4byte	0x1f9
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1a0
	.uleb128 0xe
	.4byte	0x195
	.4byte	0x209
	.uleb128 0xf
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x24
	.byte	0x9
	.byte	0x37
	.4byte	0x282
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x9
	.byte	0x39
	.4byte	0x89
	.byte	0
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x9
	.byte	0x3a
	.4byte	0x89
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x9
	.byte	0x3b
	.4byte	0x89
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x9
	.byte	0x3c
	.4byte	0x89
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x9
	.byte	0x3d
	.4byte	0x89
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x9
	.byte	0x3e
	.4byte	0x89
	.byte	0x14
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x9
	.byte	0x3f
	.4byte	0x89
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x9
	.byte	0x40
	.4byte	0x89
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x9
	.byte	0x41
	.4byte	0x89
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF46
	.2byte	0x108
	.byte	0x9
	.byte	0x4a
	.4byte	0x2c2
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x9
	.byte	0x4b
	.4byte	0x2c2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x9
	.byte	0x4c
	.4byte	0x2c2
	.byte	0x80
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x9
	.byte	0x4e
	.4byte	0x195
	.2byte	0x100
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x9
	.byte	0x51
	.4byte	0x195
	.2byte	0x104
	.byte	0
	.uleb128 0xe
	.4byte	0xf5
	.4byte	0x2d2
	.uleb128 0xf
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF51
	.2byte	0x190
	.byte	0x9
	.byte	0x5d
	.4byte	0x310
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x9
	.byte	0x5e
	.4byte	0x310
	.byte	0
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x9
	.byte	0x5f
	.4byte	0x89
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x9
	.byte	0x61
	.4byte	0x316
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x9
	.byte	0x62
	.4byte	0x282
	.byte	0x88
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2d2
	.uleb128 0xe
	.4byte	0x326
	.4byte	0x326
	.uleb128 0xf
	.4byte	0x90
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x32c
	.uleb128 0x16
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x8
	.byte	0x9
	.byte	0x75
	.4byte	0x352
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x9
	.byte	0x76
	.4byte	0x352
	.byte	0
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x9
	.byte	0x77
	.4byte	0x89
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x68
	.byte	0x9
	.byte	0xb5
	.4byte	0x482
	.uleb128 0x13
	.ascii	"_p\000"
	.byte	0x9
	.byte	0xb6
	.4byte	0x352
	.byte	0
	.uleb128 0x13
	.ascii	"_r\000"
	.byte	0x9
	.byte	0xb7
	.4byte	0x89
	.byte	0x4
	.uleb128 0x13
	.ascii	"_w\000"
	.byte	0x9
	.byte	0xb8
	.4byte	0x89
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x9
	.byte	0xb9
	.4byte	0x3e
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x9
	.byte	0xba
	.4byte	0x3e
	.byte	0xe
	.uleb128 0x13
	.ascii	"_bf\000"
	.byte	0x9
	.byte	0xbb
	.4byte	0x32d
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x9
	.byte	0xbc
	.4byte	0x89
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x9
	.byte	0xc3
	.4byte	0xf5
	.byte	0x1c
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x9
	.byte	0xc5
	.4byte	0x5ef
	.byte	0x20
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x9
	.byte	0xc7
	.4byte	0x619
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x9
	.byte	0xca
	.4byte	0x63d
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x9
	.byte	0xcb
	.4byte	0x657
	.byte	0x2c
	.uleb128 0x13
	.ascii	"_ub\000"
	.byte	0x9
	.byte	0xce
	.4byte	0x32d
	.byte	0x30
	.uleb128 0x13
	.ascii	"_up\000"
	.byte	0x9
	.byte	0xcf
	.4byte	0x352
	.byte	0x38
	.uleb128 0x13
	.ascii	"_ur\000"
	.byte	0x9
	.byte	0xd0
	.4byte	0x89
	.byte	0x3c
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x9
	.byte	0xd3
	.4byte	0x65d
	.byte	0x40
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x9
	.byte	0xd4
	.4byte	0x66d
	.byte	0x43
	.uleb128 0x13
	.ascii	"_lb\000"
	.byte	0x9
	.byte	0xd7
	.4byte	0x32d
	.byte	0x44
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x9
	.byte	0xda
	.4byte	0x89
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x9
	.byte	0xdb
	.4byte	0x10d
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x9
	.byte	0xde
	.4byte	0x4a0
	.byte	0x54
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x9
	.byte	0xe2
	.4byte	0x18a
	.byte	0x58
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x9
	.byte	0xe4
	.4byte	0x17f
	.byte	0x5c
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x9
	.byte	0xe5
	.4byte	0x89
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.4byte	0x89
	.4byte	0x4a0
	.uleb128 0x18
	.4byte	0x4a0
	.uleb128 0x18
	.4byte	0xf5
	.uleb128 0x18
	.4byte	0x5dd
	.uleb128 0x18
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4ab
	.uleb128 0x19
	.4byte	0x4a0
	.uleb128 0x1a
	.4byte	.LASF74
	.2byte	0x428
	.byte	0x9
	.2byte	0x260
	.4byte	0x5dd
	.uleb128 0x1b
	.4byte	.LASF75
	.byte	0x9
	.2byte	0x262
	.4byte	0x89
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x267
	.4byte	0x6c4
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x267
	.4byte	0x6c4
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x267
	.4byte	0x6c4
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x269
	.4byte	0x89
	.byte	0x10
	.uleb128 0x1b
	.4byte	.LASF80
	.byte	0x9
	.2byte	0x26a
	.4byte	0x8a6
	.byte	0x14
	.uleb128 0x1b
	.4byte	.LASF81
	.byte	0x9
	.2byte	0x26d
	.4byte	0x89
	.byte	0x30
	.uleb128 0x1b
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x26e
	.4byte	0x8bb
	.byte	0x34
	.uleb128 0x1b
	.4byte	.LASF83
	.byte	0x9
	.2byte	0x270
	.4byte	0x89
	.byte	0x38
	.uleb128 0x1b
	.4byte	.LASF84
	.byte	0x9
	.2byte	0x272
	.4byte	0x8cc
	.byte	0x3c
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x275
	.4byte	0x1f3
	.byte	0x40
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x276
	.4byte	0x89
	.byte	0x44
	.uleb128 0x1b
	.4byte	.LASF87
	.byte	0x9
	.2byte	0x277
	.4byte	0x1f3
	.byte	0x48
	.uleb128 0x1b
	.4byte	.LASF88
	.byte	0x9
	.2byte	0x278
	.4byte	0x8d2
	.byte	0x4c
	.uleb128 0x1b
	.4byte	.LASF89
	.byte	0x9
	.2byte	0x27b
	.4byte	0x89
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x27c
	.4byte	0x5dd
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x29f
	.4byte	0x884
	.byte	0x58
	.uleb128 0x1c
	.4byte	.LASF51
	.byte	0x9
	.2byte	0x2a3
	.4byte	0x310
	.2byte	0x148
	.uleb128 0x1c
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x2a4
	.4byte	0x2d2
	.2byte	0x14c
	.uleb128 0x1c
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x2a8
	.4byte	0x8e3
	.2byte	0x2dc
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x2ad
	.4byte	0x689
	.2byte	0x2e0
	.uleb128 0x1c
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x2af
	.4byte	0x8ef
	.2byte	0x2ec
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5e3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF96
	.uleb128 0x19
	.4byte	0x5e3
	.uleb128 0x9
	.byte	0x4
	.4byte	0x482
	.uleb128 0x17
	.4byte	0x89
	.4byte	0x613
	.uleb128 0x18
	.4byte	0x4a0
	.uleb128 0x18
	.4byte	0xf5
	.uleb128 0x18
	.4byte	0x613
	.uleb128 0x18
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5ea
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5f5
	.uleb128 0x17
	.4byte	0x118
	.4byte	0x63d
	.uleb128 0x18
	.4byte	0x4a0
	.uleb128 0x18
	.4byte	0xf5
	.uleb128 0x18
	.4byte	0x118
	.uleb128 0x18
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x61f
	.uleb128 0x17
	.4byte	0x89
	.4byte	0x657
	.uleb128 0x18
	.4byte	0x4a0
	.uleb128 0x18
	.4byte	0xf5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x643
	.uleb128 0xe
	.4byte	0x37
	.4byte	0x66d
	.uleb128 0xf
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0x37
	.4byte	0x67d
	.uleb128 0xf
	.4byte	0x90
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x11f
	.4byte	0x358
	.uleb128 0x1d
	.4byte	.LASF98
	.byte	0xc
	.byte	0x9
	.2byte	0x123
	.4byte	0x6be
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x9
	.2byte	0x125
	.4byte	0x6be
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x126
	.4byte	0x89
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x127
	.4byte	0x6c4
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x689
	.uleb128 0x9
	.byte	0x4
	.4byte	0x67d
	.uleb128 0x1d
	.4byte	.LASF101
	.byte	0xe
	.byte	0x9
	.2byte	0x13f
	.4byte	0x6ff
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x140
	.4byte	0x6ff
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x141
	.4byte	0x6ff
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x142
	.4byte	0x50
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	0x50
	.4byte	0x70f
	.uleb128 0xf
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.byte	0xd0
	.byte	0x9
	.2byte	0x280
	.4byte	0x810
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x282
	.4byte	0x90
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x283
	.4byte	0x5dd
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x284
	.4byte	0x810
	.byte	0x8
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x285
	.4byte	0x209
	.byte	0x24
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x286
	.4byte	0x89
	.byte	0x48
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x287
	.4byte	0x82
	.byte	0x50
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x288
	.4byte	0x6ca
	.byte	0x58
	.uleb128 0x1b
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x289
	.4byte	0x17f
	.byte	0x68
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x28a
	.4byte	0x17f
	.byte	0x70
	.uleb128 0x1b
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x28b
	.4byte	0x17f
	.byte	0x78
	.uleb128 0x1b
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x28c
	.4byte	0x820
	.byte	0x80
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x28d
	.4byte	0x830
	.byte	0x88
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x28e
	.4byte	0x89
	.byte	0xa0
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x28f
	.4byte	0x17f
	.byte	0xa4
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x290
	.4byte	0x17f
	.byte	0xac
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x291
	.4byte	0x17f
	.byte	0xb4
	.uleb128 0x1b
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x292
	.4byte	0x17f
	.byte	0xbc
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x293
	.4byte	0x17f
	.byte	0xc4
	.uleb128 0x1b
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x294
	.4byte	0x89
	.byte	0xcc
	.byte	0
	.uleb128 0xe
	.4byte	0x5e3
	.4byte	0x820
	.uleb128 0xf
	.4byte	0x90
	.byte	0x19
	.byte	0
	.uleb128 0xe
	.4byte	0x5e3
	.4byte	0x830
	.uleb128 0xf
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	0x5e3
	.4byte	0x840
	.uleb128 0xf
	.4byte	0x90
	.byte	0x17
	.byte	0
	.uleb128 0x1e
	.byte	0xf0
	.byte	0x9
	.2byte	0x299
	.4byte	0x864
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x29c
	.4byte	0x864
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x29d
	.4byte	0x874
	.byte	0x78
	.byte	0
	.uleb128 0xe
	.4byte	0x352
	.4byte	0x874
	.uleb128 0xf
	.4byte	0x90
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	0x90
	.4byte	0x884
	.uleb128 0xf
	.4byte	0x90
	.byte	0x1d
	.byte	0
	.uleb128 0x1f
	.byte	0xf0
	.byte	0x9
	.2byte	0x27e
	.4byte	0x8a6
	.uleb128 0x20
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x295
	.4byte	0x70f
	.uleb128 0x20
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x29e
	.4byte	0x840
	.byte	0
	.uleb128 0xe
	.4byte	0x5e3
	.4byte	0x8b6
	.uleb128 0xf
	.4byte	0x90
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	.LASF128
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8b6
	.uleb128 0x21
	.4byte	0x8cc
	.uleb128 0x18
	.4byte	0x4a0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8c1
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1f3
	.uleb128 0x21
	.4byte	0x8e3
	.uleb128 0x18
	.4byte	0x89
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8e9
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8d8
	.uleb128 0xe
	.4byte	0x67d
	.4byte	0x8ff
	.uleb128 0xf
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x32e
	.4byte	0x4a0
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x32f
	.4byte	0x4a6
	.uleb128 0xe
	.4byte	0xa2
	.4byte	0x928
	.uleb128 0x22
	.4byte	0x90
	.2byte	0x1ff
	.byte	0
	.uleb128 0x5
	.4byte	0x917
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0xa
	.byte	0x1b
	.4byte	0x928
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0xa
	.byte	0x1c
	.4byte	0xb2
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0xa
	.byte	0x1d
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF134
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF135
	.uleb128 0x23
	.4byte	.LASF154
	.byte	0x5
	.byte	0x1
	.4byte	0x25
	.byte	0xb
	.2byte	0x282
	.4byte	0x987
	.uleb128 0x24
	.4byte	.LASF136
	.sleb128 -1
	.uleb128 0x25
	.4byte	.LASF137
	.byte	0
	.uleb128 0x25
	.4byte	.LASF138
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF139
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF140
	.byte	0xb
	.2byte	0x28d
	.4byte	0x95c
	.uleb128 0x26
	.4byte	.LASF141
	.byte	0x1
	.byte	0xf
	.4byte	0xd2
	.uleb128 0x5
	.byte	0x3
	.4byte	g_irq_cnt
	.uleb128 0x26
	.4byte	.LASF142
	.byte	0x1
	.byte	0x10
	.4byte	0xa2
	.uleb128 0x5
	.byte	0x3
	.4byte	g_gpioa_irq_state
	.uleb128 0x26
	.4byte	.LASF143
	.byte	0x1
	.byte	0x11
	.4byte	0xd2
	.uleb128 0x5
	.byte	0x3
	.4byte	g_irq_timer
	.uleb128 0x26
	.4byte	.LASF144
	.byte	0x1
	.byte	0x56
	.4byte	0xd2
	.uleb128 0x5
	.byte	0x3
	.4byte	strelica
	.uleb128 0x27
	.4byte	.LASF155
	.byte	0x1
	.byte	0x5a
	.4byte	0x89
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xadf
	.uleb128 0x28
	.4byte	.LVL0
	.4byte	0xadf
	.4byte	0xa05
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16c
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL1
	.4byte	0xaea
	.uleb128 0x2a
	.4byte	.LVL2
	.4byte	0xaf5
	.uleb128 0x28
	.4byte	.LVL3
	.4byte	0xb00
	.4byte	0xa2a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL4
	.4byte	0xb0b
	.uleb128 0x28
	.4byte	.LVL5
	.4byte	0xb16
	.4byte	0xa47
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL6
	.4byte	0xb16
	.4byte	0xa5b
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL7
	.4byte	0xb16
	.4byte	0xa6f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL8
	.4byte	0xb16
	.4byte	0xa86
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x28
	.4byte	.LVL9
	.4byte	0xb16
	.4byte	0xa9d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL10
	.4byte	0xb16
	.4byte	0xab4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0xb16
	.4byte	0xacb
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL12
	.4byte	0xb16
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xa
	.byte	0x12
	.uleb128 0x2c
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xa
	.byte	0x19
	.uleb128 0x2c
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xc
	.byte	0x11
	.uleb128 0x2c
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xc
	.byte	0x9
	.uleb128 0x2c
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xa
	.byte	0x17
	.uleb128 0x2c
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xa
	.byte	0x14
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB146
	.4byte	.LFE146
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF48:
	.ascii	"_dso_handle\000"
.LASF2:
	.ascii	"short int\000"
.LASF47:
	.ascii	"_fnargs\000"
.LASF101:
	.ascii	"_rand48\000"
.LASF138:
	.ascii	"__fdlibm_xopen\000"
.LASF80:
	.ascii	"_emergency\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF92:
	.ascii	"_atexit0\000"
.LASF146:
	.ascii	"enIrqUSART2\000"
.LASF121:
	.ascii	"_wcrtomb_state\000"
.LASF122:
	.ascii	"_wcsrtombs_state\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF139:
	.ascii	"__fdlibm_posix\000"
.LASF60:
	.ascii	"_lbfsize\000"
.LASF128:
	.ascii	"__locale_t\000"
.LASF17:
	.ascii	"ITM_RxBuffer\000"
.LASF140:
	.ascii	"__fdlib_version\000"
.LASF119:
	.ascii	"_mbrtowc_state\000"
.LASF145:
	.ascii	"initUSART2\000"
.LASF37:
	.ascii	"__tm_sec\000"
.LASF21:
	.ascii	"_off_t\000"
.LASF65:
	.ascii	"_close\000"
.LASF0:
	.ascii	"signed char\000"
.LASF66:
	.ascii	"_ubuf\000"
.LASF55:
	.ascii	"_base\000"
.LASF39:
	.ascii	"__tm_hour\000"
.LASF24:
	.ascii	"__wch\000"
.LASF95:
	.ascii	"__sf\000"
.LASF46:
	.ascii	"_on_exit_args\000"
.LASF61:
	.ascii	"_cookie\000"
.LASF94:
	.ascii	"__sglue\000"
.LASF7:
	.ascii	"long int\000"
.LASF58:
	.ascii	"_flags\000"
.LASF50:
	.ascii	"_is_cxa\000"
.LASF76:
	.ascii	"_stdin\000"
.LASF137:
	.ascii	"__fdlibm_svid\000"
.LASF86:
	.ascii	"_result_k\000"
.LASF10:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF135:
	.ascii	"double\000"
.LASF90:
	.ascii	"_cvtbuf\000"
.LASF69:
	.ascii	"_offset\000"
.LASF143:
	.ascii	"g_irq_timer\000"
.LASF120:
	.ascii	"_mbsrtowcs_state\000"
.LASF118:
	.ascii	"_mbrlen_state\000"
.LASF53:
	.ascii	"_fns\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF33:
	.ascii	"_sign\000"
.LASF129:
	.ascii	"_impure_ptr\000"
.LASF78:
	.ascii	"_stderr\000"
.LASF35:
	.ascii	"_Bigint\000"
.LASF62:
	.ascii	"_read\000"
.LASF36:
	.ascii	"__tm\000"
.LASF25:
	.ascii	"__wchb\000"
.LASF18:
	.ascii	"SystemCoreClock\000"
.LASF77:
	.ascii	"_stdout\000"
.LASF89:
	.ascii	"_cvtlen\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF59:
	.ascii	"_file\000"
.LASF70:
	.ascii	"_data\000"
.LASF99:
	.ascii	"_niobs\000"
.LASF141:
	.ascii	"g_irq_cnt\000"
.LASF110:
	.ascii	"_rand_next\000"
.LASF116:
	.ascii	"_signal_buf\000"
.LASF107:
	.ascii	"_asctime_buf\000"
.LASF85:
	.ascii	"_result\000"
.LASF151:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF20:
	.ascii	"_LOCK_T\000"
.LASF152:
	.ascii	"main.c\000"
.LASF91:
	.ascii	"_new\000"
.LASF153:
	.ascii	"/home/emina/msut/msut_project\000"
.LASF71:
	.ascii	"_lock\000"
.LASF142:
	.ascii	"g_gpioa_irq_state\000"
.LASF103:
	.ascii	"_mult\000"
.LASF131:
	.ascii	"g_usart2_buffer\000"
.LASF150:
	.ascii	"printUSART2\000"
.LASF63:
	.ascii	"_write\000"
.LASF42:
	.ascii	"__tm_year\000"
.LASF125:
	.ascii	"_nmalloc\000"
.LASF133:
	.ascii	"g_usart2_ridx\000"
.LASF124:
	.ascii	"_nextf\000"
.LASF111:
	.ascii	"_r48\000"
.LASF41:
	.ascii	"__tm_mon\000"
.LASF51:
	.ascii	"_atexit\000"
.LASF83:
	.ascii	"__sdidinit\000"
.LASF109:
	.ascii	"_gamma_signgam\000"
.LASF23:
	.ascii	"wint_t\000"
.LASF134:
	.ascii	"float\000"
.LASF88:
	.ascii	"_freelist\000"
.LASF114:
	.ascii	"_wctomb_state\000"
.LASF144:
	.ascii	"strelica\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF100:
	.ascii	"_iobs\000"
.LASF123:
	.ascii	"_h_errno\000"
.LASF29:
	.ascii	"_flock_t\000"
.LASF44:
	.ascii	"__tm_yday\000"
.LASF54:
	.ascii	"__sbuf\000"
.LASF73:
	.ascii	"_flags2\000"
.LASF97:
	.ascii	"__FILE\000"
.LASF28:
	.ascii	"_mbstate_t\000"
.LASF57:
	.ascii	"__sFILE\000"
.LASF72:
	.ascii	"_mbstate\000"
.LASF112:
	.ascii	"_mblen_state\000"
.LASF79:
	.ascii	"_inc\000"
.LASF52:
	.ascii	"_ind\000"
.LASF82:
	.ascii	"_locale\000"
.LASF84:
	.ascii	"__cleanup\000"
.LASF81:
	.ascii	"_unspecified_locale_info\000"
.LASF32:
	.ascii	"_maxwds\000"
.LASF74:
	.ascii	"_reent\000"
.LASF102:
	.ascii	"_seed\000"
.LASF148:
	.ascii	"delay_ms\000"
.LASF26:
	.ascii	"__count\000"
.LASF127:
	.ascii	"__lock\000"
.LASF27:
	.ascii	"__value\000"
.LASF64:
	.ascii	"_seek\000"
.LASF43:
	.ascii	"__tm_wday\000"
.LASF22:
	.ascii	"_fpos_t\000"
.LASF19:
	.ascii	"long double\000"
.LASF75:
	.ascii	"_errno\000"
.LASF96:
	.ascii	"char\000"
.LASF68:
	.ascii	"_blksize\000"
.LASF56:
	.ascii	"_size\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF147:
	.ascii	"initSYSTIMER\000"
.LASF31:
	.ascii	"_next\000"
.LASF106:
	.ascii	"_strtok_last\000"
.LASF49:
	.ascii	"_fntypes\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF104:
	.ascii	"_add\000"
.LASF30:
	.ascii	"__ULong\000"
.LASF117:
	.ascii	"_getdate_err\000"
.LASF154:
	.ascii	"__fdlibm_version\000"
.LASF130:
	.ascii	"_global_impure_ptr\000"
.LASF136:
	.ascii	"__fdlibm_ieee\000"
.LASF105:
	.ascii	"_unused_rand\000"
.LASF34:
	.ascii	"_wds\000"
.LASF98:
	.ascii	"_glue\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF115:
	.ascii	"_l64a_buf\000"
.LASF93:
	.ascii	"_sig_func\000"
.LASF67:
	.ascii	"_nbuf\000"
.LASF126:
	.ascii	"_unused\000"
.LASF45:
	.ascii	"__tm_isdst\000"
.LASF108:
	.ascii	"_localtime_buf\000"
.LASF38:
	.ascii	"__tm_min\000"
.LASF132:
	.ascii	"g_usart2_widx\000"
.LASF113:
	.ascii	"_mbtowc_state\000"
.LASF87:
	.ascii	"_p5s\000"
.LASF155:
	.ascii	"main\000"
.LASF149:
	.ascii	"chkRxBuffUSART2\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF40:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
