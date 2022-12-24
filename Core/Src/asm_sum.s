	AREA asm_unc, CODE, READONLY
asm_sum	PROC
	EXPORT asm_sum
	MOV		r4, r0
	MOVS	r5, #1
	MOVS	r6, #0
loop
	CMP		r5, r4
	BGT		exit
	ADDS	r6, r6, r5
	ADDS	r5, r5, #1
	B		loop
exit
	MOV		r0, r6
	BX		LR
	ENDP

	AREA GV, DATA, READWRITE
	EXPORT x
	EXPORT n
x	DCD	0
n	DCD 10
	
	END