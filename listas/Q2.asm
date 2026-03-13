.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	mul $10, $8, $8
	add $4, $0, $10
	addi $2, $0, 1
	syscall