.text 
main:
	addi $2, $0, 5
	syscall
	add $4, $0, $2
	
	jal dobroNum
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall	
	
dobroNum:
	addi $8, $0, 2
	mul $4, $4, $8
	jr $31