# ENUNCIADO: Faça um programa para ler um número inteiro e imprimir o quadrado desse número.

.text
main:
	addi $2, $0, 5	# Código para ler inteiros no $v0
	syscall
	add $8, $0, $2	# Valor do input é jogado para o $t0
	
	mul $10, $8, $8	# Apenas multiplicamos o registrador por ele mesmo e jogamos no $t2
	add $4, $0, $10	# Colocamos o valor de $t2 no $a0, pois é de lá que o Syscall pega o valor para printar
	addi $2, $0, 1
	syscall
