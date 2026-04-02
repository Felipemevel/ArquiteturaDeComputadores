# ENUNCIADO: Faça um programa que leia dois números e 
# escreva a relação de grandeza entre eles.
# Ex. 345 e 23 gera a saída 345>23. 
# Ex.: 24 e 38 gera a saída 24<38. Ex.: 12 e 12 gera a saída 12=12

.text
main:	# <----- Inputs ----->
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	# <----- Comparações ----->
	
	beq $8, $9, iguais
	slt $10, $8, $9
	bne $10, $0, menor
	beq $10, $0, maior
	
iguais: 

	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	j fim

menor:
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '<'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	j fim
	

maior:
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '>'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	j fim
	

fim:	# <----- Finalizando programa ----->
	addi $2, $0, 10
	syscall
	
	