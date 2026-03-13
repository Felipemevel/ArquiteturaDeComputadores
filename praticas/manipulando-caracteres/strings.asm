.data
	linha: .asciiz "<============================================================================>"
	frase1: .asciiz "Vamos fazer a multiplicação entre dois valores!"
	frase2: .asciiz "Ditite um valor: "
	frase3: .asciiz "Digite o segundo valor: "
	frase4: .asciiz "Aqui está o resultado da multiplicação entre esses dois números: "

.text
main:	#<----- Carregando a primeira String ----->
	addi $2, $0, 4
	la $4, linha
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	#<----- Iniciando a interação ----->
	addi $2, $0, 4
	la $4, frase1
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	addi $2, $0, 4
	la $4, frase2
	syscall
	
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	addi $2, $0, 4
	la $4, frase3
	syscall
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	#<----- Multiplicação ----->
	mul $10, $8, $9
	
	addi $2, $0, 4
	la $4, frase4
	syscall
	
	addi $2, $0, 1
	add $4, $10, $0
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	#<----- Encerramento do programa ----->
	addi $2, $0, 4
	la $4, linha
	syscall
	
	addi $2, $0, 11
	addi $4, $0, '\n'
	syscall
	
	addi $2, $0, 11
    	syscall