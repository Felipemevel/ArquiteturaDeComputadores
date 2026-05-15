# ENUNCIADO: Faça um programa que leia um número inteiro entre 0 e 999 e imprima a soma dos algarismos desse número. Ex.: 358 gera uma saída de 16, pois 3+5+8 = 16

.text
main:	#<----- Input inicial ----->

	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 10	# Necessário definir onde o valor do divisor estará, e qual será o valor
	
	#<----- Divisões ----->
	
	div $8, $9	# Divide original o valor por 10 
	mflo $10	# Move o resultado para o registrador $t2
	mfhi $11	# Move o resto (o algarismo separado) para o registrador $t3
	
	div $10, $9	# Divide o valor que passou pela primeira divisão por 10
	mflo $12	# Move o valor para o registrador $t4
	mfhi $13	# Move o resto (o algarismo separado) para o registrador $t5
	
	add $4, $11, $12	# efetuamos as somas 
	add $4, $4, $13		# Pegamos o valor de $a0 e somamos com o valor de $t5
	
	#<----- Print ----->
	
	addi $2, $0, 1
	syscall
	
	
# EXPLICAÇÃO: Basicamente o que a questão quer que façamos são divisões sucessivas. 
# Como o valor máximo foi estipulado em 999, precisamos apenas de duas divisões sucessivas 
# para conseguir extrair os 3 algarismos de um numero. Pegamos o número inteiro, fazemos a
# divisão por 10, guardamos o resto, fazemos a divisão do quociente e assim temos os 3 números necessários. 
# Daí é só pegar o resultado da soma dos 3 restos e printar.