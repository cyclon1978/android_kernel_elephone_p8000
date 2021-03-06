	.cpu generic+fp+simd
	.file	"hacc_sk.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	hacc_set_key
	.type	hacc_set_key, %function
hacc_set_key:
.LFB468:
	.file 1 "/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/drivers/misc/mediatek/masp/mt6735/mach/arm64/hacc_sk.c"
	.loc 1 141 0
	.cfi_startproc
.LVL0:
	.loc 1 146 0
	cmp	w1, 24
	beq	.L3
	cmp	w1, 32
	beq	.L4
	cmp	w1, 16
	beq	.L21
	.loc 1 158 0
	mov	w0, 24578
.LVL1:
	.loc 1 198 0
	ret
.LVL2:
.L21:
	.loc 1 149 0
	mov	w7, 0
.LVL3:
.L5:
	.loc 1 164 0
	adrp	x4, hacc_base
	.loc 1 161 0
	adrp	x2, .LANCHOR0
	add	x5, x2, :lo12:.LANCHOR0
	.loc 1 165 0
	mov	x3, 0
	.loc 1 164 0
	ldr	x6, [x4,#:lo12:hacc_base]
	.loc 1 161 0
	str	w1, [x5,16]
	.loc 1 164 0
	ldr	w5, [x6,4]
	and	w5, w5, -49
	str	w5, [x6,4]
	.loc 1 165 0
	ldr	x5, [x4,#:lo12:hacc_base]
	ldr	w1, [x5,4]
.LVL4:
	orr	w1, w7, w1
	str	w1, [x5,4]
.L6:
	ldr	x1, [x4,#:lo12:hacc_base]
.LBB8:
.LBB9:
	.loc 1 169 0
	add	x5, x4, :lo12:hacc_base
	add	x1, x1, 32
	str	wzr, [x1,x3]
	add	x3, x3, 4
	.loc 1 168 0
	cmp	x3, 32
	bne	.L6
	.loc 1 172 0
	cmp	w0, 1
	beq	.L8
	cmp	w0, 2
	bne	.L22
	.loc 1 178 0
	add	x0, x2, :lo12:.LANCHOR0
.LVL5:
	add	x0, x0, 52
.LVL6:
.L9:
	.loc 1 187 0
	ldr	x3, [x4,#:lo12:hacc_base]
	mov	x1, 0
	ldr	w2, [x3,12]
	and	w2, w2, -17
	str	w2, [x3,12]
.LVL7:
.L10:
	.loc 1 192 0
	ldrb	w7, [x0]
.LVL8:
	add	x0, x0, 4
	ldr	x2, [x4,#:lo12:hacc_base]
	ldrb	w3, [x0,-3]
.LVL9:
	add	x2, x2, 32
	.loc 1 193 0
	ldrb	w6, [x0,-1]
	ldrb	w5, [x0,-2]
	.loc 1 192 0
	lsl	w3, w3, 16
	orr	w3, w3, w7, lsl 24
	orr	w3, w3, w6
	.loc 1 193 0
	orr	w3, w3, w5, lsl 8
.LVL10:
	.loc 1 194 0
	str	w3, [x2,x1]
	add	x1, x1, 4
	.loc 1 190 0
	cmp	x1, 32
	bne	.L10
	mov	w0, 0
.LBE9:
.LBE8:
	.loc 1 198 0
	ret
.LVL11:
.L22:
.LBB11:
.LBB10:
	.loc 1 182 0
	add	x0, x2, :lo12:.LANCHOR0
.LVL12:
	add	x0, x0, 20
.LVL13:
	b	.L9
.LVL14:
.L8:
	.loc 1 175 0
	ldr	x2, [x5]
	mov	w0, 0
.LVL15:
	ldr	w1, [x2,12]
	orr	w1, w1, 16
	str	w1, [x2,12]
.LBE10:
.LBE11:
	.loc 1 198 0
	ret
.LVL16:
.L4:
	.loc 1 155 0
	mov	w7, w1
.LVL17:
	.loc 1 156 0
	b	.L5
.LVL18:
.L3:
	.loc 1 152 0
	mov	w7, 16
.LVL19:
	b	.L5
	.cfi_endproc
.LFE468:
	.size	hacc_set_key, .-hacc_set_key
	.align	2
	.global	hacc_do_aes
	.type	hacc_do_aes, %function
hacc_do_aes:
.LFB469:
	.loc 1 201 0
	.cfi_startproc
.LVL20:
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	w10, w0
	.loc 1 206 0
	ands	w0, w3, 15
.LVL21:
	.loc 1 201 0
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	.loc 1 206 0
	bne	.L42
	.loc 1 215 0
	adrp	x6, hacc_base
	mov	x4, 0
	adrp	x9, .LANCHOR0
	ldr	x7, [x6,#:lo12:hacc_base]
	ldr	w5, [x7,8]
	orr	w5, w5, 2
	str	w5, [x7,8]
.L26:
	ldr	x5, [x6,#:lo12:hacc_base]
	.loc 1 220 0 discriminator 3
	add	x7, x9, :lo12:.LANCHOR0
	add	x8, x6, :lo12:hacc_base
	add	x5, x5, 64
	ldr	w7, [x4,x7]
	str	w7, [x5,x4]
	add	x4, x4, 4
	.loc 1 218 0 discriminator 3
	cmp	x4, 16
	bne	.L26
	.loc 1 225 0
	ldr	x5, [x8]
	.loc 1 223 0
	cmp	w10, 1
	.loc 1 225 0
	ldr	w4, [x5,4]
	.loc 1 223 0
	beq	.L43
	.loc 1 229 0
	and	w4, w4, -2
	str	w4, [x5,4]
.L33:
	.loc 1 215 0
	mov	x4, 0
.L29:
	ldr	x5, [x6,#:lo12:hacc_base]
	.loc 1 239 0 discriminator 3
	add	x8, x6, :lo12:hacc_base
	ldr	w7, [x1,x4]
	add	x5, x5, 16
	str	w7, [x5,x4]
	add	x4, x4, 4
	.loc 1 238 0 discriminator 3
	cmp	x4, 16
	bne	.L29
	.loc 1 242 0
	ldr	x5, [x8]
	add	x1, x1, 16
	ldr	w4, [x5,8]
	orr	w4, w4, 1
	str	w4, [x5,8]
	ldr	x7, [x8]
	add	x5, x7, 8
.L30:
	.loc 1 245 0 discriminator 1
	ldr	w4, [x5]
	tbz	x4, 15, .L30
	.loc 1 245 0 is_stmt 0 discriminator 3
	mov	x4, 0
	add	x5, x4, 80
	.loc 1 249 0 is_stmt 1 discriminator 3
	ldr	w5, [x5,x7]
	str	w5, [x2,x4]
	add	x4, x4, 4
	.loc 1 248 0 discriminator 3
	cmp	x4, 16
	beq	.L31
.L44:
	ldr	x7, [x6,#:lo12:hacc_base]
	add	x5, x4, 80
	.loc 1 249 0
	ldr	w5, [x5,x7]
	str	w5, [x2,x4]
	add	x4, x4, 4
	.loc 1 248 0
	cmp	x4, 16
	bne	.L44
.L31:
	add	x2, x2, 16
	.loc 1 251 0
	cbz	w3, .L25
	.loc 1 256 0
	subs	w3, w3, #16
	bne	.L33
.L25:
	.loc 1 261 0
	ldp	x29, x30, [sp], 16
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
.L43:
	.cfi_restore_state
	.loc 1 225 0
	orr	w4, w4, 1
	str	w4, [x5,4]
	b	.L33
.L42:
	.loc 1 208 0
	adrp	x0, .LC0
	adrp	x1, .LC1
.LVL22:
	mov	w2, w3
.LVL23:
	add	x0, x0, :lo12:.LC0
	add	x1, x1, :lo12:.LC1
	mov	w3, 16
.LVL24:
	bl	printk
.LVL25:
	.loc 1 209 0
	mov	w0, 24579
	b	.L25
	.cfi_endproc
.LFE469:
	.size	hacc_do_aes, .-hacc_do_aes
	.align	2
	.global	hacc_deinit
	.type	hacc_deinit, %function
hacc_deinit:
.LFB470:
	.loc 1 264 0
	.cfi_startproc
	.loc 1 268 0
	adrp	x1, hacc_base
	.loc 1 271 0
	mov	w0, 0
	.loc 1 268 0
	ldr	x2, [x1,#:lo12:hacc_base]
	ldr	w1, [x2,8]
	orr	w1, w1, 2
	str	w1, [x2,8]
	.loc 1 271 0
	ret
	.cfi_endproc
.LFE470:
	.size	hacc_deinit, .-hacc_deinit
	.align	2
	.global	hacc_init
	.type	hacc_init, %function
hacc_init:
.LFB471:
	.loc 1 274 0
	.cfi_startproc
.LVL26:
.LBB18:
.LBB19:
	.loc 1 268 0
	adrp	x6, hacc_base
.LBE19:
.LBE18:
	.loc 1 292 0
	adrp	x7, .LANCHOR0
	.loc 1 274 0
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	.loc 1 292 0
	add	x2, x7, :lo12:.LANCHOR0
	.loc 1 294 0
	mov	x1, 0
	.loc 1 274 0
	add	x29, sp, 0
	.cfi_def_cfa_register 29
.LBB22:
.LBB20:
	.loc 1 268 0
	ldr	x4, [x6,#:lo12:hacc_base]
	mov	x5, x2
.LBE20:
.LBE22:
	.loc 1 274 0
	str	x19, [sp,16]
	.cfi_offset 19, -16
.LBB23:
.LBB21:
	.loc 1 268 0
	ldr	w3, [x4,8]
	orr	w3, w3, 2
	str	w3, [x4,8]
.LBE21:
.LBE23:
	.loc 1 285 0
	ldr	x4, [x6,#:lo12:hacc_base]
	ldr	w3, [x4,8]
	orr	w3, w3, 2
	str	w3, [x4,8]
	.loc 1 288 0
	mov	w3, -4099
	ldr	x4, [x6,#:lo12:hacc_base]
	ldr	w8, [x4,8]
	and	w3, w8, w3
	str	w3, [x4,8]
	.loc 1 289 0
	ldr	x4, [x6,#:lo12:hacc_base]
	ldr	w3, [x4,8]
	orr	w3, w3, 2
	str	w3, [x4,8]
	.loc 1 292 0
	stp	xzr, xzr, [x2]
	stp	xzr, xzr, [x2,16]
	stp	xzr, xzr, [x2,32]
	stp	xzr, xzr, [x2,48]
	stp	xzr, xzr, [x2,64]
	str	wzr, [x2,80]
	.loc 1 294 0
	ldr	w2, [x0]
	cbz	w2, .L50
.L52:
	add	x4, x0, x1
	add	x3, x5, x1
	add	w2, w1, 1
	.loc 1 294 0 is_stmt 0 discriminator 3
	add	x1, x1, 1
	.loc 1 296 0 is_stmt 1 discriminator 3
	ldrb	w4, [x4,4]
	strb	w4, [x3,20]
	.loc 1 294 0 discriminator 3
	ldr	w3, [x0]
	cmp	w3, w2
	bhi	.L52
.L50:
	.loc 1 301 0
	add	x19, x7, :lo12:.LANCHOR0
	mov	w4, 12887
	.loc 1 302 0
	mov	w2, 21522
.LBB24:
.LBB25:
	.loc 1 122 0
	ldr	x3, [x6,#:lo12:hacc_base]
.LBE25:
.LBE24:
	.loc 1 303 0
	mov	w0, w2
.LVL27:
	.loc 1 304 0
	mov	w1, w4
	.loc 1 302 0
	movk	w2, 0x6697, lsl 16
	.loc 1 303 0
	movk	w0, 0x6697, lsl 16
	.loc 1 302 0
	str	w2, [x19,4]
	.loc 1 304 0
	movk	w1, 0x5a5a, lsl 16
	.loc 1 303 0
	str	w0, [x19,8]
	.loc 1 301 0
	movk	w4, 0x5a5a, lsl 16
	.loc 1 304 0
	str	w1, [x19,12]
	.loc 1 315 0
	mov	w0, 1
	.loc 1 301 0
	str	w4, [x7,#:lo12:.LANCHOR0]
	.loc 1 315 0
	mov	w1, 16
.LBB27:
.LBB26:
	.loc 1 122 0
	ldr	w2, [x3,4]
	and	w2, w2, -3
	str	w2, [x3,4]
	.loc 1 131 0
	ldr	x3, [x6,#:lo12:hacc_base]
	ldr	w2, [x3,4]
	orr	w2, w2, 2
	str	w2, [x3,4]
.LBE26:
.LBE27:
	.loc 1 315 0
	bl	hacc_set_key
.LVL28:
	.loc 1 316 0
	cbz	w0, .L56
.L48:
	.loc 1 338 0
	ldr	x19, [sp,16]
	.cfi_remember_state
	.cfi_restore 19
.LVL29:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
.LVL30:
.L56:
	.cfi_restore_state
	.loc 1 319 0
	mov	w0, 1
.LVL31:
	add	x1, x19, 20
	add	x2, x19, 52
	mov	w3, 32
	bl	hacc_do_aes
.LVL32:
	.loc 1 320 0
	cbnz	w0, .L48
	.loc 1 323 0
	mov	w0, 2
.LVL33:
	mov	w1, 32
	bl	hacc_set_key
.LVL34:
	.loc 1 324 0
	cbnz	w0, .L48
	.loc 1 330 0
	adrp	x2, bHACC_HWWrapKeyInit
	mov	w1, 1
	strb	w1, [x2,#:lo12:bHACC_HWWrapKeyInit]
	.loc 1 333 0
	adrp	x2, bHACC_SWKeyInit
	strb	w1, [x2,#:lo12:bHACC_SWKeyInit]
	b	.L48
	.cfi_endproc
.LFE471:
	.size	hacc_init, .-hacc_init
	.section	.rodata.str1.8,"aMS",%progbits,1
	.align	3
.LC0:
	.string	"[%s] size = %d is not %d bytes alignment\n"
	.zero	6
.LC1:
	.string	"HACC"
	.bss
	.align	3
.LANCHOR0 = . + 0
	.type	hacc_ctx, %object
	.size	hacc_ctx, 84
hacc_ctx:
	.zero	84
	.text
.Letext0:
	.file 2 "/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/include/asm-generic/int-ll64.h"
	.file 3 "/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/drivers/misc/mediatek/mach/mt6735/include/mach/mt_typedefs.h"
	.file 4 "/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/include/linux/types.h"
	.file 5 "/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/include/linux/mm_types.h"
	.file 6 "/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/drivers/misc/mediatek/masp/mt6735/mach/arm64/hacc_mach.h"
	.file 7 "/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/include/linux/printk.h"
	.file 8 "/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/include/linux/kernel.h"
	.file 9 "/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/arch/arm64/include/asm/memory.h"
	.file 10 "/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/include/linux/debug_locks.h"
	.file 11 "/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/include/linux/cpumask.h"
	.file 12 "/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/include/asm-generic/pgtable.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5da
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x1
	.4byte	.LASF66
	.4byte	.LASF67
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x8
	.4byte	0x41
	.uleb128 0x4
	.4byte	0x46
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.string	"u64"
	.byte	0x2
	.byte	0x19
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0xa2
	.4byte	0x85
	.uleb128 0x6
	.string	"U8"
	.byte	0x3
	.byte	0x2a
	.4byte	0x62
	.uleb128 0x6
	.string	"U32"
	.byte	0x3
	.byte	0x2e
	.4byte	0x4d
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x36
	.4byte	0x4d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x68
	.4byte	0x62
	.uleb128 0x2
	.byte	0x10
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.2byte	0x136
	.4byte	0x104
	.uleb128 0x9
	.4byte	.LASF17
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF18
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF19
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF20
	.sleb128 3
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0x9a
	.4byte	0x119
	.uleb128 0x9
	.4byte	.LASF21
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF22
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x6
	.byte	0x9d
	.4byte	0x104
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xa0
	.4byte	0x139
	.uleb128 0x9
	.4byte	.LASF24
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x6
	.byte	0xa3
	.4byte	0x124
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.4byte	0x15f
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF28
	.sleb128 24
	.uleb128 0x9
	.4byte	.LASF29
	.sleb128 32
	.byte	0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x6
	.byte	0xaa
	.4byte	0x144
	.uleb128 0xa
	.byte	0x4
	.byte	0x6
	.byte	0xad
	.4byte	0x185
	.uleb128 0x9
	.4byte	.LASF31
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF32
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF33
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x6
	.byte	0xb1
	.4byte	0x16a
	.uleb128 0xb
	.byte	0x10
	.byte	0x6
	.byte	0xb3
	.4byte	0x1a5
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0xb4
	.4byte	0x1a5
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xa9
	.4byte	0x1b5
	.uleb128 0xe
	.4byte	0x34
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x6
	.byte	0xb5
	.4byte	0x190
	.uleb128 0xb
	.byte	0x24
	.byte	0x6
	.byte	0xb7
	.4byte	0x1e1
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0xb8
	.4byte	0xb3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0xb9
	.4byte	0x1e1
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	0xa9
	.4byte	0x1f1
	.uleb128 0xe
	.4byte	0x34
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x6
	.byte	0xba
	.4byte	0x1c0
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x54
	.byte	0x6
	.byte	0xbc
	.4byte	0x239
	.uleb128 0x10
	.string	"cfg"
	.byte	0x6
	.byte	0xbd
	.4byte	0x1b5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0xbe
	.4byte	0xb3
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0xbf
	.4byte	0x1e1
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0xc0
	.4byte	0x1e1
	.byte	0x34
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8c
	.4byte	0xb3
	.byte	0x1
	.4byte	0x289
	.uleb128 0x12
	.string	"id"
	.byte	0x1
	.byte	0x8c
	.4byte	0x185
	.uleb128 0x12
	.string	"key"
	.byte	0x1
	.byte	0x8c
	.4byte	0x15f
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x8e
	.4byte	0xb3
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0x8e
	.4byte	0xb3
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0x8f
	.4byte	0xb3
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x90
	.4byte	0x289
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.4byte	0xa9
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x107
	.4byte	0xb3
	.byte	0x1
	.4byte	0x2ad
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.2byte	0x109
	.4byte	0xb3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x70
	.4byte	0xb3
	.byte	0x1
	.4byte	0x2c9
	.uleb128 0x12
	.string	"cfg"
	.byte	0x1
	.byte	0x70
	.4byte	0x2c9
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.4byte	0x1b5
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x1
	.byte	0x76
	.4byte	0xb3
	.byte	0x1
	.4byte	0x2f6
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.byte	0x76
	.4byte	0x119
	.uleb128 0x13
	.string	"cfg"
	.byte	0x1
	.byte	0x78
	.4byte	0x1b5
	.byte	0
	.uleb128 0x19
	.4byte	0x239
	.8byte	.LFB468
	.8byte	.LFE468-.LFB468
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36e
	.uleb128 0x1a
	.4byte	0x249
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	0x253
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	0x25e
	.uleb128 0x1c
	.4byte	0x267
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	0x272
	.uleb128 0x1b
	.4byte	0x27d
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1e
	.4byte	0x253
	.uleb128 0x1e
	.4byte	0x249
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1b
	.4byte	0x25e
	.uleb128 0x1b
	.4byte	0x267
	.uleb128 0x1c
	.4byte	0x272
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	0x27d
	.4byte	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF51
	.byte	0x1
	.byte	0xc8
	.4byte	0xb3
	.8byte	.LFB469
	.8byte	.LFE469-.LFB469
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x410
	.uleb128 0x20
	.string	"ops"
	.byte	0x1
	.byte	0xc8
	.4byte	0x139
	.4byte	.LLST5
	.uleb128 0x20
	.string	"src"
	.byte	0x1
	.byte	0xc8
	.4byte	0x289
	.4byte	.LLST6
	.uleb128 0x20
	.string	"dst"
	.byte	0x1
	.byte	0xc8
	.4byte	0x289
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc8
	.4byte	0xb3
	.4byte	.LLST8
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0xca
	.4byte	0xb3
	.uleb128 0x13
	.string	"ds"
	.byte	0x1
	.byte	0xcb
	.4byte	0x410
	.uleb128 0x13
	.string	"dt"
	.byte	0x1
	.byte	0xcb
	.4byte	0x410
	.uleb128 0x13
	.string	"vt"
	.byte	0x1
	.byte	0xcb
	.4byte	0x410
	.uleb128 0x22
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x102
	.8byte	.L25
	.uleb128 0x23
	.8byte	.LVL25
	.4byte	0x5cb
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.4byte	0xb3
	.uleb128 0x19
	.4byte	0x28f
	.8byte	.LFB470
	.8byte	.LFE470-.LFB470
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x437
	.uleb128 0x1b
	.4byte	0x2a0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x111
	.4byte	0xb3
	.8byte	.LFB471
	.8byte	.LFE471-.LFB471
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x514
	.uleb128 0x25
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x111
	.4byte	0x514
	.4byte	.LLST9
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.2byte	0x113
	.4byte	0xb3
	.uleb128 0x26
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x114
	.4byte	0x410
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x115
	.4byte	0xb3
	.4byte	.LLST10
	.uleb128 0x22
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x14f
	.8byte	.L48
	.uleb128 0x28
	.4byte	0x28f
	.8byte	.LBB18
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x117
	.4byte	0x4c3
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x1b
	.4byte	0x2a0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0x2cf
	.8byte	.LBB24
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x136
	.4byte	0x4ec
	.uleb128 0x1e
	.4byte	0x2df
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0x1b
	.4byte	0x2ea
	.byte	0
	.byte	0
	.uleb128 0x23
	.8byte	.LVL28
	.4byte	0x239
	.uleb128 0x23
	.8byte	.LVL32
	.4byte	0x36e
	.uleb128 0x23
	.8byte	.LVL34
	.4byte	0x239
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.4byte	0x1f1
	.uleb128 0x29
	.4byte	.LASF55
	.byte	0x1
	.byte	0x48
	.4byte	0x1fc
	.uleb128 0x9
	.byte	0x3
	.8byte	hacc_ctx
	.uleb128 0xd
	.4byte	0x54
	.4byte	0x53a
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF56
	.byte	0x7
	.byte	0x24
	.4byte	0x52f
	.uleb128 0xd
	.4byte	0x46
	.4byte	0x550
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x1b2
	.4byte	0x55c
	.uleb128 0x4
	.4byte	0x545
	.uleb128 0x2b
	.4byte	.LASF58
	.byte	0x9
	.byte	0x61
	.4byte	0x9e
	.uleb128 0x2b
	.4byte	.LASF59
	.byte	0xa
	.byte	0xa
	.4byte	0x54
	.uleb128 0xd
	.4byte	0x2d
	.4byte	0x58d
	.uleb128 0xe
	.4byte	0x34
	.byte	0x40
	.uleb128 0xe
	.4byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF60
	.byte	0xb
	.2byte	0x2f9
	.4byte	0x599
	.uleb128 0x4
	.4byte	0x577
	.uleb128 0x2c
	.4byte	.LASF61
	.byte	0xc
	.2byte	0x1db
	.4byte	0x2d
	.uleb128 0x2b
	.4byte	.LASF62
	.byte	0x6
	.byte	0x34
	.4byte	0x7e
	.uleb128 0x2b
	.4byte	.LASF63
	.byte	0x1
	.byte	0x42
	.4byte	0xd0
	.uleb128 0x2b
	.4byte	.LASF64
	.byte	0x1
	.byte	0x43
	.4byte	0xd0
	.uleb128 0x2d
	.4byte	.LASF69
	.byte	0x7
	.byte	0x7e
	.4byte	0x54
	.uleb128 0x2e
	.4byte	0x3b
	.uleb128 0x2f
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
	.uleb128 0x7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.8byte	.LVL0-.Ltext0
	.8byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL2-.Ltext0
	.8byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL11-.Ltext0
	.8byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL14-.Ltext0
	.8byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL16-.Ltext0
	.8byte	.LFE468-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	0
	.8byte	0
.LLST1:
	.8byte	.LVL0-.Ltext0
	.8byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.8byte	.LVL16-.Ltext0
	.8byte	.LFE468-.Ltext0
	.2byte	0x1
	.byte	0x51
	.8byte	0
	.8byte	0
.LLST2:
	.8byte	.LVL3-.Ltext0
	.8byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x57
	.8byte	.LVL11-.Ltext0
	.8byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x57
	.8byte	.LVL17-.Ltext0
	.8byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x57
	.8byte	.LVL19-.Ltext0
	.8byte	.LFE468-.Ltext0
	.2byte	0x1
	.byte	0x57
	.8byte	0
	.8byte	0
.LLST3:
	.8byte	.LVL7-.Ltext0
	.8byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.8byte	.LVL10-.Ltext0
	.8byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.8byte	0
	.8byte	0
.LLST4:
	.8byte	.LVL6-.Ltext0
	.8byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL13-.Ltext0
	.8byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	0
	.8byte	0
.LLST5:
	.8byte	.LVL20-.Ltext0
	.8byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL21-.Ltext0
	.8byte	.LVL25-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.8byte	0
	.8byte	0
.LLST6:
	.8byte	.LVL20-.Ltext0
	.8byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.8byte	0
	.8byte	0
.LLST7:
	.8byte	.LVL20-.Ltext0
	.8byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x52
	.8byte	0
	.8byte	0
.LLST8:
	.8byte	.LVL20-.Ltext0
	.8byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.8byte	0
	.8byte	0
.LLST9:
	.8byte	.LVL26-.Ltext0
	.8byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	0
	.8byte	0
.LLST10:
	.8byte	.LVL28-.Ltext0
	.8byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL30-.Ltext0
	.8byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL32-.Ltext0
	.8byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL34-.Ltext0
	.8byte	.LFE471-.Ltext0
	.2byte	0x1
	.byte	0x50
	.8byte	0
	.8byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.8byte	.LBB8-.Ltext0
	.8byte	.LBE8-.Ltext0
	.8byte	.LBB11-.Ltext0
	.8byte	.LBE11-.Ltext0
	.8byte	0
	.8byte	0
	.8byte	.LBB18-.Ltext0
	.8byte	.LBE18-.Ltext0
	.8byte	.LBB22-.Ltext0
	.8byte	.LBE22-.Ltext0
	.8byte	.LBB23-.Ltext0
	.8byte	.LBE23-.Ltext0
	.8byte	0
	.8byte	0
	.8byte	.LBB24-.Ltext0
	.8byte	.LBE24-.Ltext0
	.8byte	.LBB27-.Ltext0
	.8byte	.LBE27-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF46:
	.string	"hacc_set_key"
.LASF42:
	.string	"hw_key"
.LASF6:
	.string	"short int"
.LASF1:
	.string	"sizetype"
.LASF64:
	.string	"bHACC_SWKeyInit"
.LASF48:
	.string	"hacc_set_cfg"
.LASF31:
	.string	"AES_SW_KEY"
.LASF30:
	.string	"AES_KEY"
.LASF25:
	.string	"AES_ENC"
.LASF13:
	.string	"UINT32"
.LASF8:
	.string	"long long int"
.LASF50:
	.string	"mode"
.LASF36:
	.string	"config"
.LASF59:
	.string	"debug_locks"
.LASF56:
	.string	"console_printk"
.LASF35:
	.string	"AES_CFG"
.LASF21:
	.string	"AES_ECB_MODE"
.LASF66:
	.string	"/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/kernel-3.10/drivers/misc/mediatek/masp/mt6735/mach/arm64/hacc_sk.c"
.LASF45:
	.string	"tkey"
.LASF14:
	.string	"float"
.LASF67:
	.string	"/proj/mtk02464/Public/P4Android3/ALPS_SW/TRUNK/L0/alps/out/target/product/evb6735_64/obj/KERNEL_OBJ"
.LASF16:
	.string	"__int128 unsigned"
.LASF29:
	.string	"AES_KEY_256"
.LASF63:
	.string	"bHACC_HWWrapKeyInit"
.LASF54:
	.string	"_end"
.LASF10:
	.string	"long int"
.LASF65:
	.ascii	"GNU C 4.9 20140514 (prerelease) -fpreprocessed -mbionic -mli"
	.ascii	"ttle-end"
	.string	"ian -mgeneral-regs-only -mabi=lp64 -g -O2 -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks -fno-pic -fno-stack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-strict-overflow -fconserve-stack"
.LASF47:
	.string	"hacc_deinit"
.LASF69:
	.string	"printk"
.LASF34:
	.string	"AES_KEY_ID"
.LASF43:
	.string	"acon"
.LASF40:
	.string	"blk_sz"
.LASF5:
	.string	"unsigned char"
.LASF52:
	.string	"hacc_init"
.LASF4:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF22:
	.string	"AES_CBC_MODE"
.LASF3:
	.string	"unsigned int"
.LASF18:
	.string	"MM_ANONPAGES"
.LASF62:
	.string	"hacc_base"
.LASF26:
	.string	"AES_OPS"
.LASF7:
	.string	"short unsigned int"
.LASF32:
	.string	"AES_HW_KEY"
.LASF60:
	.string	"cpu_bit_bitmap"
.LASF2:
	.string	"char"
.LASF38:
	.string	"seed"
.LASF27:
	.string	"AES_KEY_128"
.LASF49:
	.string	"hacc_set_mode"
.LASF28:
	.string	"AES_KEY_192"
.LASF11:
	.string	"_Bool"
.LASF55:
	.string	"hacc_ctx"
.LASF39:
	.string	"AES_KEY_SEED"
.LASF51:
	.string	"hacc_do_aes"
.LASF0:
	.string	"long unsigned int"
.LASF53:
	.string	"keyseed"
.LASF37:
	.string	"size"
.LASF33:
	.string	"AES_HW_WRAP_KEY"
.LASF57:
	.string	"hex_asc"
.LASF24:
	.string	"AES_DEC"
.LASF17:
	.string	"MM_FILEPAGES"
.LASF44:
	.string	"akey"
.LASF61:
	.string	"zero_pfn"
.LASF15:
	.string	"BOOL"
.LASF58:
	.string	"memstart_addr"
.LASF20:
	.string	"NR_MM_COUNTERS"
.LASF23:
	.string	"AES_MODE"
.LASF41:
	.string	"sw_key"
.LASF68:
	.string	"hacc_context"
.LASF12:
	.string	"phys_addr_t"
.LASF19:
	.string	"MM_SWAPENTS"
	.ident	"GCC: (GNU) 4.9 20140514 (prerelease)"
