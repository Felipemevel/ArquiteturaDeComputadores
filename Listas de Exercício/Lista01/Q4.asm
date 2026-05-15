# ENUNCIADO: Faça um programa para ler duas notas de um aluno do IFRN em um curso semestral. Esse programa deverá apresentar a média desse aluno, após as duas provas.

.text
main:	#<----- Primeira nota ----->

	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	#<----- Segunda nota ----->
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	#<----- Cálculo da média ----->
	
	addi $11, $0, 2	# Precisamos armazenar a quantidade de provas (2) em algum registrador ($t3 nesse caso) para fazer a divisão
	add $10, $9, $8	# Fazemos a soma dos dois valores e jogamos no registrador $t2
	div $10, $11	# Dividimos o valor de $t2 pelo valor armazenado na $t3
	mflo $4		# Movemos o quociente para o registrador de impressão $a0
	
	#<----- Print ----->
	
	addi $2, $0, 1
	syscall
	