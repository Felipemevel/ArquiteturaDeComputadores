.data
	linha: .asciiz "<============================================================================>"
	frase1: .asciiz "Vamos fazer a multiplicação entre dois valores!"
	frase2: .asciiz "Ditite um valor: "
	frase3: .asciiz "Digite o segundo valor: "
	frase4: .asciiz "Aqui está o resultado da multiplicação entre esses dois números: "

.text
main:	#<----- Carregando a primeira String ----->
	addi $2, $0, 4	# Seta o $v0 com o código de String
	la $4, linha	# Carrega a String
	syscall		# Pega a String e lê ela pelo $v0 
	
	addi $2, $0, 11		# Seta o $v0 com o código 11 para interpretar caractér
	addi $4, $0, '\n'	# $a0 recebe o valor para pular de linha
	syscall			# Syscall lê o $v0 e vai para o $a0 para lançar o caractér
	
	#<----- Iniciando a interação ----->
	addi $2, $0, 4	# Seta o $v0 com o código de String
	la $4, frase1	# Carrega a String
	syscall		# Pega a String e lê ela pelo $v0 
	
	addi $2, $0, 11		# Seta o $v0 com o código 11 para interpretar caractér
	addi $4, $0, '\n'	# $a0 recebe o valor para pular de linha
	syscall			# Syscall lê o $v0 e vai para o $a0 para lançar o caractér
	
	addi $2, $0, 4	# Seta o $v0 com o código de String
	la $4, frase2	# Carrega a String
	syscall		# Pega a String e lê ela pelo $v0 
	
	addi $2, $0, 5	# Seta o $v0 como código para ler um inteiro
	syscall		# Lê o $v0, interpreta o código e abre o input
	add $8, $0, $2	# Joga o valor do input que estava no $v0 para o $t0
	
	addi $2, $0, 11		# Seta o $v0 com o código 11 para interpretar caractér
	addi $4, $0, '\n'	# $a0 recebe o valor para pular de linha
	syscall			# Syscall lê o $v0 e vai para o $a0 para lançar o caractér
	
	addi $2, $0, 4	# Seta o $v0 com o código de String
	la $4, frase3	# Carrega a String
	syscall		# Pega a String e lê ela pelo $v0 
	
	addi $2, $0, 5	# Seta o $v0 como código para ler um inteiro
	syscall		# Lê o $v0, interpreta o código e abre o input
	add $9, $0, $2	# Joga o valor do input que estava no $v0 para o $t1
	
	addi $2, $0, 11		# Seta o $v0 com o código 11 para interpretar caractér
	addi $4, $0, '\n'	# $a0 recebe o valor para pular de linha
	syscall			# Syscall lê o $v0 e vai para o $a0 para lançar o caractér
	
	#<----- Multiplicação ----->
	mul $10, $8, $9	# Faz a nmultiplicação entre os valores de $t0 e $t1, depois joga o valor no $t2
	
	addi $2, $0, 4	# Seta o $v0 com o código de String
	la $4, frase4	# Carrega a String
	syscall		# Pega a String e lê ela pelo $v0 
	
	addi $2, $0, 1	# Seta o $av0 com o código para ler números inteiros
	add $4, $10, $0	# Adiciona o resultado da multiplicação no $a0
	syscall		# Olha para o $av0, entende que deve printar um inteiro, puxa do $a0 e printa o valor que está nele
	
	addi $2, $0, 11		# Seta o $v0 com o código 11 para interpretar caractér
	addi $4, $0, '\n'	# $a0 recebe o valor para pular de linha
	syscall			# Syscall lê o $v0 e vai para o $a0 para lançar o caractér
	
	#<----- Encerramento do programa ----->
	addi $2, $0, 4	# Seta o $v0 com o código de String
	la $4, linha	# Carrega a String
	syscall		# Pega a String e lê ela pelo $v0 
	
	addi $2, $0, 11		# Seta o $v0 com o código 11 para interpretar caractér
	addi $4, $0, '\n'	# $a0 recebe o valor para pular de linha
	syscall			# Syscall lê o $v0 e vai para o $a0 para lançar o caractér
	
	addi $2, $0, 11	# Seta o $av0 com o código para encerrar o programa
    	syscall		# Olha para o $av0 e entende que deve encerrar o programa