# ENUNCIADO: Faça um programa que leia um número inteiro, representando a duração em segundos
# de um experimento científico e imprima o tempo decorrido nesse experimento no
# formato h:m:s. Exemplo: 3755 gera uma saída 1:2:35

.text
main:	#<----- Primeiros passos ---->
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	#<---- Divisões ---->
	addi $9, $0, 3600	#HorasXSegs
	addi $10, $0, 60	#MinsXSegs
	
	div $8, $9
	mflo $11		# Resultado
	mfhi $12		# Resto
	
	div $12, $10
	mflo $13		# Resultado
	mfhi $14		# Resto
	
	#<----- Formatação ----->
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	
	#<----- Finaliza o programa ----->
	
	addi $2, $0, 10
	syscall
	
# EXPLICAÇÃO: Neste caso fazemos o contrário da questão anterior. Ao invés de multiplicar, nós vamos
# quebrando o valor. Primeiro pegamos o valor total e dividimos pela conversão para hora,
# depois pegamos o resto e dividimos pela conversão de minuto. Feito isso, basta apenas
# pegar o resultado da primeira, com o resultado da segunda e o resto da segunda (os segundos) e
# formatamos para o padrão h/m/s