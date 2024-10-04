	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.globl	_PyInit_main                    ; -- Begin function PyInit_main
	.p2align	2
_PyInit_main:                           ; @PyInit_main
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, ___pyx_moduledef@PAGE
	add	x0, x0, ___pyx_moduledef@PAGEOFF
	bl	_PyModuleDef_Init
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __pyx_pymod_create
___pyx_pymod_create:                    ; @__pyx_pymod_create
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #32]
	str	x1, [sp, #24]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #16]
	bl	___Pyx_check_single_interpreter
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #40]
	b	LBB1_27
LBB1_2:
	adrp	x8, ___pyx_m@PAGE
	ldr	x8, [x8, ___pyx_m@PAGEOFF]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB1_7
	b	LBB1_3
LBB1_3:
	adrp	x8, ___pyx_m@PAGE
	ldr	x8, [x8, ___pyx_m@PAGEOFF]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	ldur	w8, [x29, #-32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_5
	b	LBB1_4
LBB1_4:
	b	LBB1_6
LBB1_5:
	ldur	w8, [x29, #-32]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	b	LBB1_6
LBB1_6:
	adrp	x8, ___pyx_m@PAGE
	ldr	x8, [x8, ___pyx_m@PAGEOFF]
	str	x8, [sp, #40]
	b	LBB1_27
LBB1_7:
	ldr	x0, [sp, #32]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_PyObject_GetAttrString
	str	x0, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB1_9
	b	LBB1_8
LBB1_8:
	b	LBB1_26
LBB1_9:
	ldr	x0, [sp]
	bl	_PyModule_NewObject
	str	x0, [sp, #16]
	ldr	x8, [sp]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB1_11
	b	LBB1_10
LBB1_10:
	b	LBB1_13
LBB1_11:
	ldur	x9, [x29, #-16]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB1_13
	b	LBB1_12
LBB1_12:
	ldur	x0, [x29, #-16]
	bl	__Py_Dealloc
	b	LBB1_13
LBB1_13:
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB1_15
	b	LBB1_14
LBB1_14:
	b	LBB1_26
LBB1_15:
	ldr	x0, [sp, #16]
	bl	_PyModule_GetDict
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB1_17
	b	LBB1_16
LBB1_16:
	b	LBB1_26
LBB1_17:
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #8]
	adrp	x2, l_.str.2@PAGE
	add	x2, x2, l_.str.2@PAGEOFF
	adrp	x3, l_.str.3@PAGE
	add	x3, x3, l_.str.3@PAGEOFF
	mov	w4, #1
	bl	___Pyx_copy_spec_to_module
	subs	w8, w0, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB1_19
	b	LBB1_18
LBB1_18:
	b	LBB1_26
LBB1_19:
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #8]
	adrp	x2, l_.str.4@PAGE
	add	x2, x2, l_.str.4@PAGEOFF
	adrp	x3, l_.str.5@PAGE
	add	x3, x3, l_.str.5@PAGEOFF
	mov	w4, #1
	bl	___Pyx_copy_spec_to_module
	subs	w8, w0, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB1_21
	b	LBB1_20
LBB1_20:
	b	LBB1_26
LBB1_21:
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #8]
	adrp	x2, l_.str.6@PAGE
	add	x2, x2, l_.str.6@PAGEOFF
	adrp	x3, l_.str.7@PAGE
	add	x3, x3, l_.str.7@PAGEOFF
	mov	w4, #1
	bl	___Pyx_copy_spec_to_module
	subs	w8, w0, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB1_23
	b	LBB1_22
LBB1_22:
	b	LBB1_26
LBB1_23:
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #8]
	adrp	x2, l_.str.8@PAGE
	add	x2, x2, l_.str.8@PAGEOFF
	adrp	x3, l_.str.9@PAGE
	add	x3, x3, l_.str.9@PAGEOFF
	mov	w4, #0
	bl	___Pyx_copy_spec_to_module
	subs	w8, w0, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB1_25
	b	LBB1_24
LBB1_24:
	b	LBB1_26
LBB1_25:
	ldr	x8, [sp, #16]
	str	x8, [sp, #40]
	b	LBB1_27
LBB1_26:
	ldr	x0, [sp, #16]
	bl	_Py_XDECREF
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #40]
	b	LBB1_27
LBB1_27:
	ldr	x0, [sp, #40]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __pyx_pymod_exec_main
___pyx_pymod_exec_main:                 ; @__pyx_pymod_exec_main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #352
	.cfi_def_cfa_offset 352
	stp	x28, x27, [sp, #320]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #336]            ; 16-byte Folded Spill
	add	x29, sp, #336
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	str	x0, [sp, #112]
	str	wzr, [sp, #108]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #96]
	str	wzr, [sp, #92]
	str	xzr, [sp, #80]
	str	xzr, [sp, #72]
	str	xzr, [sp, #64]
	str	wzr, [sp, #56]
	str	xzr, [sp, #48]
	str	wzr, [sp, #44]
	adrp	x8, ___pyx_m@PAGE
	ldr	x8, [x8, ___pyx_m@PAGEOFF]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB2_4
	b	LBB2_1
LBB2_1:
	adrp	x8, ___pyx_m@PAGE
	ldr	x8, [x8, ___pyx_m@PAGEOFF]
	ldr	x9, [sp, #112]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB2_3
	b	LBB2_2
LBB2_2:
	str	wzr, [sp, #124]
	b	LBB2_136
LBB2_3:
	adrp	x8, _PyExc_RuntimeError@GOTPAGE
	ldr	x8, [x8, _PyExc_RuntimeError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	_PyErr_SetString
	mov	w8, #-1
	str	w8, [sp, #124]
	b	LBB2_136
LBB2_4:
	ldr	x9, [sp, #112]
	adrp	x8, ___pyx_m@PAGE
	str	x9, [x8, ___pyx_m@PAGEOFF]
	ldr	x8, [x8, ___pyx_m@PAGEOFF]
	str	x8, [sp, #168]
	ldr	x8, [sp, #168]
	ldr	w8, [x8]
	str	w8, [sp, #164]
	ldr	w8, [sp, #164]
	add	w8, w8, #1
	str	w8, [sp, #160]
	ldr	w8, [sp, #160]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_6
	b	LBB2_5
LBB2_5:
	b	LBB2_7
LBB2_6:
	ldr	w8, [sp, #160]
	ldr	x9, [sp, #168]
	str	w8, [x9]
	b	LBB2_7
LBB2_7:
	adrp	x8, ___pyx_m@PAGE
	ldr	x0, [x8, ___pyx_m@PAGEOFF]
	bl	_PyModule_GetDict
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_9
	b	LBB2_8
LBB2_8:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3393
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_9:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8]
	str	x8, [sp, #152]
	ldr	x8, [sp, #152]
	ldr	w8, [x8]
	str	w8, [sp, #148]
	ldr	w8, [sp, #148]
	add	w8, w8, #1
	str	w8, [sp, #144]
	ldr	w8, [sp, #144]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_11
	b	LBB2_10
LBB2_10:
	b	LBB2_12
LBB2_11:
	ldr	w8, [sp, #144]
	ldr	x9, [sp, #152]
	str	w8, [x9]
	b	LBB2_12
LBB2_12:
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
	bl	___Pyx_PyImport_AddModuleRef
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9, #8]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_14
	b	LBB2_13
LBB2_13:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3395
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_14:
	adrp	x0, l_.str.13@PAGE
	add	x0, x0, l_.str.13@PAGEOFF
	bl	___Pyx_PyImport_AddModuleRef
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9, #16]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #16]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_16
	b	LBB2_15
LBB2_15:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3396
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_16:
	adrp	x8, ___pyx_m@PAGE
	ldr	x0, [x8, ___pyx_m@PAGEOFF]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x2, [x8, #8]
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	_PyObject_SetAttrString
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB2_18
	b	LBB2_17
LBB2_17:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3397
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_18:
	bl	___Pyx_get_runtime_version
	mov	x1, x0
	mov	x0, #2032
	movk	x0, #780, lsl #16
	mov	w2, #0
	bl	___Pyx_check_binary_version
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB2_20
	b	LBB2_19
LBB2_19:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3408
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_20:
	mov	x0, #0
	bl	_PyTuple_New
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9, #24]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #24]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_22
	b	LBB2_21
LBB2_21:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3412
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_22:
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
	mov	x1, #0
	bl	_PyBytes_FromStringAndSize
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9, #32]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #32]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_24
	b	LBB2_23
LBB2_23:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3413
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_24:
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
	mov	x1, #0
	bl	_PyUnicode_FromStringAndSize
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9, #40]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #40]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_26
	b	LBB2_25
LBB2_25:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3414
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_26:
	adrp	x8, ___pyx_m@PAGE
	ldr	x0, [x8, ___pyx_m@PAGEOFF]
	bl	___pyx_CyFunction_init
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB2_28
	b	LBB2_27
LBB2_27:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3416
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_28:
	bl	___Pyx_InitConstants
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB2_30
	b	LBB2_29
LBB2_29:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3439
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_30:
	mov	w8, #1
	str	w8, [sp, #108]
	bl	___Pyx_InitGlobals
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB2_32
	b	LBB2_31
LBB2_31:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3441
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_32:
	adrp	x8, ___pyx_module_is_main_main@PAGE
	ldr	w8, [x8, ___pyx_module_is_main_main@PAGEOFF]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB2_36
	b	LBB2_33
LBB2_33:
	adrp	x8, ___pyx_m@PAGE
	ldr	x0, [x8, ___pyx_m@PAGEOFF]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x9, #200]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x2, [x8, #176]
	bl	_PyObject_SetAttr
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB2_35
	b	LBB2_34
LBB2_34:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3446
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_35:
	b	LBB2_36
LBB2_36:
	bl	_PyImport_GetModuleDict
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_38
	b	LBB2_37
LBB2_37:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3450
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_38:
	ldr	x0, [sp, #32]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	_PyDict_GetItemString
	subs	x8, x0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_42
	b	LBB2_39
LBB2_39:
	ldr	x0, [sp, #32]
	adrp	x8, ___pyx_m@PAGE
	ldr	x2, [x8, ___pyx_m@PAGEOFF]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	_PyDict_SetItemString
	subs	w8, w0, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_41
	b	LBB2_40
LBB2_40:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3452
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_41:
	b	LBB2_42
LBB2_42:
	bl	___Pyx_InitCachedBuiltins
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB2_44
	b	LBB2_43
LBB2_43:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3457
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_44:
	bl	___Pyx_InitCachedConstants
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB2_46
	b	LBB2_45
LBB2_45:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3459
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_46:
	bl	___Pyx_modinit_global_init_code
	bl	___Pyx_modinit_variable_export_code
	bl	___Pyx_modinit_function_export_code
	bl	___Pyx_modinit_type_init_code
	bl	___Pyx_modinit_type_import_code
	bl	___Pyx_modinit_variable_import_code
	bl	___Pyx_modinit_function_import_code
	bl	_PyThreadState_Get
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #44]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_51
	b	LBB2_47
LBB2_47:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #64]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB2_51
	b	LBB2_48
LBB2_48:
	ldr	x2, [sp, #24]
	adrp	x8, ___pyx_f@PAGE
	ldr	x4, [x8, ___pyx_f@PAGEOFF]
	adrp	x0, ___pyx_pymod_exec_main.__pyx_frame_code@PAGE
	add	x0, x0, ___pyx_pymod_exec_main.__pyx_frame_code@PAGEOFF
	add	x1, sp, #96
	adrp	x3, l_.str.16@PAGE
	add	x3, x3, l_.str.16@PAGEOFF
	mov	w5, #1
	bl	___Pyx_TraceSetupAndCall
	str	w0, [sp, #92]
	ldr	w8, [sp, #92]
	subs	w8, w8, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_50
	b	LBB2_49
LBB2_49:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3472
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_50:
	b	LBB2_51
LBB2_51:
	mov	x0, #1
	bl	_PyList_New
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_53
	b	LBB2_52
LBB2_52:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #3
	str	w8, [sp, #56]
	mov	w8, #3481
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_53:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #136]
	str	x8, [sp, #136]
	ldr	x8, [sp, #136]
	ldr	w8, [x8]
	str	w8, [sp, #132]
	ldr	w8, [sp, #132]
	add	w8, w8, #1
	str	w8, [sp, #128]
	ldr	w8, [sp, #128]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_55
	b	LBB2_54
LBB2_54:
	b	LBB2_56
LBB2_55:
	ldr	w8, [sp, #128]
	ldr	x9, [sp, #136]
	str	w8, [x9]
	b	LBB2_56
LBB2_56:
	ldr	x0, [sp, #72]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x2, [x8, #136]
	mov	x1, #0
	bl	_PyList_SET_ITEM
	mov	w8, #0
	tbz	w8, #0, LBB2_58
	b	LBB2_57
LBB2_57:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #3
	str	w8, [sp, #56]
	mov	w8, #3485
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_58:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #136]
	ldr	x1, [sp, #72]
	mov	w2, #0
	bl	___Pyx_Import
	str	x0, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_60
	b	LBB2_59
LBB2_59:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #3
	str	w8, [sp, #56]
	mov	w8, #3486
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_60:
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-96]
	ldur	x8, [x29, #-96]
	stur	x8, [x29, #-88]
	ldur	x8, [x29, #-88]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_62
	b	LBB2_61
LBB2_61:
	b	LBB2_64
LBB2_62:
	ldur	x9, [x29, #-96]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_64
	b	LBB2_63
LBB2_63:
	ldur	x0, [x29, #-96]
	bl	__Py_Dealloc
	b	LBB2_64
LBB2_64:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #72]
	ldr	x0, [sp, #64]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #136]
	bl	___Pyx_ImportFrom
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_66
	b	LBB2_65
LBB2_65:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #3
	str	w8, [sp, #56]
	mov	w8, #3489
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_66:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x9]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #136]
	ldr	x2, [sp, #72]
	bl	_PyDict_SetItem
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB2_68
	b	LBB2_67
LBB2_67:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #3
	str	w8, [sp, #56]
	mov	w8, #3491
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_68:
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-104]
	ldur	x8, [x29, #-104]
	stur	x8, [x29, #-80]
	ldur	x8, [x29, #-80]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_70
	b	LBB2_69
LBB2_69:
	b	LBB2_72
LBB2_70:
	ldur	x9, [x29, #-104]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_72
	b	LBB2_71
LBB2_71:
	ldur	x0, [x29, #-104]
	bl	__Py_Dealloc
	b	LBB2_72
LBB2_72:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #72]
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-112]
	ldur	x8, [x29, #-112]
	stur	x8, [x29, #-72]
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_74
	b	LBB2_73
LBB2_73:
	b	LBB2_76
LBB2_74:
	ldur	x9, [x29, #-112]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_76
	b	LBB2_75
LBB2_75:
	ldur	x0, [x29, #-112]
	bl	__Py_Dealloc
	b	LBB2_76
LBB2_76:
	mov	x3, #0
	str	xzr, [sp, #64]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x2, [x9, #184]
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x4, [x9, #184]
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x5, [x9]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x6, [x8, #256]
	adrp	x0, ___pyx_mdef_4main_1main@PAGE
	add	x0, x0, ___pyx_mdef_4main_1main@PAGEOFF
	mov	w1, #0
	bl	___Pyx_CyFunction_New
	str	x0, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_78
	b	LBB2_77
LBB2_77:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #5
	str	w8, [sp, #56]
	mov	w8, #3502
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_78:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x9]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #184]
	ldr	x2, [sp, #64]
	bl	_PyDict_SetItem
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB2_80
	b	LBB2_79
LBB2_79:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #5
	str	w8, [sp, #56]
	mov	w8, #3504
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_80:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-120]
	ldur	x8, [x29, #-120]
	stur	x8, [x29, #-64]
	ldur	x8, [x29, #-64]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_82
	b	LBB2_81
LBB2_81:
	b	LBB2_84
LBB2_82:
	ldur	x9, [x29, #-120]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_84
	b	LBB2_83
LBB2_83:
	ldur	x0, [x29, #-120]
	bl	__Py_Dealloc
	b	LBB2_84
LBB2_84:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #64]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #200]
	bl	___Pyx__GetModuleGlobalName
	str	x0, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_86
	b	LBB2_85
LBB2_85:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #27
	str	w8, [sp, #56]
	mov	w8, #3513
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_86:
	ldr	x0, [sp, #64]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #176]
	mov	w2, #2
	bl	___Pyx_PyUnicode_Equals
	str	w0, [sp, #60]
	ldr	w8, [sp, #60]
	subs	w8, w8, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_88
	b	LBB2_87
LBB2_87:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #27
	str	w8, [sp, #56]
	mov	w8, #3515
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_88:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-128]
	ldur	x8, [x29, #-128]
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-56]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_90
	b	LBB2_89
LBB2_89:
	b	LBB2_92
LBB2_90:
	ldur	x9, [x29, #-128]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_92
	b	LBB2_91
LBB2_91:
	ldur	x0, [x29, #-128]
	bl	__Py_Dealloc
	b	LBB2_92
LBB2_92:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #64]
	ldr	w8, [sp, #60]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB2_106
	b	LBB2_93
LBB2_93:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #184]
	bl	___Pyx__GetModuleGlobalName
	str	x0, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_95
	b	LBB2_94
LBB2_94:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #28
	str	w8, [sp, #56]
	mov	w8, #3524
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_95:
	ldr	x0, [sp, #64]
	bl	___Pyx_PyObject_CallNoArg
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_97
	b	LBB2_96
LBB2_96:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #28
	str	w8, [sp, #56]
	mov	w8, #3526
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_97:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-136]
	ldur	x8, [x29, #-136]
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-48]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_99
	b	LBB2_98
LBB2_98:
	b	LBB2_101
LBB2_99:
	ldur	x9, [x29, #-136]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_101
	b	LBB2_100
LBB2_100:
	ldur	x0, [x29, #-136]
	bl	__Py_Dealloc
	b	LBB2_101
LBB2_101:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #64]
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-144]
	ldur	x8, [x29, #-144]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-40]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_103
	b	LBB2_102
LBB2_102:
	b	LBB2_105
LBB2_103:
	ldur	x9, [x29, #-144]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_105
	b	LBB2_104
LBB2_104:
	ldur	x0, [x29, #-144]
	bl	__Py_Dealloc
	b	LBB2_105
LBB2_105:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #72]
	b	LBB2_106
LBB2_106:
	bl	_PyDict_New
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_108
	b	LBB2_107
LBB2_107:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3544
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_108:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x9]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #232]
	ldr	x2, [sp, #72]
	bl	_PyDict_SetItem
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB2_110
	b	LBB2_109
LBB2_109:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #48]
	mov	w8, #1
	str	w8, [sp, #56]
	mov	w8, #3546
	str	w8, [sp, #44]
	b	LBB2_118
LBB2_110:
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-152]
	ldur	x8, [x29, #-152]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_112
	b	LBB2_111
LBB2_111:
	b	LBB2_114
LBB2_112:
	ldur	x9, [x29, #-152]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_114
	b	LBB2_113
LBB2_113:
	ldur	x0, [x29, #-152]
	bl	__Py_Dealloc
	b	LBB2_114
LBB2_114:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #72]
	ldr	w8, [sp, #92]
	subs	w8, w8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_116
	b	LBB2_115
LBB2_115:
	b	LBB2_117
LBB2_116:
	bl	__PyThreadState_UncheckedGet
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #96]
	adrp	x2, __Py_NoneStruct@GOTPAGE
	ldr	x2, [x2, __Py_NoneStruct@GOTPAGEOFF]
	bl	___Pyx_call_return_trace_func
	b	LBB2_117
LBB2_117:
	b	LBB2_135
LBB2_118:
	ldr	x0, [sp, #72]
	bl	_Py_XDECREF
	ldr	x0, [sp, #64]
	bl	_Py_XDECREF
	adrp	x8, ___pyx_m@PAGE
	ldr	x8, [x8, ___pyx_m@PAGEOFF]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB2_131
	b	LBB2_119
LBB2_119:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB2_122
	b	LBB2_120
LBB2_120:
	ldr	w8, [sp, #108]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB2_122
	b	LBB2_121
LBB2_121:
	ldr	w1, [sp, #44]
	ldr	w2, [sp, #56]
	ldr	x3, [sp, #48]
	adrp	x0, l_.str.17@PAGE
	add	x0, x0, l_.str.17@PAGEOFF
	bl	___Pyx_AddTraceback
	b	LBB2_122
LBB2_122:
	b	LBB2_123
LBB2_123:
	adrp	x8, ___pyx_m@PAGE
	add	x8, x8, ___pyx_m@PAGEOFF
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB2_129
	b	LBB2_124
LBB2_124:
	ldr	x8, [sp, #8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldr	x8, [sp]
	stur	x8, [x29, #-160]
	ldur	x8, [x29, #-160]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB2_126
	b	LBB2_125
LBB2_125:
	b	LBB2_128
LBB2_126:
	ldur	x9, [x29, #-160]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_128
	b	LBB2_127
LBB2_127:
	ldur	x0, [x29, #-160]
	bl	__Py_Dealloc
	b	LBB2_128
LBB2_128:
	b	LBB2_129
LBB2_129:
	b	LBB2_130
LBB2_130:
	b	LBB2_134
LBB2_131:
	bl	_PyErr_Occurred
	subs	x8, x0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB2_133
	b	LBB2_132
LBB2_132:
	adrp	x8, _PyExc_ImportError@GOTPAGE
	ldr	x8, [x8, _PyExc_ImportError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	_PyErr_SetString
	b	LBB2_133
LBB2_133:
	b	LBB2_134
LBB2_134:
	b	LBB2_135
LBB2_135:
	adrp	x8, ___pyx_m@PAGE
	ldr	x8, [x8, ___pyx_m@PAGEOFF]
	subs	x8, x8, #0
	cset	w8, ne
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	csetm	w8, eq
	str	w8, [sp, #124]
	b	LBB2_136
LBB2_136:
	ldr	w0, [sp, #124]
	ldp	x29, x30, [sp, #336]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #320]            ; 16-byte Folded Reload
	add	sp, sp, #352
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_check_single_interpreter
___Pyx_check_single_interpreter:        ; @__Pyx_check_single_interpreter
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_PyThreadState_Get
	ldr	x0, [x0, #16]
	bl	_PyInterpreterState_GetID
	str	x0, [sp]
	adrp	x8, ___Pyx_check_single_interpreter.main_interpreter_id@PAGE
	ldr	x8, [x8, ___Pyx_check_single_interpreter.main_interpreter_id@PAGEOFF]
	adds	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB3_2
	b	LBB3_1
LBB3_1:
	ldr	x8, [sp]
	adrp	x9, ___Pyx_check_single_interpreter.main_interpreter_id@PAGE
	str	x8, [x9, ___Pyx_check_single_interpreter.main_interpreter_id@PAGEOFF]
	ldr	x8, [sp]
	adds	x8, x8, #1
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, ne
	and	w9, w8, #0x1
	mov	w8, #0
	ands	w9, w9, #0x1
	csinv	w8, w8, wzr, eq
	stur	w8, [x29, #-4]
	b	LBB3_6
LBB3_2:
	adrp	x8, ___Pyx_check_single_interpreter.main_interpreter_id@PAGE
	ldr	x8, [x8, ___Pyx_check_single_interpreter.main_interpreter_id@PAGEOFF]
	ldr	x9, [sp]
	subs	x8, x8, x9
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB3_4
	b	LBB3_3
LBB3_3:
	adrp	x8, _PyExc_ImportError@GOTPAGE
	ldr	x8, [x8, _PyExc_ImportError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	_PyErr_SetString
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB3_6
LBB3_4:
	b	LBB3_5
LBB3_5:
	stur	wzr, [x29, #-4]
	b	LBB3_6
LBB3_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_copy_spec_to_module
___Pyx_copy_spec_to_module:             ; @__Pyx_copy_spec_to_module
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	str	x2, [sp, #40]
	str	x3, [sp, #32]
	str	w4, [sp, #28]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #40]
	bl	_PyObject_GetAttrString
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB4_9
	b	LBB4_1
LBB4_1:
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB4_3
	b	LBB4_2
LBB4_2:
	ldr	x8, [sp, #16]
	adrp	x9, __Py_NoneStruct@GOTPAGE
	ldr	x9, [x9, __Py_NoneStruct@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB4_4
	b	LBB4_3
LBB4_3:
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #16]
	bl	_PyDict_SetItemString
	str	w0, [sp, #12]
	b	LBB4_4
LBB4_4:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB4_6
	b	LBB4_5
LBB4_5:
	b	LBB4_8
LBB4_6:
	ldur	x9, [x29, #-16]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB4_8
	b	LBB4_7
LBB4_7:
	ldur	x0, [x29, #-16]
	bl	__Py_Dealloc
	b	LBB4_8
LBB4_8:
	b	LBB4_13
LBB4_9:
	adrp	x8, _PyExc_AttributeError@GOTPAGE
	ldr	x8, [x8, _PyExc_AttributeError@GOTPAGEOFF]
	ldr	x0, [x8]
	bl	_PyErr_ExceptionMatches
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB4_11
	b	LBB4_10
LBB4_10:
	bl	_PyErr_Clear
	b	LBB4_12
LBB4_11:
	mov	w8, #-1
	str	w8, [sp, #12]
	b	LBB4_12
LBB4_12:
	b	LBB4_13
LBB4_13:
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function Py_XDECREF
_Py_XDECREF:                            ; @Py_XDECREF
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB5_6
	b	LBB5_1
LBB5_1:
	ldr	x8, [sp, #8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB5_3
	b	LBB5_2
LBB5_2:
	b	LBB5_5
LBB5_3:
	ldr	x9, [sp, #16]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB5_5
	b	LBB5_4
LBB5_4:
	ldr	x0, [sp, #16]
	bl	__Py_Dealloc
	b	LBB5_5
LBB5_5:
	b	LBB5_6
LBB5_6:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyImport_AddModuleRef
___Pyx_PyImport_AddModuleRef:           ; @__Pyx_PyImport_AddModuleRef
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_PyImport_AddModule
	str	x0, [sp]
	ldr	x0, [sp]
	bl	_Py_XINCREF
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_check_binary_version
___Pyx_check_binary_version:            ; @__Pyx_check_binary_version
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #352
	.cfi_def_cfa_offset 352
	stp	x28, x27, [sp, #320]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #336]            ; 16-byte Folded Spill
	add	x29, sp, #336
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	x0, [sp, #96]
	str	x1, [sp, #88]
	str	w2, [sp, #84]
	mov	x8, #4294901760
	str	x8, [sp, #72]
	ldr	x8, [sp, #88]
	and	x8, x8, #0xffff0000
	ldr	x9, [sp, #96]
	and	x9, x9, #0xffff0000
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB7_2
	b	LBB7_1
LBB7_1:
	str	wzr, [sp, #108]
	b	LBB7_7
LBB7_2:
	ldr	w8, [sp, #84]
	subs	w8, w8, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #68]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB7_4
	b	LBB7_3
LBB7_3:
	ldr	x8, [sp, #88]
	and	x8, x8, #0xffff0000
	ldr	x9, [sp, #96]
	and	x9, x9, #0xffff0000
	subs	x8, x8, x9
	cset	w8, hi
	str	w8, [sp, #68]                   ; 4-byte Folded Spill
	b	LBB7_4
LBB7_4:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	mov	w9, #1
	eor	w8, w8, #0x1
	eor	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB7_6
	b	LBB7_5
LBB7_5:
	mov	w8, #1
	str	w8, [sp, #108]
	b	LBB7_7
LBB7_6:
	ldr	x8, [sp, #96]
	lsr	x13, x8, #24
	ldr	x8, [sp, #96]
	lsr	x8, x8, #16
	and	x12, x8, #0xff
	ldr	w8, [sp, #84]
	subs	w8, w8, #0
	cset	w8, ne
	and	w10, w8, #0x1
	adrp	x9, l_.str.21@PAGE
	add	x9, x9, l_.str.21@PAGEOFF
	adrp	x8, l_.str.20@PAGE
	add	x8, x8, l_.str.20@PAGEOFF
	ands	w10, w10, #0x1
	csel	x11, x8, x9, ne
	ldr	x8, [sp, #88]
	lsr	x10, x8, #24
	ldr	x8, [sp, #88]
	lsr	x8, x8, #16
	and	x8, x8, #0xff
	mov	x9, sp
	str	x13, [x9]
	str	x12, [x9, #8]
	adrp	x12, l_.str@PAGE
	add	x12, x12, l_.str@PAGEOFF
	str	x12, [x9, #16]
	str	x11, [x9, #24]
	str	x10, [x9, #32]
	str	x8, [x9, #40]
	add	x0, sp, #112
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	mov	x1, #200
	adrp	x2, l_.str.19@PAGE
	add	x2, x2, l_.str.19@PAGEOFF
	bl	_PyOS_snprintf
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	mov	x0, #0
	mov	x2, #1
	bl	_PyErr_WarnEx
	str	w0, [sp, #108]
	b	LBB7_7
LBB7_7:
	ldr	w8, [sp, #108]
	str	w8, [sp, #52]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB7_9
	b	LBB7_8
LBB7_8:
	bl	___stack_chk_fail
LBB7_9:
	ldr	w0, [sp, #52]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #336]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #320]            ; 16-byte Folded Reload
	add	sp, sp, #352
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_get_runtime_version
___Pyx_get_runtime_version:             ; @__Pyx_get_runtime_version
	.cfi_startproc
; %bb.0:
	adrp	x8, _Py_Version@GOTPAGE
	ldr	x8, [x8, _Py_Version@GOTPAGEOFF]
	ldr	x8, [x8]
	and	x0, x8, #0xffffffffffffff00
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __pyx_CyFunction_init
___pyx_CyFunction_init:                 ; @__pyx_CyFunction_init
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	adrp	x0, ___pyx_CyFunctionType_type@PAGE
	add	x0, x0, ___pyx_CyFunctionType_type@PAGEOFF
	bl	___Pyx_FetchCommonType
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9, #48]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #48]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB9_2
	b	LBB9_1
LBB9_1:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB9_3
LBB9_2:
	stur	wzr, [x29, #-4]
	b	LBB9_3
LBB9_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_InitConstants
___Pyx_InitConstants:                   ; @__Pyx_InitConstants
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___Pyx_CreateStringTabAndInitStrings
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB10_2
	b	LBB10_1
LBB10_1:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	adrp	x9, ___pyx_filename@PAGE
	str	x8, [x9, ___pyx_filename@PAGEOFF]
	adrp	x9, ___pyx_lineno@PAGE
	mov	w8, #1
	str	w8, [x9, ___pyx_lineno@PAGEOFF]
	mov	w8, #3114
	adrp	x9, ___pyx_clineno@PAGE
	str	w8, [x9, ___pyx_clineno@PAGEOFF]
	b	LBB10_7
LBB10_2:
	mov	x0, #0
	bl	_PyLong_FromLong
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9, #240]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #240]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB10_4
	b	LBB10_3
LBB10_3:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	adrp	x9, ___pyx_filename@PAGE
	str	x8, [x9, ___pyx_filename@PAGEOFF]
	adrp	x9, ___pyx_lineno@PAGE
	mov	w8, #1
	str	w8, [x9, ___pyx_lineno@PAGEOFF]
	mov	w8, #3115
	adrp	x9, ___pyx_clineno@PAGE
	str	w8, [x9, ___pyx_clineno@PAGEOFF]
	b	LBB10_7
LBB10_4:
	mov	x0, #1
	bl	_PyLong_FromLong
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9, #248]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #248]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB10_6
	b	LBB10_5
LBB10_5:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	adrp	x9, ___pyx_filename@PAGE
	str	x8, [x9, ___pyx_filename@PAGEOFF]
	adrp	x9, ___pyx_lineno@PAGE
	mov	w8, #1
	str	w8, [x9, ___pyx_lineno@PAGEOFF]
	adrp	x9, ___pyx_clineno@PAGE
	mov	w8, #3116
	str	w8, [x9, ___pyx_clineno@PAGEOFF]
	b	LBB10_7
LBB10_6:
	stur	wzr, [x29, #-4]
	b	LBB10_8
LBB10_7:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB10_8
LBB10_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_InitGlobals
___Pyx_InitGlobals:                     ; @__Pyx_InitGlobals
	.cfi_startproc
; %bb.0:
	mov	w0, #0
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_InitCachedBuiltins
___Pyx_InitCachedBuiltins:              ; @__Pyx_InitCachedBuiltins
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #216]
	bl	___Pyx_GetBuiltinName
	adrp	x8, ___pyx_builtin_print@PAGE
	str	x0, [x8, ___pyx_builtin_print@PAGEOFF]
	ldr	x8, [x8, ___pyx_builtin_print@PAGEOFF]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_2
	b	LBB12_1
LBB12_1:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	adrp	x9, ___pyx_filename@PAGE
	str	x8, [x9, ___pyx_filename@PAGEOFF]
	adrp	x9, ___pyx_lineno@PAGE
	mov	w8, #10
	str	w8, [x9, ___pyx_lineno@PAGEOFF]
	adrp	x9, ___pyx_clineno@PAGE
	mov	w8, #3060
	str	w8, [x9, ___pyx_clineno@PAGEOFF]
	b	LBB12_5
LBB12_2:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #224]
	bl	___Pyx_GetBuiltinName
	adrp	x8, ___pyx_builtin_range@PAGE
	str	x0, [x8, ___pyx_builtin_range@PAGEOFF]
	ldr	x8, [x8, ___pyx_builtin_range@PAGEOFF]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_4
	b	LBB12_3
LBB12_3:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	adrp	x9, ___pyx_filename@PAGE
	str	x8, [x9, ___pyx_filename@PAGEOFF]
	mov	w8, #15
	adrp	x9, ___pyx_lineno@PAGE
	str	w8, [x9, ___pyx_lineno@PAGEOFF]
	mov	w8, #3061
	adrp	x9, ___pyx_clineno@PAGE
	str	w8, [x9, ___pyx_clineno@PAGEOFF]
	b	LBB12_5
LBB12_4:
	stur	wzr, [x29, #-4]
	b	LBB12_6
LBB12_5:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB12_6
LBB12_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_InitCachedConstants
___Pyx_InitCachedConstants:             ; @__Pyx_InitCachedConstants
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___pyx_mstate_global@PAGE
	stur	x8, [x29, #-16]                 ; 8-byte Folded Spill
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #64]
	mov	x9, sp
	str	x8, [x9]
	mov	x0, #1
	bl	_PyTuple_Pack
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9, #264]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #264]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB13_2
	b	LBB13_1
LBB13_1:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	adrp	x9, ___pyx_filename@PAGE
	str	x8, [x9, ___pyx_filename@PAGEOFF]
	mov	w8, #18
	adrp	x9, ___pyx_lineno@PAGE
	str	w8, [x9, ___pyx_lineno@PAGEOFF]
	mov	w8, #3079
	adrp	x9, ___pyx_clineno@PAGE
	str	w8, [x9, ___pyx_clineno@PAGEOFF]
	b	LBB13_9
LBB13_2:
	adrp	x8, ___pyx_mstate_global@PAGE
	stur	x8, [x29, #-24]                 ; 8-byte Folded Spill
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #72]
	mov	x9, sp
	str	x8, [x9]
	mov	x0, #1
	bl	_PyTuple_Pack
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9, #272]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #272]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB13_4
	b	LBB13_3
LBB13_3:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	adrp	x9, ___pyx_filename@PAGE
	str	x8, [x9, ___pyx_filename@PAGEOFF]
	mov	w8, #20
	adrp	x9, ___pyx_lineno@PAGE
	str	w8, [x9, ___pyx_lineno@PAGEOFF]
	mov	w8, #3090
	adrp	x9, ___pyx_clineno@PAGE
	str	w8, [x9, ___pyx_clineno@PAGEOFF]
	b	LBB13_9
LBB13_4:
	adrp	x8, ___pyx_mstate_global@PAGE
	stur	x8, [x29, #-32]                 ; 8-byte Folded Spill
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x11, [x9, #128]
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x10, [x9, #152]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #144]
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	mov	x0, #3
	bl	_PyTuple_Pack
	ldur	x8, [x29, #-32]                 ; 8-byte Folded Reload
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9, #280]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #280]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB13_6
	b	LBB13_5
LBB13_5:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	adrp	x9, ___pyx_filename@PAGE
	str	x8, [x9, ___pyx_filename@PAGEOFF]
	adrp	x9, ___pyx_lineno@PAGE
	mov	w8, #5
	str	w8, [x9, ___pyx_lineno@PAGEOFF]
	mov	w8, #3101
	adrp	x9, ___pyx_clineno@PAGE
	str	w8, [x9, ___pyx_clineno@PAGEOFF]
	b	LBB13_9
LBB13_6:
	adrp	x8, ___pyx_mstate_global@PAGE
	stur	x8, [x29, #-40]                 ; 8-byte Folded Spill
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x6, [x9, #32]
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x7, [x9, #24]
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x15, [x9, #24]
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x14, [x9, #280]
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x13, [x9, #24]
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x12, [x9, #24]
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x11, [x9, #192]
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x10, [x9, #184]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #32]
	mov	x9, sp
	stur	x9, [x29, #-48]                 ; 8-byte Folded Spill
	str	x15, [x9]
	str	x14, [x9, #8]
	str	x13, [x9, #16]
	str	x12, [x9, #24]
	str	x11, [x9, #32]
	str	x10, [x9, #40]
	mov	w10, #5
	str	w10, [x9, #48]
	str	x8, [x9, #56]
	mov	w4, #0
	mov	x0, x4
	mov	x1, x4
	mov	x2, x4
	mov	w5, #3
	mov	x3, x5
	bl	___Pyx_PyCode_New
	ldur	x8, [x29, #-40]                 ; 8-byte Folded Reload
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	str	x0, [x9, #256]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #256]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB13_8
	b	LBB13_7
LBB13_7:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	adrp	x9, ___pyx_filename@PAGE
	str	x8, [x9, ___pyx_filename@PAGEOFF]
	adrp	x9, ___pyx_lineno@PAGE
	mov	w8, #5
	str	w8, [x9, ___pyx_lineno@PAGEOFF]
	adrp	x9, ___pyx_clineno@PAGE
	mov	w8, #3104
	str	w8, [x9, ___pyx_clineno@PAGEOFF]
	b	LBB13_9
LBB13_8:
	stur	wzr, [x29, #-4]
	b	LBB13_10
LBB13_9:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB13_10
LBB13_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_modinit_global_init_code
___Pyx_modinit_global_init_code:        ; @__Pyx_modinit_global_init_code
	.cfi_startproc
; %bb.0:
	mov	w0, #0
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_modinit_variable_export_code
___Pyx_modinit_variable_export_code:    ; @__Pyx_modinit_variable_export_code
	.cfi_startproc
; %bb.0:
	mov	w0, #0
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_modinit_function_export_code
___Pyx_modinit_function_export_code:    ; @__Pyx_modinit_function_export_code
	.cfi_startproc
; %bb.0:
	mov	w0, #0
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_modinit_type_init_code
___Pyx_modinit_type_init_code:          ; @__Pyx_modinit_type_init_code
	.cfi_startproc
; %bb.0:
	mov	w0, #0
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_modinit_type_import_code
___Pyx_modinit_type_import_code:        ; @__Pyx_modinit_type_import_code
	.cfi_startproc
; %bb.0:
	mov	w0, #0
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_modinit_variable_import_code
___Pyx_modinit_variable_import_code:    ; @__Pyx_modinit_variable_import_code
	.cfi_startproc
; %bb.0:
	mov	w0, #0
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_modinit_function_import_code
___Pyx_modinit_function_import_code:    ; @__Pyx_modinit_function_import_code
	.cfi_startproc
; %bb.0:
	mov	w0, #0
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_TraceSetupAndCall
___Pyx_TraceSetupAndCall:               ; @__Pyx_TraceSetupAndCall
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	str	x4, [sp, #48]
	str	w5, [sp, #44]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB21_2
	b	LBB21_1
LBB21_1:
	mov	w8, #0
	tbnz	w8, #0, LBB21_9
	b	LBB21_2
LBB21_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB21_6
	b	LBB21_3
LBB21_3:
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #48]
	ldr	w2, [sp, #44]
	bl	___Pyx_createFrameCodeObject
	ldur	x8, [x29, #-16]
	str	x0, [x8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB21_5
	b	LBB21_4
LBB21_4:
	stur	wzr, [x29, #-4]
	b	LBB21_12
LBB21_5:
	b	LBB21_6
LBB21_6:
	ldur	x0, [x29, #-32]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x2, [x8]
	mov	x3, #0
	bl	_PyFrame_New
	ldur	x8, [x29, #-24]
	str	x0, [x8]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB21_8
	b	LBB21_7
LBB21_7:
	stur	wzr, [x29, #-4]
	b	LBB21_12
LBB21_8:
	b	LBB21_9
LBB21_9:
	ldr	w8, [sp, #44]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	str	w8, [x9, #40]
	mov	w8, #1
	str	w8, [sp, #12]
	ldur	x0, [x29, #-32]
	bl	_PyThreadState_EnterTracing
	ldur	x0, [x29, #-32]
	add	x1, sp, #32
	add	x2, sp, #24
	add	x3, sp, #16
	bl	___Pyx_ErrFetchInState
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #64]
	ldur	x9, [x29, #-32]
	ldr	x0, [x9, #80]
	ldur	x9, [x29, #-24]
	ldr	x1, [x9]
	mov	w2, #0
	mov	x3, #0
	blr	x8
	subs	w8, w0, #0
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	ldur	x0, [x29, #-32]
	bl	_PyThreadState_LeaveTracing
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB21_11
	b	LBB21_10
LBB21_10:
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	___Pyx_ErrRestoreInState
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, ne
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	LBB21_12
LBB21_11:
	ldr	x0, [sp, #32]
	bl	_Py_XDECREF
	ldr	x0, [sp, #24]
	bl	_Py_XDECREF
	ldr	x0, [sp, #16]
	bl	_Py_XDECREF
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB21_12
LBB21_12:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyList_SET_ITEM
_PyList_SET_ITEM:                       ; @PyList_SET_ITEM
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	_Py_TYPE
	mov	x1, #33554432
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB22_2
	b	LBB22_1
LBB22_1:
	adrp	x0, l___func__.PyList_SET_ITEM@PAGE
	add	x0, x0, l___func__.PyList_SET_ITEM@PAGEOFF
	adrp	x1, l_.str.78@PAGE
	add	x1, x1, l_.str.78@PAGEOFF
	mov	w2, #43
	adrp	x3, l_.str.79@PAGE
	add	x3, x3, l_.str.79@PAGEOFF
	bl	___assert_rtn
LBB22_2:
	b	LBB22_3
LBB22_3:
	ldur	x8, [x29, #-8]
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	ldr	x9, [x9, #24]
	ldr	x10, [sp, #16]
	str	x8, [x9, x10, lsl #3]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_Import
___Pyx_Import:                          ; @__Pyx_Import
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #16]
	str	xzr, [sp, #8]
	str	xzr, [sp]
	bl	_PyDict_New
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB23_2
	b	LBB23_1
LBB23_1:
	b	LBB23_7
LBB23_2:
	ldur	w8, [x29, #-20]
	adds	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB23_4
	b	LBB23_3
LBB23_3:
	stur	wzr, [x29, #-20]
	b	LBB23_4
LBB23_4:
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB23_6
	b	LBB23_5
LBB23_5:
	ldur	x0, [x29, #-8]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8]
	ldr	x2, [sp, #8]
	ldur	x3, [x29, #-16]
	ldur	w4, [x29, #-20]
	bl	_PyImport_ImportModuleLevelObject
	str	x0, [sp, #16]
	b	LBB23_6
LBB23_6:
	b	LBB23_7
LBB23_7:
	ldr	x0, [sp, #8]
	bl	_Py_XDECREF
	ldr	x0, [sp]
	bl	_Py_XDECREF
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_ImportFrom
___Pyx_ImportFrom:                      ; @__Pyx_ImportFrom
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	___Pyx_PyObject_GetAttrStr
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB24_12
	b	LBB24_1
LBB24_1:
	adrp	x8, _PyExc_AttributeError@GOTPAGE
	ldr	x8, [x8, _PyExc_AttributeError@GOTPAGEOFF]
	ldr	x0, [x8]
	bl	_PyErr_ExceptionMatches
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB24_12
	b	LBB24_2
LBB24_2:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #32]
	str	xzr, [sp, #24]
	str	xzr, [sp, #16]
	str	xzr, [sp, #8]
	bl	_PyErr_Clear
	ldur	x0, [x29, #-8]
	bl	_PyModule_GetName
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB24_4
	b	LBB24_3
LBB24_3:
	b	LBB24_11
LBB24_4:
	ldr	x0, [sp, #32]
	bl	_PyUnicode_FromString
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB24_6
	b	LBB24_5
LBB24_5:
	b	LBB24_11
LBB24_6:
	ldr	x0, [sp, #24]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #96]
	bl	_PyUnicode_Concat
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB24_8
	b	LBB24_7
LBB24_7:
	b	LBB24_11
LBB24_8:
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	bl	_PyUnicode_Concat
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB24_10
	b	LBB24_9
LBB24_9:
	b	LBB24_11
LBB24_10:
	ldr	x0, [sp, #8]
	bl	_PyImport_GetModule
	stur	x0, [x29, #-24]
	b	LBB24_11
LBB24_11:
	ldr	x0, [sp, #8]
	bl	_Py_XDECREF
	ldr	x0, [sp, #16]
	bl	_Py_XDECREF
	ldr	x0, [sp, #24]
	bl	_Py_XDECREF
	b	LBB24_12
LBB24_12:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB24_14
	b	LBB24_13
LBB24_13:
	adrp	x8, _PyExc_ImportError@GOTPAGE
	ldr	x8, [x8, _PyExc_ImportError@GOTPAGEOFF]
	ldr	x0, [x8]
	ldur	x8, [x29, #-16]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.80@PAGE
	add	x1, x1, l_.str.80@PAGEOFF
	bl	_PyErr_Format
	b	LBB24_14
LBB24_14:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_New
___Pyx_CyFunction_New:                  ; @__Pyx_CyFunction_New
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	str	x5, [sp, #16]
	str	x6, [sp, #8]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #48]
	bl	__PyObject_GC_New
	ldur	x1, [x29, #-8]
	ldur	w2, [x29, #-12]
	ldur	x3, [x29, #-24]
	ldr	x4, [sp, #32]
	ldr	x5, [sp, #24]
	ldr	x6, [sp, #16]
	ldr	x7, [sp, #8]
	bl	___Pyx_CyFunction_Init
	str	x0, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB25_2
	b	LBB25_1
LBB25_1:
	ldr	x0, [sp]
	bl	_PyObject_GC_Track
	b	LBB25_2
LBB25_2:
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx__GetModuleGlobalName
___Pyx__GetModuleGlobalName:            ; @__Pyx__GetModuleGlobalName
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x2, [x8, #24]
	bl	__PyDict_GetItem_KnownHash
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB26_5
	b	LBB26_1
LBB26_1:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB26_3
	b	LBB26_2
LBB26_2:
	b	LBB26_4
LBB26_3:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB26_4
LBB26_4:
	ldr	x8, [sp, #8]
	str	x8, [sp, #24]
	b	LBB26_9
LBB26_5:
	bl	_PyErr_Occurred
	subs	x8, x0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB26_7
	b	LBB26_6
LBB26_6:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	b	LBB26_9
LBB26_7:
	b	LBB26_8
LBB26_8:
	ldr	x0, [sp, #16]
	bl	___Pyx_GetBuiltinName
	str	x0, [sp, #24]
	b	LBB26_9
LBB26_9:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyUnicode_Equals
___Pyx_PyUnicode_Equals:                ; @__Pyx_PyUnicode_Equals
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	w2, [x29, #-44]
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB27_2
	b	LBB27_1
LBB27_1:
	b	LBB27_36
LBB27_2:
	ldur	x0, [x29, #-32]
	adrp	x1, _PyUnicode_Type@GOTPAGE
	ldr	x1, [x1, _PyUnicode_Type@GOTPAGEOFF]
	str	x1, [sp, #32]                   ; 8-byte Folded Spill
	bl	_Py_IS_TYPE
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	stur	w0, [x29, #-48]
	ldur	x0, [x29, #-40]
	bl	_Py_IS_TYPE
	stur	w0, [x29, #-52]
	ldur	w8, [x29, #-48]
	ldur	w9, [x29, #-52]
	ands	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB27_25
	b	LBB27_3
LBB27_3:
	ldur	x0, [x29, #-32]
	bl	_PyUnicode_GET_LENGTH
	stur	x0, [x29, #-64]
	ldur	x8, [x29, #-64]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	_PyUnicode_GET_LENGTH
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, eq
	tbnz	w8, #0, LBB27_5
	b	LBB27_4
LBB27_4:
	b	LBB27_37
LBB27_5:
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #24]
	str	x8, [sp, #64]
	ldur	x8, [x29, #-40]
	ldr	x8, [x8, #24]
	str	x8, [sp, #56]
	ldr	x8, [sp, #64]
	ldr	x9, [sp, #56]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB27_9
	b	LBB27_6
LBB27_6:
	ldr	x8, [sp, #64]
	adds	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB27_9
	b	LBB27_7
LBB27_7:
	ldr	x8, [sp, #56]
	adds	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB27_9
	b	LBB27_8
LBB27_8:
	b	LBB27_37
LBB27_9:
	ldur	x0, [x29, #-32]
	bl	_Py_TYPE
	mov	x1, #268435456
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB27_11
	b	LBB27_10
LBB27_10:
	adrp	x0, l___func__.__Pyx_PyUnicode_Equals@PAGE
	add	x0, x0, l___func__.__Pyx_PyUnicode_Equals@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #3918
	adrp	x3, l_.str.98@PAGE
	add	x3, x3, l_.str.98@PAGEOFF
	bl	___assert_rtn
LBB27_11:
	b	LBB27_12
LBB27_12:
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #32]
	lsr	w8, w8, #2
	and	w8, w8, #0x7
	stur	w8, [x29, #-68]
	ldur	w8, [x29, #-68]
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	_Py_TYPE
	mov	x1, #268435456
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB27_14
	b	LBB27_13
LBB27_13:
	adrp	x0, l___func__.__Pyx_PyUnicode_Equals@PAGE
	add	x0, x0, l___func__.__Pyx_PyUnicode_Equals@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #3919
	adrp	x3, l_.str.99@PAGE
	add	x3, x3, l_.str.99@PAGEOFF
	bl	___assert_rtn
LBB27_14:
	b	LBB27_15
LBB27_15:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	ldur	x9, [x29, #-40]
	ldr	w9, [x9, #32]
	lsr	w9, w9, #2
	and	w9, w9, #0x7
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB27_17
	b	LBB27_16
LBB27_16:
	b	LBB27_37
LBB27_17:
	ldur	x0, [x29, #-32]
	bl	_PyUnicode_DATA
	str	x0, [sp, #80]
	ldur	x0, [x29, #-40]
	bl	_PyUnicode_DATA
	str	x0, [sp, #72]
	ldur	w0, [x29, #-68]
	ldr	x1, [sp, #80]
	mov	x2, #0
	str	x2, [sp, #8]                    ; 8-byte Folded Spill
	bl	_PyUnicode_READ
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	str	w0, [sp, #16]                   ; 4-byte Folded Spill
	ldur	w0, [x29, #-68]
	ldr	x1, [sp, #72]
	bl	_PyUnicode_READ
	mov	x8, x0
	ldr	w0, [sp, #16]                   ; 4-byte Folded Reload
	subs	w8, w0, w8
	cset	w8, eq
	tbnz	w8, #0, LBB27_19
	b	LBB27_18
LBB27_18:
	b	LBB27_37
LBB27_19:
	ldur	x8, [x29, #-64]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB27_21
	b	LBB27_20
LBB27_20:
	b	LBB27_36
LBB27_21:
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #72]
	ldur	x8, [x29, #-64]
	ldursw	x9, [x29, #-68]
	mul	x2, x8, x9
	bl	_memcmp
	str	w0, [sp, #52]
	ldur	w8, [x29, #-44]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB27_23
	b	LBB27_22
LBB27_22:
	ldr	w8, [sp, #52]
	subs	w8, w8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB27_24
LBB27_23:
	ldr	w8, [sp, #52]
	subs	w8, w8, #0
	cset	w8, ne
	and	w8, w8, #0x1
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB27_24
LBB27_24:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	stur	w8, [x29, #-20]
	b	LBB27_38
LBB27_25:
	ldur	x8, [x29, #-32]
	adrp	x9, __Py_NoneStruct@GOTPAGE
	ldr	x9, [x9, __Py_NoneStruct@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, eq
	and	w8, w8, #0x1
	ldur	w9, [x29, #-52]
	ands	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB27_27
	b	LBB27_26
LBB27_26:
	b	LBB27_37
LBB27_27:
	ldur	x8, [x29, #-40]
	adrp	x9, __Py_NoneStruct@GOTPAGE
	ldr	x9, [x9, __Py_NoneStruct@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, eq
	and	w8, w8, #0x1
	ldur	w9, [x29, #-48]
	ands	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB27_29
	b	LBB27_28
LBB27_28:
	b	LBB27_37
LBB27_29:
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	ldur	w2, [x29, #-44]
	bl	_PyObject_RichCompare
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB27_31
	b	LBB27_30
LBB27_30:
	mov	w8, #-1
	stur	w8, [x29, #-20]
	b	LBB27_38
LBB27_31:
	ldr	x0, [sp, #40]
	bl	___Pyx_PyObject_IsTrue
	str	w0, [sp, #48]
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB27_33
	b	LBB27_32
LBB27_32:
	b	LBB27_35
LBB27_33:
	ldur	x9, [x29, #-16]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB27_35
	b	LBB27_34
LBB27_34:
	ldur	x0, [x29, #-16]
	bl	__Py_Dealloc
	b	LBB27_35
LBB27_35:
	ldr	w8, [sp, #48]
	stur	w8, [x29, #-20]
	b	LBB27_38
LBB27_36:
	ldur	w8, [x29, #-44]
	subs	w8, w8, #2
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-20]
	b	LBB27_38
LBB27_37:
	ldur	w8, [x29, #-44]
	subs	w8, w8, #3
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-20]
	b	LBB27_38
LBB27_38:
	ldur	w0, [x29, #-20]
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyObject_CallNoArg
___Pyx_PyObject_CallNoArg:              ; @__Pyx_PyObject_CallNoArg
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #16]
	add	x8, sp, #24
	str	xzr, [sp, #24]
	str	xzr, [sp, #32]
	ldr	x0, [sp, #16]
	add	x1, x8, #8
	mov	x2, #-9223372036854775808
	mov	x3, #0
	bl	___Pyx_PyObject_FastCallDict
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB28_2
	b	LBB28_1
LBB28_1:
	bl	___stack_chk_fail
LBB28_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_call_return_trace_func
___Pyx_call_return_trace_func:          ; @__Pyx_call_return_trace_func
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	str	x2, [sp, #40]
	ldur	x0, [x29, #-24]
	add	x1, sp, #32
	add	x2, sp, #24
	add	x3, sp, #16
	bl	___Pyx_ErrFetchInState
	ldur	x0, [x29, #-24]
	bl	_PyThreadState_EnterTracing
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #64]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB29_2
	b	LBB29_1
LBB29_1:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #64]
	ldur	x9, [x29, #-24]
	ldr	x0, [x9, #80]
	ldur	x1, [x29, #-32]
	ldr	x3, [sp, #40]
	mov	w2, #3
	blr	x8
	b	LBB29_2
LBB29_2:
	b	LBB29_3
LBB29_3:
	sub	x8, x29, #32
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB29_9
	b	LBB29_4
LBB29_4:
	ldr	x8, [sp, #8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldr	x8, [sp]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB29_6
	b	LBB29_5
LBB29_5:
	b	LBB29_8
LBB29_6:
	ldur	x9, [x29, #-16]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB29_8
	b	LBB29_7
LBB29_7:
	ldur	x0, [x29, #-16]
	bl	__Py_Dealloc
	b	LBB29_8
LBB29_8:
	b	LBB29_9
LBB29_9:
	b	LBB29_10
LBB29_10:
	ldur	x0, [x29, #-24]
	bl	_PyThreadState_LeaveTracing
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	___Pyx_ErrRestoreInState
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_AddTraceback
___Pyx_AddTraceback:                    ; @__Pyx_AddTraceback
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	x3, [x29, #-24]
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-32]
	str	xzr, [sp, #40]
	bl	__PyThreadState_UncheckedGet
	str	x0, [sp, #32]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB30_2
	b	LBB30_1
LBB30_1:
	ldr	x0, [sp, #32]
	ldur	w1, [x29, #-12]
	bl	___Pyx_CLineForTraceback
	stur	w0, [x29, #-12]
	b	LBB30_2
LBB30_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB30_4
	b	LBB30_3
LBB30_3:
	ldur	w9, [x29, #-12]
	mov	w8, #0
	subs	w8, w8, w9
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB30_5
LBB30_4:
	ldur	w8, [x29, #-16]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB30_5
LBB30_5:
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	bl	___pyx_find_code_object
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB30_12
	b	LBB30_6
LBB30_6:
	ldr	x0, [sp, #32]
	add	x1, sp, #24
	add	x2, sp, #16
	add	x3, sp, #8
	bl	___Pyx_ErrFetchInState
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	ldur	x3, [x29, #-24]
	bl	___Pyx_CreateCodeObjectForTraceback
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB30_8
	b	LBB30_7
LBB30_7:
	ldr	x0, [sp, #24]
	bl	_Py_XDECREF
	ldr	x0, [sp, #16]
	bl	_Py_XDECREF
	ldr	x0, [sp, #8]
	bl	_Py_XDECREF
	b	LBB30_15
LBB30_8:
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	___Pyx_ErrRestoreInState
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB30_10
	b	LBB30_9
LBB30_9:
	ldur	w9, [x29, #-12]
	mov	w8, #0
	subs	w8, w8, w9
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB30_11
LBB30_10:
	ldur	w8, [x29, #-16]
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB30_11
LBB30_11:
	ldr	w0, [sp]                        ; 4-byte Folded Reload
	ldur	x1, [x29, #-32]
	bl	___pyx_insert_code_object
	b	LBB30_12
LBB30_12:
	ldr	x0, [sp, #32]
	ldur	x1, [x29, #-32]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x2, [x8]
	mov	x3, #0
	bl	_PyFrame_New
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB30_14
	b	LBB30_13
LBB30_13:
	b	LBB30_15
LBB30_14:
	ldur	w8, [x29, #-16]
	ldr	x9, [sp, #40]
	str	w8, [x9, #40]
	ldr	x0, [sp, #40]
	bl	_PyTraceBack_Here
	b	LBB30_15
LBB30_15:
	ldur	x0, [x29, #-32]
	bl	_Py_XDECREF
	ldr	x0, [sp, #40]
	bl	_Py_XDECREF
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function Py_XINCREF
_Py_XINCREF:                            ; @Py_XINCREF
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB31_5
	b	LBB31_1
LBB31_1:
	ldr	x8, [sp, #8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB31_3
	b	LBB31_2
LBB31_2:
	b	LBB31_4
LBB31_3:
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	LBB31_4
LBB31_4:
	b	LBB31_5
LBB31_5:
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_FetchCommonType
___Pyx_FetchCommonType:                 ; @__Pyx_FetchCommonType
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #32]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	bl	___Pyx_FetchSharedCythonABIModule
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB32_2
	b	LBB32_1
LBB32_1:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #40]
	b	LBB32_25
LBB32_2:
	ldr	x8, [sp, #32]
	ldr	x0, [x8, #24]
	mov	w1, #46
	bl	_strrchr
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB32_4
	b	LBB32_3
LBB32_3:
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB32_5
LBB32_4:
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #24]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB32_5
LBB32_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	_PyObject_GetAttrString
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB32_9
	b	LBB32_6
LBB32_6:
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x2, [x8, #32]
	ldr	x8, [sp, #32]
	ldr	x3, [x8, #32]
	bl	___Pyx_VerifyCachedType
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB32_8
	b	LBB32_7
LBB32_7:
	b	LBB32_24
LBB32_8:
	b	LBB32_19
LBB32_9:
	adrp	x8, _PyExc_AttributeError@GOTPAGE
	ldr	x8, [x8, _PyExc_AttributeError@GOTPAGEOFF]
	ldr	x0, [x8]
	bl	_PyErr_ExceptionMatches
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB32_11
	b	LBB32_10
LBB32_10:
	b	LBB32_24
LBB32_11:
	bl	_PyErr_Clear
	ldr	x0, [sp, #32]
	bl	_PyType_Ready
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB32_13
	b	LBB32_12
LBB32_12:
	b	LBB32_24
LBB32_13:
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #32]
	bl	_PyObject_SetAttrString
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB32_15
	b	LBB32_14
LBB32_14:
	b	LBB32_24
LBB32_15:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	ldur	w8, [x29, #-32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB32_17
	b	LBB32_16
LBB32_16:
	b	LBB32_18
LBB32_17:
	ldur	w8, [x29, #-32]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	b	LBB32_18
LBB32_18:
	ldr	x8, [sp, #32]
	str	x8, [sp, #8]
	b	LBB32_19
LBB32_19:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB32_21
	b	LBB32_20
LBB32_20:
	b	LBB32_23
LBB32_21:
	ldur	x9, [x29, #-16]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB32_23
	b	LBB32_22
LBB32_22:
	ldur	x0, [x29, #-16]
	bl	__Py_Dealloc
	b	LBB32_23
LBB32_23:
	ldr	x8, [sp, #8]
	str	x8, [sp, #40]
	b	LBB32_25
LBB32_24:
	ldr	x0, [sp, #8]
	bl	_Py_XDECREF
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	LBB32_19
LBB32_25:
	ldr	x0, [sp, #40]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_FetchSharedCythonABIModule
___Pyx_FetchSharedCythonABIModule:      ; @__Pyx_FetchSharedCythonABIModule
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x0, l_.str.22@PAGE
	add	x0, x0, l_.str.22@PAGEOFF
	bl	___Pyx_PyImport_AddModuleRef
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_VerifyCachedType
___Pyx_VerifyCachedType:                ; @__Pyx_VerifyCachedType
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	x3, [sp, #8]
	ldur	x0, [x29, #-16]
	bl	_PyType_Check
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB34_2
	b	LBB34_1
LBB34_1:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	ldr	x8, [sp, #24]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	_PyErr_Format
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB34_5
LBB34_2:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB34_4
	b	LBB34_3
LBB34_3:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	ldr	x8, [sp, #24]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.24@PAGE
	add	x1, x1, l_.str.24@PAGEOFF
	bl	_PyErr_Format
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB34_5
LBB34_4:
	stur	wzr, [x29, #-4]
	b	LBB34_5
LBB34_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyType_Check
_PyType_Check:                          ; @PyType_Check
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_Py_TYPE
	mov	x1, #2147483648
	bl	_PyType_HasFeature
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyType_HasFeature
_PyType_HasFeature:                     ; @PyType_HasFeature
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #168]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	ands	x8, x8, x9
	cset	w8, ne
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function Py_TYPE
_Py_TYPE:                               ; @Py_TYPE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_dealloc
___Pyx_CyFunction_dealloc:              ; @__Pyx_CyFunction_dealloc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_PyObject_GC_UnTrack
	ldr	x0, [sp, #8]
	bl	___Pyx__CyFunction_dealloc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_repr
___Pyx_CyFunction_repr:                 ; @__Pyx_CyFunction_repr
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x10, [x8, #80]
	ldur	x8, [x29, #-8]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.26@PAGE
	add	x0, x0, l_.str.26@PAGEOFF
	bl	_PyUnicode_FromFormat
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_CallAsMethod
___Pyx_CyFunction_CallAsMethod:         ; @__Pyx_CyFunction_CallAsMethod
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-56]
	stur	x2, [x29, #-64]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	ldr	x8, [x8, #48]
	str	x8, [sp, #56]
	ldr	x8, [sp, #56]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB40_5
	b	LBB40_1
LBB40_1:
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #56]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-56]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB40_3
	b	LBB40_2
LBB40_2:
	adrp	x0, l___func__.__Pyx_CyFunction_CallAsMethod@PAGE
	add	x0, x0, l___func__.__Pyx_CyFunction_CallAsMethod@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #5844
	adrp	x3, l_.str.28@PAGE
	add	x3, x3, l_.str.28@PAGEOFF
	bl	___assert_rtn
LBB40_3:
	b	LBB40_4
LBB40_4:
	ldur	x8, [x29, #-56]
	add	x8, x8, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-56]
	bl	_PyTuple_GET_SIZE
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x4, [x29, #-64]
	bl	___Pyx_PyVectorcall_FastCallDict
	stur	x0, [x29, #-40]
	b	LBB40_22
LBB40_5:
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #144]
	ands	w8, w8, #0x4
	cset	w8, eq
	tbnz	w8, #0, LBB40_20
	b	LBB40_6
LBB40_6:
	ldr	x8, [sp, #64]
	ldr	w8, [x8, #144]
	ands	w8, w8, #0x1
	cset	w8, ne
	tbnz	w8, #0, LBB40_20
	b	LBB40_7
LBB40_7:
	ldur	x0, [x29, #-56]
	bl	_PyTuple_GET_SIZE
	str	x0, [sp, #48]
	ldur	x0, [x29, #-56]
	ldr	x2, [sp, #48]
	mov	x1, #1
	bl	_PyTuple_GetSlice
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB40_9
	b	LBB40_8
LBB40_8:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-40]
	b	LBB40_22
LBB40_9:
	ldur	x0, [x29, #-56]
	mov	x1, #0
	bl	_PyTuple_GetItem
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB40_15
	b	LBB40_10
LBB40_10:
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB40_12
	b	LBB40_11
LBB40_11:
	b	LBB40_14
LBB40_12:
	ldur	x9, [x29, #-24]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB40_14
	b	LBB40_13
LBB40_13:
	ldur	x0, [x29, #-24]
	bl	__Py_Dealloc
	b	LBB40_14
LBB40_14:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	ldr	x8, [sp, #64]
	ldr	x8, [x8, #80]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.29@PAGE
	add	x1, x1, l_.str.29@PAGEOFF
	bl	_PyErr_Format
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-40]
	b	LBB40_22
LBB40_15:
	ldur	x0, [x29, #-48]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #40]
	ldur	x3, [x29, #-64]
	bl	___Pyx_CyFunction_CallMethod
	str	x0, [sp, #72]
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB40_17
	b	LBB40_16
LBB40_16:
	b	LBB40_19
LBB40_17:
	ldur	x9, [x29, #-32]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB40_19
	b	LBB40_18
LBB40_18:
	ldur	x0, [x29, #-32]
	bl	__Py_Dealloc
	b	LBB40_19
LBB40_19:
	b	LBB40_21
LBB40_20:
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-56]
	ldur	x2, [x29, #-64]
	bl	___Pyx_CyFunction_Call
	str	x0, [sp, #72]
	b	LBB40_21
LBB40_21:
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-40]
	b	LBB40_22
LBB40_22:
	ldur	x0, [x29, #-40]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_traverse
___Pyx_CyFunction_traverse:             ; @__Pyx_CyFunction_traverse
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	b	LBB41_1
LBB41_1:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #112]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_5
	b	LBB41_2
LBB41_2:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #112]
	ldur	x1, [x29, #-32]
	blr	x8
	stur	w0, [x29, #-36]
	ldur	w8, [x29, #-36]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_4
	b	LBB41_3
LBB41_3:
	ldur	w8, [x29, #-36]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_4:
	b	LBB41_5
LBB41_5:
	b	LBB41_6
LBB41_6:
	b	LBB41_7
LBB41_7:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_11
	b	LBB41_8
LBB41_8:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #32]
	ldur	x1, [x29, #-32]
	blr	x8
	stur	w0, [x29, #-40]
	ldur	w8, [x29, #-40]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_10
	b	LBB41_9
LBB41_9:
	ldur	w8, [x29, #-40]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_10:
	b	LBB41_11
LBB41_11:
	b	LBB41_12
LBB41_12:
	b	LBB41_13
LBB41_13:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #64]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_17
	b	LBB41_14
LBB41_14:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #64]
	ldur	x1, [x29, #-32]
	blr	x8
	stur	w0, [x29, #-44]
	ldur	w8, [x29, #-44]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_16
	b	LBB41_15
LBB41_15:
	ldur	w8, [x29, #-44]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_16:
	b	LBB41_17
LBB41_17:
	b	LBB41_18
LBB41_18:
	b	LBB41_19
LBB41_19:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #72]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_23
	b	LBB41_20
LBB41_20:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #72]
	ldur	x1, [x29, #-32]
	blr	x8
	str	w0, [sp, #48]
	ldr	w8, [sp, #48]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_22
	b	LBB41_21
LBB41_21:
	ldr	w8, [sp, #48]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_22:
	b	LBB41_23
LBB41_23:
	b	LBB41_24
LBB41_24:
	b	LBB41_25
LBB41_25:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #80]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_29
	b	LBB41_26
LBB41_26:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #80]
	ldur	x1, [x29, #-32]
	blr	x8
	str	w0, [sp, #44]
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_28
	b	LBB41_27
LBB41_27:
	ldr	w8, [sp, #44]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_28:
	b	LBB41_29
LBB41_29:
	b	LBB41_30
LBB41_30:
	b	LBB41_31
LBB41_31:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #88]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_35
	b	LBB41_32
LBB41_32:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #88]
	ldur	x1, [x29, #-32]
	blr	x8
	str	w0, [sp, #40]
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_34
	b	LBB41_33
LBB41_33:
	ldr	w8, [sp, #40]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_34:
	b	LBB41_35
LBB41_35:
	b	LBB41_36
LBB41_36:
	b	LBB41_37
LBB41_37:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #96]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_41
	b	LBB41_38
LBB41_38:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #96]
	ldur	x1, [x29, #-32]
	blr	x8
	str	w0, [sp, #36]
	ldr	w8, [sp, #36]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_40
	b	LBB41_39
LBB41_39:
	ldr	w8, [sp, #36]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_40:
	b	LBB41_41
LBB41_41:
	b	LBB41_42
LBB41_42:
	b	LBB41_43
LBB41_43:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #104]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_47
	b	LBB41_44
LBB41_44:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #104]
	ldur	x1, [x29, #-32]
	blr	x8
	str	w0, [sp, #32]
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_46
	b	LBB41_45
LBB41_45:
	ldr	w8, [sp, #32]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_46:
	b	LBB41_47
LBB41_47:
	b	LBB41_48
LBB41_48:
	b	LBB41_49
LBB41_49:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #56]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_53
	b	LBB41_50
LBB41_50:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #56]
	ldur	x1, [x29, #-32]
	blr	x8
	str	w0, [sp, #28]
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_52
	b	LBB41_51
LBB41_51:
	ldr	w8, [sp, #28]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_52:
	b	LBB41_53
LBB41_53:
	b	LBB41_54
LBB41_54:
	b	LBB41_55
LBB41_55:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #152]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_59
	b	LBB41_56
LBB41_56:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #152]
	ldur	x1, [x29, #-32]
	blr	x8
	str	w0, [sp, #24]
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_58
	b	LBB41_57
LBB41_57:
	ldr	w8, [sp, #24]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_58:
	b	LBB41_59
LBB41_59:
	b	LBB41_60
LBB41_60:
	b	LBB41_61
LBB41_61:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #160]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_65
	b	LBB41_62
LBB41_62:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #160]
	ldur	x1, [x29, #-32]
	blr	x8
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_64
	b	LBB41_63
LBB41_63:
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_64:
	b	LBB41_65
LBB41_65:
	b	LBB41_66
LBB41_66:
	b	LBB41_67
LBB41_67:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #184]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_71
	b	LBB41_68
LBB41_68:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	ldr	x0, [x9, #184]
	ldur	x1, [x29, #-32]
	blr	x8
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_70
	b	LBB41_69
LBB41_69:
	ldr	w8, [sp, #16]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_70:
	b	LBB41_71
LBB41_71:
	b	LBB41_72
LBB41_72:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #120]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_84
	b	LBB41_73
LBB41_73:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #120]
	str	x8, [sp, #8]
	str	wzr, [sp, #4]
	b	LBB41_74
LBB41_74:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #128]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB41_83
	b	LBB41_75
LBB41_75:                               ;   in Loop: Header=BB41_74 Depth=1
	b	LBB41_76
LBB41_76:                               ;   in Loop: Header=BB41_74 Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_80
	b	LBB41_77
LBB41_77:                               ;   in Loop: Header=BB41_74 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	ldr	x0, [x9, x10, lsl #3]
	ldur	x1, [x29, #-32]
	blr	x8
	str	w0, [sp]
	ldr	w8, [sp]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB41_79
	b	LBB41_78
LBB41_78:
	ldr	w8, [sp]
	stur	w8, [x29, #-4]
	b	LBB41_85
LBB41_79:                               ;   in Loop: Header=BB41_74 Depth=1
	b	LBB41_80
LBB41_80:                               ;   in Loop: Header=BB41_74 Depth=1
	b	LBB41_81
LBB41_81:                               ;   in Loop: Header=BB41_74 Depth=1
	b	LBB41_82
LBB41_82:                               ;   in Loop: Header=BB41_74 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB41_74
LBB41_83:
	b	LBB41_84
LBB41_84:
	stur	wzr, [x29, #-4]
	b	LBB41_85
LBB41_85:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_clear
___Pyx_CyFunction_clear:                ; @__Pyx_CyFunction_clear
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #464
	.cfi_def_cfa_offset 464
	stp	x28, x27, [sp, #432]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #448]            ; 16-byte Folded Spill
	add	x29, sp, #448
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	add	x8, sp, #152
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [x8, #80]
	b	LBB42_1
LBB42_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #80]
	add	x9, x9, #112
	str	x9, [x8, #72]
	ldr	x9, [x8, #72]
	ldr	x9, [x9]
	str	x9, [x8, #64]
	ldr	x8, [x8, #64]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_7
	b	LBB42_2
LBB42_2:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #72]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	ldr	x9, [x8, #64]
	str	x9, [x8, #176]
	ldr	x9, [x8, #176]
	str	x9, [x8, #184]
	ldr	x8, [x8, #184]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB42_4
	b	LBB42_3
LBB42_3:
	b	LBB42_6
LBB42_4:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #176]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB42_6
	b	LBB42_5
LBB42_5:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #176]
	bl	__Py_Dealloc
	b	LBB42_6
LBB42_6:
	b	LBB42_7
LBB42_7:
	b	LBB42_8
LBB42_8:
	b	LBB42_9
LBB42_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #80]
	add	x9, x9, #32
	str	x9, [x8, #56]
	ldr	x9, [x8, #56]
	ldr	x9, [x9]
	str	x9, [x8, #48]
	ldr	x8, [x8, #48]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_15
	b	LBB42_10
LBB42_10:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #56]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	ldr	x9, [x8, #48]
	str	x9, [x8, #168]
	ldr	x9, [x8, #168]
	str	x9, [x8, #192]
	ldr	x8, [x8, #192]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB42_12
	b	LBB42_11
LBB42_11:
	b	LBB42_14
LBB42_12:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #168]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB42_14
	b	LBB42_13
LBB42_13:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #168]
	bl	__Py_Dealloc
	b	LBB42_14
LBB42_14:
	b	LBB42_15
LBB42_15:
	b	LBB42_16
LBB42_16:
	b	LBB42_17
LBB42_17:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #80]
	add	x9, x9, #64
	str	x9, [x8, #40]
	ldr	x9, [x8, #40]
	ldr	x9, [x9]
	str	x9, [x8, #32]
	ldr	x8, [x8, #32]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_23
	b	LBB42_18
LBB42_18:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #40]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	ldr	x9, [x8, #32]
	str	x9, [x8, #160]
	ldr	x9, [x8, #160]
	str	x9, [x8, #200]
	ldr	x8, [x8, #200]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB42_20
	b	LBB42_19
LBB42_19:
	b	LBB42_22
LBB42_20:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #160]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB42_22
	b	LBB42_21
LBB42_21:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #160]
	bl	__Py_Dealloc
	b	LBB42_22
LBB42_22:
	b	LBB42_23
LBB42_23:
	b	LBB42_24
LBB42_24:
	b	LBB42_25
LBB42_25:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #80]
	add	x9, x9, #72
	str	x9, [x8, #24]
	ldr	x9, [x8, #24]
	ldr	x9, [x9]
	str	x9, [x8, #16]
	ldr	x8, [x8, #16]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_31
	b	LBB42_26
LBB42_26:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #24]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	ldr	x9, [x8, #16]
	str	x9, [x8, #152]
	ldr	x9, [x8, #152]
	str	x9, [x8, #208]
	ldr	x8, [x8, #208]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB42_28
	b	LBB42_27
LBB42_27:
	b	LBB42_30
LBB42_28:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #152]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB42_30
	b	LBB42_29
LBB42_29:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #152]
	bl	__Py_Dealloc
	b	LBB42_30
LBB42_30:
	b	LBB42_31
LBB42_31:
	b	LBB42_32
LBB42_32:
	b	LBB42_33
LBB42_33:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #80]
	add	x9, x9, #80
	str	x9, [x8, #8]
	ldr	x9, [x8, #8]
	ldr	x9, [x9]
	str	x9, [x8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_39
	b	LBB42_34
LBB42_34:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	ldr	x9, [x8]
	str	x9, [x8, #144]
	ldr	x9, [x8, #144]
	str	x9, [x8, #216]
	ldr	x8, [x8, #216]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB42_36
	b	LBB42_35
LBB42_35:
	b	LBB42_38
LBB42_36:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #144]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB42_38
	b	LBB42_37
LBB42_37:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #144]
	bl	__Py_Dealloc
	b	LBB42_38
LBB42_38:
	b	LBB42_39
LBB42_39:
	b	LBB42_40
LBB42_40:
	b	LBB42_41
LBB42_41:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #80]
	add	x8, x8, #88
	str	x8, [sp, #144]
	ldr	x8, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #136]
	ldr	x8, [sp, #136]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_47
	b	LBB42_42
LBB42_42:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #144]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	ldr	x9, [sp, #136]
	str	x9, [x8, #136]
	ldr	x9, [x8, #136]
	str	x9, [x8, #224]
	ldr	x8, [x8, #224]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB42_44
	b	LBB42_43
LBB42_43:
	b	LBB42_46
LBB42_44:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #136]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB42_46
	b	LBB42_45
LBB42_45:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #136]
	bl	__Py_Dealloc
	b	LBB42_46
LBB42_46:
	b	LBB42_47
LBB42_47:
	b	LBB42_48
LBB42_48:
	b	LBB42_49
LBB42_49:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #80]
	add	x8, x8, #96
	str	x8, [sp, #128]
	ldr	x8, [sp, #128]
	ldr	x8, [x8]
	str	x8, [sp, #120]
	ldr	x8, [sp, #120]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_55
	b	LBB42_50
LBB42_50:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #128]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	ldr	x9, [sp, #120]
	str	x9, [x8, #128]
	ldr	x9, [x8, #128]
	str	x9, [x8, #232]
	ldr	x8, [x8, #232]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB42_52
	b	LBB42_51
LBB42_51:
	b	LBB42_54
LBB42_52:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #128]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB42_54
	b	LBB42_53
LBB42_53:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #128]
	bl	__Py_Dealloc
	b	LBB42_54
LBB42_54:
	b	LBB42_55
LBB42_55:
	b	LBB42_56
LBB42_56:
	b	LBB42_57
LBB42_57:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #80]
	add	x8, x8, #104
	str	x8, [sp, #112]
	ldr	x8, [sp, #112]
	ldr	x8, [x8]
	str	x8, [sp, #104]
	ldr	x8, [sp, #104]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_63
	b	LBB42_58
LBB42_58:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #112]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	ldr	x9, [sp, #104]
	str	x9, [x8, #120]
	ldr	x9, [x8, #120]
	str	x9, [x8, #240]
	ldr	x8, [x8, #240]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB42_60
	b	LBB42_59
LBB42_59:
	b	LBB42_62
LBB42_60:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #120]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB42_62
	b	LBB42_61
LBB42_61:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #120]
	bl	__Py_Dealloc
	b	LBB42_62
LBB42_62:
	b	LBB42_63
LBB42_63:
	b	LBB42_64
LBB42_64:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #80]
	ldr	x9, [x9, #56]
	str	x9, [sp, #96]
	ldr	x8, [x8, #80]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #56]
	ldr	x0, [sp, #96]
	bl	_Py_XDECREF
	b	LBB42_65
LBB42_65:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #80]
	add	x8, x8, #152
	str	x8, [sp, #88]
	ldr	x8, [sp, #88]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	x8, [sp, #80]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_71
	b	LBB42_66
LBB42_66:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #88]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	ldr	x9, [sp, #80]
	str	x9, [x8, #112]
	ldr	x9, [x8, #112]
	str	x9, [x8, #248]
	ldr	x8, [x8, #248]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB42_68
	b	LBB42_67
LBB42_67:
	b	LBB42_70
LBB42_68:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #112]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB42_70
	b	LBB42_69
LBB42_69:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #112]
	bl	__Py_Dealloc
	b	LBB42_70
LBB42_70:
	b	LBB42_71
LBB42_71:
	b	LBB42_72
LBB42_72:
	b	LBB42_73
LBB42_73:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #80]
	add	x8, x8, #160
	str	x8, [sp, #72]
	ldr	x8, [sp, #72]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_79
	b	LBB42_74
LBB42_74:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	ldr	x9, [sp, #64]
	str	x9, [x8, #104]
	ldr	x9, [x8, #104]
	str	x9, [x8, #256]
	ldr	x8, [x8, #256]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB42_76
	b	LBB42_75
LBB42_75:
	b	LBB42_78
LBB42_76:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #104]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB42_78
	b	LBB42_77
LBB42_77:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #104]
	bl	__Py_Dealloc
	b	LBB42_78
LBB42_78:
	b	LBB42_79
LBB42_79:
	b	LBB42_80
LBB42_80:
	b	LBB42_81
LBB42_81:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #80]
	add	x8, x8, #176
	str	x8, [sp, #56]
	ldr	x8, [sp, #56]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	x8, [sp, #48]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_87
	b	LBB42_82
LBB42_82:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #56]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	ldr	x9, [sp, #48]
	str	x9, [x8, #96]
	ldr	x9, [x8, #96]
	str	x9, [x8, #264]
	ldr	x8, [x8, #264]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB42_84
	b	LBB42_83
LBB42_83:
	b	LBB42_86
LBB42_84:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #96]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB42_86
	b	LBB42_85
LBB42_85:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #96]
	bl	__Py_Dealloc
	b	LBB42_86
LBB42_86:
	b	LBB42_87
LBB42_87:
	b	LBB42_88
LBB42_88:
	b	LBB42_89
LBB42_89:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #80]
	add	x8, x8, #184
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_95
	b	LBB42_90
LBB42_90:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #40]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9]
	ldr	x9, [sp, #32]
	str	x9, [x8, #88]
	ldr	x9, [x8, #88]
	str	x9, [x8, #272]
	ldr	x8, [x8, #272]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB42_92
	b	LBB42_91
LBB42_91:
	b	LBB42_94
LBB42_92:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #88]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB42_94
	b	LBB42_93
LBB42_93:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #88]
	bl	__Py_Dealloc
	b	LBB42_94
LBB42_94:
	b	LBB42_95
LBB42_95:
	b	LBB42_96
LBB42_96:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #80]
	ldr	x8, [x8, #120]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB42_102
	b	LBB42_97
LBB42_97:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #80]
	ldr	x8, [x8, #120]
	str	x8, [sp, #24]
	str	wzr, [sp, #20]
	b	LBB42_98
LBB42_98:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w8, [sp, #20]
	ldr	x9, [x9, #80]
	ldr	w9, [x9, #128]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB42_101
	b	LBB42_99
LBB42_99:                               ;   in Loop: Header=BB42_98 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	ldr	x0, [x8, x9, lsl #3]
	bl	_Py_XDECREF
	b	LBB42_100
LBB42_100:                              ;   in Loop: Header=BB42_98 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB42_98
LBB42_101:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #80]
	ldr	x0, [x8, #120]
	bl	_PyObject_Free
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #80]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #120]
	b	LBB42_102
LBB42_102:
	mov	w0, #0
	ldp	x29, x30, [sp, #448]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #432]            ; 16-byte Folded Reload
	add	sp, sp, #464
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyMethod_New
___Pyx_PyMethod_New:                    ; @__Pyx_PyMethod_New
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	x2, [sp]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB43_5
	b	LBB43_1
LBB43_1:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB43_3
	b	LBB43_2
LBB43_2:
	b	LBB43_4
LBB43_3:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB43_4
LBB43_4:
	ldr	x8, [sp, #16]
	str	x8, [sp, #24]
	b	LBB43_6
LBB43_5:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	_PyMethod_New
	str	x0, [sp, #24]
	b	LBB43_6
LBB43_6:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx__CyFunction_dealloc
___Pyx__CyFunction_dealloc:             ; @__Pyx__CyFunction_dealloc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #40]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB44_2
	b	LBB44_1
LBB44_1:
	ldr	x0, [sp, #8]
	bl	_PyObject_ClearWeakRefs
	b	LBB44_2
LBB44_2:
	ldr	x0, [sp, #8]
	bl	___Pyx_CyFunction_clear
	ldr	x0, [sp, #8]
	bl	_PyObject_GC_Del
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyVectorcall_FastCallDict
___Pyx_PyVectorcall_FastCallDict:       ; @__Pyx_PyVectorcall_FastCallDict
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	x3, [sp, #8]
	str	x4, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, ne
	tbnz	w8, #0, LBB45_2
	b	LBB45_1
LBB45_1:
	ldr	x0, [sp]
	bl	_PyDict_GET_SIZE
	subs	x8, x0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB45_3
	b	LBB45_2
LBB45_2:
	ldr	x8, [sp, #24]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x3, #0
	blr	x8
	stur	x0, [x29, #-8]
	b	LBB45_4
LBB45_3:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	ldr	x4, [sp]
	bl	___Pyx_PyVectorcall_FastCallDict_kw
	stur	x0, [x29, #-8]
	b	LBB45_4
LBB45_4:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyTuple_GET_SIZE
_PyTuple_GET_SIZE:                      ; @PyTuple_GET_SIZE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB46_2
	b	LBB46_1
LBB46_1:
	adrp	x0, l___func__.PyTuple_GET_SIZE@PAGE
	add	x0, x0, l___func__.PyTuple_GET_SIZE@PAGEOFF
	adrp	x1, l_.str.33@PAGE
	add	x1, x1, l_.str.33@PAGEOFF
	mov	w2, #23
	adrp	x3, l_.str.34@PAGE
	add	x3, x3, l_.str.34@PAGEOFF
	bl	___assert_rtn
LBB46_2:
	b	LBB46_3
LBB46_3:
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x0, [sp]
	bl	_Py_SIZE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_CallMethod
___Pyx_CyFunction_CallMethod:           ; @__Pyx_CyFunction_CallMethod
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-48]
	ldr	x8, [x8, #16]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-48]
	ldr	x8, [x8, #16]
	ldr	w8, [x8, #16]
	stur	w8, [x29, #-60]
	ldur	w8, [x29, #-60]
	and	w8, w8, #0xf
	subs	w8, w8, #1
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	subs	x8, x8, #7
	cset	w8, hi
	tbnz	w8, #0, LBB47_25
; %bb.1:
	ldr	x11, [sp, #48]                  ; 8-byte Folded Reload
	adrp	x10, lJTI47_0@PAGE
	add	x10, x10, lJTI47_0@PAGEOFF
Ltmp3:
	adr	x8, Ltmp3
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB47_2:
	ldur	x8, [x29, #-40]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w9, #1
	str	w9, [sp, #36]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB47_4
	b	LBB47_3
LBB47_3:
	ldur	x0, [x29, #-40]
	bl	_PyDict_Size
	subs	x8, x0, #0
	cset	w8, eq
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	b	LBB47_4
LBB47_4:
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	mov	w9, #1
	eor	w8, w8, #0x1
	eor	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB47_6
	b	LBB47_5
LBB47_5:
	ldur	x8, [x29, #-56]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	blr	x8
	stur	x0, [x29, #-8]
	b	LBB47_27
LBB47_6:
	b	LBB47_26
LBB47_7:
	ldur	x8, [x29, #-56]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-40]
	blr	x8
	stur	x0, [x29, #-8]
	b	LBB47_27
LBB47_8:
	ldur	x8, [x29, #-40]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w9, #1
	str	w9, [sp, #32]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB47_10
	b	LBB47_9
LBB47_9:
	ldur	x0, [x29, #-40]
	bl	_PyDict_Size
	subs	x8, x0, #0
	cset	w8, eq
	str	w8, [sp, #32]                   ; 4-byte Folded Spill
	b	LBB47_10
LBB47_10:
	ldr	w8, [sp, #32]                   ; 4-byte Folded Reload
	mov	w9, #1
	eor	w8, w8, #0x1
	eor	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB47_14
	b	LBB47_11
LBB47_11:
	ldur	x0, [x29, #-32]
	bl	_PyTuple_GET_SIZE
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB47_13
	b	LBB47_12
LBB47_12:
	ldur	x8, [x29, #-56]
	ldur	x0, [x29, #-24]
	mov	x1, #0
	blr	x8
	stur	x0, [x29, #-8]
	b	LBB47_27
LBB47_13:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x8, [x29, #-48]
	ldr	x8, [x8, #16]
	ldr	x10, [x8]
	ldr	x8, [sp, #72]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x1, l_.str.38@PAGE
	add	x1, x1, l_.str.38@PAGEOFF
	bl	_PyErr_Format
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB47_27
LBB47_14:
	b	LBB47_26
LBB47_15:
	ldur	x8, [x29, #-40]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w9, #1
	str	w9, [sp, #28]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB47_17
	b	LBB47_16
LBB47_16:
	ldur	x0, [x29, #-40]
	bl	_PyDict_Size
	subs	x8, x0, #0
	cset	w8, eq
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB47_17
LBB47_17:
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	mov	w9, #1
	eor	w8, w8, #0x1
	eor	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB47_24
	b	LBB47_18
LBB47_18:
	ldur	x0, [x29, #-32]
	bl	_PyTuple_GET_SIZE
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	subs	x8, x8, #1
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB47_23
	b	LBB47_19
LBB47_19:
	ldur	x0, [x29, #-32]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB47_21
	b	LBB47_20
LBB47_20:
	adrp	x0, l___func__.__Pyx_CyFunction_CallMethod@PAGE
	add	x0, x0, l___func__.__Pyx_CyFunction_CallMethod@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #5785
	adrp	x3, l_.str.39@PAGE
	add	x3, x3, l_.str.39@PAGEOFF
	bl	___assert_rtn
LBB47_21:
	b	LBB47_22
LBB47_22:
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #24]
	str	x8, [sp, #56]
	ldur	x8, [x29, #-56]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	blr	x8
	str	x0, [sp, #64]
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	LBB47_27
LBB47_23:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x8, [x29, #-48]
	ldr	x8, [x8, #16]
	ldr	x10, [x8]
	ldr	x8, [sp, #72]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	_PyErr_Format
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB47_27
LBB47_24:
	b	LBB47_26
LBB47_25:
	adrp	x8, _PyExc_SystemError@GOTPAGE
	ldr	x8, [x8, _PyExc_SystemError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.41@PAGE
	add	x1, x1, l_.str.41@PAGEOFF
	bl	_PyErr_SetString
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB47_27
LBB47_26:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x8, [x29, #-48]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.42@PAGE
	add	x1, x1, l_.str.42@PAGEOFF
	bl	_PyErr_Format
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB47_27
LBB47_27:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
	.p2align	2
lJTI47_0:
	.long	LBB47_2-Ltmp3
	.long	LBB47_25-Ltmp3
	.long	LBB47_7-Ltmp3
	.long	LBB47_8-Ltmp3
	.long	LBB47_25-Ltmp3
	.long	LBB47_25-Ltmp3
	.long	LBB47_25-Ltmp3
	.long	LBB47_15-Ltmp3
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_Call
___Pyx_CyFunction_Call:                 ; @__Pyx_CyFunction_Call
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #24]
	bl	___Pyx_CyFunction_CallMethod
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyDict_GET_SIZE
_PyDict_GET_SIZE:                       ; @PyDict_GET_SIZE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_Py_TYPE
	mov	x1, #536870912
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB49_2
	b	LBB49_1
LBB49_1:
	adrp	x0, l___func__.PyDict_GET_SIZE@PAGE
	add	x0, x0, l___func__.PyDict_GET_SIZE@PAGEOFF
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	mov	w2, #55
	adrp	x3, l_.str.31@PAGE
	add	x3, x3, l_.str.31@PAGEOFF
	bl	___assert_rtn
LBB49_2:
	b	LBB49_3
LBB49_3:
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	x0, [x8, #16]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyVectorcall_FastCallDict_kw
___Pyx_PyVectorcall_FastCallDict_kw:    ; @__Pyx_PyVectorcall_FastCallDict_kw
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
	add	x29, sp, #208
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-80]
	stur	x1, [x29, #-88]
	stur	x2, [x29, #-96]
	str	x3, [sp, #104]
	str	x4, [sp, #96]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #88]
	ldr	x0, [sp, #96]
	bl	_PyDict_GET_SIZE
	str	x0, [sp, #8]
	ldr	x8, [sp, #104]
	ldr	x9, [sp, #8]
	add	x8, x8, x9
	lsl	x0, x8, #3
	bl	_PyMem_Malloc
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB50_2
	b	LBB50_1
LBB50_1:
	bl	_PyErr_NoMemory
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-72]
	b	LBB50_33
LBB50_2:
	str	xzr, [sp, #40]
	b	LBB50_3
LBB50_3:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #104]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB50_6
	b	LBB50_4
LBB50_4:                                ;   in Loop: Header=BB50_3 Depth=1
	ldur	x8, [x29, #-96]
	ldr	x9, [sp, #40]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x9, [sp, #72]
	ldr	x10, [sp, #40]
	str	x8, [x9, x10, lsl #3]
	b	LBB50_5
LBB50_5:                                ;   in Loop: Header=BB50_3 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #1
	str	x8, [sp, #40]
	b	LBB50_3
LBB50_6:
	ldr	x0, [sp, #8]
	bl	_PyTuple_New
	str	x0, [sp, #80]
	ldr	x8, [sp, #80]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB50_8
	b	LBB50_7
LBB50_7:
	ldr	x0, [sp, #72]
	bl	_PyMem_Free
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-72]
	b	LBB50_33
LBB50_8:
	ldr	x8, [sp, #72]
	ldr	x9, [sp, #104]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #64]
	str	xzr, [sp, #56]
	str	xzr, [sp, #48]
	mov	x8, #268435456
	str	x8, [sp, #16]
	b	LBB50_9
LBB50_9:                                ; =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #96]
	add	x1, sp, #48
	add	x2, sp, #32
	add	x3, sp, #24
	bl	_PyDict_Next
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB50_17
	b	LBB50_10
LBB50_10:                               ;   in Loop: Header=BB50_9 Depth=1
	ldr	x0, [sp, #32]
	bl	_Py_TYPE
	ldr	x9, [x0, #168]
	ldr	x8, [sp, #16]
	and	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-48]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB50_12
	b	LBB50_11
LBB50_11:                               ;   in Loop: Header=BB50_9 Depth=1
	b	LBB50_13
LBB50_12:                               ;   in Loop: Header=BB50_9 Depth=1
	ldur	w8, [x29, #-48]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	b	LBB50_13
LBB50_13:                               ;   in Loop: Header=BB50_9 Depth=1
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	stur	w8, [x29, #-60]
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	ldur	w8, [x29, #-64]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB50_15
	b	LBB50_14
LBB50_14:                               ;   in Loop: Header=BB50_9 Depth=1
	b	LBB50_16
LBB50_15:                               ;   in Loop: Header=BB50_9 Depth=1
	ldur	w8, [x29, #-64]
	ldur	x9, [x29, #-56]
	str	w8, [x9]
	b	LBB50_16
LBB50_16:                               ;   in Loop: Header=BB50_9 Depth=1
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #56]
	ldr	x2, [sp, #32]
	bl	_PyTuple_SET_ITEM
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #64]
	ldr	x10, [sp, #56]
	str	x8, [x9, x10, lsl #3]
	ldr	x8, [sp, #56]
	add	x8, x8, #1
	str	x8, [sp, #56]
	b	LBB50_9
LBB50_17:
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB50_19
	b	LBB50_18
LBB50_18:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.32@PAGE
	add	x1, x1, l_.str.32@PAGEOFF
	bl	_PyErr_SetString
	b	LBB50_20
LBB50_19:
	ldur	x8, [x29, #-88]
	ldur	x0, [x29, #-80]
	ldr	x1, [sp, #72]
	ldr	x2, [sp, #104]
	ldr	x3, [sp, #80]
	blr	x8
	str	x0, [sp, #88]
	b	LBB50_20
LBB50_20:
	ldr	x8, [sp, #80]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB50_22
	b	LBB50_21
LBB50_21:
	b	LBB50_24
LBB50_22:
	ldur	x9, [x29, #-24]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB50_24
	b	LBB50_23
LBB50_23:
	ldur	x0, [x29, #-24]
	bl	__Py_Dealloc
	b	LBB50_24
LBB50_24:
	str	xzr, [sp, #56]
	b	LBB50_25
LBB50_25:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB50_32
	b	LBB50_26
LBB50_26:                               ;   in Loop: Header=BB50_25 Depth=1
	ldr	x8, [sp, #64]
	ldr	x9, [sp, #56]
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB50_28
	b	LBB50_27
LBB50_27:                               ;   in Loop: Header=BB50_25 Depth=1
	b	LBB50_30
LBB50_28:                               ;   in Loop: Header=BB50_25 Depth=1
	ldur	x9, [x29, #-32]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB50_30
	b	LBB50_29
LBB50_29:                               ;   in Loop: Header=BB50_25 Depth=1
	ldur	x0, [x29, #-32]
	bl	__Py_Dealloc
	b	LBB50_30
LBB50_30:                               ;   in Loop: Header=BB50_25 Depth=1
	b	LBB50_31
LBB50_31:                               ;   in Loop: Header=BB50_25 Depth=1
	ldr	x8, [sp, #56]
	add	x8, x8, #1
	str	x8, [sp, #56]
	b	LBB50_25
LBB50_32:
	ldr	x0, [sp, #72]
	bl	_PyMem_Free
	ldr	x8, [sp, #88]
	stur	x8, [x29, #-72]
	b	LBB50_33
LBB50_33:
	ldur	x0, [x29, #-72]
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	add	sp, sp, #224
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyTuple_SET_ITEM
_PyTuple_SET_ITEM:                      ; @PyTuple_SET_ITEM
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB51_2
	b	LBB51_1
LBB51_1:
	adrp	x0, l___func__.PyTuple_SET_ITEM@PAGE
	add	x0, x0, l___func__.PyTuple_SET_ITEM@PAGEOFF
	adrp	x1, l_.str.33@PAGE
	add	x1, x1, l_.str.33@PAGEOFF
	mov	w2, #33
	adrp	x3, l_.str.34@PAGE
	add	x3, x3, l_.str.34@PAGEOFF
	bl	___assert_rtn
LBB51_2:
	b	LBB51_3
LBB51_3:
	ldur	x8, [x29, #-8]
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	add	x9, x9, #24
	ldr	x10, [sp, #16]
	str	x8, [x9, x10, lsl #3]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function Py_SIZE
_Py_SIZE:                               ; @Py_SIZE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	adrp	x9, _PyLong_Type@GOTPAGE
	ldr	x9, [x9, _PyLong_Type@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB52_2
	b	LBB52_1
LBB52_1:
	adrp	x0, l___func__.Py_SIZE@PAGE
	add	x0, x0, l___func__.Py_SIZE@PAGEOFF
	adrp	x1, l_.str.35@PAGE
	add	x1, x1, l_.str.35@PAGEOFF
	mov	w2, #231
	adrp	x3, l_.str.36@PAGE
	add	x3, x3, l_.str.36@PAGEOFF
	bl	___assert_rtn
LBB52_2:
	b	LBB52_3
LBB52_3:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	adrp	x9, _PyBool_Type@GOTPAGE
	ldr	x9, [x9, _PyBool_Type@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB52_5
	b	LBB52_4
LBB52_4:
	adrp	x0, l___func__.Py_SIZE@PAGE
	add	x0, x0, l___func__.Py_SIZE@PAGEOFF
	adrp	x1, l_.str.35@PAGE
	add	x1, x1, l_.str.35@PAGEOFF
	mov	w2, #232
	adrp	x3, l_.str.37@PAGE
	add	x3, x3, l_.str.37@PAGEOFF
	bl	___assert_rtn
LBB52_5:
	b	LBB52_6
LBB52_6:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_reduce
___Pyx_CyFunction_reduce:               ; @__Pyx_CyFunction_reduce
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #80]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB53_2
	b	LBB53_1
LBB53_1:
	b	LBB53_3
LBB53_2:
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	LBB53_3
LBB53_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #80]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_get_doc
___Pyx_CyFunction_get_doc:              ; @__Pyx_CyFunction_get_doc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #88]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB54_10
	b	LBB54_1
LBB54_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldr	x8, [x8, #24]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB54_5
	b	LBB54_2
LBB54_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldr	x0, [x8, #24]
	bl	_PyUnicode_FromString
	ldr	x8, [sp, #16]
	str	x0, [x8, #88]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #88]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB54_4
	b	LBB54_3
LBB54_3:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	b	LBB54_14
LBB54_4:
	b	LBB54_9
LBB54_5:
	adrp	x8, __Py_NoneStruct@GOTPAGE
	ldr	x8, [x8, __Py_NoneStruct@GOTPAGEOFF]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB54_7
	b	LBB54_6
LBB54_6:
	b	LBB54_8
LBB54_7:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB54_8
LBB54_8:
	adrp	x8, __Py_NoneStruct@GOTPAGE
	ldr	x8, [x8, __Py_NoneStruct@GOTPAGEOFF]
	str	x8, [sp, #24]
	b	LBB54_14
LBB54_9:
	b	LBB54_10
LBB54_10:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #88]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	str	w8, [sp, #32]
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB54_12
	b	LBB54_11
LBB54_11:
	b	LBB54_13
LBB54_12:
	ldr	w8, [sp, #32]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	b	LBB54_13
LBB54_13:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #88]
	str	x8, [sp, #24]
	b	LBB54_14
LBB54_14:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_set_doc
___Pyx_CyFunction_set_doc:              ; @__Pyx_CyFunction_set_doc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB55_2
	b	LBB55_1
LBB55_1:
	adrp	x8, __Py_NoneStruct@GOTPAGE
	ldr	x8, [x8, __Py_NoneStruct@GOTPAGEOFF]
	str	x8, [sp, #16]
	b	LBB55_2
LBB55_2:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB55_4
	b	LBB55_3
LBB55_3:
	b	LBB55_5
LBB55_4:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB55_5
LBB55_5:
	b	LBB55_6
LBB55_6:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #88]
	str	x8, [sp]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	str	x8, [x9, #88]
	ldr	x0, [sp]
	bl	_Py_XDECREF
	b	LBB55_7
LBB55_7:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_get_name
___Pyx_CyFunction_get_name:             ; @__Pyx_CyFunction_get_name
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #72]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB56_4
	b	LBB56_1
LBB56_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldr	x0, [x8]
	bl	_PyUnicode_InternFromString
	ldr	x8, [sp, #16]
	str	x0, [x8, #72]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #72]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB56_3
	b	LBB56_2
LBB56_2:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	b	LBB56_8
LBB56_3:
	b	LBB56_4
LBB56_4:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #72]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB56_6
	b	LBB56_5
LBB56_5:
	b	LBB56_7
LBB56_6:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB56_7
LBB56_7:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #72]
	str	x8, [sp, #24]
	b	LBB56_8
LBB56_8:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_set_name
___Pyx_CyFunction_set_name:             ; @__Pyx_CyFunction_set_name
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w9, #1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB57_2
	b	LBB57_1
LBB57_1:
	ldr	x0, [sp, #24]
	bl	_Py_TYPE
	mov	x1, #268435456
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w8, eq
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB57_2
LBB57_2:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	mov	w9, #1
	eor	w8, w8, #0x1
	eor	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB57_4
	b	LBB57_3
LBB57_3:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.63@PAGE
	add	x1, x1, l_.str.63@PAGEOFF
	bl	_PyErr_SetString
	mov	w8, #-1
	stur	w8, [x29, #-20]
	b	LBB57_10
LBB57_4:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB57_6
	b	LBB57_5
LBB57_5:
	b	LBB57_7
LBB57_6:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB57_7
LBB57_7:
	b	LBB57_8
LBB57_8:
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #72]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	str	x8, [x9, #72]
	ldr	x0, [sp, #8]
	bl	_Py_XDECREF
	b	LBB57_9
LBB57_9:
	stur	wzr, [x29, #-20]
	b	LBB57_10
LBB57_10:
	ldur	w0, [x29, #-20]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_get_qualname
___Pyx_CyFunction_get_qualname:         ; @__Pyx_CyFunction_get_qualname
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #80]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB58_2
	b	LBB58_1
LBB58_1:
	b	LBB58_3
LBB58_2:
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	LBB58_3
LBB58_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #80]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_set_qualname
___Pyx_CyFunction_set_qualname:         ; @__Pyx_CyFunction_set_qualname
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w9, #1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB59_2
	b	LBB59_1
LBB59_1:
	ldr	x0, [sp, #24]
	bl	_Py_TYPE
	mov	x1, #268435456
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w8, eq
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB59_2
LBB59_2:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	mov	w9, #1
	eor	w8, w8, #0x1
	eor	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB59_4
	b	LBB59_3
LBB59_3:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.64@PAGE
	add	x1, x1, l_.str.64@PAGEOFF
	bl	_PyErr_SetString
	mov	w8, #-1
	stur	w8, [x29, #-20]
	b	LBB59_10
LBB59_4:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB59_6
	b	LBB59_5
LBB59_5:
	b	LBB59_7
LBB59_6:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB59_7
LBB59_7:
	b	LBB59_8
LBB59_8:
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #80]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	str	x8, [x9, #80]
	ldr	x0, [sp, #8]
	bl	_Py_XDECREF
	b	LBB59_9
LBB59_9:
	stur	wzr, [x29, #-20]
	b	LBB59_10
LBB59_10:
	ldur	w0, [x29, #-20]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_get_dict
___Pyx_CyFunction_get_dict:             ; @__Pyx_CyFunction_get_dict
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB60_4
	b	LBB60_1
LBB60_1:
	bl	_PyDict_New
	ldr	x8, [sp, #16]
	str	x0, [x8, #64]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB60_3
	b	LBB60_2
LBB60_2:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	b	LBB60_8
LBB60_3:
	b	LBB60_4
LBB60_4:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB60_6
	b	LBB60_5
LBB60_5:
	b	LBB60_7
LBB60_6:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB60_7
LBB60_7:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #64]
	str	x8, [sp, #24]
	b	LBB60_8
LBB60_8:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_set_dict
___Pyx_CyFunction_set_dict:             ; @__Pyx_CyFunction_set_dict
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB61_2
	b	LBB61_1
LBB61_1:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.65@PAGE
	add	x1, x1, l_.str.65@PAGEOFF
	bl	_PyErr_SetString
	mov	w8, #-1
	stur	w8, [x29, #-20]
	b	LBB61_10
LBB61_2:
	ldr	x0, [sp, #24]
	bl	_Py_TYPE
	mov	x1, #536870912
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB61_4
	b	LBB61_3
LBB61_3:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.66@PAGE
	add	x1, x1, l_.str.66@PAGEOFF
	bl	_PyErr_SetString
	mov	w8, #-1
	stur	w8, [x29, #-20]
	b	LBB61_10
LBB61_4:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB61_6
	b	LBB61_5
LBB61_5:
	b	LBB61_7
LBB61_6:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB61_7
LBB61_7:
	b	LBB61_8
LBB61_8:
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #64]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	str	x8, [x9, #64]
	ldr	x0, [sp, #8]
	bl	_Py_XDECREF
	b	LBB61_9
LBB61_9:
	stur	wzr, [x29, #-20]
	b	LBB61_10
LBB61_10:
	ldur	w0, [x29, #-20]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_get_globals
___Pyx_CyFunction_get_globals:          ; @__Pyx_CyFunction_get_globals
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #96]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB62_2
	b	LBB62_1
LBB62_1:
	b	LBB62_3
LBB62_2:
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	LBB62_3
LBB62_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #96]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_get_closure
___Pyx_CyFunction_get_closure:          ; @__Pyx_CyFunction_get_closure
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #8]
	str	x1, [sp]
	adrp	x8, __Py_NoneStruct@GOTPAGE
	ldr	x8, [x8, __Py_NoneStruct@GOTPAGEOFF]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB63_2
	b	LBB63_1
LBB63_1:
	b	LBB63_3
LBB63_2:
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	LBB63_3
LBB63_3:
	adrp	x0, __Py_NoneStruct@GOTPAGE
	ldr	x0, [x0, __Py_NoneStruct@GOTPAGEOFF]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_get_code
___Pyx_CyFunction_get_code:             ; @__Pyx_CyFunction_get_code
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #104]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB64_2
	b	LBB64_1
LBB64_1:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #104]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB64_3
LBB64_2:
	adrp	x8, __Py_NoneStruct@GOTPAGE
	ldr	x8, [x8, __Py_NoneStruct@GOTPAGEOFF]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB64_3
LBB64_3:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #32]
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB64_5
	b	LBB64_4
LBB64_4:
	b	LBB64_6
LBB64_5:
	ldr	w8, [sp, #32]
	ldr	x9, [sp, #40]
	str	w8, [x9]
	b	LBB64_6
LBB64_6:
	ldr	x0, [sp, #8]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_get_defaults
___Pyx_CyFunction_get_defaults:         ; @__Pyx_CyFunction_get_defaults
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #152]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB65_7
	b	LBB65_1
LBB65_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #168]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB65_5
	b	LBB65_2
LBB65_2:
	ldr	x0, [sp, #16]
	bl	___Pyx_CyFunction_init_defaults
	subs	w8, w0, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB65_4
	b	LBB65_3
LBB65_3:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	b	LBB65_11
LBB65_4:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #152]
	str	x8, [sp]
	b	LBB65_6
LBB65_5:
	adrp	x8, __Py_NoneStruct@GOTPAGE
	ldr	x8, [x8, __Py_NoneStruct@GOTPAGEOFF]
	str	x8, [sp]
	b	LBB65_6
LBB65_6:
	b	LBB65_7
LBB65_7:
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB65_9
	b	LBB65_8
LBB65_8:
	b	LBB65_10
LBB65_9:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB65_10
LBB65_10:
	ldr	x8, [sp]
	str	x8, [sp, #24]
	b	LBB65_11
LBB65_11:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_set_defaults
___Pyx_CyFunction_set_defaults:         ; @__Pyx_CyFunction_set_defaults
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB66_2
	b	LBB66_1
LBB66_1:
	adrp	x8, __Py_NoneStruct@GOTPAGE
	ldr	x8, [x8, __Py_NoneStruct@GOTPAGEOFF]
	str	x8, [sp, #24]
	b	LBB66_7
LBB66_2:
	ldr	x8, [sp, #24]
	adrp	x9, __Py_NoneStruct@GOTPAGE
	ldr	x9, [x9, __Py_NoneStruct@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB66_4
	b	LBB66_3
LBB66_3:
	ldr	x0, [sp, #24]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w8, eq
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB66_4
LBB66_4:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	mov	w9, #1
	eor	w8, w8, #0x1
	eor	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB66_6
	b	LBB66_5
LBB66_5:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.68@PAGE
	add	x1, x1, l_.str.68@PAGEOFF
	bl	_PyErr_SetString
	mov	w8, #-1
	stur	w8, [x29, #-20]
	b	LBB66_13
LBB66_6:
	b	LBB66_7
LBB66_7:
	adrp	x8, _PyExc_RuntimeWarning@GOTPAGE
	ldr	x8, [x8, _PyExc_RuntimeWarning@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.69@PAGE
	add	x1, x1, l_.str.69@PAGEOFF
	mov	x2, #1
	bl	_PyErr_WarnEx
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB66_9
	b	LBB66_8
LBB66_8:
	b	LBB66_10
LBB66_9:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB66_10
LBB66_10:
	b	LBB66_11
LBB66_11:
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #152]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	str	x8, [x9, #152]
	ldr	x0, [sp, #8]
	bl	_Py_XDECREF
	b	LBB66_12
LBB66_12:
	stur	wzr, [x29, #-20]
	b	LBB66_13
LBB66_13:
	ldur	w0, [x29, #-20]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_get_kwdefaults
___Pyx_CyFunction_get_kwdefaults:       ; @__Pyx_CyFunction_get_kwdefaults
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #160]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB67_7
	b	LBB67_1
LBB67_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #168]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB67_5
	b	LBB67_2
LBB67_2:
	ldr	x0, [sp, #16]
	bl	___Pyx_CyFunction_init_defaults
	subs	w8, w0, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB67_4
	b	LBB67_3
LBB67_3:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	b	LBB67_11
LBB67_4:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #160]
	str	x8, [sp]
	b	LBB67_6
LBB67_5:
	adrp	x8, __Py_NoneStruct@GOTPAGE
	ldr	x8, [x8, __Py_NoneStruct@GOTPAGEOFF]
	str	x8, [sp]
	b	LBB67_6
LBB67_6:
	b	LBB67_7
LBB67_7:
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB67_9
	b	LBB67_8
LBB67_8:
	b	LBB67_10
LBB67_9:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB67_10
LBB67_10:
	ldr	x8, [sp]
	str	x8, [sp, #24]
	b	LBB67_11
LBB67_11:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_set_kwdefaults
___Pyx_CyFunction_set_kwdefaults:       ; @__Pyx_CyFunction_set_kwdefaults
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB68_2
	b	LBB68_1
LBB68_1:
	adrp	x8, __Py_NoneStruct@GOTPAGE
	ldr	x8, [x8, __Py_NoneStruct@GOTPAGEOFF]
	str	x8, [sp, #24]
	b	LBB68_7
LBB68_2:
	ldr	x8, [sp, #24]
	adrp	x9, __Py_NoneStruct@GOTPAGE
	ldr	x9, [x9, __Py_NoneStruct@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB68_4
	b	LBB68_3
LBB68_3:
	ldr	x0, [sp, #24]
	bl	_Py_TYPE
	mov	x1, #536870912
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w8, eq
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB68_4
LBB68_4:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	mov	w9, #1
	eor	w8, w8, #0x1
	eor	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB68_6
	b	LBB68_5
LBB68_5:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.70@PAGE
	add	x1, x1, l_.str.70@PAGEOFF
	bl	_PyErr_SetString
	mov	w8, #-1
	stur	w8, [x29, #-20]
	b	LBB68_13
LBB68_6:
	b	LBB68_7
LBB68_7:
	adrp	x8, _PyExc_RuntimeWarning@GOTPAGE
	ldr	x8, [x8, _PyExc_RuntimeWarning@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.71@PAGE
	add	x1, x1, l_.str.71@PAGEOFF
	mov	x2, #1
	bl	_PyErr_WarnEx
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB68_9
	b	LBB68_8
LBB68_8:
	b	LBB68_10
LBB68_9:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB68_10
LBB68_10:
	b	LBB68_11
LBB68_11:
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #160]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	str	x8, [x9, #160]
	ldr	x0, [sp, #8]
	bl	_Py_XDECREF
	b	LBB68_12
LBB68_12:
	stur	wzr, [x29, #-20]
	b	LBB68_13
LBB68_13:
	ldur	w0, [x29, #-20]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_get_annotations
___Pyx_CyFunction_get_annotations:      ; @__Pyx_CyFunction_get_annotations
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #176]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB69_4
	b	LBB69_1
LBB69_1:
	bl	_PyDict_New
	str	x0, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB69_3
	b	LBB69_2
LBB69_2:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	b	LBB69_8
LBB69_3:
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	str	x8, [x9, #176]
	b	LBB69_4
LBB69_4:
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB69_6
	b	LBB69_5
LBB69_5:
	b	LBB69_7
LBB69_6:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB69_7
LBB69_7:
	ldr	x8, [sp]
	str	x8, [sp, #24]
	b	LBB69_8
LBB69_8:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_set_annotations
___Pyx_CyFunction_set_annotations:      ; @__Pyx_CyFunction_set_annotations
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB70_2
	b	LBB70_1
LBB70_1:
	ldr	x8, [sp, #24]
	adrp	x9, __Py_NoneStruct@GOTPAGE
	ldr	x9, [x9, __Py_NoneStruct@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB70_3
	b	LBB70_2
LBB70_2:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	b	LBB70_6
LBB70_3:
	ldr	x0, [sp, #24]
	bl	_Py_TYPE
	mov	x1, #536870912
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB70_5
	b	LBB70_4
LBB70_4:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.72@PAGE
	add	x1, x1, l_.str.72@PAGEOFF
	bl	_PyErr_SetString
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB70_9
LBB70_5:
	b	LBB70_6
LBB70_6:
	ldr	x0, [sp, #24]
	bl	_Py_XINCREF
	b	LBB70_7
LBB70_7:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #176]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #176]
	ldr	x0, [sp, #8]
	bl	_Py_XDECREF
	b	LBB70_8
LBB70_8:
	stur	wzr, [x29, #-4]
	b	LBB70_9
LBB70_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_get_is_coroutine
___Pyx_CyFunction_get_is_coroutine:     ; @__Pyx_CyFunction_get_is_coroutine
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #48]
	str	x1, [sp, #40]
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #184]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB71_5
	b	LBB71_1
LBB71_1:
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #184]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-48]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB71_3
	b	LBB71_2
LBB71_2:
	b	LBB71_4
LBB71_3:
	ldur	w8, [x29, #-48]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	b	LBB71_4
LBB71_4:
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #184]
	str	x8, [sp, #56]
	b	LBB71_32
LBB71_5:
	ldr	x8, [sp, #48]
	ldr	w8, [x8, #144]
	and	w8, w8, #0x8
	str	w8, [sp, #36]
	ldr	w8, [sp, #36]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB71_28
	b	LBB71_6
LBB71_6:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #168]
	str	x8, [sp, #8]
	mov	x0, #1
	bl	_PyList_New
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB71_8
	b	LBB71_7
LBB71_7:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #56]
	b	LBB71_32
LBB71_8:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-56]
	ldr	w8, [x8]
	stur	w8, [x29, #-60]
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	ldur	w8, [x29, #-64]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB71_10
	b	LBB71_9
LBB71_9:
	b	LBB71_11
LBB71_10:
	ldur	w8, [x29, #-64]
	ldur	x9, [x29, #-56]
	str	w8, [x9]
	b	LBB71_11
LBB71_11:
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x1, #0
	bl	_PyList_SET_ITEM
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #112]
	ldr	x3, [sp, #16]
	mov	x2, #0
	mov	x1, x2
	mov	w4, #0
	bl	_PyImport_ImportModuleLevelObject
	str	x0, [sp, #24]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB71_13
	b	LBB71_12
LBB71_12:
	b	LBB71_15
LBB71_13:
	ldur	x9, [x29, #-24]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB71_15
	b	LBB71_14
LBB71_14:
	ldur	x0, [x29, #-24]
	bl	__Py_Dealloc
	b	LBB71_15
LBB71_15:
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB71_17
	b	LBB71_16
LBB71_16:
	b	LBB71_27
LBB71_17:
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #8]
	bl	___Pyx_PyObject_GetAttrStr
	ldr	x8, [sp, #48]
	str	x0, [x8, #184]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB71_19
	b	LBB71_18
LBB71_18:
	b	LBB71_21
LBB71_19:
	ldur	x9, [x29, #-32]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB71_21
	b	LBB71_20
LBB71_20:
	ldur	x0, [x29, #-32]
	bl	__Py_Dealloc
	b	LBB71_21
LBB71_21:
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #184]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB71_26
	b	LBB71_22
LBB71_22:
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #184]
	stur	x8, [x29, #-72]
	ldur	x8, [x29, #-72]
	ldr	w8, [x8]
	stur	w8, [x29, #-76]
	ldur	w8, [x29, #-76]
	add	w8, w8, #1
	str	w8, [sp, #80]
	ldr	w8, [sp, #80]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB71_24
	b	LBB71_23
LBB71_23:
	b	LBB71_25
LBB71_24:
	ldr	w8, [sp, #80]
	ldur	x9, [x29, #-72]
	str	w8, [x9]
	b	LBB71_25
LBB71_25:
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #184]
	str	x8, [sp, #56]
	b	LBB71_32
LBB71_26:
	b	LBB71_27
LBB71_27:
	bl	_PyErr_Clear
	b	LBB71_28
LBB71_28:
	ldrsw	x0, [sp, #36]
	bl	___Pyx_PyBool_FromLong
	ldr	x8, [sp, #48]
	str	x0, [x8, #184]
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #184]
	str	x8, [sp, #72]
	ldr	x8, [sp, #72]
	ldr	w8, [x8]
	str	w8, [sp, #68]
	ldr	w8, [sp, #68]
	add	w8, w8, #1
	str	w8, [sp, #64]
	ldr	w8, [sp, #64]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB71_30
	b	LBB71_29
LBB71_29:
	b	LBB71_31
LBB71_30:
	ldr	w8, [sp, #64]
	ldr	x9, [sp, #72]
	str	w8, [x9]
	b	LBB71_31
LBB71_31:
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #184]
	str	x8, [sp, #56]
	b	LBB71_32
LBB71_32:
	ldr	x0, [sp, #56]
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_init_defaults
___Pyx_CyFunction_init_defaults:        ; @__Pyx_CyFunction_init_defaults
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #168]
	ldr	x0, [sp, #16]
	blr	x8
	str	x0, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB72_2
	b	LBB72_1
LBB72_1:
	mov	w8, #-1
	str	w8, [sp, #28]
	b	LBB72_19
LBB72_2:
	ldr	x0, [sp]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB72_4
	b	LBB72_3
LBB72_3:
	adrp	x0, l___func__.__Pyx_CyFunction_init_defaults@PAGE
	add	x0, x0, l___func__.__Pyx_CyFunction_init_defaults@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #5345
	adrp	x3, l_.str.67@PAGE
	add	x3, x3, l_.str.67@PAGEOFF
	bl	___assert_rtn
LBB72_4:
	b	LBB72_5
LBB72_5:
	ldr	x8, [sp]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #16]
	str	x8, [x9, #152]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #152]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	ldur	w8, [x29, #-32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB72_7
	b	LBB72_6
LBB72_6:
	b	LBB72_8
LBB72_7:
	ldur	w8, [x29, #-32]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	b	LBB72_8
LBB72_8:
	ldr	x0, [sp]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB72_10
	b	LBB72_9
LBB72_9:
	adrp	x0, l___func__.__Pyx_CyFunction_init_defaults@PAGE
	add	x0, x0, l___func__.__Pyx_CyFunction_init_defaults@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #5347
	adrp	x3, l_.str.67@PAGE
	add	x3, x3, l_.str.67@PAGEOFF
	bl	___assert_rtn
LBB72_10:
	b	LBB72_11
LBB72_11:
	ldr	x8, [sp]
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #16]
	str	x8, [x9, #160]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #160]
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #32]
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB72_13
	b	LBB72_12
LBB72_12:
	b	LBB72_14
LBB72_13:
	ldr	w8, [sp, #32]
	ldr	x9, [sp, #40]
	str	w8, [x9]
	b	LBB72_14
LBB72_14:
	ldr	x8, [sp]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB72_16
	b	LBB72_15
LBB72_15:
	b	LBB72_18
LBB72_16:
	ldur	x9, [x29, #-16]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB72_18
	b	LBB72_17
LBB72_17:
	ldur	x0, [x29, #-16]
	bl	__Py_Dealloc
	b	LBB72_18
LBB72_18:
	ldr	w8, [sp, #12]
	str	w8, [sp, #28]
	b	LBB72_19
LBB72_19:
	ldr	w0, [sp, #28]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyObject_GetAttrStr
___Pyx_PyObject_GetAttrStr:             ; @__Pyx_PyObject_GetAttrStr
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	bl	_Py_TYPE
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8, #144]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB73_2
	b	LBB73_1
LBB73_1:
	ldr	x8, [sp]
	ldr	x8, [x8, #144]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	blr	x8
	stur	x0, [x29, #-8]
	b	LBB73_3
LBB73_2:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	_PyObject_GetAttr
	stur	x0, [x29, #-8]
	b	LBB73_3
LBB73_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyBool_FromLong
___Pyx_PyBool_FromLong:                 ; @__Pyx_PyBool_FromLong
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB74_5
	b	LBB74_1
LBB74_1:
	adrp	x8, __Py_TrueStruct@GOTPAGE
	ldr	x8, [x8, __Py_TrueStruct@GOTPAGEOFF]
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #32]
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB74_3
	b	LBB74_2
LBB74_2:
	b	LBB74_4
LBB74_3:
	ldr	w8, [sp, #32]
	ldr	x9, [sp, #40]
	str	w8, [x9]
	b	LBB74_4
LBB74_4:
	adrp	x8, __Py_TrueStruct@GOTPAGE
	ldr	x8, [x8, __Py_TrueStruct@GOTPAGEOFF]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB74_9
LBB74_5:
	adrp	x8, __Py_FalseStruct@GOTPAGE
	ldr	x8, [x8, __Py_FalseStruct@GOTPAGEOFF]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB74_7
	b	LBB74_6
LBB74_6:
	b	LBB74_8
LBB74_7:
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	LBB74_8
LBB74_8:
	adrp	x8, __Py_FalseStruct@GOTPAGE
	ldr	x8, [x8, __Py_FalseStruct@GOTPAGEOFF]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB74_9
LBB74_9:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CreateStringTabAndInitStrings
___Pyx_CreateStringTabAndInitStrings:   ; @__Pyx_CreateStringTabAndInitStrings
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	sp, sp, #1008
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	adrp	x11, ___pyx_mstate_global@PAGE
	str	x11, [sp, #8]                   ; 8-byte Folded Spill
	ldr	x8, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x9, x8, #56
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x9, [sp, #40]
	adrp	x9, ___pyx_k_Count@PAGE
	add	x9, x9, ___pyx_k_Count@PAGEOFF
	str	x9, [sp, #48]
	mov	x12, #8
	str	x12, [sp, #56]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [sp, #64]
	mov	w9, #1
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	strb	w9, [sp, #72]
	strb	wzr, [sp, #73]
	strb	wzr, [sp, #74]
	ldr	x10, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x10, x10, #64
	str	x10, [sp, #80]
	adrp	x10, ___pyx_k_Counting_finished@PAGE
	add	x10, x10, ___pyx_k_Counting_finished@PAGEOFF
	str	x10, [sp, #88]
	mov	x10, #19
	str	x10, [sp, #96]
	str	xzr, [sp, #104]
	strb	wzr, [sp, #112]
	strb	w9, [sp, #113]
	strb	wzr, [sp, #114]
	ldr	x13, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x13, x13, #72
	str	x13, [sp, #120]
	adrp	x13, ___pyx_k_Counting_started@PAGE
	add	x13, x13, ___pyx_k_Counting_started@PAGEOFF
	str	x13, [sp, #128]
	mov	x13, #18
	str	x13, [sp, #136]
	str	xzr, [sp, #144]
	strb	wzr, [sp, #152]
	strb	w9, [sp, #153]
	strb	wzr, [sp, #154]
	ldr	x13, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x13, x13, #80
	str	x13, [sp, #160]
	adrp	x13, ___pyx_k_Current_Time_Stamp@PAGE
	add	x13, x13, ___pyx_k_Current_Time_Stamp@PAGEOFF
	str	x13, [sp, #168]
	mov	x13, #21
	str	x13, [sp, #176]
	str	xzr, [sp, #184]
	strb	w9, [sp, #192]
	strb	wzr, [sp, #193]
	strb	wzr, [sp, #194]
	ldr	x13, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x13, x13, #88
	str	x13, [sp, #200]
	adrp	x13, ___pyx_k_Error@PAGE
	add	x13, x13, ___pyx_k_Error@PAGEOFF
	str	x13, [sp, #208]
	str	x12, [sp, #216]
	str	xzr, [sp, #224]
	strb	w9, [sp, #232]
	strb	wzr, [sp, #233]
	strb	wzr, [sp, #234]
	ldr	x12, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x12, x12, #96
	str	x12, [sp, #240]
	adrp	x12, ___pyx_k__4@PAGE
	add	x12, x12, ___pyx_k__4@PAGEOFF
	str	x12, [sp, #248]
	mov	x12, #2
	str	x12, [sp, #256]
	str	xzr, [sp, #264]
	strb	w9, [sp, #272]
	strb	wzr, [sp, #273]
	strb	wzr, [sp, #274]
	ldr	x13, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x13, x13, #104
	str	x13, [sp, #280]
	adrp	x13, ___pyx_k__6@PAGE
	add	x13, x13, ___pyx_k__6@PAGEOFF
	str	x13, [sp, #288]
	str	x12, [sp, #296]
	str	xzr, [sp, #304]
	strb	wzr, [sp, #312]
	strb	w9, [sp, #313]
	strb	w9, [sp, #314]
	ldr	x13, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x13, x13, #112
	str	x13, [sp, #320]
	adrp	x13, ___pyx_k_asyncio_coroutines@PAGE
	add	x13, x13, ___pyx_k_asyncio_coroutines@PAGEOFF
	str	x13, [sp, #328]
	str	x10, [sp, #336]
	str	xzr, [sp, #344]
	strb	wzr, [sp, #352]
	strb	w9, [sp, #353]
	strb	w9, [sp, #354]
	ldr	x13, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x13, x13, #120
	str	x13, [sp, #360]
	adrp	x13, ___pyx_k_cline_in_traceback@PAGE
	add	x13, x13, ___pyx_k_cline_in_traceback@PAGEOFF
	str	x13, [sp, #368]
	str	x10, [sp, #376]
	str	xzr, [sp, #384]
	strb	wzr, [sp, #392]
	strb	w9, [sp, #393]
	strb	w9, [sp, #394]
	ldr	x10, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x10, x10, #128
	str	x10, [sp, #400]
	adrp	x10, ___pyx_k_currentTimeStamp@PAGE
	add	x10, x10, ___pyx_k_currentTimeStamp@PAGEOFF
	str	x10, [sp, #408]
	mov	x10, #17
	str	x10, [sp, #416]
	str	xzr, [sp, #424]
	strb	wzr, [sp, #432]
	strb	w9, [sp, #433]
	strb	w9, [sp, #434]
	ldr	x10, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x10, x10, #136
	str	x10, [sp, #440]
	adrp	x10, ___pyx_k_datetime@PAGE
	add	x10, x10, ___pyx_k_datetime@PAGEOFF
	str	x10, [sp, #448]
	mov	x10, #9
	str	x10, [sp, #456]
	str	xzr, [sp, #464]
	strb	wzr, [sp, #472]
	strb	w9, [sp, #473]
	strb	w9, [sp, #474]
	ldr	x13, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x13, x13, #144
	str	x13, [sp, #480]
	adrp	x13, ___pyx_k_e@PAGE
	add	x13, x13, ___pyx_k_e@PAGEOFF
	str	x13, [sp, #488]
	str	x12, [sp, #496]
	str	xzr, [sp, #504]
	strb	wzr, [sp, #512]
	strb	w9, [sp, #513]
	strb	w9, [sp, #514]
	ldr	x13, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x13, x13, #152
	str	x13, [sp, #520]
	adrp	x13, ___pyx_k_i@PAGE
	add	x13, x13, ___pyx_k_i@PAGEOFF
	str	x13, [sp, #528]
	str	x12, [sp, #536]
	str	xzr, [sp, #544]
	strb	wzr, [sp, #552]
	strb	w9, [sp, #553]
	strb	w9, [sp, #554]
	ldr	x12, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x12, x12, #160
	str	x12, [sp, #560]
	adrp	x12, ___pyx_k_import@PAGE
	add	x12, x12, ___pyx_k_import@PAGEOFF
	str	x12, [sp, #568]
	mov	x12, #11
	str	x12, [sp, #576]
	str	xzr, [sp, #584]
	strb	wzr, [sp, #592]
	strb	w9, [sp, #593]
	strb	w9, [sp, #594]
	ldr	x12, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x12, x12, #168
	str	x12, [sp, #600]
	adrp	x12, ___pyx_k_is_coroutine@PAGE
	add	x12, x12, ___pyx_k_is_coroutine@PAGEOFF
	str	x12, [sp, #608]
	mov	x12, #14
	str	x12, [sp, #616]
	str	xzr, [sp, #624]
	strb	wzr, [sp, #632]
	strb	w9, [sp, #633]
	strb	w9, [sp, #634]
	ldr	x12, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x12, x12, #176
	str	x12, [sp, #640]
	adrp	x12, ___pyx_k_main@PAGE
	add	x12, x12, ___pyx_k_main@PAGEOFF
	str	x12, [sp, #648]
	str	x10, [sp, #656]
	str	xzr, [sp, #664]
	strb	wzr, [sp, #672]
	strb	w9, [sp, #673]
	strb	w9, [sp, #674]
	ldr	x12, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x12, x12, #184
	str	x12, [sp, #680]
	adrp	x12, ___pyx_k_main_2@PAGE
	add	x12, x12, ___pyx_k_main_2@PAGEOFF
	str	x12, [sp, #688]
	mov	x12, #5
	str	x12, [sp, #696]
	str	xzr, [sp, #704]
	strb	wzr, [sp, #712]
	strb	w9, [sp, #713]
	strb	w9, [sp, #714]
	ldr	x12, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x12, x12, #192
	str	x12, [sp, #720]
	adrp	x12, ___pyx_k_main_pyx@PAGE
	add	x12, x12, ___pyx_k_main_pyx@PAGEOFF
	str	x12, [sp, #728]
	str	x10, [sp, #736]
	str	xzr, [sp, #744]
	strb	wzr, [sp, #752]
	strb	w9, [sp, #753]
	strb	wzr, [sp, #754]
	ldr	x12, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x12, x12, #200
	str	x12, [sp, #760]
	adrp	x12, ___pyx_k_name@PAGE
	add	x12, x12, ___pyx_k_name@PAGEOFF
	str	x12, [sp, #768]
	str	x10, [sp, #776]
	str	xzr, [sp, #784]
	strb	wzr, [sp, #792]
	strb	w9, [sp, #793]
	strb	w9, [sp, #794]
	ldr	x12, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x12, x12, #208
	str	x12, [sp, #800]
	adrp	x12, ___pyx_k_now@PAGE
	add	x12, x12, ___pyx_k_now@PAGEOFF
	str	x12, [sp, #808]
	mov	x12, #4
	str	x12, [sp, #816]
	str	xzr, [sp, #824]
	strb	wzr, [sp, #832]
	strb	w9, [sp, #833]
	strb	w9, [sp, #834]
	ldr	x12, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x12, x12, #216
	str	x12, [sp, #840]
	adrp	x12, ___pyx_k_print@PAGE
	add	x12, x12, ___pyx_k_print@PAGEOFF
	str	x12, [sp, #848]
	mov	x12, #6
	str	x12, [sp, #856]
	str	xzr, [sp, #864]
	strb	wzr, [sp, #872]
	strb	w9, [sp, #873]
	strb	w9, [sp, #874]
	ldr	x13, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x13, x13, #224
	str	x13, [sp, #880]
	adrp	x13, ___pyx_k_range@PAGE
	add	x13, x13, ___pyx_k_range@PAGEOFF
	str	x13, [sp, #888]
	str	x12, [sp, #896]
	str	xzr, [sp, #904]
	strb	wzr, [sp, #912]
	strb	w9, [sp, #913]
	strb	w9, [sp, #914]
	ldr	x11, [x11, ___pyx_mstate_global@PAGEOFF]
	add	x11, x11, #232
	str	x11, [sp, #920]
	adrp	x11, ___pyx_k_test@PAGE
	add	x11, x11, ___pyx_k_test@PAGEOFF
	str	x11, [sp, #928]
	str	x10, [sp, #936]
	str	xzr, [sp, #944]
	strb	wzr, [sp, #952]
	strb	w9, [sp, #953]
	strb	w9, [sp, #954]
	add	x0, x8, #920
	mov	w1, #0
	mov	x2, #40
	bl	_memset
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	___Pyx_InitStrings
	str	w0, [sp, #36]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB75_2
	b	LBB75_1
LBB75_1:
	bl	___stack_chk_fail
LBB75_2:
	ldr	w0, [sp, #36]                   ; 4-byte Folded Reload
	add	sp, sp, #1008
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_InitStrings
___Pyx_InitStrings:                     ; @__Pyx_InitStrings
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	b	LBB76_1
LBB76_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB76_3
	b	LBB76_2
LBB76_2:                                ;   in Loop: Header=BB76_1 Depth=1
	ldur	x1, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #16
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x2, #40
	bl	_memcpy
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	___Pyx_InitString
	ldur	x8, [x29, #-8]
	add	x8, x8, #40
	stur	x8, [x29, #-8]
	b	LBB76_1
LBB76_3:
	mov	w0, #0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_InitString
___Pyx_InitString:                      ; @__Pyx_InitString
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x8, x0
	str	x8, [sp, #16]
	str	x1, [sp, #8]
	ldrsb	w8, [x0, #32]
	ldrsb	w9, [x0, #33]
	orr	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB77_8
	b	LBB77_1
LBB77_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldrb	w8, [x8, #34]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB77_3
	b	LBB77_2
LBB77_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #8]
	bl	_PyUnicode_InternFromString
	ldr	x8, [sp, #8]
	str	x0, [x8]
	b	LBB77_7
LBB77_3:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x8, #24]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB77_5
	b	LBB77_4
LBB77_4:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #8]
	ldr	x9, [x8, #16]
	subs	x1, x9, #1
	ldr	x2, [x8, #24]
	mov	x3, #0
	bl	_PyUnicode_Decode
	ldr	x8, [sp, #8]
	str	x0, [x8]
	b	LBB77_6
LBB77_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #8]
	ldr	x8, [x8, #16]
	subs	x1, x8, #1
	bl	_PyUnicode_FromStringAndSize
	ldr	x8, [sp, #8]
	str	x0, [x8]
	b	LBB77_6
LBB77_6:
	b	LBB77_7
LBB77_7:
	b	LBB77_9
LBB77_8:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #8]
	ldr	x8, [x8, #16]
	subs	x1, x8, #1
	bl	_PyBytes_FromStringAndSize
	ldr	x8, [sp, #8]
	str	x0, [x8]
	b	LBB77_9
LBB77_9:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB77_11
	b	LBB77_10
LBB77_10:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB77_14
LBB77_11:
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	_PyObject_Hash
	adds	x8, x0, #1
	cset	w8, ne
	tbnz	w8, #0, LBB77_13
	b	LBB77_12
LBB77_12:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB77_14
LBB77_13:
	stur	wzr, [x29, #-4]
	b	LBB77_14
LBB77_14:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_GetBuiltinName
___Pyx_GetBuiltinName:                  ; @__Pyx_GetBuiltinName
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #8]
	ldur	x1, [x29, #-8]
	bl	___Pyx_PyObject_GetAttrStrNoError
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB78_3
	b	LBB78_1
LBB78_1:
	bl	_PyErr_Occurred
	subs	x8, x0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB78_3
	b	LBB78_2
LBB78_2:
	adrp	x8, _PyExc_NameError@GOTPAGE
	ldr	x8, [x8, _PyExc_NameError@GOTPAGEOFF]
	ldr	x0, [x8]
	ldur	x8, [x29, #-8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.73@PAGE
	add	x1, x1, l_.str.73@PAGEOFF
	bl	_PyErr_Format
	b	LBB78_3
LBB78_3:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyObject_GetAttrStrNoError
___Pyx_PyObject_GetAttrStrNoError:      ; @__Pyx_PyObject_GetAttrStrNoError
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	_Py_TYPE
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #144]
	adrp	x9, _PyObject_GenericGetAttr@GOTPAGE
	ldr	x9, [x9, _PyObject_GenericGetAttr@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB79_2
	b	LBB79_1
LBB79_1:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	mov	x2, #0
	mov	w3, #1
	bl	__PyObject_GenericGetAttrWithDict
	stur	x0, [x29, #-8]
	b	LBB79_5
LBB79_2:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	___Pyx_PyObject_GetAttrStr
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB79_4
	b	LBB79_3
LBB79_3:
	bl	___Pyx_PyObject_GetAttrStr_ClearAttributeError
	b	LBB79_4
LBB79_4:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	LBB79_5
LBB79_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyObject_GetAttrStr_ClearAttributeError
___Pyx_PyObject_GetAttrStr_ClearAttributeError: ; @__Pyx_PyObject_GetAttrStr_ClearAttributeError
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__PyThreadState_UncheckedGet
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, _PyExc_AttributeError@GOTPAGE
	ldr	x8, [x8, _PyExc_AttributeError@GOTPAGEOFF]
	ldr	x1, [x8]
	bl	___Pyx_PyErr_ExceptionMatchesInState
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB80_2
	b	LBB80_1
LBB80_1:
	ldr	x0, [sp, #8]
	mov	x3, #0
	mov	x1, x3
	mov	x2, x3
	bl	___Pyx_ErrRestoreInState
	b	LBB80_2
LBB80_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyErr_ExceptionMatchesInState
___Pyx_PyErr_ExceptionMatchesInState:   ; @__Pyx_PyErr_ExceptionMatchesInState
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #96]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB81_2
	b	LBB81_1
LBB81_1:
	stur	wzr, [x29, #-4]
	b	LBB81_8
LBB81_2:
	ldr	x0, [sp]
	bl	_Py_TYPE
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB81_4
	b	LBB81_3
LBB81_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB81_8
LBB81_4:
	ldr	x0, [sp, #24]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB81_6
	b	LBB81_5
LBB81_5:
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #24]
	bl	___Pyx_PyErr_ExceptionMatchesTuple
	str	w0, [sp, #20]
	b	LBB81_7
LBB81_6:
	ldr	x0, [sp, #8]
	ldr	x1, [sp, #24]
	bl	___Pyx_PyErr_GivenExceptionMatches
	str	w0, [sp, #20]
	b	LBB81_7
LBB81_7:
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	LBB81_8
LBB81_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_ErrRestoreInState
___Pyx_ErrRestoreInState:               ; @__Pyx_ErrRestoreInState
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w9, #1
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB82_4
	b	LBB82_1
LBB82_1:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #16]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB82_3
	b	LBB82_2
LBB82_2:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_Py_TYPE
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, eq
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	b	LBB82_3
LBB82_3:
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB82_4
LBB82_4:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	eor	w9, w8, #0x1
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB82_6
	b	LBB82_5
LBB82_5:
	adrp	x0, l___func__.__Pyx_ErrRestoreInState@PAGE
	add	x0, x0, l___func__.__Pyx_ErrRestoreInState@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #3667
	adrp	x3, l_.str.77@PAGE
	add	x3, x3, l_.str.77@PAGEOFF
	bl	___assert_rtn
LBB82_6:
	b	LBB82_7
LBB82_7:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB82_11
	b	LBB82_8
LBB82_8:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #40]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB82_10
	b	LBB82_9
LBB82_9:
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	bl	_PyException_SetTraceback
	b	LBB82_10
LBB82_10:
	b	LBB82_11
LBB82_11:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #96]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #96]
	ldr	x0, [sp, #24]
	bl	_Py_XDECREF
	ldur	x0, [x29, #-16]
	bl	_Py_XDECREF
	ldr	x0, [sp, #32]
	bl	_Py_XDECREF
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyErr_ExceptionMatchesTuple
___Pyx_PyErr_ExceptionMatchesTuple:     ; @__Pyx_PyErr_ExceptionMatchesTuple
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-24]
	bl	_PyTuple_GET_SIZE
	str	x0, [sp, #24]
	str	xzr, [sp, #32]
	b	LBB83_1
LBB83_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB83_9
	b	LBB83_2
LBB83_2:                                ;   in Loop: Header=BB83_1 Depth=1
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB83_4
	b	LBB83_3
LBB83_3:
	adrp	x0, l___func__.__Pyx_PyErr_ExceptionMatchesTuple@PAGE
	add	x0, x0, l___func__.__Pyx_PyErr_ExceptionMatchesTuple@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #3626
	adrp	x3, l_.str.74@PAGE
	add	x3, x3, l_.str.74@PAGEOFF
	bl	___assert_rtn
LBB83_4:                                ;   in Loop: Header=BB83_1 Depth=1
	b	LBB83_5
LBB83_5:                                ;   in Loop: Header=BB83_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-24]
	add	x9, x9, #24
	ldr	x10, [sp, #32]
	ldr	x9, [x9, x10, lsl #3]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB83_7
	b	LBB83_6
LBB83_6:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB83_19
LBB83_7:                                ;   in Loop: Header=BB83_1 Depth=1
	b	LBB83_8
LBB83_8:                                ;   in Loop: Header=BB83_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	LBB83_1
LBB83_9:
	str	xzr, [sp, #32]
	b	LBB83_10
LBB83_10:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB83_18
	b	LBB83_11
LBB83_11:                               ;   in Loop: Header=BB83_10 Depth=1
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB83_13
	b	LBB83_12
LBB83_12:
	adrp	x0, l___func__.__Pyx_PyErr_ExceptionMatchesTuple@PAGE
	add	x0, x0, l___func__.__Pyx_PyErr_ExceptionMatchesTuple@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #3630
	adrp	x3, l_.str.74@PAGE
	add	x3, x3, l_.str.74@PAGEOFF
	bl	___assert_rtn
LBB83_13:                               ;   in Loop: Header=BB83_10 Depth=1
	b	LBB83_14
LBB83_14:                               ;   in Loop: Header=BB83_10 Depth=1
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	add	x8, x8, #24
	ldr	x9, [sp, #32]
	ldr	x1, [x8, x9, lsl #3]
	bl	___Pyx_PyErr_GivenExceptionMatches
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB83_16
	b	LBB83_15
LBB83_15:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB83_19
LBB83_16:                               ;   in Loop: Header=BB83_10 Depth=1
	b	LBB83_17
LBB83_17:                               ;   in Loop: Header=BB83_10 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	LBB83_10
LBB83_18:
	stur	wzr, [x29, #-4]
	b	LBB83_19
LBB83_19:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyErr_GivenExceptionMatches
___Pyx_PyErr_GivenExceptionMatches:     ; @__Pyx_PyErr_GivenExceptionMatches
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB84_2
	b	LBB84_1
LBB84_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB84_15
LBB84_2:
	ldr	x0, [sp, #16]
	bl	_PyType_Check
	subs	w8, w0, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB84_4
	b	LBB84_3
LBB84_3:
	ldr	x0, [sp, #16]
	mov	x1, #1073741824
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w8, ne
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB84_4
LBB84_4:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	mov	w9, #1
	eor	w8, w8, #0x1
	eor	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB84_14
	b	LBB84_5
LBB84_5:
	ldr	x0, [sp, #8]
	bl	_PyType_Check
	subs	w8, w0, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp]                        ; 4-byte Folded Spill
	tbnz	w8, #0, LBB84_7
	b	LBB84_6
LBB84_6:
	ldr	x0, [sp, #8]
	mov	x1, #1073741824
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w8, ne
	str	w8, [sp]                        ; 4-byte Folded Spill
	b	LBB84_7
LBB84_7:
	ldr	w8, [sp]                        ; 4-byte Folded Reload
	mov	w9, #1
	eor	w8, w8, #0x1
	eor	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB84_9
	b	LBB84_8
LBB84_8:
	ldr	x0, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x1, #0
	bl	___Pyx_inner_PyErr_GivenExceptionMatches2
	stur	w0, [x29, #-4]
	b	LBB84_15
LBB84_9:
	ldr	x0, [sp, #8]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB84_11
	b	LBB84_10
LBB84_10:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	___Pyx_PyErr_GivenExceptionMatchesTuple
	stur	w0, [x29, #-4]
	b	LBB84_15
LBB84_11:
	b	LBB84_12
LBB84_12:
	b	LBB84_13
LBB84_13:
	b	LBB84_14
LBB84_14:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	_PyErr_GivenExceptionMatches
	stur	w0, [x29, #-4]
	b	LBB84_15
LBB84_15:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_inner_PyErr_GivenExceptionMatches2
___Pyx_inner_PyErr_GivenExceptionMatches2: ; @__Pyx_inner_PyErr_GivenExceptionMatches2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	x2, [sp]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB85_2
	b	LBB85_1
LBB85_1:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	___Pyx_IsAnySubtype2
	stur	w0, [x29, #-4]
	b	LBB85_3
LBB85_2:
	ldr	x0, [sp, #16]
	ldr	x1, [sp]
	bl	___Pyx_IsSubtype
	stur	w0, [x29, #-4]
	b	LBB85_3
LBB85_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyErr_GivenExceptionMatchesTuple
___Pyx_PyErr_GivenExceptionMatchesTuple: ; @__Pyx_PyErr_GivenExceptionMatchesTuple
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	bl	_PyType_Check
	subs	w8, w0, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #28]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB86_2
	b	LBB86_1
LBB86_1:
	ldur	x0, [x29, #-16]
	mov	x1, #1073741824
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w8, ne
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	b	LBB86_2
LBB86_2:
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	eor	w9, w8, #0x1
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB86_4
	b	LBB86_3
LBB86_3:
	adrp	x0, l___func__.__Pyx_PyErr_GivenExceptionMatchesTuple@PAGE
	add	x0, x0, l___func__.__Pyx_PyErr_GivenExceptionMatchesTuple@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #7219
	adrp	x3, l_.str.76@PAGE
	add	x3, x3, l_.str.76@PAGEOFF
	bl	___assert_rtn
LBB86_4:
	b	LBB86_5
LBB86_5:
	ldur	x0, [x29, #-24]
	bl	_PyTuple_GET_SIZE
	str	x0, [sp, #40]
	stur	xzr, [x29, #-32]
	b	LBB86_6
LBB86_6:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-32]
	ldr	x9, [sp, #40]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB86_14
	b	LBB86_7
LBB86_7:                                ;   in Loop: Header=BB86_6 Depth=1
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB86_9
	b	LBB86_8
LBB86_8:
	adrp	x0, l___func__.__Pyx_PyErr_GivenExceptionMatchesTuple@PAGE
	add	x0, x0, l___func__.__Pyx_PyErr_GivenExceptionMatchesTuple@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #7223
	adrp	x3, l_.str.74@PAGE
	add	x3, x3, l_.str.74@PAGEOFF
	bl	___assert_rtn
LBB86_9:                                ;   in Loop: Header=BB86_6 Depth=1
	b	LBB86_10
LBB86_10:                               ;   in Loop: Header=BB86_6 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-24]
	add	x9, x9, #24
	ldur	x10, [x29, #-32]
	ldr	x9, [x9, x10, lsl #3]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB86_12
	b	LBB86_11
LBB86_11:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB86_29
LBB86_12:                               ;   in Loop: Header=BB86_6 Depth=1
	b	LBB86_13
LBB86_13:                               ;   in Loop: Header=BB86_6 Depth=1
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	LBB86_6
LBB86_14:
	stur	xzr, [x29, #-32]
	b	LBB86_15
LBB86_15:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-32]
	ldr	x9, [sp, #40]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB86_28
	b	LBB86_16
LBB86_16:                               ;   in Loop: Header=BB86_15 Depth=1
	ldur	x0, [x29, #-24]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB86_18
	b	LBB86_17
LBB86_17:
	adrp	x0, l___func__.__Pyx_PyErr_GivenExceptionMatchesTuple@PAGE
	add	x0, x0, l___func__.__Pyx_PyErr_GivenExceptionMatchesTuple@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #7227
	adrp	x3, l_.str.74@PAGE
	add	x3, x3, l_.str.74@PAGEOFF
	bl	___assert_rtn
LBB86_18:                               ;   in Loop: Header=BB86_15 Depth=1
	b	LBB86_19
LBB86_19:                               ;   in Loop: Header=BB86_15 Depth=1
	ldur	x8, [x29, #-24]
	add	x8, x8, #24
	ldur	x9, [x29, #-32]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #32]
	ldr	x0, [sp, #32]
	bl	_PyType_Check
	subs	w8, w0, #0
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB86_21
	b	LBB86_20
LBB86_20:                               ;   in Loop: Header=BB86_15 Depth=1
	ldr	x0, [sp, #32]
	mov	x1, #1073741824
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w8, ne
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB86_21
LBB86_21:                               ;   in Loop: Header=BB86_15 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	mov	w9, #1
	eor	w8, w8, #0x1
	eor	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB86_25
	b	LBB86_22
LBB86_22:                               ;   in Loop: Header=BB86_15 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #32]
	mov	x1, #0
	bl	___Pyx_inner_PyErr_GivenExceptionMatches2
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB86_24
	b	LBB86_23
LBB86_23:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB86_29
LBB86_24:                               ;   in Loop: Header=BB86_15 Depth=1
	b	LBB86_26
LBB86_25:                               ;   in Loop: Header=BB86_15 Depth=1
	b	LBB86_26
LBB86_26:                               ;   in Loop: Header=BB86_15 Depth=1
	b	LBB86_27
LBB86_27:                               ;   in Loop: Header=BB86_15 Depth=1
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	LBB86_15
LBB86_28:
	stur	wzr, [x29, #-4]
	b	LBB86_29
LBB86_29:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_IsAnySubtype2
___Pyx_IsAnySubtype2:                   ; @__Pyx_IsAnySubtype2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB87_2
	b	LBB87_1
LBB87_1:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB87_3
	b	LBB87_2
LBB87_2:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB87_18
LBB87_3:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #344]
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB87_15
	b	LBB87_4
LBB87_4:
	ldr	x0, [sp, #40]
	bl	_PyTuple_GET_SIZE
	str	x0, [sp, #24]
	str	xzr, [sp, #32]
	b	LBB87_5
LBB87_5:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB87_14
	b	LBB87_6
LBB87_6:                                ;   in Loop: Header=BB87_5 Depth=1
	ldr	x0, [sp, #40]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB87_8
	b	LBB87_7
LBB87_7:
	adrp	x0, l___func__.__Pyx_IsAnySubtype2@PAGE
	add	x0, x0, l___func__.__Pyx_IsAnySubtype2@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #7178
	adrp	x3, l_.str.75@PAGE
	add	x3, x3, l_.str.75@PAGEOFF
	bl	___assert_rtn
LBB87_8:                                ;   in Loop: Header=BB87_5 Depth=1
	b	LBB87_9
LBB87_9:                                ;   in Loop: Header=BB87_5 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #24
	ldr	x9, [sp, #32]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB87_11
	b	LBB87_10
LBB87_10:                               ;   in Loop: Header=BB87_5 Depth=1
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB87_12
	b	LBB87_11
LBB87_11:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB87_18
LBB87_12:                               ;   in Loop: Header=BB87_5 Depth=1
	b	LBB87_13
LBB87_13:                               ;   in Loop: Header=BB87_5 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	LBB87_5
LBB87_14:
	stur	wzr, [x29, #-4]
	b	LBB87_18
LBB87_15:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	___Pyx_InBases
	subs	w8, w0, #0
	cset	w8, ne
	mov	w9, #1
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB87_17
	b	LBB87_16
LBB87_16:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	bl	___Pyx_InBases
	subs	w8, w0, #0
	cset	w8, ne
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB87_17
LBB87_17:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	LBB87_18
LBB87_18:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_IsSubtype
___Pyx_IsSubtype:                       ; @__Pyx_IsSubtype
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB88_2
	b	LBB88_1
LBB88_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB88_14
LBB88_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #344]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB88_13
	b	LBB88_3
LBB88_3:
	ldr	x0, [sp, #16]
	bl	_PyTuple_GET_SIZE
	str	x0, [sp]
	str	xzr, [sp, #8]
	b	LBB88_4
LBB88_4:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB88_12
	b	LBB88_5
LBB88_5:                                ;   in Loop: Header=BB88_4 Depth=1
	ldr	x0, [sp, #16]
	bl	_Py_TYPE
	mov	x1, #67108864
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB88_7
	b	LBB88_6
LBB88_6:
	adrp	x0, l___func__.__Pyx_IsSubtype@PAGE
	add	x0, x0, l___func__.__Pyx_IsSubtype@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #7163
	adrp	x3, l_.str.75@PAGE
	add	x3, x3, l_.str.75@PAGEOFF
	bl	___assert_rtn
LBB88_7:                                ;   in Loop: Header=BB88_4 Depth=1
	b	LBB88_8
LBB88_8:                                ;   in Loop: Header=BB88_4 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #24
	ldr	x9, [sp, #8]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB88_10
	b	LBB88_9
LBB88_9:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	LBB88_14
LBB88_10:                               ;   in Loop: Header=BB88_4 Depth=1
	b	LBB88_11
LBB88_11:                               ;   in Loop: Header=BB88_4 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB88_4
LBB88_12:
	stur	wzr, [x29, #-4]
	b	LBB88_14
LBB88_13:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	___Pyx_InBases
	stur	w0, [x29, #-4]
	b	LBB88_14
LBB88_14:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_InBases
___Pyx_InBases:                         ; @__Pyx_InBases
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	b	LBB89_1
LBB89_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB89_5
	b	LBB89_2
LBB89_2:                                ;   in Loop: Header=BB89_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #256]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB89_4
	b	LBB89_3
LBB89_3:
	mov	w8, #1
	str	w8, [sp, #28]
	b	LBB89_6
LBB89_4:                                ;   in Loop: Header=BB89_1 Depth=1
	b	LBB89_1
LBB89_5:
	ldr	x8, [sp, #8]
	adrp	x9, _PyBaseObject_Type@GOTPAGE
	ldr	x9, [x9, _PyBaseObject_Type@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #28]
	b	LBB89_6
LBB89_6:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyCode_New
___Pyx_PyCode_New:                      ; @__Pyx_PyCode_New
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #272
	.cfi_def_cfa_offset 272
	stp	x20, x19, [sp, #240]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #256]            ; 16-byte Folded Spill
	add	x29, sp, #256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	ldr	x15, [x29, #16]
	ldr	x14, [x29, #24]
	ldr	x13, [x29, #32]
	ldr	x12, [x29, #40]
	ldr	x11, [x29, #48]
	ldr	x10, [x29, #56]
	ldr	w9, [x29, #64]
	ldr	x8, [x29, #72]
	stur	w0, [x29, #-44]
	stur	w1, [x29, #-48]
	stur	w2, [x29, #-52]
	stur	w3, [x29, #-56]
	stur	w4, [x29, #-60]
	stur	w5, [x29, #-64]
	stur	x6, [x29, #-72]
	stur	x7, [x29, #-80]
	stur	x15, [x29, #-88]
	stur	x14, [x29, #-96]
	stur	x13, [x29, #-104]
	stur	x12, [x29, #-112]
	stur	x11, [x29, #-120]
	str	x10, [sp, #128]
	str	w9, [sp, #124]
	str	x8, [sp, #112]
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
	mov	x1, #0
	bl	_PyBytes_FromStringAndSize
	str	x0, [sp, #96]
	ldr	x8, [sp, #96]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB90_2
	b	LBB90_1
LBB90_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-40]
	b	LBB90_7
LBB90_2:
	ldur	w0, [x29, #-44]
	ldur	w1, [x29, #-48]
	ldur	w2, [x29, #-52]
	ldur	w3, [x29, #-56]
	ldur	w4, [x29, #-60]
	ldur	w5, [x29, #-64]
	ldur	x6, [x29, #-72]
	ldur	x7, [x29, #-80]
	ldur	x19, [x29, #-88]
	ldur	x17, [x29, #-96]
	ldur	x16, [x29, #-104]
	ldur	x15, [x29, #-112]
	ldur	x14, [x29, #-120]
	ldr	x13, [sp, #128]
	ldr	x12, [sp, #128]
	ldr	w11, [sp, #124]
	ldr	x10, [sp, #112]
	ldr	x8, [sp, #96]
	mov	x9, sp
	str	x9, [sp, #88]                   ; 8-byte Folded Spill
	str	x19, [x9]
	str	x17, [x9, #8]
	str	x16, [x9, #16]
	str	x15, [x9, #24]
	str	x14, [x9, #32]
	str	x13, [x9, #40]
	str	x12, [x9, #48]
	str	w11, [x9, #56]
	str	x10, [x9, #64]
	str	x8, [x9, #72]
	bl	_PyUnstable_Code_NewWithPosOnlyArgs
	str	x0, [sp, #104]
	ldr	x8, [sp, #96]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB90_4
	b	LBB90_3
LBB90_3:
	b	LBB90_6
LBB90_4:
	ldur	x9, [x29, #-32]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB90_6
	b	LBB90_5
LBB90_5:
	ldur	x0, [x29, #-32]
	bl	__Py_Dealloc
	b	LBB90_6
LBB90_6:
	ldr	x8, [sp, #104]
	stur	x8, [x29, #-40]
	b	LBB90_7
LBB90_7:
	ldur	x0, [x29, #-40]
	ldp	x29, x30, [sp, #256]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #272
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_createFrameCodeObject
___Pyx_createFrameCodeObject:           ; @__Pyx_createFrameCodeObject
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	ldr	w2, [sp, #12]
	bl	_PyCode_NewEmpty
	str	x0, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB91_2
	b	LBB91_1
LBB91_1:
	ldr	x9, [sp]
	ldr	w8, [x9, #48]
	orr	w8, w8, #0x3
	str	w8, [x9, #48]
	b	LBB91_2
LBB91_2:
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_ErrFetchInState
___Pyx_ErrFetchInState:                 ; @__Pyx_ErrFetchInState
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #96]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-24]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #96]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #32]
	str	xzr, [x8]
	ldr	x8, [sp, #16]
	str	xzr, [x8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB92_5
	b	LBB92_1
LBB92_1:
	ldr	x0, [sp, #8]
	bl	_Py_TYPE
	ldr	x8, [sp, #32]
	str	x0, [x8]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB92_3
	b	LBB92_2
LBB92_2:
	b	LBB92_4
LBB92_3:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB92_4
LBB92_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #40]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	bl	_Py_XINCREF
	b	LBB92_5
LBB92_5:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_Init
___Pyx_CyFunction_Init:                 ; @__Pyx_CyFunction_Init
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-64]
	str	x1, [sp, #72]
	str	w2, [sp, #68]
	str	x3, [sp, #56]
	str	x4, [sp, #48]
	str	x5, [sp, #40]
	str	x6, [sp, #32]
	str	x7, [sp, #24]
	ldur	x8, [x29, #-64]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-64]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB93_2
	b	LBB93_1
LBB93_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-56]
	b	LBB93_24
LBB93_2:
	ldr	w8, [sp, #68]
	ldur	x9, [x29, #-64]
	str	w8, [x9, #144]
	ldur	x8, [x29, #-64]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #40]
	ldr	x8, [sp, #72]
	ldr	x9, [sp, #16]
	str	x8, [x9, #16]
	ldur	x8, [x29, #-64]
	ldr	x9, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #48]
	bl	_Py_XINCREF
	ldr	x8, [sp, #48]
	ldur	x9, [x29, #-64]
	str	x8, [x9, #112]
	ldr	x0, [sp, #40]
	bl	_Py_XINCREF
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #16]
	str	x8, [x9, #32]
	ldur	x8, [x29, #-64]
	str	xzr, [x8, #64]
	ldur	x8, [x29, #-64]
	str	xzr, [x8, #72]
	ldr	x8, [sp, #56]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	ldur	w8, [x29, #-32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB93_4
	b	LBB93_3
LBB93_3:
	b	LBB93_5
LBB93_4:
	ldur	w8, [x29, #-32]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	b	LBB93_5
LBB93_5:
	ldr	x8, [sp, #56]
	ldur	x9, [x29, #-64]
	str	x8, [x9, #80]
	ldur	x8, [x29, #-64]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #88]
	ldur	x8, [x29, #-64]
	str	xzr, [x8, #56]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-64]
	str	x8, [x9, #96]
	ldur	x8, [x29, #-64]
	ldr	x8, [x8, #96]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-48]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB93_7
	b	LBB93_6
LBB93_6:
	b	LBB93_8
LBB93_7:
	ldur	w8, [x29, #-48]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	b	LBB93_8
LBB93_8:
	ldr	x0, [sp, #24]
	bl	_Py_XINCREF
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-64]
	str	x8, [x9, #104]
	ldur	x8, [x29, #-64]
	str	wzr, [x8, #128]
	ldur	x8, [x29, #-64]
	str	xzr, [x8, #136]
	ldur	x8, [x29, #-64]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #120]
	ldur	x8, [x29, #-64]
	str	xzr, [x8, #152]
	ldur	x8, [x29, #-64]
	str	xzr, [x8, #160]
	ldur	x8, [x29, #-64]
	str	xzr, [x8, #168]
	ldur	x8, [x29, #-64]
	str	xzr, [x8, #176]
	ldur	x8, [x29, #-64]
	str	xzr, [x8, #184]
	ldr	x8, [sp, #72]
	ldr	w8, [x8, #16]
	mov	w9, #655
	and	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #3
	cset	w8, eq
	tbnz	w8, #0, LBB93_17
	b	LBB93_9
LBB93_9:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w8, #4
	cset	w8, eq
	tbnz	w8, #0, LBB93_13
	b	LBB93_10
LBB93_10:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w8, #8
	cset	w8, eq
	tbnz	w8, #0, LBB93_14
	b	LBB93_11
LBB93_11:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w8, #130
	cset	w8, eq
	tbnz	w8, #0, LBB93_16
	b	LBB93_12
LBB93_12:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w8, #642
	cset	w8, eq
	tbnz	w8, #0, LBB93_15
	b	LBB93_18
LBB93_13:
	ldur	x9, [x29, #-64]
	adrp	x8, ___Pyx_CyFunction_Vectorcall_NOARGS@PAGE
	add	x8, x8, ___Pyx_CyFunction_Vectorcall_NOARGS@PAGEOFF
	str	x8, [x9, #48]
	b	LBB93_23
LBB93_14:
	ldur	x9, [x29, #-64]
	adrp	x8, ___Pyx_CyFunction_Vectorcall_O@PAGE
	add	x8, x8, ___Pyx_CyFunction_Vectorcall_O@PAGEOFF
	str	x8, [x9, #48]
	b	LBB93_23
LBB93_15:
	ldur	x9, [x29, #-64]
	adrp	x8, ___Pyx_CyFunction_Vectorcall_FASTCALL_KEYWORDS_METHOD@PAGE
	add	x8, x8, ___Pyx_CyFunction_Vectorcall_FASTCALL_KEYWORDS_METHOD@PAGEOFF
	str	x8, [x9, #48]
	b	LBB93_23
LBB93_16:
	ldur	x9, [x29, #-64]
	adrp	x8, ___Pyx_CyFunction_Vectorcall_FASTCALL_KEYWORDS@PAGE
	add	x8, x8, ___Pyx_CyFunction_Vectorcall_FASTCALL_KEYWORDS@PAGEOFF
	str	x8, [x9, #48]
	b	LBB93_23
LBB93_17:
	ldur	x8, [x29, #-64]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #48]
	b	LBB93_23
LBB93_18:
	adrp	x8, _PyExc_SystemError@GOTPAGE
	ldr	x8, [x8, _PyExc_SystemError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.41@PAGE
	add	x1, x1, l_.str.41@PAGEOFF
	bl	_PyErr_SetString
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB93_20
	b	LBB93_19
LBB93_19:
	b	LBB93_22
LBB93_20:
	ldur	x9, [x29, #-16]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB93_22
	b	LBB93_21
LBB93_21:
	ldur	x0, [x29, #-16]
	bl	__Py_Dealloc
	b	LBB93_22
LBB93_22:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-56]
	b	LBB93_24
LBB93_23:
	ldur	x8, [x29, #-64]
	stur	x8, [x29, #-56]
	b	LBB93_24
LBB93_24:
	ldur	x0, [x29, #-56]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_Vectorcall_NOARGS
___Pyx_CyFunction_Vectorcall_NOARGS:    ; @__Pyx_CyFunction_Vectorcall_NOARGS
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #16]
	str	x8, [sp, #40]
	ldur	x0, [x29, #-32]
	bl	__PyVectorcall_NARGS
	str	x0, [sp, #32]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #32]
	ldur	x2, [x29, #-40]
	bl	___Pyx_CyFunction_Vectorcall_CheckArgs
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB94_3
	b	LBB94_1
LBB94_1:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB94_4
	b	LBB94_2
LBB94_2:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-24]
	add	x8, x8, #8
	stur	x8, [x29, #-24]
	ldr	x8, [sp, #32]
	subs	x8, x8, #1
	str	x8, [sp, #32]
	b	LBB94_5
LBB94_3:
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #24]
	str	x8, [sp, #24]
	b	LBB94_5
LBB94_4:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB94_8
LBB94_5:
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB94_7
	b	LBB94_6
LBB94_6:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	ldr	x8, [sp, #40]
	ldr	x10, [x8]
	ldr	x8, [sp, #32]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x1, l_.str.38@PAGE
	add	x1, x1, l_.str.38@PAGEOFF
	bl	_PyErr_Format
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB94_8
LBB94_7:
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #8]
	ldr	x0, [sp, #24]
	mov	x1, #0
	blr	x8
	stur	x0, [x29, #-8]
	b	LBB94_8
LBB94_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_Vectorcall_O
___Pyx_CyFunction_Vectorcall_O:         ; @__Pyx_CyFunction_Vectorcall_O
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #16]
	str	x8, [sp, #40]
	ldur	x0, [x29, #-32]
	bl	__PyVectorcall_NARGS
	str	x0, [sp, #32]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #32]
	ldur	x2, [x29, #-40]
	bl	___Pyx_CyFunction_Vectorcall_CheckArgs
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB95_3
	b	LBB95_1
LBB95_1:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB95_4
	b	LBB95_2
LBB95_2:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-24]
	add	x8, x8, #8
	stur	x8, [x29, #-24]
	ldr	x8, [sp, #32]
	subs	x8, x8, #1
	str	x8, [sp, #32]
	b	LBB95_5
LBB95_3:
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #24]
	str	x8, [sp, #24]
	b	LBB95_5
LBB95_4:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB95_8
LBB95_5:
	ldr	x8, [sp, #32]
	subs	x8, x8, #1
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB95_7
	b	LBB95_6
LBB95_6:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	ldr	x8, [sp, #40]
	ldr	x10, [x8]
	ldr	x8, [sp, #32]
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	_PyErr_Format
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB95_8
LBB95_7:
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #8]
	ldr	x0, [sp, #24]
	ldur	x9, [x29, #-24]
	ldr	x1, [x9]
	blr	x8
	stur	x0, [x29, #-8]
	b	LBB95_8
LBB95_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_Vectorcall_FASTCALL_KEYWORDS_METHOD
___Pyx_CyFunction_Vectorcall_FASTCALL_KEYWORDS_METHOD: ; @__Pyx_CyFunction_Vectorcall_FASTCALL_KEYWORDS_METHOD
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #16]
	str	x8, [sp, #40]
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #56]
	str	x8, [sp, #32]
	ldur	x0, [x29, #-32]
	bl	__PyVectorcall_NARGS
	str	x0, [sp, #24]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #24]
	mov	x2, #0
	bl	___Pyx_CyFunction_Vectorcall_CheckArgs
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB96_3
	b	LBB96_1
LBB96_1:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB96_4
	b	LBB96_2
LBB96_2:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-24]
	add	x8, x8, #8
	stur	x8, [x29, #-24]
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	str	x8, [sp, #24]
	b	LBB96_5
LBB96_3:
	ldr	x8, [sp, #48]
	ldr	x8, [x8, #24]
	str	x8, [sp, #16]
	b	LBB96_5
LBB96_4:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB96_6
LBB96_5:
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #32]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #24]
	ldur	x4, [x29, #-40]
	blr	x8
	stur	x0, [x29, #-8]
	b	LBB96_6
LBB96_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_Vectorcall_FASTCALL_KEYWORDS
___Pyx_CyFunction_Vectorcall_FASTCALL_KEYWORDS: ; @__Pyx_CyFunction_Vectorcall_FASTCALL_KEYWORDS
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #24]
	ldur	x0, [x29, #-32]
	bl	__PyVectorcall_NARGS
	str	x0, [sp, #16]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #16]
	mov	x2, #0
	bl	___Pyx_CyFunction_Vectorcall_CheckArgs
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB97_3
	b	LBB97_1
LBB97_1:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB97_4
	b	LBB97_2
LBB97_2:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-24]
	add	x8, x8, #8
	stur	x8, [x29, #-24]
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	str	x8, [sp, #16]
	b	LBB97_5
LBB97_3:
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #24]
	str	x8, [sp, #8]
	b	LBB97_5
LBB97_4:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB97_6
LBB97_5:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #40]
	blr	x8
	stur	x0, [x29, #-8]
	b	LBB97_6
LBB97_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _PyVectorcall_NARGS
__PyVectorcall_NARGS:                   ; @_PyVectorcall_NARGS
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	and	x0, x8, #0x7fffffffffffffff
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyFunction_Vectorcall_CheckArgs
___Pyx_CyFunction_Vectorcall_CheckArgs: ; @__Pyx_CyFunction_Vectorcall_CheckArgs
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	wzr, [sp, #12]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #144]
	ands	w8, w8, #0x4
	cset	w8, eq
	tbnz	w8, #0, LBB99_5
	b	LBB99_1
LBB99_1:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #144]
	ands	w8, w8, #0x1
	cset	w8, ne
	tbnz	w8, #0, LBB99_5
	b	LBB99_2
LBB99_2:
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB99_4
	b	LBB99_3
LBB99_3:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.81@PAGE
	add	x1, x1, l_.str.81@PAGEOFF
	bl	_PyErr_Format
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB99_9
LBB99_4:
	mov	w8, #1
	str	w8, [sp, #12]
	b	LBB99_5
LBB99_5:
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB99_8
	b	LBB99_6
LBB99_6:
	ldr	x0, [sp, #16]
	bl	_PyTuple_GET_SIZE
	subs	x8, x0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB99_8
	b	LBB99_7
LBB99_7:
	adrp	x8, _PyExc_TypeError@GOTPAGE
	ldr	x8, [x8, _PyExc_TypeError@GOTPAGEOFF]
	ldr	x0, [x8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x1, l_.str.42@PAGE
	add	x1, x1, l_.str.42@PAGEOFF
	bl	_PyErr_Format
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	LBB99_9
LBB99_8:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB99_9
LBB99_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __pyx_pw_4main_1main
___pyx_pw_4main_1main:                  ; @__pyx_pw_4main_1main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp]
	str	xzr, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	___pyx_pf_4main_main
	str	x0, [sp]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __pyx_pf_4main_main
___pyx_pf_4main_main:                   ; @__pyx_pf_4main_main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	sp, sp, #848
	adrp	x8, _PyLong_Type@GOTPAGE
	ldr	x8, [x8, _PyLong_Type@GOTPAGEOFF]
	str	x8, [sp, #120]                  ; 8-byte Folded Spill
	adrp	x8, _PyFloat_Type@GOTPAGE
	ldr	x8, [x8, _PyFloat_Type@GOTPAGEOFF]
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	x0, [sp, #400]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #392]
	str	xzr, [sp, #376]
	str	xzr, [sp, #368]
	str	xzr, [sp, #360]
	str	wzr, [sp, #356]
	str	xzr, [sp, #344]
	str	xzr, [sp, #336]
	str	xzr, [sp, #328]
	str	xzr, [sp, #312]
	str	xzr, [sp, #304]
	str	xzr, [sp, #296]
	str	xzr, [sp, #280]
	str	xzr, [sp, #272]
	str	xzr, [sp, #248]
	str	xzr, [sp, #240]
	str	xzr, [sp, #232]
	str	xzr, [sp, #224]
	str	xzr, [sp, #216]
	str	xzr, [sp, #208]
	str	wzr, [sp, #204]
	str	xzr, [sp, #192]
	str	wzr, [sp, #188]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #256]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB101_2
	b	LBB101_1
LBB101_1:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #256]
	adrp	x9, ___pyx_pf_4main_main.__pyx_frame_code@PAGE
	str	x8, [x9, ___pyx_pf_4main_main.__pyx_frame_code@PAGEOFF]
	b	LBB101_2
LBB101_2:
	bl	_PyThreadState_Get
	str	x0, [sp, #176]
	ldr	x8, [sp, #176]
	ldr	w8, [x8, #44]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_7
	b	LBB101_3
LBB101_3:
	ldr	x8, [sp, #176]
	ldr	x8, [x8, #64]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB101_7
	b	LBB101_4
LBB101_4:
	ldr	x2, [sp, #176]
	adrp	x8, ___pyx_f@PAGE
	ldr	x4, [x8, ___pyx_f@PAGEOFF]
	adrp	x0, ___pyx_pf_4main_main.__pyx_frame_code@PAGE
	add	x0, x0, ___pyx_pf_4main_main.__pyx_frame_code@PAGEOFF
	add	x1, sp, #360
	adrp	x3, l_.str@PAGE
	add	x3, x3, l_.str@PAGEOFF
	mov	w5, #5
	bl	___Pyx_TraceSetupAndCall
	str	w0, [sp, #356]
	ldr	w8, [sp, #356]
	subs	w8, w8, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_6
	b	LBB101_5
LBB101_5:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #5
	str	w8, [sp, #204]
	mov	w8, #2680
	str	w8, [sp, #188]
	b	LBB101_178
LBB101_6:
	b	LBB101_7
LBB101_7:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #136]
	bl	___Pyx__GetModuleGlobalName
	str	x0, [sp, #336]
	ldr	x8, [sp, #336]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_9
	b	LBB101_8
LBB101_8:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #7
	str	w8, [sp, #204]
	mov	w8, #2689
	str	w8, [sp, #188]
	b	LBB101_178
LBB101_9:
	ldr	x0, [sp, #336]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #208]
	bl	___Pyx_PyObject_GetAttrStr
	str	x0, [sp, #328]
	ldr	x8, [sp, #328]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_11
	b	LBB101_10
LBB101_10:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #7
	str	w8, [sp, #204]
	mov	w8, #2691
	str	w8, [sp, #188]
	b	LBB101_178
LBB101_11:
	ldr	x8, [sp, #336]
	stur	x8, [x29, #-200]
	ldur	x8, [x29, #-200]
	stur	x8, [x29, #-192]
	ldur	x8, [x29, #-192]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_13
	b	LBB101_12
LBB101_12:
	b	LBB101_15
LBB101_13:
	ldur	x9, [x29, #-200]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_15
	b	LBB101_14
LBB101_14:
	ldur	x0, [x29, #-200]
	bl	__Py_Dealloc
	b	LBB101_15
LBB101_15:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #336]
	str	xzr, [sp, #336]
	str	wzr, [sp, #324]
	ldr	x0, [sp, #328]
	adrp	x1, _PyMethod_Type@GOTPAGE
	ldr	x1, [x1, _PyMethod_Type@GOTPAGEOFF]
	bl	_Py_IS_TYPE
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_31
	b	LBB101_16
LBB101_16:
	ldr	x0, [sp, #328]
	bl	_PyMethod_GET_SELF
	str	x0, [sp, #336]
	ldr	x8, [sp, #336]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_30
	b	LBB101_17
LBB101_17:
	ldr	x0, [sp, #328]
	bl	_PyMethod_GET_FUNCTION
	str	x0, [sp, #168]
	ldr	x8, [sp, #336]
	str	x8, [sp, #512]
	ldr	x8, [sp, #512]
	ldr	w8, [x8]
	str	w8, [sp, #508]
	ldr	w8, [sp, #508]
	add	w8, w8, #1
	str	w8, [sp, #504]
	ldr	w8, [sp, #504]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_19
	b	LBB101_18
LBB101_18:
	b	LBB101_20
LBB101_19:
	ldr	w8, [sp, #504]
	ldr	x9, [sp, #512]
	str	w8, [x9]
	b	LBB101_20
LBB101_20:
	ldr	x8, [sp, #168]
	str	x8, [sp, #496]
	ldr	x8, [sp, #496]
	ldr	w8, [x8]
	str	w8, [sp, #492]
	ldr	w8, [sp, #492]
	add	w8, w8, #1
	str	w8, [sp, #488]
	ldr	w8, [sp, #488]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_22
	b	LBB101_21
LBB101_21:
	b	LBB101_23
LBB101_22:
	ldr	w8, [sp, #488]
	ldr	x9, [sp, #496]
	str	w8, [x9]
	b	LBB101_23
LBB101_23:
	b	LBB101_24
LBB101_24:
	ldr	x8, [sp, #328]
	str	x8, [sp, #160]
	ldr	x8, [sp, #168]
	str	x8, [sp, #328]
	ldr	x8, [sp, #160]
	stur	x8, [x29, #-208]
	ldur	x8, [x29, #-208]
	stur	x8, [x29, #-184]
	ldur	x8, [x29, #-184]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_26
	b	LBB101_25
LBB101_25:
	b	LBB101_28
LBB101_26:
	ldur	x9, [x29, #-208]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_28
	b	LBB101_27
LBB101_27:
	ldur	x0, [x29, #-208]
	bl	__Py_Dealloc
	b	LBB101_28
LBB101_28:
	b	LBB101_29
LBB101_29:
	mov	w8, #1
	str	w8, [sp, #324]
	b	LBB101_30
LBB101_30:
	b	LBB101_31
LBB101_31:
	ldr	x9, [sp, #336]
	sub	x8, x29, #40
	stur	x9, [x29, #-40]
	mov	x3, #0
	stur	xzr, [x29, #-32]
	ldr	x0, [sp, #328]
	add	x8, x8, #8
	ldr	w9, [sp, #324]
	mov	x10, x9
	mov	x9, #0
	subs	x9, x9, x10
	add	x1, x8, x9, lsl #3
	ldr	w8, [sp, #324]
	add	w8, w8, #0
	mov	x2, x8
	bl	___Pyx_PyObject_FastCallDict
	str	x0, [sp, #344]
	ldr	x0, [sp, #336]
	bl	_Py_XDECREF
	str	xzr, [sp, #336]
	ldr	x8, [sp, #344]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_33
	b	LBB101_32
LBB101_32:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #7
	str	w8, [sp, #204]
	mov	w8, #2712
	str	w8, [sp, #188]
	b	LBB101_178
LBB101_33:
	ldr	x8, [sp, #328]
	stur	x8, [x29, #-216]
	ldur	x8, [x29, #-216]
	stur	x8, [x29, #-176]
	ldur	x8, [x29, #-176]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_35
	b	LBB101_34
LBB101_34:
	b	LBB101_37
LBB101_35:
	ldur	x9, [x29, #-216]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_37
	b	LBB101_36
LBB101_36:
	ldur	x0, [x29, #-216]
	bl	__Py_Dealloc
	b	LBB101_37
LBB101_37:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #328]
	ldr	x8, [sp, #344]
	str	x8, [sp, #392]
	str	xzr, [sp, #344]
	ldr	x0, [sp, #392]
	adrp	x1, _PyUnicode_Type@GOTPAGE
	ldr	x1, [x1, _PyUnicode_Type@GOTPAGEOFF]
	bl	_Py_IS_TYPE
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_42
	b	LBB101_38
LBB101_38:
	ldr	x8, [sp, #392]
	str	x8, [sp, #480]
	ldr	x8, [sp, #480]
	ldr	w8, [x8]
	str	w8, [sp, #476]
	ldr	w8, [sp, #476]
	add	w8, w8, #1
	str	w8, [sp, #472]
	ldr	w8, [sp, #472]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_40
	b	LBB101_39
LBB101_39:
	b	LBB101_41
LBB101_40:
	ldr	w8, [sp, #472]
	ldr	x9, [sp, #480]
	str	w8, [x9]
	b	LBB101_41
LBB101_41:
	ldr	x8, [sp, #392]
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
	b	LBB101_49
LBB101_42:
	ldr	x1, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #392]
	bl	_Py_IS_TYPE
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_44
	b	LBB101_43
LBB101_43:
	ldr	x8, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x8, [x8, #88]
	ldr	x0, [sp, #392]
	blr	x8
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
	b	LBB101_48
LBB101_44:
	ldr	x1, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #392]
	bl	_Py_IS_TYPE
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_46
	b	LBB101_45
LBB101_45:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x8, [x8, #88]
	ldr	x0, [sp, #392]
	blr	x8
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	b	LBB101_47
LBB101_46:
	ldr	x0, [sp, #392]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #40]
	bl	_PyObject_Format
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	b	LBB101_47
LBB101_47:
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	str	x8, [sp, #104]                  ; 8-byte Folded Spill
	b	LBB101_48
LBB101_48:
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
	b	LBB101_49
LBB101_49:
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	str	x8, [sp, #344]
	ldr	x8, [sp, #344]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_51
	b	LBB101_50
LBB101_50:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #10
	str	w8, [sp, #204]
	mov	w8, #2726
	str	w8, [sp, #188]
	b	LBB101_178
LBB101_51:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #80]
	ldr	x1, [sp, #344]
	bl	_PyUnicode_Concat
	str	x0, [sp, #328]
	ldr	x8, [sp, #328]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_53
	b	LBB101_52
LBB101_52:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #10
	str	w8, [sp, #204]
	mov	w8, #2728
	str	w8, [sp, #188]
	b	LBB101_178
LBB101_53:
	ldr	x8, [sp, #344]
	stur	x8, [x29, #-224]
	ldur	x8, [x29, #-224]
	stur	x8, [x29, #-168]
	ldur	x8, [x29, #-168]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_55
	b	LBB101_54
LBB101_54:
	b	LBB101_57
LBB101_55:
	ldur	x9, [x29, #-224]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_57
	b	LBB101_56
LBB101_56:
	ldur	x0, [x29, #-224]
	bl	__Py_Dealloc
	b	LBB101_57
LBB101_57:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #344]
	adrp	x8, ___pyx_builtin_print@PAGE
	ldr	x0, [x8, ___pyx_builtin_print@PAGEOFF]
	ldr	x1, [sp, #328]
	bl	___Pyx_PyObject_CallOneArg
	str	x0, [sp, #344]
	ldr	x8, [sp, #344]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_59
	b	LBB101_58
LBB101_58:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #10
	str	w8, [sp, #204]
	mov	w8, #2731
	str	w8, [sp, #188]
	b	LBB101_178
LBB101_59:
	ldr	x8, [sp, #328]
	stur	x8, [x29, #-232]
	ldur	x8, [x29, #-232]
	stur	x8, [x29, #-160]
	ldur	x8, [x29, #-160]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_61
	b	LBB101_60
LBB101_60:
	b	LBB101_63
LBB101_61:
	ldur	x9, [x29, #-232]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_63
	b	LBB101_62
LBB101_62:
	ldur	x0, [x29, #-232]
	bl	__Py_Dealloc
	b	LBB101_63
LBB101_63:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #328]
	ldr	x8, [sp, #344]
	stur	x8, [x29, #-240]
	ldur	x8, [x29, #-240]
	stur	x8, [x29, #-152]
	ldur	x8, [x29, #-152]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_65
	b	LBB101_64
LBB101_64:
	b	LBB101_67
LBB101_65:
	ldur	x9, [x29, #-240]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_67
	b	LBB101_66
LBB101_66:
	ldur	x0, [x29, #-240]
	bl	__Py_Dealloc
	b	LBB101_67
LBB101_67:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #344]
	bl	__PyThreadState_UncheckedGet
	str	x0, [sp, #152]
	ldr	x0, [sp, #152]
	add	x1, sp, #312
	add	x2, sp, #304
	add	x3, sp, #296
	bl	___Pyx__ExceptionSave
	str	wzr, [sp, #292]
	b	LBB101_68
LBB101_68:                              ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #292]
	subs	w8, w8, #11
	cset	w8, ge
	tbnz	w8, #0, LBB101_106
	b	LBB101_69
LBB101_69:                              ;   in Loop: Header=BB101_68 Depth=1
	ldr	w8, [sp, #292]
	str	w8, [sp, #388]
	ldr	w0, [sp, #388]
	mov	x1, #0
	mov	w2, #32
	mov	w3, #100
	bl	___Pyx_PyUnicode_From_int
	str	x0, [sp, #344]
	ldr	x8, [sp, #344]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_71
	b	LBB101_70
LBB101_70:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #16
	str	w8, [sp, #204]
	mov	w8, #2769
	str	w8, [sp, #188]
	b	LBB101_110
LBB101_71:                              ;   in Loop: Header=BB101_68 Depth=1
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #56]
	ldr	x1, [sp, #344]
	bl	_PyUnicode_Concat
	str	x0, [sp, #328]
	ldr	x8, [sp, #328]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_73
	b	LBB101_72
LBB101_72:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #16
	str	w8, [sp, #204]
	mov	w8, #2771
	str	w8, [sp, #188]
	b	LBB101_110
LBB101_73:                              ;   in Loop: Header=BB101_68 Depth=1
	ldr	x8, [sp, #344]
	stur	x8, [x29, #-248]
	ldur	x8, [x29, #-248]
	stur	x8, [x29, #-144]
	ldur	x8, [x29, #-144]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_75
	b	LBB101_74
LBB101_74:                              ;   in Loop: Header=BB101_68 Depth=1
	b	LBB101_77
LBB101_75:                              ;   in Loop: Header=BB101_68 Depth=1
	ldur	x9, [x29, #-248]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_77
	b	LBB101_76
LBB101_76:                              ;   in Loop: Header=BB101_68 Depth=1
	ldur	x0, [x29, #-248]
	bl	__Py_Dealloc
	b	LBB101_77
LBB101_77:                              ;   in Loop: Header=BB101_68 Depth=1
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #344]
	adrp	x8, ___pyx_builtin_print@PAGE
	ldr	x0, [x8, ___pyx_builtin_print@PAGEOFF]
	ldr	x1, [sp, #328]
	bl	___Pyx_PyObject_CallOneArg
	str	x0, [sp, #344]
	ldr	x8, [sp, #344]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_79
	b	LBB101_78
LBB101_78:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #16
	str	w8, [sp, #204]
	mov	w8, #2774
	str	w8, [sp, #188]
	b	LBB101_110
LBB101_79:                              ;   in Loop: Header=BB101_68 Depth=1
	ldr	x8, [sp, #328]
	stur	x8, [x29, #-256]
	ldur	x8, [x29, #-256]
	stur	x8, [x29, #-136]
	ldur	x8, [x29, #-136]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_81
	b	LBB101_80
LBB101_80:                              ;   in Loop: Header=BB101_68 Depth=1
	b	LBB101_83
LBB101_81:                              ;   in Loop: Header=BB101_68 Depth=1
	ldur	x9, [x29, #-256]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_83
	b	LBB101_82
LBB101_82:                              ;   in Loop: Header=BB101_68 Depth=1
	ldur	x0, [x29, #-256]
	bl	__Py_Dealloc
	b	LBB101_83
LBB101_83:                              ;   in Loop: Header=BB101_68 Depth=1
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #328]
	ldr	x8, [sp, #344]
	str	x8, [sp, #600]
	ldr	x8, [sp, #600]
	stur	x8, [x29, #-128]
	ldur	x8, [x29, #-128]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_85
	b	LBB101_84
LBB101_84:                              ;   in Loop: Header=BB101_68 Depth=1
	b	LBB101_87
LBB101_85:                              ;   in Loop: Header=BB101_68 Depth=1
	ldr	x9, [sp, #600]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_87
	b	LBB101_86
LBB101_86:                              ;   in Loop: Header=BB101_68 Depth=1
	ldr	x0, [sp, #600]
	bl	__Py_Dealloc
	b	LBB101_87
LBB101_87:                              ;   in Loop: Header=BB101_68 Depth=1
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #344]
	ldr	w8, [sp, #388]
	str	w8, [sp, #92]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB101_96
	b	LBB101_88
LBB101_88:                              ;   in Loop: Header=BB101_68 Depth=1
	ldr	w8, [sp, #92]                   ; 4-byte Folded Reload
	subs	w8, w8, #10
	cset	w8, ne
	tbnz	w8, #0, LBB101_103
	b	LBB101_89
LBB101_89:                              ;   in Loop: Header=BB101_68 Depth=1
	adrp	x8, ___pyx_builtin_print@PAGE
	ldr	x0, [x8, ___pyx_builtin_print@PAGEOFF]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #264]
	mov	x2, #0
	bl	___Pyx_PyObject_Call
	str	x0, [sp, #344]
	ldr	x8, [sp, #344]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_91
	b	LBB101_90
LBB101_90:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #18
	str	w8, [sp, #204]
	mov	w8, #2796
	str	w8, [sp, #188]
	b	LBB101_110
LBB101_91:                              ;   in Loop: Header=BB101_68 Depth=1
	ldr	x8, [sp, #344]
	str	x8, [sp, #592]
	ldr	x8, [sp, #592]
	stur	x8, [x29, #-120]
	ldur	x8, [x29, #-120]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_93
	b	LBB101_92
LBB101_92:                              ;   in Loop: Header=BB101_68 Depth=1
	b	LBB101_95
LBB101_93:                              ;   in Loop: Header=BB101_68 Depth=1
	ldr	x9, [sp, #592]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_95
	b	LBB101_94
LBB101_94:                              ;   in Loop: Header=BB101_68 Depth=1
	ldr	x0, [sp, #592]
	bl	__Py_Dealloc
	b	LBB101_95
LBB101_95:                              ;   in Loop: Header=BB101_68 Depth=1
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #344]
	b	LBB101_104
LBB101_96:                              ;   in Loop: Header=BB101_68 Depth=1
	adrp	x8, ___pyx_builtin_print@PAGE
	ldr	x0, [x8, ___pyx_builtin_print@PAGEOFF]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #272]
	mov	x2, #0
	bl	___Pyx_PyObject_Call
	str	x0, [sp, #344]
	ldr	x8, [sp, #344]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_98
	b	LBB101_97
LBB101_97:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #20
	str	w8, [sp, #204]
	mov	w8, #2817
	str	w8, [sp, #188]
	b	LBB101_110
LBB101_98:                              ;   in Loop: Header=BB101_68 Depth=1
	ldr	x8, [sp, #344]
	str	x8, [sp, #584]
	ldr	x8, [sp, #584]
	stur	x8, [x29, #-112]
	ldur	x8, [x29, #-112]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_100
	b	LBB101_99
LBB101_99:                              ;   in Loop: Header=BB101_68 Depth=1
	b	LBB101_102
LBB101_100:                             ;   in Loop: Header=BB101_68 Depth=1
	ldr	x9, [sp, #584]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_102
	b	LBB101_101
LBB101_101:                             ;   in Loop: Header=BB101_68 Depth=1
	ldr	x0, [sp, #584]
	bl	__Py_Dealloc
	b	LBB101_102
LBB101_102:                             ;   in Loop: Header=BB101_68 Depth=1
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #344]
	b	LBB101_104
LBB101_103:                             ;   in Loop: Header=BB101_68 Depth=1
	b	LBB101_104
LBB101_104:                             ;   in Loop: Header=BB101_68 Depth=1
	b	LBB101_105
LBB101_105:                             ;   in Loop: Header=BB101_68 Depth=1
	ldr	w8, [sp, #292]
	add	w8, w8, #1
	str	w8, [sp, #292]
	b	LBB101_68
LBB101_106:
	ldr	x0, [sp, #368]
	bl	_Py_XDECREF
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #240]
	str	x8, [sp, #464]
	ldr	x8, [sp, #464]
	ldr	w8, [x8]
	str	w8, [sp, #460]
	ldr	w8, [sp, #460]
	add	w8, w8, #1
	str	w8, [sp, #456]
	ldr	w8, [sp, #456]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_108
	b	LBB101_107
LBB101_107:
	b	LBB101_109
LBB101_108:
	ldr	w8, [sp, #456]
	ldr	x9, [sp, #464]
	str	w8, [x9]
	b	LBB101_109
LBB101_109:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #240]
	str	x8, [sp, #368]
	b	LBB101_176
LBB101_110:
	ldr	x0, [sp, #344]
	bl	_Py_XDECREF
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #344]
	ldr	x0, [sp, #336]
	bl	_Py_XDECREF
	str	xzr, [sp, #336]
	ldr	x0, [sp, #328]
	bl	_Py_XDECREF
	str	xzr, [sp, #328]
	ldr	x0, [sp, #152]
	adrp	x8, _PyExc_Exception@GOTPAGE
	ldr	x8, [x8, _PyExc_Exception@GOTPAGEOFF]
	ldr	x1, [x8]
	bl	___Pyx_PyErr_ExceptionMatchesInState
	str	w0, [sp, #292]
	ldr	w8, [sp, #292]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB101_174
	b	LBB101_111
LBB101_111:
	ldr	w1, [sp, #188]
	ldr	w2, [sp, #204]
	ldr	x3, [sp, #192]
	adrp	x0, l_.str.82@PAGE
	add	x0, x0, l_.str.82@PAGEOFF
	bl	___Pyx_AddTraceback
	ldr	x0, [sp, #152]
	add	x1, sp, #344
	add	x2, sp, #328
	add	x3, sp, #336
	bl	___Pyx__GetException
	subs	w8, w0, #0
	cset	w8, ge
	tbnz	w8, #0, LBB101_113
	b	LBB101_112
LBB101_112:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #23
	str	w8, [sp, #204]
	mov	w8, #2868
	str	w8, [sp, #188]
	b	LBB101_175
LBB101_113:
	ldr	x8, [sp, #328]
	str	x8, [sp, #448]
	ldr	x8, [sp, #448]
	ldr	w8, [x8]
	str	w8, [sp, #444]
	ldr	w8, [sp, #444]
	add	w8, w8, #1
	str	w8, [sp, #440]
	ldr	w8, [sp, #440]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_115
	b	LBB101_114
LBB101_114:
	b	LBB101_116
LBB101_115:
	ldr	w8, [sp, #440]
	ldr	x9, [sp, #448]
	str	w8, [x9]
	b	LBB101_116
LBB101_116:
	ldr	x8, [sp, #328]
	str	x8, [sp, #376]
	ldr	x0, [sp, #376]
	adrp	x1, _PyUnicode_Type@GOTPAGE
	ldr	x1, [x1, _PyUnicode_Type@GOTPAGEOFF]
	bl	_Py_IS_TYPE
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_121
	b	LBB101_117
LBB101_117:
	ldr	x8, [sp, #376]
	str	x8, [sp, #432]
	ldr	x8, [sp, #432]
	ldr	w8, [x8]
	str	w8, [sp, #428]
	ldr	w8, [sp, #428]
	add	w8, w8, #1
	str	w8, [sp, #424]
	ldr	w8, [sp, #424]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_119
	b	LBB101_118
LBB101_118:
	b	LBB101_120
LBB101_119:
	ldr	w8, [sp, #424]
	ldr	x9, [sp, #432]
	str	w8, [x9]
	b	LBB101_120
LBB101_120:
	ldr	x8, [sp, #376]
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	b	LBB101_128
LBB101_121:
	ldr	x1, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #376]
	bl	_Py_IS_TYPE
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_123
	b	LBB101_122
LBB101_122:
	ldr	x8, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x8, [x8, #88]
	ldr	x0, [sp, #376]
	blr	x8
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB101_127
LBB101_123:
	ldr	x1, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #376]
	bl	_Py_IS_TYPE
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_125
	b	LBB101_124
LBB101_124:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x8, [x8, #88]
	ldr	x0, [sp, #376]
	blr	x8
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	b	LBB101_126
LBB101_125:
	ldr	x0, [sp, #376]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #40]
	bl	_PyObject_Format
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	b	LBB101_126
LBB101_126:
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB101_127
LBB101_127:
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	b	LBB101_128
LBB101_128:
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	str	x8, [sp, #280]
	ldr	x8, [sp, #280]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_130
	b	LBB101_129
LBB101_129:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #24
	str	w8, [sp, #204]
	mov	w8, #2883
	str	w8, [sp, #188]
	b	LBB101_162
LBB101_130:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #88]
	ldr	x1, [sp, #280]
	bl	_PyUnicode_Concat
	str	x0, [sp, #272]
	ldr	x8, [sp, #272]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_132
	b	LBB101_131
LBB101_131:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #24
	str	w8, [sp, #204]
	mov	w8, #2885
	str	w8, [sp, #188]
	b	LBB101_162
LBB101_132:
	ldr	x8, [sp, #280]
	str	x8, [sp, #576]
	ldr	x8, [sp, #576]
	stur	x8, [x29, #-104]
	ldur	x8, [x29, #-104]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_134
	b	LBB101_133
LBB101_133:
	b	LBB101_136
LBB101_134:
	ldr	x9, [sp, #576]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_136
	b	LBB101_135
LBB101_135:
	ldr	x0, [sp, #576]
	bl	__Py_Dealloc
	b	LBB101_136
LBB101_136:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #280]
	adrp	x8, ___pyx_builtin_print@PAGE
	ldr	x0, [x8, ___pyx_builtin_print@PAGEOFF]
	ldr	x1, [sp, #272]
	bl	___Pyx_PyObject_CallOneArg
	str	x0, [sp, #280]
	ldr	x8, [sp, #280]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_138
	b	LBB101_137
LBB101_137:
	adrp	x8, ___pyx_f@PAGE
	ldr	x8, [x8, ___pyx_f@PAGEOFF]
	str	x8, [sp, #192]
	mov	w8, #24
	str	w8, [sp, #204]
	mov	w8, #2888
	str	w8, [sp, #188]
	b	LBB101_162
LBB101_138:
	ldr	x8, [sp, #272]
	str	x8, [sp, #568]
	ldr	x8, [sp, #568]
	stur	x8, [x29, #-96]
	ldur	x8, [x29, #-96]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_140
	b	LBB101_139
LBB101_139:
	b	LBB101_142
LBB101_140:
	ldr	x9, [sp, #568]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_142
	b	LBB101_141
LBB101_141:
	ldr	x0, [sp, #568]
	bl	__Py_Dealloc
	b	LBB101_142
LBB101_142:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #272]
	ldr	x8, [sp, #280]
	str	x8, [sp, #560]
	ldr	x8, [sp, #560]
	stur	x8, [x29, #-88]
	ldur	x8, [x29, #-88]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_144
	b	LBB101_143
LBB101_143:
	b	LBB101_146
LBB101_144:
	ldr	x9, [sp, #560]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_146
	b	LBB101_145
LBB101_145:
	ldr	x0, [sp, #560]
	bl	__Py_Dealloc
	b	LBB101_146
LBB101_146:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #280]
	ldr	x0, [sp, #368]
	bl	_Py_XDECREF
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #248]
	str	x8, [sp, #416]
	ldr	x8, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #412]
	ldr	w8, [sp, #412]
	add	w8, w8, #1
	str	w8, [sp, #408]
	ldr	w8, [sp, #408]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_148
	b	LBB101_147
LBB101_147:
	b	LBB101_149
LBB101_148:
	ldr	w8, [sp, #408]
	ldr	x9, [sp, #416]
	str	w8, [x9]
	b	LBB101_149
LBB101_149:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #248]
	str	x8, [sp, #368]
	ldr	x8, [sp, #344]
	str	x8, [sp, #552]
	ldr	x8, [sp, #552]
	stur	x8, [x29, #-80]
	ldur	x8, [x29, #-80]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_151
	b	LBB101_150
LBB101_150:
	b	LBB101_153
LBB101_151:
	ldr	x9, [sp, #552]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_153
	b	LBB101_152
LBB101_152:
	ldr	x0, [sp, #552]
	bl	__Py_Dealloc
	b	LBB101_153
LBB101_153:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #344]
	ldr	x8, [sp, #336]
	str	x8, [sp, #544]
	ldr	x8, [sp, #544]
	stur	x8, [x29, #-72]
	ldur	x8, [x29, #-72]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_155
	b	LBB101_154
LBB101_154:
	b	LBB101_157
LBB101_155:
	ldr	x9, [sp, #544]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_157
	b	LBB101_156
LBB101_156:
	ldr	x0, [sp, #544]
	bl	__Py_Dealloc
	b	LBB101_157
LBB101_157:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #336]
	ldr	x8, [sp, #328]
	str	x8, [sp, #536]
	ldr	x8, [sp, #536]
	stur	x8, [x29, #-64]
	ldur	x8, [x29, #-64]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_159
	b	LBB101_158
LBB101_158:
	b	LBB101_161
LBB101_159:
	ldr	x9, [sp, #536]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_161
	b	LBB101_160
LBB101_160:
	ldr	x0, [sp, #536]
	bl	__Py_Dealloc
	b	LBB101_161
LBB101_161:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #328]
	b	LBB101_169
LBB101_162:
	bl	__PyThreadState_UncheckedGet
	str	x0, [sp, #144]
	add	x8, sp, #248
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #248]
	add	x8, sp, #240
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	str	xzr, [sp, #240]
	add	x8, sp, #232
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	str	xzr, [sp, #232]
	add	x8, sp, #224
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	str	xzr, [sp, #224]
	add	x8, sp, #216
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	xzr, [sp, #216]
	add	x8, sp, #208
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	str	xzr, [sp, #208]
	ldr	x0, [sp, #272]
	bl	_Py_XDECREF
	str	xzr, [sp, #272]
	ldr	x0, [sp, #280]
	bl	_Py_XDECREF
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #32]                   ; 8-byte Folded Reload
	str	xzr, [sp, #280]
	ldr	x0, [sp, #144]
	bl	___Pyx__ExceptionSwap
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #144]
	bl	___Pyx__GetException
	subs	w8, w0, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_164
	b	LBB101_163
LBB101_163:
	ldr	x0, [sp, #144]
	add	x1, sp, #248
	add	x2, sp, #240
	add	x3, sp, #232
	bl	___Pyx_ErrFetchInState
	b	LBB101_164
LBB101_164:
	ldr	w8, [sp, #204]
	str	w8, [sp, #292]
	ldr	w8, [sp, #188]
	str	w8, [sp, #268]
	ldr	x8, [sp, #192]
	str	x8, [sp, #256]
	ldr	x8, [sp, #376]
	str	x8, [sp, #528]
	ldr	x8, [sp, #528]
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-56]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_166
	b	LBB101_165
LBB101_165:
	b	LBB101_168
LBB101_166:
	ldr	x9, [sp, #528]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_168
	b	LBB101_167
LBB101_167:
	ldr	x0, [sp, #528]
	bl	__Py_Dealloc
	b	LBB101_168
LBB101_168:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #376]
	ldr	x0, [sp, #144]
	ldr	x1, [sp, #224]
	ldr	x2, [sp, #216]
	ldr	x3, [sp, #208]
	bl	___Pyx__ExceptionReset
	ldr	x0, [sp, #144]
	ldr	x1, [sp, #248]
	ldr	x2, [sp, #240]
	ldr	x3, [sp, #232]
	bl	___Pyx_ErrRestoreInState
	str	xzr, [sp, #248]
	str	xzr, [sp, #240]
	str	xzr, [sp, #232]
	str	xzr, [sp, #224]
	str	xzr, [sp, #216]
	str	xzr, [sp, #208]
	ldr	w8, [sp, #292]
	str	w8, [sp, #204]
	ldr	w8, [sp, #268]
	str	w8, [sp, #188]
	ldr	x8, [sp, #256]
	str	x8, [sp, #192]
	b	LBB101_175
LBB101_169:
	ldr	x8, [sp, #368]
	str	x8, [sp, #208]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #368]
	ldr	x8, [sp, #376]
	str	x8, [sp, #520]
	ldr	x8, [sp, #520]
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-48]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_171
	b	LBB101_170
LBB101_170:
	b	LBB101_173
LBB101_171:
	ldr	x9, [sp, #520]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB101_173
	b	LBB101_172
LBB101_172:
	ldr	x0, [sp, #520]
	bl	__Py_Dealloc
	b	LBB101_173
LBB101_173:
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #376]
	ldr	x8, [sp, #208]
	str	x8, [sp, #368]
	str	xzr, [sp, #208]
	b	LBB101_177
LBB101_174:
	b	LBB101_175
LBB101_175:
	ldr	x0, [sp, #152]
	ldr	x1, [sp, #312]
	ldr	x2, [sp, #304]
	ldr	x3, [sp, #296]
	bl	___Pyx__ExceptionReset
	b	LBB101_178
LBB101_176:
	ldr	x0, [sp, #152]
	ldr	x1, [sp, #312]
	ldr	x2, [sp, #304]
	ldr	x3, [sp, #296]
	bl	___Pyx__ExceptionReset
	b	LBB101_179
LBB101_177:
	ldr	x0, [sp, #152]
	ldr	x1, [sp, #312]
	ldr	x2, [sp, #304]
	ldr	x3, [sp, #296]
	bl	___Pyx__ExceptionReset
	b	LBB101_179
LBB101_178:
	ldr	x0, [sp, #344]
	bl	_Py_XDECREF
	ldr	x0, [sp, #336]
	bl	_Py_XDECREF
	ldr	x0, [sp, #328]
	bl	_Py_XDECREF
	ldr	x0, [sp, #280]
	bl	_Py_XDECREF
	ldr	x0, [sp, #272]
	bl	_Py_XDECREF
	ldr	w1, [sp, #188]
	ldr	w2, [sp, #204]
	ldr	x3, [sp, #192]
	adrp	x0, l_.str.82@PAGE
	add	x0, x0, l_.str.82@PAGEOFF
	bl	___Pyx_AddTraceback
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #368]
	b	LBB101_179
LBB101_179:
	ldr	x0, [sp, #392]
	bl	_Py_XDECREF
	ldr	x0, [sp, #376]
	bl	_Py_XDECREF
	ldr	w8, [sp, #356]
	subs	w8, w8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB101_181
	b	LBB101_180
LBB101_180:
	b	LBB101_182
LBB101_181:
	bl	__PyThreadState_UncheckedGet
	str	x0, [sp, #136]
	ldr	x0, [sp, #136]
	ldr	x1, [sp, #360]
	ldr	x2, [sp, #368]
	bl	___Pyx_call_return_trace_func
	b	LBB101_182
LBB101_182:
	ldr	x8, [sp, #368]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB101_184
	b	LBB101_183
LBB101_183:
	bl	___stack_chk_fail
LBB101_184:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	sp, sp, #848
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function Py_IS_TYPE
_Py_IS_TYPE:                            ; @Py_IS_TYPE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	_Py_TYPE
	ldr	x8, [sp]
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyMethod_GET_SELF
_PyMethod_GET_SELF:                     ; @PyMethod_GET_SELF
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _PyMethod_Type@GOTPAGE
	ldr	x1, [x1, _PyMethod_Type@GOTPAGEOFF]
	bl	_Py_IS_TYPE
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB103_2
	b	LBB103_1
LBB103_1:
	adrp	x0, l___func__.PyMethod_GET_SELF@PAGE
	add	x0, x0, l___func__.PyMethod_GET_SELF@PAGEOFF
	adrp	x1, l_.str.83@PAGE
	add	x1, x1, l_.str.83@PAGEOFF
	mov	w2, #40
	adrp	x3, l_.str.84@PAGE
	add	x3, x3, l_.str.84@PAGEOFF
	bl	___assert_rtn
LBB103_2:
	b	LBB103_3
LBB103_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyMethod_GET_FUNCTION
_PyMethod_GET_FUNCTION:                 ; @PyMethod_GET_FUNCTION
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, _PyMethod_Type@GOTPAGE
	ldr	x1, [x1, _PyMethod_Type@GOTPAGEOFF]
	bl	_Py_IS_TYPE
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB104_2
	b	LBB104_1
LBB104_1:
	adrp	x0, l___func__.PyMethod_GET_FUNCTION@PAGE
	add	x0, x0, l___func__.PyMethod_GET_FUNCTION@PAGEOFF
	adrp	x1, l_.str.83@PAGE
	add	x1, x1, l_.str.83@PAGEOFF
	mov	w2, #35
	adrp	x3, l_.str.84@PAGE
	add	x3, x3, l_.str.84@PAGEOFF
	bl	___assert_rtn
LBB104_2:
	b	LBB104_3
LBB104_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyObject_FastCallDict
___Pyx_PyObject_FastCallDict:           ; @__Pyx_PyObject_FastCallDict
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__PyVectorcall_NARGS
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB105_6
	b	LBB105_1
LBB105_1:
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB105_6
	b	LBB105_2
LBB105_2:
	ldur	x0, [x29, #-16]
	bl	_Py_TYPE
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #48]
	adrp	x2, _PyCFunction_Type@GOTPAGE
	ldr	x2, [x2, _PyCFunction_Type@GOTPAGEOFF]
	bl	___Pyx_IsAnySubtype2
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB105_5
	b	LBB105_3
LBB105_3:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	w8, [x8, #16]
	ands	w8, w8, #0x4
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB105_5
	b	LBB105_4
LBB105_4:
	ldur	x0, [x29, #-16]
	mov	x1, #0
	bl	___Pyx_PyObject_CallMethO
	stur	x0, [x29, #-8]
	b	LBB105_20
LBB105_5:
	b	LBB105_13
LBB105_6:
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB105_12
	b	LBB105_7
LBB105_7:
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB105_12
	b	LBB105_8
LBB105_8:
	ldur	x0, [x29, #-16]
	bl	_Py_TYPE
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #48]
	adrp	x2, _PyCFunction_Type@GOTPAGE
	ldr	x2, [x2, _PyCFunction_Type@GOTPAGEOFF]
	bl	___Pyx_IsAnySubtype2
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB105_11
	b	LBB105_9
LBB105_9:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	w8, [x8, #16]
	ands	w8, w8, #0x8
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB105_11
	b	LBB105_10
LBB105_10:
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-24]
	ldr	x1, [x8]
	bl	___Pyx_PyObject_CallMethO
	stur	x0, [x29, #-8]
	b	LBB105_20
LBB105_11:
	b	LBB105_12
LBB105_12:
	b	LBB105_13
LBB105_13:
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB105_17
	b	LBB105_14
LBB105_14:
	ldur	x0, [x29, #-16]
	bl	_PyVectorcall_Function
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB105_16
	b	LBB105_15
LBB105_15:
	ldr	x8, [sp, #8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #16]
	mov	x3, #0
	blr	x8
	stur	x0, [x29, #-8]
	b	LBB105_20
LBB105_16:
	b	LBB105_17
LBB105_17:
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB105_19
	b	LBB105_18
LBB105_18:
	ldur	x0, [x29, #-16]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #24]
	ldr	x2, [sp, #24]
	bl	___Pyx_PyObject_Call
	stur	x0, [x29, #-8]
	b	LBB105_20
LBB105_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	bl	_PyObject_VectorcallDict
	stur	x0, [x29, #-8]
	b	LBB105_20
LBB105_20:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyObject_CallOneArg
___Pyx_PyObject_CallOneArg:             ; @__Pyx_PyObject_CallOneArg
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	add	x8, sp, #24
	mov	x3, #0
	str	xzr, [sp, #24]
	ldr	x9, [sp, #8]
	str	x9, [sp, #32]
	ldr	x0, [sp, #16]
	add	x1, x8, #8
	mov	x2, #-9223372036854775807
	bl	___Pyx_PyObject_FastCallDict
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB106_2
	b	LBB106_1
LBB106_1:
	bl	___stack_chk_fail
LBB106_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx__ExceptionSave
___Pyx__ExceptionSave:                  ; @__Pyx__ExceptionSave
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x0, [sp, #40]
	bl	___Pyx_PyErr_GetTopmostException
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB107_2
	b	LBB107_1
LBB107_1:
	ldr	x8, [sp]
	adrp	x9, __Py_NoneStruct@GOTPAGE
	ldr	x9, [x9, __Py_NoneStruct@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB107_3
	b	LBB107_2
LBB107_2:
	ldr	x8, [sp, #24]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldr	x8, [sp, #32]
	str	xzr, [x8]
	ldr	x8, [sp, #16]
	str	xzr, [x8]
	b	LBB107_10
LBB107_3:
	ldr	x8, [sp]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB107_5
	b	LBB107_4
LBB107_4:
	b	LBB107_6
LBB107_5:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB107_6
LBB107_6:
	ldr	x0, [sp]
	bl	_Py_TYPE
	ldr	x8, [sp, #32]
	str	x0, [x8]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	ldur	w8, [x29, #-32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB107_8
	b	LBB107_7
LBB107_7:
	b	LBB107_9
LBB107_8:
	ldur	w8, [x29, #-32]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	b	LBB107_9
LBB107_9:
	ldr	x0, [sp]
	bl	_PyException_GetTraceback
	ldr	x8, [sp, #16]
	str	x0, [x8]
	b	LBB107_10
LBB107_10:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyUnicode_From_int
___Pyx_PyUnicode_From_int:              ; @__Pyx_PyUnicode_From_int
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	stur	w0, [x29, #-36]
	stur	x1, [x29, #-48]
	sturb	w2, [x29, #-49]
	sturb	w3, [x29, #-50]
	sub	x8, x29, #22
	add	x8, x8, #14
	stur	x8, [x29, #-72]
	adrp	x8, _DIGITS_HEX@PAGE
	add	x8, x8, _DIGITS_HEX@PAGEOFF
	stur	x8, [x29, #-80]
	mov	w8, #-1
	str	w8, [sp, #64]
	str	wzr, [sp, #60]
	str	wzr, [sp, #56]
	ldursb	w8, [x29, #-50]
	subs	w8, w8, #88
	cset	w8, ne
	tbnz	w8, #0, LBB108_2
	b	LBB108_1
LBB108_1:
	ldur	x8, [x29, #-80]
	add	x8, x8, #16
	stur	x8, [x29, #-80]
	mov	w8, #120
	sturb	w8, [x29, #-50]
	b	LBB108_2
LBB108_2:
	ldur	w8, [x29, #-36]
	str	w8, [sp, #68]
	str	wzr, [sp, #72]
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-64]
	b	LBB108_3
LBB108_3:                               ; =>This Inner Loop Header: Depth=1
	ldursb	w8, [x29, #-50]
	str	w8, [sp, #48]                   ; 4-byte Folded Spill
	subs	w8, w8, #100
	cset	w8, eq
	tbnz	w8, #0, LBB108_7
	b	LBB108_4
LBB108_4:                               ;   in Loop: Header=BB108_3 Depth=1
	ldr	w8, [sp, #48]                   ; 4-byte Folded Reload
	subs	w8, w8, #111
	cset	w8, eq
	tbnz	w8, #0, LBB108_6
	b	LBB108_5
LBB108_5:                               ;   in Loop: Header=BB108_3 Depth=1
	ldr	w8, [sp, #48]                   ; 4-byte Folded Reload
	subs	w8, w8, #120
	cset	w8, eq
	tbnz	w8, #0, LBB108_8
	b	LBB108_9
LBB108_6:                               ;   in Loop: Header=BB108_3 Depth=1
	ldr	w8, [sp, #68]
	mov	w10, #64
	str	w10, [sp, #44]                  ; 4-byte Folded Spill
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w0, w8, w9
	bl	_abs
	ldr	w9, [sp, #44]                   ; 4-byte Folded Reload
	str	w0, [sp, #52]
	ldr	w8, [sp, #68]
	sdiv	w8, w8, w9
	str	w8, [sp, #68]
	ldur	x8, [x29, #-64]
	subs	x8, x8, #2
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-64]
	ldr	w8, [sp, #52]
	lsl	w9, w8, #1
	adrp	x8, _DIGIT_PAIRS_8@PAGE
	add	x8, x8, _DIGIT_PAIRS_8@PAGEOFF
	add	x1, x8, w9, sxtw
	mov	x2, #2
	mov	x3, #-1
	bl	___memcpy_chk
	ldr	w8, [sp, #52]
	subs	w8, w8, #8
	cset	w8, lt
	and	w8, w8, #0x1
	str	w8, [sp, #72]
	b	LBB108_10
LBB108_7:                               ;   in Loop: Header=BB108_3 Depth=1
	ldr	w8, [sp, #68]
	mov	w10, #100
	str	w10, [sp, #40]                  ; 4-byte Folded Spill
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w0, w8, w9
	bl	_abs
	ldr	w9, [sp, #40]                   ; 4-byte Folded Reload
	str	w0, [sp, #52]
	ldr	w8, [sp, #68]
	sdiv	w8, w8, w9
	str	w8, [sp, #68]
	ldur	x8, [x29, #-64]
	subs	x8, x8, #2
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-64]
	ldr	w8, [sp, #52]
	lsl	w9, w8, #1
	adrp	x8, _DIGIT_PAIRS_10@PAGE
	add	x8, x8, _DIGIT_PAIRS_10@PAGEOFF
	add	x1, x8, w9, sxtw
	mov	x2, #2
	mov	x3, #-1
	bl	___memcpy_chk
	ldr	w8, [sp, #52]
	subs	w8, w8, #10
	cset	w8, lt
	and	w8, w8, #0x1
	str	w8, [sp, #72]
	b	LBB108_10
LBB108_8:                               ;   in Loop: Header=BB108_3 Depth=1
	ldur	x8, [x29, #-80]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldr	w8, [sp, #68]
	mov	w10, #16
	str	w10, [sp, #36]                  ; 4-byte Folded Spill
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w0, w8, w9
	bl	_abs
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	w9, [sp, #36]                   ; 4-byte Folded Reload
	add	x8, x8, w0, sxtw
	ldrb	w8, [x8]
	ldur	x10, [x29, #-64]
	subs	x10, x10, #1
	mov	x11, x10
	stur	x11, [x29, #-64]
	strb	w8, [x10]
	ldr	w8, [sp, #68]
	sdiv	w8, w8, w9
	str	w8, [sp, #68]
	b	LBB108_10
LBB108_9:
	adrp	x0, l___func__.__Pyx_PyUnicode_From_int@PAGE
	add	x0, x0, l___func__.__Pyx_PyUnicode_From_int@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #4567
	adrp	x3, l_.str.87@PAGE
	add	x3, x3, l_.str.87@PAGEOFF
	bl	___assert_rtn
LBB108_10:                              ;   in Loop: Header=BB108_3 Depth=1
	b	LBB108_11
LBB108_11:                              ;   in Loop: Header=BB108_3 Depth=1
	ldr	w8, [sp, #68]
	subs	w8, w8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, ne
	tbnz	w8, #0, LBB108_3
	b	LBB108_12
LBB108_12:
	ldr	w8, [sp, #72]
	subs	w8, w8, #0
	cset	w8, eq
	mov	w9, #1
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB108_14
	b	LBB108_13
LBB108_13:
	ldur	x8, [x29, #-64]
	ldrsb	w8, [x8]
	subs	w8, w8, #48
	cset	w8, eq
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB108_14
LBB108_14:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	eor	w9, w8, #0x1
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB108_16
	b	LBB108_15
LBB108_15:
	adrp	x0, l___func__.__Pyx_PyUnicode_From_int@PAGE
	add	x0, x0, l___func__.__Pyx_PyUnicode_From_int@PAGEOFF
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	mov	w2, #4571
	adrp	x3, l_.str.88@PAGE
	add	x3, x3, l_.str.88@PAGEOFF
	bl	___assert_rtn
LBB108_16:
	b	LBB108_17
LBB108_17:
	ldrsw	x9, [sp, #72]
	ldur	x8, [x29, #-64]
	add	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	str	x8, [sp, #88]
	ldr	x8, [sp, #88]
	str	x8, [sp, #80]
	str	wzr, [sp, #76]
	ldur	w8, [x29, #-36]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB108_23
	b	LBB108_18
LBB108_18:
	ldursb	w8, [x29, #-49]
	subs	w8, w8, #32
	cset	w8, eq
	tbnz	w8, #0, LBB108_20
	b	LBB108_19
LBB108_19:
	ldur	x8, [x29, #-48]
	ldr	x9, [sp, #88]
	add	x9, x9, #1
	subs	x8, x8, x9
	cset	w8, gt
	tbnz	w8, #0, LBB108_21
	b	LBB108_20
LBB108_20:
	ldur	x8, [x29, #-64]
	subs	x9, x8, #1
	mov	x8, x9
	stur	x8, [x29, #-64]
	mov	w8, #45
	strb	w8, [x9]
	ldr	x8, [sp, #88]
	add	x8, x8, #1
	str	x8, [sp, #88]
	b	LBB108_22
LBB108_21:
	mov	w8, #1
	str	w8, [sp, #76]
	b	LBB108_22
LBB108_22:
	ldr	x8, [sp, #80]
	add	x8, x8, #1
	str	x8, [sp, #80]
	b	LBB108_23
LBB108_23:
	ldur	x8, [x29, #-48]
	ldr	x9, [sp, #80]
	subs	x8, x8, x9
	cset	w8, le
	tbnz	w8, #0, LBB108_25
	b	LBB108_24
LBB108_24:
	ldur	x8, [x29, #-48]
	str	x8, [sp, #80]
	b	LBB108_25
LBB108_25:
	ldr	x8, [sp, #80]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB108_27
	b	LBB108_26
LBB108_26:
	ldur	x8, [x29, #-64]
	ldrsb	w0, [x8]
	bl	_PyUnicode_FromOrdinal
	stur	x0, [x29, #-32]
	b	LBB108_28
LBB108_27:
	ldr	x0, [sp, #80]
	ldur	x1, [x29, #-64]
	ldr	x8, [sp, #88]
	mov	x2, x8
	ldr	w3, [sp, #76]
	ldursb	w4, [x29, #-49]
	bl	___Pyx_PyUnicode_BuildFromAscii
	stur	x0, [x29, #-32]
	b	LBB108_28
LBB108_28:
	ldur	x8, [x29, #-32]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB108_30
	b	LBB108_29
LBB108_29:
	bl	___stack_chk_fail
LBB108_30:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyObject_Call
___Pyx_PyObject_Call:                   ; @__Pyx_PyObject_Call
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldur	x0, [x29, #-16]
	bl	_Py_TYPE
	ldr	x8, [x0, #128]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB109_2
	b	LBB109_1
LBB109_1:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	bl	_PyObject_Call
	stur	x0, [x29, #-8]
	b	LBB109_8
LBB109_2:
	adrp	x0, l_.str.85@PAGE
	add	x0, x0, l_.str.85@PAGEOFF
	bl	_Py_EnterRecursiveCall
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB109_4
	b	LBB109_3
LBB109_3:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB109_8
LBB109_4:
	ldr	x8, [sp]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	blr	x8
	str	x0, [sp, #8]
	bl	_Py_LeaveRecursiveCall
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB109_7
	b	LBB109_5
LBB109_5:
	bl	_PyErr_Occurred
	subs	x8, x0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB109_7
	b	LBB109_6
LBB109_6:
	adrp	x8, _PyExc_SystemError@GOTPAGE
	ldr	x8, [x8, _PyExc_SystemError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.86@PAGE
	add	x1, x1, l_.str.86@PAGEOFF
	bl	_PyErr_SetString
	b	LBB109_7
LBB109_7:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB109_8
LBB109_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx__GetException
___Pyx__GetException:                   ; @__Pyx__GetException
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	x2, [x29, #-48]
	str	x3, [sp, #56]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #48]
	str	xzr, [sp, #32]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #96]
	str	x8, [sp, #40]
	ldur	x8, [x29, #-32]
	str	xzr, [x8, #96]
	ldr	x8, [sp, #40]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB110_5
	b	LBB110_1
LBB110_1:
	ldr	x0, [sp, #40]
	bl	_Py_TYPE
	str	x0, [sp, #48]
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB110_3
	b	LBB110_2
LBB110_2:
	b	LBB110_4
LBB110_3:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB110_4
LBB110_4:
	ldr	x0, [sp, #40]
	bl	_PyException_GetTraceback
	str	x0, [sp, #32]
	b	LBB110_5
LBB110_5:
	add	x0, sp, #48
	add	x1, sp, #40
	add	x2, sp, #32
	bl	_PyErr_NormalizeException
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #96]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB110_7
	b	LBB110_6
LBB110_6:
	b	LBB110_12
LBB110_7:
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB110_11
	b	LBB110_8
LBB110_8:
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #32]
	bl	_PyException_SetTraceback
	subs	w8, w0, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB110_10
	b	LBB110_9
LBB110_9:
	b	LBB110_12
LBB110_10:
	b	LBB110_11
LBB110_11:
	ldr	x0, [sp, #32]
	bl	_Py_XINCREF
	ldr	x0, [sp, #48]
	bl	_Py_XINCREF
	ldr	x0, [sp, #40]
	bl	_Py_XINCREF
	ldr	x8, [sp, #48]
	ldur	x9, [x29, #-40]
	str	x8, [x9]
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-48]
	str	x8, [x9]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #56]
	str	x8, [x9]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #104]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #40]
	ldr	x9, [sp]
	str	x8, [x9]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	str	xzr, [sp, #8]
	ldr	x0, [sp, #48]
	bl	_Py_XDECREF
	ldr	x0, [sp, #32]
	bl	_Py_XDECREF
	ldr	x0, [sp, #24]
	bl	_Py_XDECREF
	ldr	x0, [sp, #16]
	bl	_Py_XDECREF
	ldr	x0, [sp, #8]
	bl	_Py_XDECREF
	stur	wzr, [x29, #-20]
	b	LBB110_13
LBB110_12:
	ldur	x8, [x29, #-40]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldur	x8, [x29, #-48]
	str	xzr, [x8]
	ldr	x8, [sp, #56]
	str	xzr, [x8]
	ldr	x0, [sp, #48]
	bl	_Py_XDECREF
	ldr	x0, [sp, #40]
	bl	_Py_XDECREF
	ldr	x0, [sp, #32]
	bl	_Py_XDECREF
	mov	w8, #-1
	stur	w8, [x29, #-20]
	b	LBB110_13
LBB110_13:
	ldur	w0, [x29, #-20]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx__ExceptionSwap
___Pyx__ExceptionSwap:                  ; @__Pyx__ExceptionSwap
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	str	x2, [sp, #40]
	str	x3, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #104]
	str	x8, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #40]
	ldr	x8, [x8]
	ldr	x9, [sp]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB111_2
	b	LBB111_1
LBB111_1:
	ldr	x8, [sp, #16]
	adrp	x9, __Py_NoneStruct@GOTPAGE
	ldr	x9, [x9, __Py_NoneStruct@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB111_3
	b	LBB111_2
LBB111_2:
	ldr	x0, [sp, #16]
	bl	_Py_XDECREF
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #16]
	str	xzr, [sp, #24]
	str	xzr, [sp, #8]
	b	LBB111_7
LBB111_3:
	ldr	x0, [sp, #16]
	bl	_Py_TYPE
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB111_5
	b	LBB111_4
LBB111_4:
	b	LBB111_6
LBB111_5:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB111_6
LBB111_6:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #40]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_Py_XINCREF
	b	LBB111_7
LBB111_7:
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-32]
	str	x8, [x9]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #40]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #32]
	str	x8, [x9]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx__ExceptionReset
___Pyx__ExceptionReset:                 ; @__Pyx__ExceptionReset
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #104]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldr	x0, [sp]
	bl	_Py_XDECREF
	ldur	x0, [x29, #-16]
	bl	_Py_XDECREF
	ldr	x0, [sp, #16]
	bl	_Py_XDECREF
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyObject_CallMethO
___Pyx_PyObject_CallMethO:              ; @__Pyx_PyObject_CallMethO
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x8, [x8, #8]
	str	x8, [sp]
	ldur	x0, [x29, #-16]
	bl	___Pyx_CyOrPyCFunction_GET_SELF
	str	x0, [sp, #16]
	adrp	x0, l_.str.85@PAGE
	add	x0, x0, l_.str.85@PAGEOFF
	bl	_Py_EnterRecursiveCall
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB113_2
	b	LBB113_1
LBB113_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB113_6
LBB113_2:
	ldr	x8, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	blr	x8
	str	x0, [sp, #8]
	bl	_Py_LeaveRecursiveCall
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB113_5
	b	LBB113_3
LBB113_3:
	bl	_PyErr_Occurred
	subs	x8, x0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB113_5
	b	LBB113_4
LBB113_4:
	adrp	x8, _PyExc_SystemError@GOTPAGE
	ldr	x8, [x8, _PyExc_SystemError@GOTPAGEOFF]
	ldr	x0, [x8]
	adrp	x1, l_.str.86@PAGE
	add	x1, x1, l_.str.86@PAGEOFF
	bl	_PyErr_SetString
	b	LBB113_5
LBB113_5:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	LBB113_6
LBB113_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CyOrPyCFunction_GET_SELF
___Pyx_CyOrPyCFunction_GET_SELF:        ; @__Pyx_CyOrPyCFunction_GET_SELF
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	ldr	w8, [x8, #16]
	ands	w8, w8, #0x20
	cset	w8, eq
	tbnz	w8, #0, LBB114_2
	b	LBB114_1
LBB114_1:
	mov	x8, #0
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB114_3
LBB114_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB114_3
LBB114_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyErr_GetTopmostException
___Pyx_PyErr_GetTopmostException:       ; @__Pyx_PyErr_GetTopmostException
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #104]
	str	x8, [sp, #16]
	b	LBB115_1
LBB115_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB115_3
	b	LBB115_2
LBB115_2:                               ;   in Loop: Header=BB115_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, __Py_NoneStruct@GOTPAGE
	ldr	x9, [x9, __Py_NoneStruct@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, ne
	mov	w9, #0
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB115_4
	b	LBB115_3
LBB115_3:                               ;   in Loop: Header=BB115_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, ne
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB115_4
LBB115_4:                               ;   in Loop: Header=BB115_1 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB115_6
	b	LBB115_5
LBB115_5:                               ;   in Loop: Header=BB115_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #16]
	b	LBB115_1
LBB115_6:
	ldr	x0, [sp, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyUnicode_BuildFromAscii
___Pyx_PyUnicode_BuildFromAscii:        ; @__Pyx_PyUnicode_BuildFromAscii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	stur	w3, [x29, #-32]
	sturb	w4, [x29, #-33]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-28]
	subs	x8, x8, x9
	str	x8, [sp, #24]
	ldur	x0, [x29, #-16]
	mov	w1, #127
	bl	_PyUnicode_New
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB116_2
	b	LBB116_1
LBB116_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB116_15
LBB116_2:
	ldr	x0, [sp, #32]
	bl	_PyUnicode_DATA
	str	x0, [sp, #8]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB116_10
	b	LBB116_3
LBB116_3:
	str	xzr, [sp, #16]
	ldur	w8, [x29, #-32]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB116_5
	b	LBB116_4
LBB116_4:
	ldr	x1, [sp, #8]
	mov	w0, #1
	mov	x2, #0
	mov	w3, #45
	bl	_PyUnicode_WRITE
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	LBB116_5
LBB116_5:
	b	LBB116_6
LBB116_6:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB116_9
	b	LBB116_7
LBB116_7:                               ;   in Loop: Header=BB116_6 Depth=1
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	ldursb	w3, [x29, #-33]
	mov	w0, #1
	bl	_PyUnicode_WRITE
	b	LBB116_8
LBB116_8:                               ;   in Loop: Header=BB116_6 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	LBB116_6
LBB116_9:
	b	LBB116_10
LBB116_10:
	str	xzr, [sp, #16]
	b	LBB116_11
LBB116_11:                              ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldursw	x9, [x29, #-28]
	subs	x8, x8, x9
	cset	w8, ge
	tbnz	w8, #0, LBB116_14
	b	LBB116_12
LBB116_12:                              ;   in Loop: Header=BB116_11 Depth=1
	ldr	x1, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x2, x8, x9
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #16]
	ldrsb	w3, [x8, x9]
	mov	w0, #1
	bl	_PyUnicode_WRITE
	b	LBB116_13
LBB116_13:                              ;   in Loop: Header=BB116_11 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	LBB116_11
LBB116_14:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB116_15
LBB116_15:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyUnicode_DATA
_PyUnicode_DATA:                        ; @PyUnicode_DATA
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	_PyUnicode_IS_COMPACT
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB117_2
	b	LBB117_1
LBB117_1:
	ldr	x0, [sp]
	bl	__PyUnicode_COMPACT_DATA
	str	x0, [sp, #8]
	b	LBB117_3
LBB117_2:
	ldr	x0, [sp]
	bl	__PyUnicode_NONCOMPACT_DATA
	str	x0, [sp, #8]
	b	LBB117_3
LBB117_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyUnicode_WRITE
_PyUnicode_WRITE:                       ; @PyUnicode_WRITE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	w3, [sp, #4]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB118_2
	b	LBB118_1
LBB118_1:
	adrp	x0, l___func__.PyUnicode_WRITE@PAGE
	add	x0, x0, l___func__.PyUnicode_WRITE@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #294
	adrp	x3, l_.str.93@PAGE
	add	x3, x3, l_.str.93@PAGEOFF
	bl	___assert_rtn
LBB118_2:
	b	LBB118_3
LBB118_3:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB118_8
	b	LBB118_4
LBB118_4:
	ldr	w8, [sp, #4]
	subs	w8, w8, #255
	cset	w9, hi
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB118_6
	b	LBB118_5
LBB118_5:
	adrp	x0, l___func__.PyUnicode_WRITE@PAGE
	add	x0, x0, l___func__.PyUnicode_WRITE@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #296
	adrp	x3, l_.str.94@PAGE
	add	x3, x3, l_.str.94@PAGEOFF
	bl	___assert_rtn
LBB118_6:
	b	LBB118_7
LBB118_7:
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #16]
	ldr	x10, [sp, #8]
	strb	w8, [x9, x10]
	b	LBB118_21
LBB118_8:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB118_13
	b	LBB118_9
LBB118_9:
	ldr	w8, [sp, #4]
	subs	w8, w8, #16, lsl #12            ; =65536
	cset	w9, hs
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB118_11
	b	LBB118_10
LBB118_10:
	adrp	x0, l___func__.PyUnicode_WRITE@PAGE
	add	x0, x0, l___func__.PyUnicode_WRITE@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #300
	adrp	x3, l_.str.95@PAGE
	add	x3, x3, l_.str.95@PAGEOFF
	bl	___assert_rtn
LBB118_11:
	b	LBB118_12
LBB118_12:
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #16]
	ldr	x10, [sp, #8]
	strh	w8, [x9, x10, lsl #1]
	b	LBB118_20
LBB118_13:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #4
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB118_15
	b	LBB118_14
LBB118_14:
	adrp	x0, l___func__.PyUnicode_WRITE@PAGE
	add	x0, x0, l___func__.PyUnicode_WRITE@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #304
	adrp	x3, l_.str.96@PAGE
	add	x3, x3, l_.str.96@PAGEOFF
	bl	___assert_rtn
LBB118_15:
	b	LBB118_16
LBB118_16:
	ldr	w8, [sp, #4]
	subs	w8, w8, #272, lsl #12           ; =1114112
	cset	w9, hs
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB118_18
	b	LBB118_17
LBB118_17:
	adrp	x0, l___func__.PyUnicode_WRITE@PAGE
	add	x0, x0, l___func__.PyUnicode_WRITE@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #305
	adrp	x3, l_.str.97@PAGE
	add	x3, x3, l_.str.97@PAGEOFF
	bl	___assert_rtn
LBB118_18:
	b	LBB118_19
LBB118_19:
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #16]
	ldr	x10, [sp, #8]
	str	w8, [x9, x10, lsl #2]
	b	LBB118_20
LBB118_20:
	b	LBB118_21
LBB118_21:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyUnicode_IS_COMPACT
_PyUnicode_IS_COMPACT:                  ; @PyUnicode_IS_COMPACT
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_Py_TYPE
	mov	x1, #268435456
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB119_2
	b	LBB119_1
LBB119_1:
	adrp	x0, l___func__.PyUnicode_IS_COMPACT@PAGE
	add	x0, x0, l___func__.PyUnicode_IS_COMPACT@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #221
	adrp	x3, l_.str.90@PAGE
	add	x3, x3, l_.str.90@PAGEOFF
	bl	___assert_rtn
LBB119_2:
	b	LBB119_3
LBB119_3:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #32]
	lsr	w8, w8, #5
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _PyUnicode_COMPACT_DATA
__PyUnicode_COMPACT_DATA:               ; @_PyUnicode_COMPACT_DATA
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	_PyUnicode_IS_ASCII
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB120_5
	b	LBB120_1
LBB120_1:
	ldr	x0, [sp]
	bl	_Py_TYPE
	mov	x1, #268435456
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB120_3
	b	LBB120_2
LBB120_2:
	adrp	x0, l___func__._PyUnicode_COMPACT_DATA@PAGE
	add	x0, x0, l___func__._PyUnicode_COMPACT_DATA@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #250
	adrp	x3, l_.str.90@PAGE
	add	x3, x3, l_.str.90@PAGEOFF
	bl	___assert_rtn
LBB120_3:
	b	LBB120_4
LBB120_4:
	ldr	x8, [sp]
	add	x8, x8, #40
	str	x8, [sp, #8]
	b	LBB120_9
LBB120_5:
	ldr	x0, [sp]
	bl	_Py_TYPE
	mov	x1, #268435456
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB120_7
	b	LBB120_6
LBB120_6:
	adrp	x0, l___func__._PyUnicode_COMPACT_DATA@PAGE
	add	x0, x0, l___func__._PyUnicode_COMPACT_DATA@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #252
	adrp	x3, l_.str.90@PAGE
	add	x3, x3, l_.str.90@PAGEOFF
	bl	___assert_rtn
LBB120_7:
	b	LBB120_8
LBB120_8:
	ldr	x8, [sp]
	add	x8, x8, #56
	str	x8, [sp, #8]
	b	LBB120_9
LBB120_9:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _PyUnicode_NONCOMPACT_DATA
__PyUnicode_NONCOMPACT_DATA:            ; @_PyUnicode_NONCOMPACT_DATA
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_PyUnicode_IS_COMPACT
	subs	w8, w0, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB121_2
	b	LBB121_1
LBB121_1:
	adrp	x0, l___func__._PyUnicode_NONCOMPACT_DATA@PAGE
	add	x0, x0, l___func__._PyUnicode_NONCOMPACT_DATA@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #257
	adrp	x3, l_.str.91@PAGE
	add	x3, x3, l_.str.91@PAGEOFF
	bl	___assert_rtn
LBB121_2:
	b	LBB121_3
LBB121_3:
	ldr	x0, [sp, #8]
	bl	_Py_TYPE
	mov	x1, #268435456
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB121_5
	b	LBB121_4
LBB121_4:
	adrp	x0, l___func__._PyUnicode_NONCOMPACT_DATA@PAGE
	add	x0, x0, l___func__._PyUnicode_NONCOMPACT_DATA@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #258
	adrp	x3, l_.str.90@PAGE
	add	x3, x3, l_.str.90@PAGEOFF
	bl	___assert_rtn
LBB121_5:
	b	LBB121_6
LBB121_6:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #56]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB121_8
	b	LBB121_7
LBB121_7:
	adrp	x0, l___func__._PyUnicode_NONCOMPACT_DATA@PAGE
	add	x0, x0, l___func__._PyUnicode_NONCOMPACT_DATA@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #259
	adrp	x3, l_.str.92@PAGE
	add	x3, x3, l_.str.92@PAGEOFF
	bl	___assert_rtn
LBB121_8:
	b	LBB121_9
LBB121_9:
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyUnicode_IS_ASCII
_PyUnicode_IS_ASCII:                    ; @PyUnicode_IS_ASCII
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_Py_TYPE
	mov	x1, #268435456
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB122_2
	b	LBB122_1
LBB122_1:
	adrp	x0, l___func__.PyUnicode_IS_ASCII@PAGE
	add	x0, x0, l___func__.PyUnicode_IS_ASCII@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #214
	adrp	x3, l_.str.90@PAGE
	add	x3, x3, l_.str.90@PAGEOFF
	bl	___assert_rtn
LBB122_2:
	b	LBB122_3
LBB122_3:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #32]
	lsr	w8, w8, #6
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyUnicode_GET_LENGTH
_PyUnicode_GET_LENGTH:                  ; @PyUnicode_GET_LENGTH
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_Py_TYPE
	mov	x1, #268435456
	bl	_PyType_HasFeature
	subs	w8, w0, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB123_2
	b	LBB123_1
LBB123_1:
	adrp	x0, l___func__.PyUnicode_GET_LENGTH@PAGE
	add	x0, x0, l___func__.PyUnicode_GET_LENGTH@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #282
	adrp	x3, l_.str.90@PAGE
	add	x3, x3, l_.str.90@PAGEOFF
	bl	___assert_rtn
LBB123_2:
	b	LBB123_3
LBB123_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function PyUnicode_READ
_PyUnicode_READ:                        ; @PyUnicode_READ
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w9, lt
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB124_2
	b	LBB124_1
LBB124_1:
	adrp	x0, l___func__.PyUnicode_READ@PAGE
	add	x0, x0, l___func__.PyUnicode_READ@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #318
	adrp	x3, l_.str.93@PAGE
	add	x3, x3, l_.str.93@PAGEOFF
	bl	___assert_rtn
LBB124_2:
	b	LBB124_3
LBB124_3:
	ldur	w8, [x29, #-8]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB124_5
	b	LBB124_4
LBB124_4:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldrb	w8, [x8, x9]
	stur	w8, [x29, #-4]
	b	LBB124_11
LBB124_5:
	ldur	w8, [x29, #-8]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB124_7
	b	LBB124_6
LBB124_6:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldrh	w8, [x8, x9, lsl #1]
	stur	w8, [x29, #-4]
	b	LBB124_11
LBB124_7:
	ldur	w8, [x29, #-8]
	subs	w8, w8, #4
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB124_9
	b	LBB124_8
LBB124_8:
	adrp	x0, l___func__.PyUnicode_READ@PAGE
	add	x0, x0, l___func__.PyUnicode_READ@PAGEOFF
	adrp	x1, l_.str.89@PAGE
	add	x1, x1, l_.str.89@PAGEOFF
	mov	w2, #325
	adrp	x3, l_.str.96@PAGE
	add	x3, x3, l_.str.96@PAGEOFF
	bl	___assert_rtn
LBB124_9:
	b	LBB124_10
LBB124_10:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldr	w8, [x8, x9, lsl #2]
	stur	w8, [x29, #-4]
	b	LBB124_11
LBB124_11:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyObject_IsTrue
___Pyx_PyObject_IsTrue:                 ; @__Pyx_PyObject_IsTrue
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	adrp	x9, __Py_TrueStruct@GOTPAGE
	ldr	x9, [x9, __Py_TrueStruct@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	adrp	x10, __Py_FalseStruct@GOTPAGE
	ldr	x10, [x10, __Py_FalseStruct@GOTPAGEOFF]
	subs	x9, x9, x10
	cset	w9, eq
	and	w9, w9, #0x1
	orr	w8, w8, w9
	ldr	x9, [sp, #16]
	adrp	x10, __Py_NoneStruct@GOTPAGE
	ldr	x10, [x10, __Py_NoneStruct@GOTPAGEOFF]
	subs	x9, x9, x10
	cset	w9, eq
	and	w9, w9, #0x1
	orr	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB125_2
	b	LBB125_1
LBB125_1:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	LBB125_3
LBB125_2:
	ldr	x0, [sp, #16]
	bl	_PyObject_IsTrue
	stur	w0, [x29, #-4]
	b	LBB125_3
LBB125_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CLineForTraceback
___Pyx_CLineForTraceback:               ; @__Pyx_CLineForTraceback
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __Py_FalseStruct@GOTPAGE
	ldr	x8, [x8, __Py_FalseStruct@GOTPAGEOFF]
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-32]
	stur	w1, [x29, #-36]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x8, [x8, #16]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB126_2
	b	LBB126_1
LBB126_1:
	ldur	w8, [x29, #-36]
	stur	w8, [x29, #-20]
	b	LBB126_20
LBB126_2:
	ldur	x0, [x29, #-32]
	add	x1, sp, #40
	add	x2, sp, #32
	add	x3, sp, #24
	bl	___Pyx_ErrFetchInState
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x8, #16]
	bl	__PyObject_GetDictPtr
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB126_4
	b	LBB126_3
LBB126_3:
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #120]
	bl	___Pyx_PyDict_GetItemStr
	str	x0, [sp, #48]
	b	LBB126_12
LBB126_4:
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x9, #16]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #120]
	bl	___Pyx_PyObject_GetAttrStrNoError
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB126_10
	b	LBB126_5
LBB126_5:
	ldr	x0, [sp, #8]
	bl	_PyObject_Not
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	subs	w9, w0, #0
	cset	w9, ne
	and	w10, w9, #0x1
	adrp	x9, __Py_TrueStruct@GOTPAGE
	ldr	x9, [x9, __Py_TrueStruct@GOTPAGEOFF]
	ands	w10, w10, #0x1
	csel	x8, x8, x9, ne
	str	x8, [sp, #48]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB126_7
	b	LBB126_6
LBB126_6:
	b	LBB126_9
LBB126_7:
	ldur	x9, [x29, #-16]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB126_9
	b	LBB126_8
LBB126_8:
	ldur	x0, [x29, #-16]
	bl	__Py_Dealloc
	b	LBB126_9
LBB126_9:
	b	LBB126_11
LBB126_10:
	bl	_PyErr_Clear
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #48]
	b	LBB126_11
LBB126_11:
	b	LBB126_12
LBB126_12:
	ldr	x8, [sp, #48]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB126_14
	b	LBB126_13
LBB126_13:
	ldr	x2, [sp]                        ; 8-byte Folded Reload
	stur	wzr, [x29, #-36]
	adrp	x8, ___pyx_mstate_global@PAGE
	ldr	x9, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x0, [x9, #16]
	ldr	x8, [x8, ___pyx_mstate_global@PAGEOFF]
	ldr	x1, [x8, #120]
	bl	_PyObject_SetAttr
	b	LBB126_19
LBB126_14:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #48]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB126_17
	b	LBB126_15
LBB126_15:
	ldr	x8, [sp, #48]
	adrp	x9, __Py_TrueStruct@GOTPAGE
	ldr	x9, [x9, __Py_TrueStruct@GOTPAGEOFF]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB126_18
	b	LBB126_16
LBB126_16:
	ldr	x0, [sp, #48]
	bl	_PyObject_Not
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB126_18
	b	LBB126_17
LBB126_17:
	stur	wzr, [x29, #-36]
	b	LBB126_18
LBB126_18:
	b	LBB126_19
LBB126_19:
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #32]
	ldr	x3, [sp, #24]
	bl	___Pyx_ErrRestoreInState
	ldur	w8, [x29, #-36]
	stur	w8, [x29, #-20]
	b	LBB126_20
LBB126_20:
	ldur	w0, [x29, #-20]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __pyx_find_code_object
___pyx_find_code_object:                ; @__pyx_find_code_object
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___pyx_code_cache@PAGE
	add	x8, x8, ___pyx_code_cache@PAGEOFF
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	w0, [x29, #-28]
	ldur	w8, [x29, #-28]
	subs	w8, w8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, ne
	tbnz	w8, #0, LBB127_2
	b	LBB127_1
LBB127_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB127_3
	b	LBB127_2
LBB127_2:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-24]
	b	LBB127_10
LBB127_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #8]
	adrp	x8, ___pyx_code_cache@PAGE
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	w1, [x8, ___pyx_code_cache@PAGEOFF]
	ldur	w2, [x29, #-28]
	bl	___pyx_bisect_code_objects
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	ldr	w9, [x9, ___pyx_code_cache@PAGEOFF]
	subs	w8, w8, w9
	cset	w9, ge
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, ne
	tbnz	w8, #0, LBB127_5
	b	LBB127_4
LBB127_4:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #20]
	add	x8, x8, x9, lsl #4
	ldr	w8, [x8, #8]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB127_6
	b	LBB127_5
LBB127_5:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-24]
	b	LBB127_10
LBB127_6:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #20]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB127_8
	b	LBB127_7
LBB127_7:
	b	LBB127_9
LBB127_8:
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB127_9
LBB127_9:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	LBB127_10
LBB127_10:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_CreateCodeObjectForTraceback
___Pyx_CreateCodeObjectForTraceback:    ; @__Pyx_CreateCodeObjectForTraceback
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	stur	x3, [x29, #-32]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #40]
	str	xzr, [sp, #32]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB128_6
	b	LBB128_1
LBB128_1:
	ldur	x11, [x29, #-16]
	adrp	x8, ___pyx_cfilenm@PAGE
	ldr	x10, [x8, ___pyx_cfilenm@PAGEOFF]
	ldur	w9, [x29, #-20]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x11, [x9]
	str	x10, [x9, #8]
	str	x8, [x9, #16]
	adrp	x0, l_.str.100@PAGE
	add	x0, x0, l_.str.100@PAGEOFF
	bl	_PyUnicode_FromFormat
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB128_3
	b	LBB128_2
LBB128_2:
	b	LBB128_8
LBB128_3:
	ldr	x0, [sp, #32]
	bl	_PyUnicode_AsUTF8
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB128_5
	b	LBB128_4
LBB128_4:
	b	LBB128_8
LBB128_5:
	b	LBB128_7
LBB128_6:
	b	LBB128_7
LBB128_7:
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-16]
	ldur	w2, [x29, #-24]
	bl	_PyCode_NewEmpty
	str	x0, [sp, #40]
	ldr	x0, [sp, #32]
	bl	_Py_XDECREF
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	LBB128_9
LBB128_8:
	ldr	x0, [sp, #32]
	bl	_Py_XDECREF
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB128_9
LBB128_9:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __pyx_insert_code_object
___pyx_insert_code_object:              ; @__pyx_insert_code_object
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___pyx_code_cache@PAGE
	add	x8, x8, ___pyx_code_cache@PAGEOFF
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	w0, [x29, #-52]
	str	x1, [sp, #48]
	ldr	x8, [x8, #8]
	str	x8, [sp, #32]
	ldur	w8, [x29, #-52]
	subs	w8, w8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB129_2
	b	LBB129_1
LBB129_1:
	b	LBB129_28
LBB129_2:
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB129_9
	b	LBB129_3
LBB129_3:
	mov	x0, #1024
	bl	_PyMem_Malloc
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB129_8
	b	LBB129_4
LBB129_4:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #32]
	str	x8, [x9, #8]
	mov	w8, #64
	str	w8, [x9, #4]
	mov	w8, #1
	adrp	x9, ___pyx_code_cache@PAGE
	str	w8, [x9, ___pyx_code_cache@PAGEOFF]
	ldur	w8, [x29, #-52]
	ldr	x9, [sp, #32]
	str	w8, [x9, #8]
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #32]
	str	x8, [x9]
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	ldur	w8, [x29, #-32]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB129_6
	b	LBB129_5
LBB129_5:
	b	LBB129_7
LBB129_6:
	ldur	w8, [x29, #-32]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	b	LBB129_7
LBB129_7:
	b	LBB129_8
LBB129_8:
	b	LBB129_28
LBB129_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #8]
	adrp	x8, ___pyx_code_cache@PAGE
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	w1, [x8, ___pyx_code_cache@PAGEOFF]
	ldur	w2, [x29, #-52]
	bl	___pyx_bisect_code_objects
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	w0, [sp, #44]
	ldr	w8, [sp, #44]
	ldr	w9, [x9, ___pyx_code_cache@PAGEOFF]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB129_16
	b	LBB129_10
LBB129_10:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #44]
	add	x8, x8, x9, lsl #4
	ldr	w8, [x8, #8]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB129_16
	b	LBB129_11
LBB129_11:
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #44]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	str	x8, [sp, #24]
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #44]
	lsl	x10, x10, #4
	str	x8, [x9, x10]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
                                        ; kill: def $w8 killed $w8 killed $x8
	subs	w8, w8, #0
	cset	w8, lt
	ands	w8, w8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB129_13
	b	LBB129_12
LBB129_12:
	b	LBB129_15
LBB129_13:
	ldur	x9, [x29, #-16]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB129_15
	b	LBB129_14
LBB129_14:
	ldur	x0, [x29, #-16]
	bl	__Py_Dealloc
	b	LBB129_15
LBB129_15:
	b	LBB129_28
LBB129_16:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, ___pyx_code_cache@PAGE
	ldr	w8, [x8, ___pyx_code_cache@PAGEOFF]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB129_20
	b	LBB129_17
LBB129_17:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w9, [x8, #4]
	add	w9, w9, #64
	str	w9, [sp, #20]
	ldr	x0, [x8, #8]
	ldrsw	x8, [sp, #20]
	lsl	x1, x8, #4
	bl	_PyMem_Realloc
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	cset	w9, eq
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB129_19
	b	LBB129_18
LBB129_18:
	b	LBB129_28
LBB129_19:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #32]
	str	x8, [x9, #8]
	ldr	w8, [sp, #20]
	str	w8, [x9, #4]
	b	LBB129_20
LBB129_20:
	adrp	x8, ___pyx_code_cache@PAGE
	ldr	w8, [x8, ___pyx_code_cache@PAGEOFF]
	str	w8, [sp, #40]
	b	LBB129_21
LBB129_21:                              ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB129_24
	b	LBB129_22
LBB129_22:                              ;   in Loop: Header=BB129_21 Depth=1
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #40]
	ldr	x10, [sp, #32]
	ldr	w11, [sp, #40]
	subs	w11, w11, #1
	ldr	q0, [x10, w11, sxtw #4]
	str	q0, [x8, x9, lsl #4]
	b	LBB129_23
LBB129_23:                              ;   in Loop: Header=BB129_21 Depth=1
	ldr	w8, [sp, #40]
	subs	w8, w8, #1
	str	w8, [sp, #40]
	b	LBB129_21
LBB129_24:
	ldur	w8, [x29, #-52]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #44]
	add	x9, x9, x10, lsl #4
	str	w8, [x9, #8]
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #44]
	lsl	x10, x10, #4
	str	x8, [x9, x10]
	adrp	x9, ___pyx_code_cache@PAGE
	ldr	w8, [x9, ___pyx_code_cache@PAGEOFF]
	add	w8, w8, #1
	str	w8, [x9, ___pyx_code_cache@PAGEOFF]
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-48]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB129_26
	b	LBB129_25
LBB129_25:
	b	LBB129_27
LBB129_26:
	ldur	w8, [x29, #-48]
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	b	LBB129_27
LBB129_27:
	b	LBB129_28
LBB129_28:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __Pyx_PyDict_GetItemStr
___Pyx_PyDict_GetItemStr:               ; @__Pyx_PyDict_GetItemStr
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x2, [x8, #24]
	bl	__PyDict_GetItem_KnownHash
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB130_2
	b	LBB130_1
LBB130_1:
	bl	_PyErr_Clear
	b	LBB130_2
LBB130_2:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function __pyx_bisect_code_objects
___pyx_bisect_code_objects:             ; @__pyx_bisect_code_objects
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #32]
	str	w1, [sp, #28]
	str	w2, [sp, #24]
	str	wzr, [sp, #20]
	str	wzr, [sp, #16]
	ldr	w8, [sp, #28]
	subs	w8, w8, #1
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB131_3
	b	LBB131_1
LBB131_1:
	ldr	w8, [sp, #24]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #12]
	add	x9, x9, x10, lsl #4
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB131_3
	b	LBB131_2
LBB131_2:
	ldr	w8, [sp, #28]
	str	w8, [sp, #44]
	b	LBB131_15
LBB131_3:
	b	LBB131_4
LBB131_4:                               ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB131_12
	b	LBB131_5
LBB131_5:                               ;   in Loop: Header=BB131_4 Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #20]
	subs	w9, w9, w10
	mov	w10, #2
	sdiv	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #24]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #16]
	add	x9, x9, x10, lsl #4
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB131_7
	b	LBB131_6
LBB131_6:                               ;   in Loop: Header=BB131_4 Depth=1
	ldr	w8, [sp, #16]
	str	w8, [sp, #12]
	b	LBB131_11
LBB131_7:                               ;   in Loop: Header=BB131_4 Depth=1
	ldr	w8, [sp, #24]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #16]
	add	x9, x9, x10, lsl #4
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB131_9
	b	LBB131_8
LBB131_8:                               ;   in Loop: Header=BB131_4 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB131_10
LBB131_9:
	ldr	w8, [sp, #16]
	str	w8, [sp, #44]
	b	LBB131_15
LBB131_10:                              ;   in Loop: Header=BB131_4 Depth=1
	b	LBB131_11
LBB131_11:                              ;   in Loop: Header=BB131_4 Depth=1
	b	LBB131_4
LBB131_12:
	ldr	w8, [sp, #24]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #16]
	add	x9, x9, x10, lsl #4
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB131_14
	b	LBB131_13
LBB131_13:
	ldr	w8, [sp, #16]
	str	w8, [sp, #44]
	b	LBB131_15
LBB131_14:
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	LBB131_15
LBB131_15:
	ldr	w0, [sp, #44]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	___pyx_module_is_main_main      ; @__pyx_module_is_main_main
.zerofill __DATA,__common,___pyx_module_is_main_main,4,2
	.section	__DATA,__data
	.p2align	3, 0x0                          ; @__pyx_moduledef
___pyx_moduledef:
	.quad	1                               ; 0x1
	.quad	0
	.quad	0
	.quad	0                               ; 0x0
	.quad	0
	.quad	l_.str
	.quad	0
	.quad	0                               ; 0x0
	.quad	___pyx_methods
	.quad	___pyx_moduledef_slots
	.quad	0
	.quad	0
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"main"

.zerofill __DATA,__bss,___pyx_methods,32,3 ; @__pyx_methods
	.section	__DATA,__data
	.p2align	3, 0x0                          ; @__pyx_moduledef_slots
___pyx_moduledef_slots:
	.long	1                               ; 0x1
	.space	4
	.quad	___pyx_pymod_create
	.long	2                               ; 0x2
	.space	4
	.quad	___pyx_pymod_exec_main
	.space	16

.zerofill __DATA,__bss,___pyx_m,8,3     ; @__pyx_m
	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"name"

l_.str.2:                               ; @.str.2
	.asciz	"loader"

l_.str.3:                               ; @.str.3
	.asciz	"__loader__"

l_.str.4:                               ; @.str.4
	.asciz	"origin"

l_.str.5:                               ; @.str.5
	.asciz	"__file__"

l_.str.6:                               ; @.str.6
	.asciz	"parent"

l_.str.7:                               ; @.str.7
	.asciz	"__package__"

l_.str.8:                               ; @.str.8
	.asciz	"submodule_search_locations"

l_.str.9:                               ; @.str.9
	.asciz	"__path__"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @__Pyx_check_single_interpreter.main_interpreter_id
___Pyx_check_single_interpreter.main_interpreter_id:
	.quad	-1                              ; 0xffffffffffffffff

	.section	__TEXT,__cstring,cstring_literals
l_.str.10:                              ; @.str.10
	.asciz	"Interpreter change detected - this module can only be loaded into one interpreter per process."

.zerofill __DATA,__bss,___pyx_pymod_exec_main.__pyx_frame_code,8,3 ; @__pyx_pymod_exec_main.__pyx_frame_code
l_.str.11:                              ; @.str.11
	.asciz	"Module 'main' has already been imported. Re-initialisation is not supported."

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @__pyx_mstate_global
___pyx_mstate_global:
	.quad	___pyx_mstate_global_static

	.p2align	3, 0x0                          ; @__pyx_f
___pyx_f:
	.quad	l_.str.18

	.section	__TEXT,__cstring,cstring_literals
l_.str.12:                              ; @.str.12
	.asciz	"builtins"

l_.str.13:                              ; @.str.13
	.asciz	"cython_runtime"

l_.str.14:                              ; @.str.14
	.asciz	"__builtins__"

l_.str.15:                              ; @.str.15
	.space	1

l_.str.16:                              ; @.str.16
	.asciz	"__Pyx_PyMODINIT_FUNC PyInit_main(void)"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @__pyx_mdef_4main_1main
___pyx_mdef_4main_1main:
	.quad	l_.str
	.quad	___pyx_pw_4main_1main
	.long	4                               ; 0x4
	.space	4
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
l_.str.17:                              ; @.str.17
	.asciz	"init main"

.zerofill __DATA,__bss,___pyx_mstate_global_static,288,3 ; @__pyx_mstate_global_static
l_.str.18:                              ; @.str.18
	.asciz	"main.pyx"

l_.str.19:                              ; @.str.19
	.asciz	"compile time Python version %d.%d of module '%.100s' %s runtime version %d.%d"

l_.str.20:                              ; @.str.20
	.asciz	"was newer than"

l_.str.21:                              ; @.str.21
	.asciz	"does not match"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @__pyx_CyFunctionType_type
___pyx_CyFunctionType_type:
	.quad	1                               ; 0x1
	.quad	0
	.quad	0                               ; 0x0
	.quad	l_.str.25
	.quad	192                             ; 0xc0
	.quad	0                               ; 0x0
	.quad	___Pyx_CyFunction_dealloc
	.quad	48                              ; 0x30
	.quad	0
	.quad	0
	.quad	0
	.quad	___Pyx_CyFunction_repr
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	___Pyx_CyFunction_CallAsMethod
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	150528                          ; 0x24c00
	.quad	0
	.quad	___Pyx_CyFunction_traverse
	.quad	___Pyx_CyFunction_clear
	.quad	0
	.quad	40                              ; 0x28
	.quad	0
	.quad	0
	.quad	___pyx_CyFunction_methods
	.quad	___pyx_CyFunction_members
	.quad	___pyx_CyFunction_getsets
	.quad	0
	.quad	0
	.quad	___Pyx_PyMethod_New
	.quad	0
	.quad	64                              ; 0x40
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                               ; 0x0
	.space	4
	.quad	0
	.quad	0
	.byte	0                               ; 0x0
	.space	7

	.section	__TEXT,__cstring,cstring_literals
l_.str.22:                              ; @.str.22
	.asciz	"_cython_3_0_11"

l_.str.23:                              ; @.str.23
	.asciz	"Shared Cython type %.200s is not a type object"

l_.str.24:                              ; @.str.24
	.asciz	"Shared Cython type %.200s has the wrong size, try recompiling"

l_.str.25:                              ; @.str.25
	.asciz	"_cython_3_0_11.cython_function_or_method"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @__pyx_CyFunction_methods
___pyx_CyFunction_methods:
	.quad	l_.str.43
	.quad	___Pyx_CyFunction_reduce
	.long	1                               ; 0x1
	.space	4
	.quad	0
	.space	32

	.p2align	3, 0x0                          ; @__pyx_CyFunction_members
___pyx_CyFunction_members:
	.quad	l_.str.44
	.long	6                               ; 0x6
	.space	4
	.quad	32                              ; 0x20
	.long	0                               ; 0x0
	.space	4
	.quad	0
	.space	40

	.p2align	3, 0x0                          ; @__pyx_CyFunction_getsets
___pyx_CyFunction_getsets:
	.quad	l_.str.45
	.quad	___Pyx_CyFunction_get_doc
	.quad	___Pyx_CyFunction_set_doc
	.quad	0
	.quad	0
	.quad	l_.str.46
	.quad	___Pyx_CyFunction_get_doc
	.quad	___Pyx_CyFunction_set_doc
	.quad	0
	.quad	0
	.quad	l_.str.47
	.quad	___Pyx_CyFunction_get_name
	.quad	___Pyx_CyFunction_set_name
	.quad	0
	.quad	0
	.quad	l_.str.48
	.quad	___Pyx_CyFunction_get_name
	.quad	___Pyx_CyFunction_set_name
	.quad	0
	.quad	0
	.quad	l_.str.49
	.quad	___Pyx_CyFunction_get_qualname
	.quad	___Pyx_CyFunction_set_qualname
	.quad	0
	.quad	0
	.quad	l_.str.50
	.quad	___Pyx_CyFunction_get_dict
	.quad	___Pyx_CyFunction_set_dict
	.quad	0
	.quad	0
	.quad	l_.str.51
	.quad	___Pyx_CyFunction_get_dict
	.quad	___Pyx_CyFunction_set_dict
	.quad	0
	.quad	0
	.quad	l_.str.52
	.quad	___Pyx_CyFunction_get_globals
	.quad	0
	.quad	0
	.quad	0
	.quad	l_.str.53
	.quad	___Pyx_CyFunction_get_globals
	.quad	0
	.quad	0
	.quad	0
	.quad	l_.str.54
	.quad	___Pyx_CyFunction_get_closure
	.quad	0
	.quad	0
	.quad	0
	.quad	l_.str.55
	.quad	___Pyx_CyFunction_get_closure
	.quad	0
	.quad	0
	.quad	0
	.quad	l_.str.56
	.quad	___Pyx_CyFunction_get_code
	.quad	0
	.quad	0
	.quad	0
	.quad	l_.str.57
	.quad	___Pyx_CyFunction_get_code
	.quad	0
	.quad	0
	.quad	0
	.quad	l_.str.58
	.quad	___Pyx_CyFunction_get_defaults
	.quad	___Pyx_CyFunction_set_defaults
	.quad	0
	.quad	0
	.quad	l_.str.59
	.quad	___Pyx_CyFunction_get_defaults
	.quad	___Pyx_CyFunction_set_defaults
	.quad	0
	.quad	0
	.quad	l_.str.60
	.quad	___Pyx_CyFunction_get_kwdefaults
	.quad	___Pyx_CyFunction_set_kwdefaults
	.quad	0
	.quad	0
	.quad	l_.str.61
	.quad	___Pyx_CyFunction_get_annotations
	.quad	___Pyx_CyFunction_set_annotations
	.quad	0
	.quad	0
	.quad	l_.str.62
	.quad	___Pyx_CyFunction_get_is_coroutine
	.quad	0
	.quad	0
	.quad	0
	.space	40

	.section	__TEXT,__cstring,cstring_literals
l_.str.26:                              ; @.str.26
	.asciz	"<cyfunction %U at %p>"

l___func__.__Pyx_CyFunction_CallAsMethod: ; @__func__.__Pyx_CyFunction_CallAsMethod
	.asciz	"__Pyx_CyFunction_CallAsMethod"

l_.str.27:                              ; @.str.27
	.asciz	"main.c"

l_.str.28:                              ; @.str.28
	.asciz	"PyTuple_Check(args)"

l_.str.29:                              ; @.str.29
	.asciz	"unbound method %.200S() needs an argument"

l___func__.PyDict_GET_SIZE:             ; @__func__.PyDict_GET_SIZE
	.asciz	"PyDict_GET_SIZE"

l_.str.30:                              ; @.str.30
	.asciz	"dictobject.h"

l_.str.31:                              ; @.str.31
	.asciz	"PyDict_Check(op)"

l_.str.32:                              ; @.str.32
	.asciz	"keywords must be strings"

l___func__.PyTuple_SET_ITEM:            ; @__func__.PyTuple_SET_ITEM
	.asciz	"PyTuple_SET_ITEM"

l_.str.33:                              ; @.str.33
	.asciz	"tupleobject.h"

l_.str.34:                              ; @.str.34
	.asciz	"PyTuple_Check(op)"

l___func__.PyTuple_GET_SIZE:            ; @__func__.PyTuple_GET_SIZE
	.asciz	"PyTuple_GET_SIZE"

l___func__.Py_SIZE:                     ; @__func__.Py_SIZE
	.asciz	"Py_SIZE"

l_.str.35:                              ; @.str.35
	.asciz	"object.h"

l_.str.36:                              ; @.str.36
	.asciz	"ob->ob_type != &PyLong_Type"

l_.str.37:                              ; @.str.37
	.asciz	"ob->ob_type != &PyBool_Type"

l_.str.38:                              ; @.str.38
	.asciz	"%.200s() takes no arguments (%zd given)"

l___func__.__Pyx_CyFunction_CallMethod: ; @__func__.__Pyx_CyFunction_CallMethod
	.asciz	"__Pyx_CyFunction_CallMethod"

l_.str.39:                              ; @.str.39
	.asciz	"PyTuple_Check(arg)"

l_.str.40:                              ; @.str.40
	.asciz	"%.200s() takes exactly one argument (%zd given)"

l_.str.41:                              ; @.str.41
	.asciz	"Bad call flags for CyFunction"

l_.str.42:                              ; @.str.42
	.asciz	"%.200s() takes no keyword arguments"

l_.str.43:                              ; @.str.43
	.asciz	"__reduce__"

l_.str.44:                              ; @.str.44
	.asciz	"__module__"

l_.str.45:                              ; @.str.45
	.asciz	"func_doc"

l_.str.46:                              ; @.str.46
	.asciz	"__doc__"

l_.str.47:                              ; @.str.47
	.asciz	"func_name"

l_.str.48:                              ; @.str.48
	.asciz	"__name__"

l_.str.49:                              ; @.str.49
	.asciz	"__qualname__"

l_.str.50:                              ; @.str.50
	.asciz	"func_dict"

l_.str.51:                              ; @.str.51
	.asciz	"__dict__"

l_.str.52:                              ; @.str.52
	.asciz	"func_globals"

l_.str.53:                              ; @.str.53
	.asciz	"__globals__"

l_.str.54:                              ; @.str.54
	.asciz	"func_closure"

l_.str.55:                              ; @.str.55
	.asciz	"__closure__"

l_.str.56:                              ; @.str.56
	.asciz	"func_code"

l_.str.57:                              ; @.str.57
	.asciz	"__code__"

l_.str.58:                              ; @.str.58
	.asciz	"func_defaults"

l_.str.59:                              ; @.str.59
	.asciz	"__defaults__"

l_.str.60:                              ; @.str.60
	.asciz	"__kwdefaults__"

l_.str.61:                              ; @.str.61
	.asciz	"__annotations__"

l_.str.62:                              ; @.str.62
	.asciz	"_is_coroutine"

l_.str.63:                              ; @.str.63
	.asciz	"__name__ must be set to a string object"

l_.str.64:                              ; @.str.64
	.asciz	"__qualname__ must be set to a string object"

l_.str.65:                              ; @.str.65
	.asciz	"function's dictionary may not be deleted"

l_.str.66:                              ; @.str.66
	.asciz	"setting function's dictionary to a non-dict"

l___func__.__Pyx_CyFunction_init_defaults: ; @__func__.__Pyx_CyFunction_init_defaults
	.asciz	"__Pyx_CyFunction_init_defaults"

l_.str.67:                              ; @.str.67
	.asciz	"PyTuple_Check(res)"

l_.str.68:                              ; @.str.68
	.asciz	"__defaults__ must be set to a tuple object"

l_.str.69:                              ; @.str.69
	.asciz	"changes to cyfunction.__defaults__ will not currently affect the values used in function calls"

l_.str.70:                              ; @.str.70
	.asciz	"__kwdefaults__ must be set to a dict object"

l_.str.71:                              ; @.str.71
	.asciz	"changes to cyfunction.__kwdefaults__ will not currently affect the values used in function calls"

l_.str.72:                              ; @.str.72
	.asciz	"__annotations__ must be set to a dict object"

.zerofill __DATA,__bss,___pyx_filename,8,3 ; @__pyx_filename
.zerofill __DATA,__bss,___pyx_lineno,4,2 ; @__pyx_lineno
.zerofill __DATA,__bss,___pyx_clineno,4,2 ; @__pyx_clineno
	.section	__TEXT,__const
___pyx_k_Count:                         ; @__pyx_k_Count
	.asciz	"Count: "

___pyx_k_Counting_finished:             ; @__pyx_k_Counting_finished
	.asciz	"Counting finished!"

___pyx_k_Counting_started:              ; @__pyx_k_Counting_started
	.asciz	"Counting started!"

___pyx_k_Current_Time_Stamp:            ; @__pyx_k_Current_Time_Stamp
	.asciz	"Current Time Stamp: "

___pyx_k_Error:                         ; @__pyx_k_Error
	.asciz	"Error: "

___pyx_k__4:                            ; @__pyx_k__4
	.asciz	"."

___pyx_k__6:                            ; @__pyx_k__6
	.asciz	"?"

___pyx_k_asyncio_coroutines:            ; @__pyx_k_asyncio_coroutines
	.asciz	"asyncio.coroutines"

___pyx_k_cline_in_traceback:            ; @__pyx_k_cline_in_traceback
	.asciz	"cline_in_traceback"

___pyx_k_currentTimeStamp:              ; @__pyx_k_currentTimeStamp
	.asciz	"currentTimeStamp"

___pyx_k_datetime:                      ; @__pyx_k_datetime
	.asciz	"datetime"

___pyx_k_e:                             ; @__pyx_k_e
	.asciz	"e"

___pyx_k_i:                             ; @__pyx_k_i
	.asciz	"i"

___pyx_k_import:                        ; @__pyx_k_import
	.asciz	"__import__"

___pyx_k_is_coroutine:                  ; @__pyx_k_is_coroutine
	.asciz	"_is_coroutine"

___pyx_k_main:                          ; @__pyx_k_main
	.asciz	"__main__"

___pyx_k_main_2:                        ; @__pyx_k_main_2
	.asciz	"main"

___pyx_k_main_pyx:                      ; @__pyx_k_main_pyx
	.asciz	"main.pyx"

___pyx_k_name:                          ; @__pyx_k_name
	.asciz	"__name__"

___pyx_k_now:                           ; @__pyx_k_now
	.asciz	"now"

___pyx_k_print:                         ; @__pyx_k_print
	.asciz	"print"

___pyx_k_range:                         ; @__pyx_k_range
	.asciz	"range"

___pyx_k_test:                          ; @__pyx_k_test
	.asciz	"__test__"

.zerofill __DATA,__bss,___pyx_builtin_print,8,3 ; @__pyx_builtin_print
.zerofill __DATA,__bss,___pyx_builtin_range,8,3 ; @__pyx_builtin_range
	.section	__TEXT,__cstring,cstring_literals
l_.str.73:                              ; @.str.73
	.asciz	"name '%U' is not defined"

l___func__.__Pyx_PyErr_ExceptionMatchesTuple: ; @__func__.__Pyx_PyErr_ExceptionMatchesTuple
	.asciz	"__Pyx_PyErr_ExceptionMatchesTuple"

l_.str.74:                              ; @.str.74
	.asciz	"PyTuple_Check(tuple)"

l___func__.__Pyx_IsAnySubtype2:         ; @__func__.__Pyx_IsAnySubtype2
	.asciz	"__Pyx_IsAnySubtype2"

l_.str.75:                              ; @.str.75
	.asciz	"PyTuple_Check(mro)"

l___func__.__Pyx_IsSubtype:             ; @__func__.__Pyx_IsSubtype
	.asciz	"__Pyx_IsSubtype"

l___func__.__Pyx_PyErr_GivenExceptionMatchesTuple: ; @__func__.__Pyx_PyErr_GivenExceptionMatchesTuple
	.asciz	"__Pyx_PyErr_GivenExceptionMatchesTuple"

l_.str.76:                              ; @.str.76
	.asciz	"PyExceptionClass_Check(exc_type)"

l___func__.__Pyx_ErrRestoreInState:     ; @__func__.__Pyx_ErrRestoreInState
	.asciz	"__Pyx_ErrRestoreInState"

l_.str.77:                              ; @.str.77
	.asciz	"type == NULL || (value != NULL && type == (PyObject*) Py_TYPE(value))"

l___func__.PyList_SET_ITEM:             ; @__func__.PyList_SET_ITEM
	.asciz	"PyList_SET_ITEM"

l_.str.78:                              ; @.str.78
	.asciz	"listobject.h"

l_.str.79:                              ; @.str.79
	.asciz	"PyList_Check(op)"

l_.str.80:                              ; @.str.80
	.asciz	"cannot import name %S"

l_.str.81:                              ; @.str.81
	.asciz	"%.200s() needs an argument"

.zerofill __DATA,__bss,___pyx_pf_4main_main.__pyx_frame_code,8,3 ; @__pyx_pf_4main_main.__pyx_frame_code
l_.str.82:                              ; @.str.82
	.asciz	"main.main"

l___func__.PyMethod_GET_SELF:           ; @__func__.PyMethod_GET_SELF
	.asciz	"PyMethod_GET_SELF"

l_.str.83:                              ; @.str.83
	.asciz	"classobject.h"

l_.str.84:                              ; @.str.84
	.asciz	"PyMethod_Check(meth)"

l___func__.PyMethod_GET_FUNCTION:       ; @__func__.PyMethod_GET_FUNCTION
	.asciz	"PyMethod_GET_FUNCTION"

l_.str.85:                              ; @.str.85
	.asciz	" while calling a Python object"

l_.str.86:                              ; @.str.86
	.asciz	"NULL result without error in PyObject_Call"

	.section	__TEXT,__const
_DIGITS_HEX:                            ; @DIGITS_HEX
	.asciz	"0123456789abcdef0123456789ABCDEF"

_DIGIT_PAIRS_8:                         ; @DIGIT_PAIRS_8
	.asciz	"00010203040506071011121314151617202122232425262730313233343536374041424344454647505152535455565760616263646566677071727374757677"

_DIGIT_PAIRS_10:                        ; @DIGIT_PAIRS_10
	.asciz	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"

	.section	__TEXT,__cstring,cstring_literals
l___func__.__Pyx_PyUnicode_From_int:    ; @__func__.__Pyx_PyUnicode_From_int
	.asciz	"__Pyx_PyUnicode_From_int"

l_.str.87:                              ; @.str.87
	.asciz	"0"

l_.str.88:                              ; @.str.88
	.asciz	"!last_one_off || *dpos == '0'"

l___func__.PyUnicode_IS_COMPACT:        ; @__func__.PyUnicode_IS_COMPACT
	.asciz	"PyUnicode_IS_COMPACT"

l_.str.89:                              ; @.str.89
	.asciz	"unicodeobject.h"

l_.str.90:                              ; @.str.90
	.asciz	"PyUnicode_Check(op)"

l___func__._PyUnicode_COMPACT_DATA:     ; @__func__._PyUnicode_COMPACT_DATA
	.asciz	"_PyUnicode_COMPACT_DATA"

l___func__.PyUnicode_IS_ASCII:          ; @__func__.PyUnicode_IS_ASCII
	.asciz	"PyUnicode_IS_ASCII"

l___func__._PyUnicode_NONCOMPACT_DATA:  ; @__func__._PyUnicode_NONCOMPACT_DATA
	.asciz	"_PyUnicode_NONCOMPACT_DATA"

l_.str.91:                              ; @.str.91
	.asciz	"!PyUnicode_IS_COMPACT(op)"

l_.str.92:                              ; @.str.92
	.asciz	"data != NULL"

l___func__.PyUnicode_WRITE:             ; @__func__.PyUnicode_WRITE
	.asciz	"PyUnicode_WRITE"

l_.str.93:                              ; @.str.93
	.asciz	"index >= 0"

l_.str.94:                              ; @.str.94
	.asciz	"value <= 0xffU"

l_.str.95:                              ; @.str.95
	.asciz	"value <= 0xffffU"

l_.str.96:                              ; @.str.96
	.asciz	"kind == PyUnicode_4BYTE_KIND"

l_.str.97:                              ; @.str.97
	.asciz	"value <= 0x10ffffU"

l___func__.__Pyx_PyUnicode_Equals:      ; @__func__.__Pyx_PyUnicode_Equals
	.asciz	"__Pyx_PyUnicode_Equals"

l_.str.98:                              ; @.str.98
	.asciz	"PyUnicode_Check(s1)"

l_.str.99:                              ; @.str.99
	.asciz	"PyUnicode_Check(s2)"

l___func__.PyUnicode_GET_LENGTH:        ; @__func__.PyUnicode_GET_LENGTH
	.asciz	"PyUnicode_GET_LENGTH"

l___func__.PyUnicode_READ:              ; @__func__.PyUnicode_READ
	.asciz	"PyUnicode_READ"

.zerofill __DATA,__bss,___pyx_code_cache,16,3 ; @__pyx_code_cache
l_.str.100:                             ; @.str.100
	.asciz	"%s (%s:%d)"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @__pyx_cfilenm
___pyx_cfilenm:
	.quad	l_.str.27

.subsections_via_symbols
