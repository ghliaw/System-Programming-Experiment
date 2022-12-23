	AREA asm_unc, CODE, READONLY
asm_sum	PROC
	EXPORT asm_sum
	MOVS	r1, #1
	MOVS	r2, #0
	CMP		r1, r0
loop
	BGT		exit
	ADDS	r2, r2, r1
	ADDS	r1, r1, #1
	B		loop
exit
	BX		LR
	ENDP

	AREA GV, DATA, READWRITE
	EXPORT x
	EXPORT n
x	DCD	0
n	DCD 10
	
	END