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
	.file	"misc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	getDNumMISC
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getDNumMISC, %function
getDNumMISC:
.LFB110:
	.file 1 "misc.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	push	{r4, r5, r6, r7}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	.loc 1 6 0
	ldr	r2, .L9
	.loc 1 16 0
	ldr	r7, .L9+4
	add	r5, r0, #10
	.loc 1 10 0
	movs	r6, #48
.LVL1:
.L4:
	.loc 1 11 0
	cmp	r1, r2
	.loc 1 10 0
	strb	r6, [r5, #-1]!
.LVL2:
	.loc 1 11 0
	bcc	.L2
	movs	r4, #49
	b	.L3
.L5:
	mov	r4, r3
.L3:
	.loc 1 14 0
	subs	r1, r1, r2
.LVL3:
	adds	r3, r4, #1
	.loc 1 11 0
	cmp	r1, r2
	uxtb	r3, r3
	bcs	.L5
	strb	r4, [r5]
.L2:
	.loc 1 16 0 discriminator 2
	umull	r3, r2, r7, r2
.LVL4:
	.loc 1 8 0 discriminator 2
	cmp	r0, r5
	.loc 1 16 0 discriminator 2
	lsr	r2, r2, #3
.LVL5:
	.loc 1 8 0 discriminator 2
	bne	.L4
	.loc 1 18 0
	pop	{r4, r5, r6, r7}
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL6:
	bx	lr
.L10:
	.align	2
.L9:
	.word	1000000000
	.word	-858993459
	.cfi_endproc
.LFE110:
	.size	getDNumMISC, .-getDNumMISC
	.align	1
	.p2align 2,,3
	.global	putDNumMISC
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	putDNumMISC, %function
putDNumMISC:
.LFB111:
	.loc 1 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL7:
	push	{r4, r5, r6}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	add	r6, r0, #10
	movs	r4, #0
.LVL8:
.L14:
	.loc 1 28 0
	ldrb	r3, [r6, #-1]!	@ zero_extendqisi2
	cmp	r3, #48
	uxtb	r5, r4
	beq	.L24
.LVL9:
	.loc 1 31 0
	ldrh	r4, [r1]
	strb	r3, [r2, r4]
	.loc 1 32 0
	ldrh	r3, [r1]
	.loc 1 24 0
	adds	r4, r5, #1
	.loc 1 32 0
	adds	r3, r3, #1
	.loc 1 24 0
	uxtb	r4, r4
	.loc 1 32 0
	uxth	r3, r3
	.loc 1 24 0
	cmp	r4, #10
	.loc 1 32 0
	strh	r3, [r1]	@ movhi
.LVL10:
	.loc 1 24 0
	beq	.L15
	rsb	r5, r5, #8
	subs	r6, r0, r4
	uxtb	r5, r5
	subs	r5, r6, r5
	rsb	r4, r4, #9
.LVL11:
	adds	r5, r5, #8
	add	r4, r4, r0
.LVL12:
.L16:
	.loc 1 37 0
	ldrb	r0, [r4], #-1	@ zero_extendqisi2
	strb	r0, [r2, r3]
	.loc 1 38 0
	ldrh	r3, [r1]
	adds	r3, r3, #1
	uxth	r3, r3
	.loc 1 24 0
	cmp	r5, r4
	.loc 1 38 0
	strh	r3, [r1]	@ movhi
	.loc 1 24 0
	bne	.L16
.L15:
	.loc 1 41 0
	movs	r1, #0
.LVL13:
	strb	r1, [r2, r3]
	.loc 1 42 0
	pop	{r4, r5, r6}
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL14:
.L24:
	.cfi_restore_state
	.loc 1 28 0 discriminator 1
	cmp	r4, #9
	beq	.L13
	adds	r4, r4, #1
.LVL15:
	b	.L14
.LVL16:
.L13:
	.loc 1 31 0
	ldrh	r0, [r1]
.LVL17:
	strb	r3, [r2, r0]
	.loc 1 32 0
	ldrh	r3, [r1]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.LVL18:
	b	.L15
	.cfi_endproc
.LFE111:
	.size	putDNumMISC, .-putDNumMISC
	.align	1
	.p2align 2,,3
	.global	getStr4NumMISC
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getStr4NumMISC, %function
getStr4NumMISC:
.LFB112:
	.loc 1 45 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL19:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 1 50 0
	movs	r3, #0
	.loc 1 53 0
	cmp	r0, #16
	.loc 1 45 0
	mov	r7, r2
	.loc 1 51 0
	strb	r3, [r2]
	.loc 1 50 0
	strh	r3, [sp, #10]	@ movhi
	.loc 1 53 0
	beq	.L27
	bls	.L112
	cmp	r0, #512
	beq	.L33
	bls	.L113
	cmp	r0, #1024
	beq	.L36
	cmp	r0, #2048
	bne	.L25
	ldr	r3, [r1]
	add	r4, r2, #8
.LVL20:
.L79:
.LBB14:
	.loc 1 262 0
	lsrs	r3, r3, #28
	.loc 1 263 0
	cmp	r3, #9
	.loc 1 262 0
	uxtb	r0, r3
.LVL21:
	.loc 1 265 0
	add	r3, r0, #48
	.loc 1 269 0
	itet	hi
	addhi	r0, r0, #55
.LVL22:
	.loc 1 265 0
	strbls	r3, [r2]
	.loc 1 269 0
	strbhi	r0, [r2]
	.loc 1 271 0
	ldr	r3, [r1]
.LVL23:
	adds	r2, r2, #1
	lsls	r3, r3, #4
	.loc 1 260 0
	cmp	r4, r2
	.loc 1 271 0
	str	r3, [r1]
.LVL24:
	.loc 1 260 0
	bne	.L79
.L111:
.LVL25:
	.loc 1 274 0
	movs	r3, #0
	strb	r3, [r7, #8]
.LVL26:
.L25:
.LBE14:
	.loc 1 283 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL27:
.L112:
	.cfi_restore_state
	.loc 1 53 0
	cmp	r0, #2
	beq	.L29
	bls	.L114
	cmp	r0, #4
	bne	.L115
	ldr	r3, [r1]
	add	r0, r2, #32
.LVL28:
	.loc 1 99 0
	movs	r4, #48
	.loc 1 95 0
	movs	r5, #49
.LVL29:
.L46:
	.loc 1 93 0
	cmp	r3, #0
	.loc 1 95 0
	ite	lt
	strblt	r5, [r2]
	.loc 1 99 0
	strbge	r4, [r2]
	.loc 1 101 0
	ldr	r3, [r1]
	adds	r2, r2, #1
	lsls	r3, r3, #1
	.loc 1 91 0
	cmp	r0, r2
	.loc 1 101 0
	str	r3, [r1]
	.loc 1 91 0
	bne	.L46
	.loc 1 103 0
	movs	r3, #0
	strb	r3, [r7, #32]
	.loc 1 283 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL30:
.L114:
	.cfi_restore_state
	.loc 1 53 0
	cmp	r0, #1
	bne	.L25
	ldr	r3, [r1]
	add	r0, r2, #8
.LVL31:
	.loc 1 65 0
	movs	r5, #48
	.loc 1 61 0
	movs	r4, #49
.LVL32:
.L40:
	.loc 1 59 0
	lsls	r6, r3, #24
	.loc 1 61 0
	ite	mi
	strbmi	r4, [r2]
	.loc 1 65 0
	strbpl	r5, [r2]
	.loc 1 67 0
	ldr	r3, [r1]
	adds	r2, r2, #1
	lsls	r3, r3, #1
	.loc 1 57 0
	cmp	r0, r2
	.loc 1 67 0
	str	r3, [r1]
	.loc 1 57 0
	bne	.L40
	b	.L111
.LVL33:
.L33:
.LBB15:
	.loc 1 222 0
	ldr	r3, [r1]
	ubfx	r3, r3, #4, #4
.LVL34:
	.loc 1 223 0
	cmp	r3, #9
	.loc 1 229 0
	ite	hi
	addhi	r3, r3, #55
.LVL35:
	.loc 1 225 0
	addls	r3, r3, #48
	strb	r3, [r2]
.LVL36:
	.loc 1 231 0
	ldr	r3, [r1]
	lsls	r2, r3, #4
.LVL37:
	.loc 1 222 0
	and	r3, r3, #15
	.loc 1 223 0
	cmp	r3, #9
	.loc 1 225 0
	ite	ls
	addls	r3, r3, #48
	.loc 1 229 0
	addhi	r3, r3, #55
	.loc 1 231 0
	str	r2, [r1]
.LVL38:
	.loc 1 229 0
	strb	r3, [r7, #1]
	.loc 1 231 0
	ldr	r3, [r1]
	.loc 1 234 0
	movs	r2, #0
	.loc 1 231 0
	lsls	r3, r3, #4
	str	r3, [r1]
.LVL39:
	.loc 1 234 0
	strb	r2, [r7, #2]
.LBE15:
	.loc 1 283 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL40:
.L36:
	.cfi_restore_state
	ldr	r3, [r1]
	adds	r4, r2, #4
.LVL41:
.L76:
.LBB16:
	.loc 1 242 0
	ubfx	r3, r3, #12, #4
.LVL42:
	.loc 1 243 0
	cmp	r3, #9
	.loc 1 245 0
	add	r0, r3, #48
	.loc 1 249 0
	itet	hi
	addhi	r3, r3, #55
.LVL43:
	.loc 1 245 0
	strbls	r0, [r2]
	.loc 1 249 0
	strbhi	r3, [r2]
	.loc 1 251 0
	ldr	r3, [r1]
	adds	r2, r2, #1
	lsls	r3, r3, #4
	.loc 1 240 0
	cmp	r2, r4
	.loc 1 251 0
	str	r3, [r1]
	.loc 1 240 0
	bne	.L76
.LVL44:
	.loc 1 254 0
	movs	r3, #0
	strb	r3, [r7, #4]
.LBE16:
	.loc 1 283 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL45:
.L113:
	.cfi_restore_state
	.loc 1 53 0
	cmp	r0, #32
	beq	.L27
	cmp	r0, #256
	bne	.L25
.LBB17:
	.loc 1 154 0
	vldr.32	s14, [r1]
.LVL46:
	.loc 1 159 0
	vcmpe.f32	s14, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L51
	.loc 1 161 0
	movs	r2, #45
.LVL47:
	.loc 1 162 0
	movs	r3, #1
	.loc 1 163 0
	vneg.f32	s14, s14
.LVL48:
	.loc 1 161 0
	strb	r2, [r7]
	.loc 1 162 0
	strh	r3, [sp, #10]	@ movhi
.L51:
	.loc 1 166 0
	vmov.f32	s15, #1.0e+0
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L53
.LVL49:
	.loc 1 181 0
	ble	.L116
	.loc 1 180 0
	movs	r4, #0
	.loc 1 183 0
	vmov.f32	s12, #1.0e+1
	b	.L54
.LVL50:
.L83:
	.loc 1 184 0
	mov	r4, r3
.LVL51:
.L54:
	.loc 1 183 0
	vmul.f32	s15, s15, s12
.LVL52:
	.loc 1 184 0
	adds	r3, r4, #1
	.loc 1 181 0
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	.loc 1 184 0
	uxth	r3, r3
.LVL53:
	.loc 1 181 0
	bgt	.L83
	vdiv.f32	s13, s15, s12
.LVL54:
.L55:
	.loc 1 155 0
	mov	fp, #32
.L56:
.LVL55:
	add	r8, sp, #22
.LBB18:
.LBB19:
	.loc 1 6 0
	ldr	r0, .L117
.LVL56:
	.loc 1 16 0
	ldr	ip, .L117+8
.LBE19:
.LBE18:
	.loc 1 194 0
	mov	r3, r8
	add	r9, sp, #12
.LBB22:
.LBB20:
	.loc 1 10 0
	movs	r6, #48
.LBE20:
.LBE22:
	.loc 1 190 0
	vdiv.f32	s15, s14, s13
.LVL57:
	.loc 1 194 0
	vldr.32	s14, .L117+4
	.loc 1 191 0
	vcvt.u32.f32	s13, s15
.LVL58:
	vmov	r1, s13	@ int
.LVL59:
	.loc 1 193 0
	vcvt.f32.u32	s13, s13
	vsub.f32	s15, s15, s13
.LVL60:
	.loc 1 194 0
	vmul.f32	s15, s15, s14
.LVL61:
	vcvt.u32.f32	s15, s15
	vmov	r5, s15	@ int
.LVL62:
.L61:
.LBB23:
.LBB21:
	.loc 1 11 0
	cmp	r0, r1
	.loc 1 10 0
	strb	r6, [r3, #-1]!
.LVL63:
	.loc 1 11 0
	bhi	.L59
	movs	r2, #48
.L60:
	.loc 1 14 0
	subs	r1, r1, r0
.LVL64:
	.loc 1 13 0
	adds	r2, r2, #1
	.loc 1 11 0
	cmp	r1, r0
	.loc 1 13 0
	uxtb	r2, r2
	.loc 1 11 0
	bcs	.L60
	strb	r2, [r3]
.L59:
	.loc 1 16 0
	umull	r2, r0, ip, r0
.LVL65:
	.loc 1 8 0
	cmp	r9, r3
	.loc 1 16 0
	lsr	r0, r0, #3
.LVL66:
	.loc 1 8 0
	bne	.L61
.LBE21:
.LBE23:
	.loc 1 197 0
	add	r10, sp, #10
	mov	r1, r10
.LVL67:
	mov	r2, r7
	mov	r0, r9
.LVL68:
	str	r3, [sp, #4]
.LVL69:
	bl	putDNumMISC
.LVL70:
.LBB24:
.LBB25:
	.loc 1 6 0
	ldr	r1, .L117
	.loc 1 16 0
	ldr	lr, .L117+8
	.loc 1 10 0
	ldr	r3, [sp, #4]
.LBE25:
.LBE24:
	.loc 1 197 0
	mov	r6, r8
.LBB27:
.LBB26:
	.loc 1 10 0
	mov	ip, #48
.LVL71:
.L64:
	.loc 1 11 0
	cmp	r1, r5
	.loc 1 10 0
	strb	ip, [r6, #-1]!
.LVL72:
	.loc 1 11 0
	bhi	.L62
	movs	r0, #49
	b	.L63
.L84:
	mov	r0, r2
.L63:
	.loc 1 14 0
	subs	r5, r5, r1
.LVL73:
	adds	r2, r0, #1
	.loc 1 11 0
	cmp	r5, r1
	uxtb	r2, r2
	bcs	.L84
	strb	r0, [r6]
.L62:
	.loc 1 16 0
	umull	r2, r1, lr, r1
.LVL74:
	.loc 1 8 0
	cmp	r6, r3
	.loc 1 16 0
	lsr	r1, r1, #3
.LVL75:
	.loc 1 8 0
	bne	.L64
.LVL76:
.LBE26:
.LBE27:
	.loc 1 200 0
	movs	r3, #46
	.loc 1 201 0
	mov	r2, r7
	mov	r1, r10
	mov	r0, r9
	.loc 1 200 0
	strb	r3, [sp, #15]
	.loc 1 201 0
	bl	putDNumMISC
.LVL77:
	.loc 1 203 0
	ldrh	r2, [sp, #10]
	.loc 1 204 0
	adds	r3, r2, #1
	.loc 1 203 0
	movs	r1, #101
	.loc 1 204 0
	uxth	r3, r3
	.loc 1 206 0
	cmp	fp, #45
	.loc 1 203 0
	strb	r1, [r7, r2]
	.loc 1 204 0
	strh	r3, [sp, #10]	@ movhi
	.loc 1 206 0
	bne	.L65
	.loc 1 209 0
	adds	r2, r2, #2
	.loc 1 208 0
	strb	fp, [r7, r3]
	.loc 1 209 0
	strh	r2, [sp, #10]	@ movhi
.L65:
.LVL78:
.LBB28:
.LBB29:
	.loc 1 6 0
	ldr	r2, .L117
	.loc 1 16 0
	ldr	r0, .L117+8
	.loc 1 10 0
	movs	r1, #48
.LVL79:
.L68:
	.loc 1 11 0
	cmp	r2, r4
	.loc 1 10 0
	strb	r1, [r8, #-1]!
.LVL80:
	.loc 1 11 0
	bhi	.L66
	movs	r3, #48
.L67:
	.loc 1 14 0
	subs	r4, r4, r2
.LVL81:
	.loc 1 13 0
	adds	r3, r3, #1
	.loc 1 11 0
	cmp	r4, r2
	.loc 1 13 0
	uxtb	r3, r3
	.loc 1 11 0
	bcs	.L67
	strb	r3, [r8]
.L66:
	.loc 1 16 0
	umull	r3, r2, r0, r2
.LVL82:
	.loc 1 8 0
	cmp	r6, r8
	.loc 1 16 0
	lsr	r2, r2, #3
.LVL83:
	.loc 1 8 0
	bne	.L68
.LVL84:
.L69:
.LBE29:
.LBE28:
.LBE17:
	.loc 1 119 0
	mov	r2, r7
	mov	r1, r10
	mov	r0, r9
	bl	putDNumMISC
.LVL85:
	.loc 1 283 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL86:
.L29:
	.cfi_restore_state
	ldr	r3, [r1]
	add	r0, r2, #16
.LVL87:
	.loc 1 82 0
	movs	r5, #48
	.loc 1 78 0
	movs	r4, #49
.LVL88:
.L43:
	.loc 1 76 0
	lsls	r3, r3, #16
	.loc 1 78 0
	ite	mi
	strbmi	r4, [r2]
	.loc 1 82 0
	strbpl	r5, [r2]
	.loc 1 84 0
	ldr	r3, [r1]
	adds	r2, r2, #1
	lsls	r3, r3, #1
	.loc 1 74 0
	cmp	r0, r2
	.loc 1 84 0
	str	r3, [r1]
	.loc 1 74 0
	bne	.L43
	.loc 1 86 0
	movs	r3, #0
	strb	r3, [r7, #16]
	.loc 1 283 0
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL89:
.L115:
	.cfi_restore_state
	.loc 1 53 0
	cmp	r0, #8
	bne	.L25
.L27:
.LVL90:
	.loc 1 111 0
	ldr	r2, [r1]
.LVL91:
	cmp	r2, #0
	bge	.L47
	.loc 1 113 0
	movs	r3, #45
	strb	r3, [r7]
	.loc 1 115 0
	ldr	r2, [r1]
	.loc 1 114 0
	movs	r3, #1
	.loc 1 115 0
	negs	r2, r2
	str	r2, [r1]
	.loc 1 114 0
	strh	r3, [sp, #10]	@ movhi
.L47:
.LBB30:
.LBB31:
	.loc 1 6 0
	ldr	r1, .L117
.LVL92:
	.loc 1 16 0
	ldr	r6, .L117+8
.LVL93:
	add	r9, sp, #12
.LVL94:
	add	r4, sp, #22
	.loc 1 10 0
	movs	r5, #48
.LVL95:
.L50:
	.loc 1 11 0
	cmp	r1, r2
	.loc 1 10 0
	strb	r5, [r4, #-1]!
.LVL96:
	.loc 1 11 0
	bhi	.L48
	movs	r0, #49
	b	.L49
.L80:
	mov	r0, r3
.L49:
	.loc 1 14 0
	subs	r2, r2, r1
.LVL97:
	adds	r3, r0, #1
	.loc 1 11 0
	cmp	r2, r1
	uxtb	r3, r3
	bcs	.L80
	strb	r0, [r4]
.L48:
	.loc 1 16 0
	umull	r3, r1, r6, r1
.LVL98:
	.loc 1 8 0
	cmp	r9, r4
	.loc 1 16 0
	lsr	r1, r1, #3
.LVL99:
	.loc 1 8 0
	bne	.L50
	add	r10, sp, #10
	b	.L69
.LVL100:
.L53:
.LBE31:
.LBE30:
.LBB32:
	.loc 1 171 0
	vldr.32	s13, .L117+12
	vcmpe.f32	s14, s13
	vmrs	APSR_nzcv, FPSCR
	bpl	.L108
	.loc 1 173 0
	vmov.f32	s15, s13
	.loc 1 170 0
	movs	r4, #1
.LVL101:
.L58:
	.loc 1 173 0
	vmul.f32	s13, s13, s15
.LVL102:
	.loc 1 174 0
	adds	r4, r4, #1
.LVL103:
	.loc 1 171 0
	vcmpe.f32	s14, s13
	vmrs	APSR_nzcv, FPSCR
	.loc 1 174 0
	uxth	r4, r4
.LVL104:
	.loc 1 171 0
	bmi	.L58
.LVL105:
.L110:
	.loc 1 168 0
	mov	fp, #45
	b	.L56
.LVL106:
.L116:
	.loc 1 181 0
	movw	r4, #65535
	vldr.32	s13, .L117+12
	b	.L55
.LVL107:
.L108:
	.loc 1 171 0
	movs	r4, #1
	b	.L110
.L118:
	.align	2
.L117:
	.word	1000000000
	.word	1148846080
	.word	-858993459
	.word	1036831949
.LBE32:
	.cfi_endproc
.LFE112:
	.size	getStr4NumMISC, .-getStr4NumMISC
.Letext0:
	.file 2 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/emina/msut/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "../sdk/core_cm4.h"
	.file 5 "../sdk/system_stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x43d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
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
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x30
	.4byte	0x77
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x51b
	.4byte	0xbf
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x35
	.4byte	0xc4
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x354
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2c
	.4byte	0xa9
	.4byte	.LLST7
	.uleb128 0xa
	.ascii	"num\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0x354
	.4byte	.LLST8
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2c
	.4byte	0x35a
	.4byte	.LLST9
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2f
	.4byte	0x360
	.4byte	.LLST10
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x30
	.4byte	0x366
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.ascii	"k\000"
	.byte	0x1
	.byte	0x31
	.4byte	0x9e
	.4byte	.LLST11
	.uleb128 0xd
	.ascii	"m\000"
	.byte	0x1
	.byte	0x32
	.4byte	0xa9
	.4byte	.LLST12
	.uleb128 0xe
	.4byte	.Ldebug_ranges0+0
	.4byte	0x2a5
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x99
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x9a
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x9b
	.4byte	0x9e
	.4byte	.LLST18
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9c
	.4byte	0xa9
	.4byte	.LLST19
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x9d
	.4byte	0xc4
	.4byte	.LLST20
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x9d
	.4byte	0xc4
	.4byte	.LLST21
	.uleb128 0xf
	.4byte	0x3d7
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xc4
	.4byte	0x1f8
	.uleb128 0x10
	.4byte	0x3ee
	.4byte	.LLST22
	.uleb128 0x10
	.4byte	0x3e3
	.4byte	.LLST23
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x12
	.4byte	0x42d
	.uleb128 0x12
	.4byte	0x436
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x3d7
	.4byte	.LBB24
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0xc7
	.4byte	0x22e
	.uleb128 0x10
	.4byte	0x3ee
	.4byte	.LLST24
	.uleb128 0x10
	.4byte	0x3e3
	.4byte	.LLST25
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x12
	.4byte	0x42d
	.uleb128 0x12
	.4byte	0x436
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x3d7
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0xd4
	.4byte	0x268
	.uleb128 0x10
	.4byte	0x3ee
	.4byte	.LLST26
	.uleb128 0x10
	.4byte	0x3e3
	.4byte	.LLST27
	.uleb128 0x14
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x12
	.4byte	0x42d
	.uleb128 0x12
	.4byte	0x436
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL70
	.4byte	0x376
	.4byte	0x288
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL77
	.4byte	0x376
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x2c2
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0xdb
	.4byte	0x9e
	.4byte	.LLST14
	.byte	0
	.uleb128 0x18
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x2df
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0xef
	.4byte	0x9e
	.4byte	.LLST15
	.byte	0
	.uleb128 0x18
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x2fd
	.uleb128 0x19
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x103
	.4byte	0x9e
	.4byte	.LLST13
	.byte	0
	.uleb128 0x13
	.4byte	0x3d7
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x76
	.4byte	0x337
	.uleb128 0x10
	.4byte	0x3ee
	.4byte	.LLST28
	.uleb128 0x10
	.4byte	0x3e3
	.4byte	.LLST29
	.uleb128 0x14
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x12
	.4byte	0x42d
	.uleb128 0x12
	.4byte	0x436
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL85
	.4byte	0x376
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0xc4
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x9e
	.uleb128 0x1a
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x1b
	.4byte	0x9e
	.4byte	0x376
	.uleb128 0x1c
	.4byte	0x2c
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x1
	.byte	0x14
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d1
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x14
	.4byte	0x35a
	.4byte	.LLST3
	.uleb128 0xa
	.ascii	"m\000"
	.byte	0x1
	.byte	0x14
	.4byte	0x3d1
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF33
	.byte	0x1
	.byte	0x14
	.4byte	0x35a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xd
	.ascii	"k\000"
	.byte	0x1
	.byte	0x16
	.4byte	0x9e
	.4byte	.LLST5
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x1
	.byte	0x16
	.4byte	0x9e
	.4byte	.LLST6
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x1e
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.4byte	0x40e
	.uleb128 0x1f
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3
	.4byte	0x35a
	.uleb128 0x20
	.ascii	"num\000"
	.byte	0x1
	.byte	0x3
	.4byte	0xc4
	.uleb128 0x21
	.ascii	"k\000"
	.byte	0x1
	.byte	0x5
	.4byte	0x9e
	.uleb128 0x22
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6
	.4byte	0xc4
	.byte	0
	.uleb128 0x23
	.4byte	0x3d7
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.4byte	0x3e3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x10
	.4byte	0x3ee
	.4byte	.LLST0
	.uleb128 0x25
	.4byte	0x3f9
	.4byte	.LLST1
	.uleb128 0x25
	.4byte	0x402
	.4byte	.LLST2
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST7:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3dcccccd
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL107-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3dcccccd
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0xb
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x25
	.byte	0x71
	.sleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x9f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 10
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x6
	.byte	0x70
	.sleb128 10
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x3b9aca00
	.byte	0x9f
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF37:
	.ascii	"misc.c\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF31:
	.ascii	"getStr4NumMISC\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF35:
	.ascii	"step\000"
.LASF0:
	.ascii	"float\000"
.LASF26:
	.ascii	"sige\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF24:
	.ascii	"f_step\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF36:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF23:
	.ascii	"dnum\000"
.LASF18:
	.ascii	"ITM_RxBuffer\000"
.LASF28:
	.ascii	"d_part\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF38:
	.ascii	"/home/emina/msut/Tastatura-klavijatura\000"
.LASF21:
	.ascii	"rstr\000"
.LASF22:
	.ascii	"p_int32\000"
.LASF34:
	.ascii	"flag\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF30:
	.ascii	"t_rez\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF27:
	.ascii	"e_part\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF33:
	.ascii	"r_str\000"
.LASF12:
	.ascii	"long long int\000"
.LASF19:
	.ascii	"SystemCoreClock\000"
.LASF20:
	.ascii	"type\000"
.LASF4:
	.ascii	"short int\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF9:
	.ascii	"long int\000"
.LASF25:
	.ascii	"f_num\000"
.LASF2:
	.ascii	"signed char\000"
.LASF32:
	.ascii	"putDNumMISC\000"
.LASF29:
	.ascii	"i_part\000"
.LASF39:
	.ascii	"getDNumMISC\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
