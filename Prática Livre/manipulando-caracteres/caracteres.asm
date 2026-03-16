.text
main:	#<----- Setando os valores ----->
	addi $2, $0, 10 
	add $8, $0, $2
	addi $2, $0, 15
	add $9, $0, $2
	#<----- Impressão ----->
	add $4, $0, $8	# Adiciona o valor 10 para o $av0
	addi $2, $0, 1	# Coloca o código para ler inteiros
	syscall		# Syscall interpreta o código e printa o inteiro
	
	addi $4, $0, ','  # Adiciona caractér especial no $av0
	addi $2, $0, 11   # O código 11 é responsável pela leitura de caractéres especiais em ascii
	syscall		  # Syscall interpreta o código e printa o caractér
	
	add $4, $0, $9    # Adiciona o valor 10 para o $av0
	addi $2, $0, 1    # Coloca o código para ler inteiros
	syscall		  # Syscall interpreta o código e printa o inteiro
	# <----- Fim do Programa ----->
	addi $2, $0, 10
	syscall