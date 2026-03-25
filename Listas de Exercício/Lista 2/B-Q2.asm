# ENUNCIADO: Faça um programa para ler um número inteiro. 
# Se o número for positivo, imprima o dobro do número, 
# se for negativo, imprima o quadrado do número.

.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	add $10, $0, 2
	
	srl $9, $8, 31
	
	beq $9, $0, posi
	
nega:
	
	mul $10, $8, $8
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	j fim
	
posi:
	mul $10, $8, $10
	add $4, $0, $10
	addi $2, $0, 1
	syscall

fim:	
	addi $2, $0, 10
	syscall
	
# EXPLICAÇÃO: Pega o bit de sinal do input e compara com o registrador
# 0, ai é só fazer um if 
