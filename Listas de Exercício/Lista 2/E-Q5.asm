# ENUNCIADO: Faça um programa que receba três notas (entre 0 e 100)
# e calcule a média ponderada dessas notas com pesos 1, 2 e 3.
# Informe a média e se o aluno foi aprovado, escreva após a média a letra A.
# Caso o aluno seja reprovado, informe, após a média, a letra R. 
# A média para aprovação é 60.
# calculo da média ponderada = ((P1*N1)+(P2*N2)+(P3*N3))/(P1,2,3)

.text
main:	# <----- Inputs ----->

	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	# <----- Pesos ----->
	
	 addi $11, $0, 1
	 addi $12, $0, 2
	 addi $13, $0, 3
	 add $14, $11, $12
	 add $15, $13, $14
	
	# <----- Calculo ----->

	mul $16, $8, $11
	mul $17, $9, $12
	mul $18, $10, $13
	
	add $19, $16, $17
	add $20, $19, $18
	
	div $20, $15
	mflo $21
	
	# <----- Lógica ----->

	addi $22, $0, 60
	slt $23, $21, $22
	bne $23, $0, reprovado
	beq $23, $0, aprovado
	
reprovado:
	addi $4, $0, 'R'
	addi $2, $0, 11
	syscall
	j fim
	
aprovado:
	addi $4, $0, 'A'
	addi $2, $0, 11
	syscall
	j fim 
	
fim:	# <----- Finalizando programa ----->
	addi $2, $0, 10
	syscall