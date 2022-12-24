	AREA asm_unc, CODE, READONLY
	EXTERN  uwTick
asm_delay	PROC
	EXPORT asm_delay
	MOV		r4, r0 		; input wait ms
	LDR		r5, =uwTick
	LDR		r6, [r5]	; get start tick
loop
	LDR		r7, [r5]	; get current tick
	SUBS	r7, r7, r6		; r7 = current - start
	CMP		r7, r4		; if r7 < wait
	BLT		loop
	BX		LR
	ENDP

	END