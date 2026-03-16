# ENUNCIADO: Faça um programa que leia um número inteiro entre 0 e 999 e imprima esse número com 3 algarismos. Ex.: 23 gera uma saída 023. 8 gera uma saída 008.

.text
main:
	#<---- Primeiros passos ----->
	addi $8, $0, 10 # Setamos o 10 como o valor do divisor 
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	#<----- Divisões ----->
	div $9, $8
	mflo $10	# Resultado ( o valor que vamos dividir novamente por 10 ) 
	mfhi $11	# Resto ( o que usaremos )
	
	div $10, $8
	mflo $13	# Resultado 
	mfhi $12	# Resto 
	
	#<----- Aplicação dos zeros a esquerda ----->
	
	add $4, $0, $13	# Somamos o resultado da segunda divisão com 0
	addi $2, $0, 1
	syscall		# Caso o valor do resultado for 0, então printará 0
	
	add $4, $0, $12	# Somamos o resto do resto da segunda divisão com 0
	addi $2, $0, 1
	syscall
	
	add $4, $0, $11	# Somamos o resto da primeira divisão com 0
	addi $2, $0, 1
	syscall
	
	#<----- Finaliza o programa ----->
	addi $2, $0, 10
	syscall

# EXPLICAÇÃO: Como na questão anterior, precisamos apenas fazer duas divisões sucetivas para obter
# o valor de cada algorismo separado. A partir daí, nós vamos somar esses resultados com o 
# registrador $0. Então se o valor que resultou da divisão for 0, faremos 0+0 e printar o resultado
# que obviamente é 0. Caso não seja, o programa printa o valor X e mantém na mesma linha 
# para printar o resultado seguinte, até finalizar o programa.
	