.text 
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $9, $0, 1
	
	jal desenharLinha
fim:
	addi $2, $0, 10
	syscall
	
desenharLinha:
	addi $2, $0, 11
	addi $4, $0, '='
	syscall

	sub $8, $8, $9
	bne $8, $0, desenharLinha
	
	jr $31