# ENUNCIADO: Faça um programa para ler dois números inteiros e imprimir a multiplicação desses dois números.

.text
main:
	addi $2, $0, 5
	syscall 
	add $8, $0, $2	# Valor do input é jogado para o $t0
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2	# Valor do input é jogado para o $t1
	
	mul $4, $8, $9	# Multiplicação é feita entre os dois registradores e lançado no registrador $a0, onde o syscall buscará o valor para printar
	addi $2, $0, 1
	syscall