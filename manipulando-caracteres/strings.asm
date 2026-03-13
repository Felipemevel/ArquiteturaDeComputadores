.data
	linha: .asciiz "<============================================================================>"
	frase1: .asciiz "Vamos fazer a multiplicação entre dois valores!"
	frase2: .asciiz "Ditite um valor: "
	frase3: .asciiz "Digite o segundo valor: "
	frase4: .asciiz "Aqui está o resultado da multiplicação entre esses dois números: "

.text
main:	#<----- Carregando a primeira String ----->
	li $2, 4
	la $4, linha
	syscall
	
	li $2, 11
	li $4, '\n'
	syscall
	
	#<----- Iniciando a interação ----->
	li $2, 4
	la $4, frase1
	syscall
	
	li $2, 11
	li $4, '\n'
	syscall
	
	li $2, 4
	la $4, frase2
	syscall
	
	li $2, 5
	syscall
	add $8, $0, $2
	
	li $2, 11
	li $4, '\n'
	syscall
	
	li $2, 4
	la $4, frase3
	syscall
	
	li $2, 5
	syscall
	add $9, $0, $2
	
	li $2, 11
	li $4, '\n'
	syscall
	
	#<----- Multiplicação ----->
	mul $10, $8, $9
	
	li $2, 4
	la $4, frase4
	syscall
	
	li $2, 1
	add $4, $10, $0
	syscall
	
	li $2, 11
	li $4, '\n'
	syscall
	
	#<----- Encerramento do programa ----->
	li $2, 4
	la $4, linha
	syscall
	
	li $2, 11
	li $4, '\n'
	syscall
	
	li $2, 10
    	syscall