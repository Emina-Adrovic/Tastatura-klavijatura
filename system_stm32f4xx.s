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
	.file	"system_stm32f4xx.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	SystemInit
	.thumb
	.thumb_func
	.type	SystemInit, %function
SystemInit:
.LFB110:
	.file 1 "system_stm32f4xx.c"
	.loc 1 222 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 225 0
	ldr	r1, .L20
	.loc 1 229 0
	ldr	r3, .L20+4
	.loc 1 225 0
	ldr	r2, [r1, #136]
	.loc 1 238 0
	ldr	r0, .L20+8
	.loc 1 225 0
	orr	r2, r2, #15728640
	str	r2, [r1, #136]
	.loc 1 229 0
	ldr	r2, [r3]
	.loc 1 232 0
	movs	r1, #0
	.loc 1 229 0
	orr	r2, r2, #1
	str	r2, [r3]
	.loc 1 232 0
	str	r1, [r3, #8]
	.loc 1 235 0
	ldr	r2, [r3]
	bic	r2, r2, #17301504
	bic	r2, r2, #65536
	str	r2, [r3]
	.loc 1 238 0
	str	r0, [r3, #4]
	.loc 1 241 0
	ldr	r2, [r3]
	.loc 1 222 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 1 241 0
	bic	r2, r2, #262144
	str	r2, [r3]
	.loc 1 244 0
	str	r1, [r3, #12]
.LBB4:
.LBB5:
	.loc 1 359 0
	str	r1, [sp]
	str	r1, [sp, #4]
	.loc 1 362 0
	ldr	r2, [r3]
	orr	r2, r2, #65536
	str	r2, [r3]
	.loc 1 367 0
	mov	r2, r3
	b	.L3
.L19:
	.loc 1 369 0
	ldr	r3, [sp]
	cmp	r3, #1280
	beq	.L2
.L3:
	.loc 1 367 0
	ldr	r3, [r2]
	and	r3, r3, #131072
	str	r3, [sp, #4]
	.loc 1 368 0
	ldr	r3, [sp]
	adds	r3, r3, #1
	str	r3, [sp]
	.loc 1 369 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L19
.L2:
	.loc 1 371 0
	ldr	r3, .L20+4
	ldr	r3, [r3]
	ands	r3, r3, #131072
	.loc 1 373 0
	it	ne
	movne	r3, #1
	.loc 1 377 0
	str	r3, [sp, #4]
	.loc 1 380 0
	ldr	r3, [sp, #4]
	cmp	r3, #1
	beq	.L6
.L10:
	.loc 1 429 0
	ldr	r2, .L20+4
	.loc 1 432 0
	ldr	r1, .L20+12
	.loc 1 429 0
	ldr	r3, [r2, #8]
	bic	r3, r3, #8388608
	str	r3, [r2, #8]
	.loc 1 432 0
	str	r1, [r2, #132]
	.loc 1 435 0
	ldr	r3, [r2]
	orr	r3, r3, #67108864
	str	r3, [r2]
.L7:
	.loc 1 438 0
	ldr	r3, [r2]
	lsls	r3, r3, #4
	bpl	.L7
.LBE5:
.LBE4:
	.loc 1 258 0
	ldr	r3, .L20
	mov	r2, #134217728
	str	r2, [r3, #8]
	.loc 1 260 0
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L6:
	.cfi_restore_state
.LBB7:
.LBB6:
	.loc 1 383 0
	ldr	r3, .L20+4
	.loc 1 384 0
	ldr	r1, .L20+16
	.loc 1 383 0
	ldr	r2, [r3, #64]
	.loc 1 396 0
	ldr	r0, .L20+20
	.loc 1 383 0
	orr	r2, r2, #268435456
	str	r2, [r3, #64]
	.loc 1 384 0
	ldr	r2, [r1]
	orr	r2, r2, #16384
	str	r2, [r1]
	.loc 1 387 0
	ldr	r2, [r3, #8]
	str	r2, [r3, #8]
	.loc 1 390 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #32768
	str	r2, [r3, #8]
	.loc 1 393 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #5120
	str	r2, [r3, #8]
	.loc 1 396 0
	str	r0, [r3, #4]
	.loc 1 400 0
	ldr	r2, [r3]
	orr	r2, r2, #16777216
	str	r2, [r3]
	.loc 1 403 0
	mov	r2, r3
.L8:
	ldr	r1, [r2]
	ldr	r3, .L20+4
	lsls	r1, r1, #6
	bpl	.L8
	.loc 1 408 0
	ldr	r2, .L20+24
	movw	r1, #1541
	str	r1, [r2]
	.loc 1 411 0
	ldr	r2, [r3, #8]
	bic	r2, r2, #3
	str	r2, [r3, #8]
	.loc 1 412 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #2
	str	r2, [r3, #8]
	.loc 1 415 0
	mov	r2, r3
.L9:
	ldr	r3, [r2, #8]
	and	r3, r3, #12
	cmp	r3, #8
	bne	.L9
	b	.L10
.L21:
	.align	2
.L20:
	.word	-536810240
	.word	1073887232
	.word	603992080
	.word	805322880
	.word	1073770496
	.word	121656328
	.word	1073888256
.LBE6:
.LBE7:
	.cfi_endproc
.LFE110:
	.size	SystemInit, .-SystemInit
	.align	2
	.global	SystemCoreClockUpdate
	.thumb
	.thumb_func
	.type	SystemCoreClockUpdate, %function
SystemCoreClockUpdate:
.LFB111:
	.loc 1 299 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 303 0
	ldr	r0, .L31
	ldr	r3, [r0, #8]
.LVL1:
	and	r3, r3, #12
.LVL2:
	.loc 1 305 0
	cmp	r3, #4
	beq	.L24
	cmp	r3, #8
	beq	.L25
	ldr	r3, .L31+4
.LVL3:
.L23:
	.loc 1 341 0
	ldr	r2, .L31
	ldr	r1, .L31+8
	ldr	r2, [r2, #8]
	ubfx	r2, r2, #4, #4
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
.LVL4:
	.loc 1 343 0
	lsrs	r3, r3, r2
	str	r3, [r1, #16]
	bx	lr
.LVL5:
.L25:
	.loc 1 318 0
	ldr	r3, [r0, #4]
.LVL6:
	.loc 1 319 0
	ldr	r1, [r0, #4]
	.loc 1 321 0
	tst	r3, #4194304
	.loc 1 324 0
	ldr	r3, [r0, #4]
.LVL7:
	it	ne
	ldrne	r0, .L31+12
	.loc 1 319 0
	and	r2, r1, #63
.LVL8:
	.loc 1 329 0
	ite	eq
	ldreq	r1, .L31+4
	.loc 1 324 0
	udivne	r1, r0, r2
	.loc 1 329 0
	ubfx	r3, r3, #6, #9
	it	eq
	udiveq	r1, r1, r2
	mul	r2, r1, r3
.LVL9:
	.loc 1 332 0
	ldr	r3, .L31
	ldr	r3, [r3, #4]
.LVL10:
	ubfx	r3, r3, #16, #2
.LVL11:
	adds	r3, r3, #1
	lsls	r3, r3, #1
	.loc 1 333 0
	udiv	r3, r2, r3
	.loc 1 334 0
	b	.L23
.LVL12:
.L24:
	.loc 1 312 0
	ldr	r3, .L31+12
.LVL13:
	b	.L23
.L32:
	.align	2
.L31:
	.word	1073887232
	.word	16000000
	.word	.LANCHOR0
	.word	8000000
	.cfi_endproc
.LFE111:
	.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
	.global	AHBPrescTable
	.global	SystemCoreClock
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	AHBPrescTable, %object
	.size	AHBPrescTable, 16
AHBPrescTable:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.type	SystemCoreClock, %object
	.size	SystemCoreClock, 4
SystemCoreClock:
	.word	168000000
	.text
.Letext0:
	.file 2 "/home/samir/Documents/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/samir/Documents/MSUT/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.file 5 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5b3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x1
	.4byte	.LASF79
	.4byte	.LASF80
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
	.byte	0x8c
	.byte	0x4
	.2byte	0x150
	.4byte	0x1ea
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x152
	.4byte	0x1ea
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x153
	.4byte	0xca
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x154
	.4byte	0xca
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x155
	.4byte	0xca
	.byte	0xc
	.uleb128 0x8
	.ascii	"SCR\000"
	.byte	0x4
	.2byte	0x156
	.4byte	0xca
	.byte	0x10
	.uleb128 0x8
	.ascii	"CCR\000"
	.byte	0x4
	.2byte	0x157
	.4byte	0xca
	.byte	0x14
	.uleb128 0x8
	.ascii	"SHP\000"
	.byte	0x4
	.2byte	0x158
	.4byte	0x1ff
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x159
	.4byte	0xca
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x15a
	.4byte	0xca
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x15b
	.4byte	0xca
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x15c
	.4byte	0xca
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x15d
	.4byte	0xca
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x15e
	.4byte	0xca
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x15f
	.4byte	0xca
	.byte	0x3c
	.uleb128 0x8
	.ascii	"PFR\000"
	.byte	0x4
	.2byte	0x160
	.4byte	0x214
	.byte	0x40
	.uleb128 0x8
	.ascii	"DFR\000"
	.byte	0x4
	.2byte	0x161
	.4byte	0x1ea
	.byte	0x48
	.uleb128 0x8
	.ascii	"ADR\000"
	.byte	0x4
	.2byte	0x162
	.4byte	0x1ea
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x163
	.4byte	0x22e
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x164
	.4byte	0x248
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x165
	.4byte	0x238
	.byte	0x74
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x166
	.4byte	0xca
	.byte	0x88
	.byte	0
	.uleb128 0x9
	.4byte	0xca
	.uleb128 0xa
	.4byte	0x97
	.4byte	0x1ff
	.uleb128 0xb
	.4byte	0xc3
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x1ef
	.uleb128 0xa
	.4byte	0xb8
	.4byte	0x214
	.uleb128 0xb
	.4byte	0xc3
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x219
	.uleb128 0x5
	.4byte	0x204
	.uleb128 0xa
	.4byte	0xb8
	.4byte	0x22e
	.uleb128 0xb
	.4byte	0xc3
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x233
	.uleb128 0x5
	.4byte	0x21e
	.uleb128 0xa
	.4byte	0xb8
	.4byte	0x248
	.uleb128 0xb
	.4byte	0xc3
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x24d
	.uleb128 0x5
	.4byte	0x238
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x167
	.4byte	0xcf
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0xd
	.byte	0x1
	.byte	0x5
	.2byte	0x11d
	.4byte	0x279
	.uleb128 0xe
	.4byte	.LASF34
	.sleb128 0
	.uleb128 0xf
	.ascii	"SET\000"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.byte	0x18
	.byte	0x5
	.2byte	0x245
	.4byte	0x2cf
	.uleb128 0x8
	.ascii	"ACR\000"
	.byte	0x5
	.2byte	0x247
	.4byte	0xca
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x248
	.4byte	0xca
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x249
	.4byte	0xca
	.byte	0x8
	.uleb128 0x8
	.ascii	"SR\000"
	.byte	0x5
	.2byte	0x24a
	.4byte	0xca
	.byte	0xc
	.uleb128 0x8
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x24b
	.4byte	0xca
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x24c
	.4byte	0xca
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x24d
	.4byte	0x279
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.2byte	0x2d3
	.4byte	0x2fe
	.uleb128 0x8
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x2d5
	.4byte	0xca
	.byte	0
	.uleb128 0x8
	.ascii	"CSR\000"
	.byte	0x5
	.2byte	0x2d6
	.4byte	0xca
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x2d7
	.4byte	0x2db
	.uleb128 0x6
	.byte	0x88
	.byte	0x5
	.2byte	0x2dd
	.4byte	0x499
	.uleb128 0x8
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x2df
	.4byte	0xca
	.byte	0
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x2e0
	.4byte	0xca
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x2e1
	.4byte	0xca
	.byte	0x8
	.uleb128 0x8
	.ascii	"CIR\000"
	.byte	0x5
	.2byte	0x2e2
	.4byte	0xca
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x2e3
	.4byte	0xca
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x2e4
	.4byte	0xca
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x2e5
	.4byte	0xca
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x2e6
	.4byte	0xb8
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x5
	.2byte	0x2e7
	.4byte	0xca
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x2e8
	.4byte	0xca
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x2e9
	.4byte	0x204
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x5
	.2byte	0x2ea
	.4byte	0xca
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x2eb
	.4byte	0xca
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x2ec
	.4byte	0xca
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x5
	.2byte	0x2ed
	.4byte	0xb8
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x2ee
	.4byte	0xca
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x2ef
	.4byte	0xca
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x2f0
	.4byte	0x204
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x2f1
	.4byte	0xca
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x2f2
	.4byte	0xca
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x2f3
	.4byte	0xca
	.byte	0x58
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x2f4
	.4byte	0xb8
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x2f5
	.4byte	0xca
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x2f6
	.4byte	0xca
	.byte	0x64
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x2f7
	.4byte	0x204
	.byte	0x68
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x2f8
	.4byte	0xca
	.byte	0x70
	.uleb128 0x8
	.ascii	"CSR\000"
	.byte	0x5
	.2byte	0x2f9
	.4byte	0xca
	.byte	0x74
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x2fa
	.4byte	0x204
	.byte	0x78
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x2fb
	.4byte	0xca
	.byte	0x80
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x2fc
	.4byte	0xca
	.byte	0x84
	.byte	0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x2fd
	.4byte	0x30a
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x162
	.byte	0x1
	.4byte	0x4cb
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x167
	.4byte	0xca
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x167
	.4byte	0xca
	.byte	0
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x1
	.byte	0xdd
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x507
	.uleb128 0x13
	.4byte	0x4a5
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xfc
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x15
	.4byte	0x4b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x15
	.4byte	0x4be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x12a
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56e
	.uleb128 0x17
	.ascii	"tmp\000"
	.byte	0x1
	.2byte	0x12c
	.4byte	0xb8
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x12c
	.4byte	0xb8
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x12c
	.4byte	0xb8
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x12c
	.4byte	0xb8
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x12c
	.4byte	0xb8
	.4byte	.LLST4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x51b
	.4byte	0x25e
	.uleb128 0x1a
	.4byte	.LASF76
	.byte	0x1
	.byte	0xbd
	.4byte	0xb8
	.uleb128 0x5
	.byte	0x3
	.4byte	SystemCoreClock
	.uleb128 0xa
	.4byte	0x97
	.4byte	0x59b
	.uleb128 0xb
	.4byte	0xc3
	.byte	0xf
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF77
	.byte	0x1
	.byte	0xbf
	.4byte	0x5ac
	.uleb128 0x5
	.byte	0x3
	.4byte	AHBPrescTable
	.uleb128 0x9
	.4byte	0x5b1
	.uleb128 0x5
	.4byte	0x58b
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x3c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x3d
	.byte	0x24
	.byte	0x1a
	.byte	0x40
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0x1a
	.byte	0x46
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x32
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
.LASF55:
	.ascii	"AHB1LPENR\000"
.LASF45:
	.ascii	"APB1RSTR\000"
.LASF49:
	.ascii	"AHB2ENR\000"
.LASF80:
	.ascii	"/home/samir/Documents/MSUT/STM32F407/examples/audio"
	.ascii	"-passthrough-dac-dma-Samir\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF62:
	.ascii	"BDCR\000"
.LASF19:
	.ascii	"ICSR\000"
.LASF65:
	.ascii	"PLLI2SCFGR\000"
.LASF39:
	.ascii	"PWR_TypeDef\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF64:
	.ascii	"SSCGR\000"
.LASF68:
	.ascii	"HSEStatus\000"
.LASF18:
	.ascii	"CPUID\000"
.LASF35:
	.ascii	"KEYR\000"
.LASF31:
	.ascii	"RESERVED0\000"
.LASF78:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF57:
	.ascii	"AHB3LPENR\000"
.LASF54:
	.ascii	"RESERVED3\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF52:
	.ascii	"APB1ENR\000"
.LASF2:
	.ascii	"short int\000"
.LASF50:
	.ascii	"AHB3ENR\000"
.LASF36:
	.ascii	"OPTKEYR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF27:
	.ascii	"BFAR\000"
.LASF7:
	.ascii	"long int\000"
.LASF66:
	.ascii	"RCC_TypeDef\000"
.LASF46:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF23:
	.ascii	"CFSR\000"
.LASF43:
	.ascii	"AHB2RSTR\000"
.LASF73:
	.ascii	"pllsource\000"
.LASF74:
	.ascii	"pllm\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF72:
	.ascii	"pllp\000"
.LASF21:
	.ascii	"AIRCR\000"
.LASF33:
	.ascii	"SCB_Type\000"
.LASF53:
	.ascii	"APB2ENR\000"
.LASF67:
	.ascii	"StartUpCounter\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF22:
	.ascii	"SHCSR\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF70:
	.ascii	"SystemCoreClockUpdate\000"
.LASF26:
	.ascii	"MMFAR\000"
.LASF40:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF59:
	.ascii	"APB1LPENR\000"
.LASF71:
	.ascii	"pllvco\000"
.LASF20:
	.ascii	"VTOR\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF30:
	.ascii	"ISAR\000"
.LASF25:
	.ascii	"DFSR\000"
.LASF76:
	.ascii	"SystemCoreClock\000"
.LASF24:
	.ascii	"HFSR\000"
.LASF56:
	.ascii	"AHB2LPENR\000"
.LASF29:
	.ascii	"MMFR\000"
.LASF77:
	.ascii	"AHBPrescTable\000"
.LASF47:
	.ascii	"RESERVED1\000"
.LASF51:
	.ascii	"RESERVED2\000"
.LASF81:
	.ascii	"SetSysClock\000"
.LASF58:
	.ascii	"RESERVED4\000"
.LASF61:
	.ascii	"RESERVED5\000"
.LASF63:
	.ascii	"RESERVED6\000"
.LASF48:
	.ascii	"AHB1ENR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF34:
	.ascii	"RESET\000"
.LASF69:
	.ascii	"SystemInit\000"
.LASF42:
	.ascii	"AHB1RSTR\000"
.LASF79:
	.ascii	"system_stm32f4xx.c\000"
.LASF28:
	.ascii	"AFSR\000"
.LASF44:
	.ascii	"AHB3RSTR\000"
.LASF38:
	.ascii	"FLASH_TypeDef\000"
.LASF75:
	.ascii	"ITM_RxBuffer\000"
.LASF41:
	.ascii	"CFGR\000"
.LASF32:
	.ascii	"CPACR\000"
.LASF60:
	.ascii	"APB2LPENR\000"
.LASF37:
	.ascii	"OPTCR\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
