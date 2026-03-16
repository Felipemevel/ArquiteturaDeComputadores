# ENUNCIADO: Faça um programa que leia três números inteiros, representando a 
# duração em horas, minutos e segundos de um experimento científico e informe essa duração em segundos.

.text
main:	#<----- Primeiros Passos ----->
	addi $2, $0, 5		# Horas
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5		# Minutos
	syscall
	add $9, $0, $2
	
	addi $2, $0, 5		# Segundos
	syscall
	add $10, $0, $2
	
	#<----- Ḿultiplicação de valores ----->
	
	addi, $11, $0, 60	# MinsXSegs
	addi $12, $0, 3600	#HorasXSegs
	
	mul $8, $12, $8		# Multiplico a hora por 3600
	mul $9, $11, $9		# Multiplico o minuto por 60
	
	#<----- Soma ----->
	
	add $4, $0, $8
	add $4, $4, $9
	add $4, $4, $10
	
	#<----- Print ----->
	
	addi $2, $0, 1
	syscall
	
	#<----- Finalza o programa ----->
	
	addi $2, $0, 10
	syscall
	
# EXPLICAÇÃO: Basta preparar cada input separadamente e aplicar os valores de conversão
# de minuto e hora para segundos. Então eu multiplico o valor da hora e dos minutos 
# pelos valores de conversão e faço a somatória desses valores com o valor de segundos. 