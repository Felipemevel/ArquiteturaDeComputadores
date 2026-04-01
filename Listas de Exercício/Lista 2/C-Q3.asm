# ENUNCIADO: Escreva um programa para ler dois números inteiros e mostrar na tela o maior deles,
# bem como a diferença entre eles (a diferença é sempre um valor positivo)

.text
main:
	addi $v0, $zero, 5
	syscall
	add $a1, $zero, $v0
	
	addi $v0, $zero, 5
	syscall
	add $a2, $zero, $v0
	
	sub $t2, $a1, $a2
	slt $t0, $a1, $a2
	bne $t0, $zero, menor2
	
menor1:
	add $a0, $zero, $a1
	addi $v0, $zero, 1
	syscall
	
	addi $a0, $zero, '\n'
	addi $v0, $zero, 11
	syscall
	
	slt $t3, $zero, $t2
	beq $t3, $zero, negativo
	
	add $a0, $zero, $t2
	addi $v0, $zero, 1
	syscall
	
	j fim
	
menor2:
	add $a0, $zero, $a2
	addi $v0, $zero, 1
	syscall
	
	addi $a0, $zero, '\n'
	addi $v0, $zero, 11
	syscall
	
	slt $t3, $zero, $t2
	beq $t3, $zero, negativo
	
	add $a0, $zero, $t2
	addi $v0, $zero, 1
	syscall
	
	j fim
	
negativo:
	addi $t4, $zero, -1
	mul $t5, $t2, $t4
	
	add $a0, $zero, $t5
	addi $v0, $zero, 1
	syscall
	
fim:
	addi $v0, $zero, 10
	syscall
	
	
	

	