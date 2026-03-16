# ENUNCIADO: Faça um programa que leia um número entre 0 e 9999 e imprima cada algarismo em uma linha diferente.

.text
main:	#<----- Primeiros passos ----->
	addi $8, $0, 10
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	#<----- Divisões sucessivas ----->
	
	div $9, $8
	mflo $10	# Resultado
	mfhi $11	# Resto
	
	div $10, $8
	mflo $12	# Resultado
	mfhi $13	# Resto
	
	div $12, $8
	mflo $15	# Resultado
	mfhi $14	# Resto
	
	#<----- Impressão ----->

	add $4, $0, $11		# Soma o resultado do algorismo com 0
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'	# \n é o caractér especial usado para pular linha
	addi $2, $0, 11		# Chamamos o syscall utilizando o código 11 para 
	syscall			# imprimirmos caratér especial
	
	add $4, $0, $13		# Soma o resultado do algorismo com 0
	addi $2, $0, 1
	syscall 
	
	addi $4, $0, '\n'	# \n é o caractér especial usado para pular linha
	addi $2, $0, 11		# Chamamos o syscall utilizando o código 11 para 
	syscall			# imprimirmos caratér especial
	
	add $4, $0, $14		# Soma o resultado do algorismo com 0
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'	# \n é o caractér especial usado para pular linha
	addi $2, $0, 11		# Chamamos o syscall utilizando o código 11 para 
	syscall			# imprimirmos caratér especial
	
	add $4, $0 $15		# Soma o resultado do algorismo com 0
	addi $2, $0, 1
	syscall
	
	#<----- Finaliza o programa ----->
	
	addi $2, $0, 10
	syscall
	
# EXPLICAÇÃO:  Mais uma vez utilizamos as divisões sucessivas, porém 
# com uma única mudança, ao invés de 3 algarismos, são 4. Feito isso, 
# Nós imprimos cada um de uma vez, utilizando o caractér especial 
# \n para quebras as linhas. Imprimimos os números de cabeça
# para baixo, conforme apresentado no exemplo da questão.