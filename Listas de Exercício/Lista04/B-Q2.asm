.text
main:
	addi $2, $0, 5
	syscall
	add $4, $0, $2
	
	jal verificacao
	
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall	
	
verificacao:
	beq $4, $0, zero
	slt $8, $4, $0
	bne $8, $0, negativo
	beq $8, $0, positivo
zero:
	add $4, $0, $0
	jr $31
positivo: 
	addi $4, $0, 1
	jr $31
negativo:
	addi $4, $0, -1
	jr $31	
		