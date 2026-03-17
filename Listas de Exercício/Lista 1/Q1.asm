# ENUNCIADO: Faça um programa para ler um número inteiro e imprimir o dobro desse número.

.text
main:	
	addi $2, $0, 5	# Código para ler inteiros no $v0
	syscall
	add $8, $0, $2	# Valor do input é jogado para o $t0
	
	addi $9, $0, 2	# O registrador $t1 recebe o valor 2, usaremos para dobrar o valor de $t0
	
	mul $10, $8, $9	# Multiplicação jogando os valores dos registradores no registrador $t2
	add $4, $0, $10	# Colocamos o valor de $t2 no $a0, pois é de lá que o Syscall pega o valor para printar
	
	addi $2, $0, 1	# Código para printar
	syscall
