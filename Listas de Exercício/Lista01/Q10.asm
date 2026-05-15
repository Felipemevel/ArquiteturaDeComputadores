# ENUNCIADO: Faça um programa que leia um caractere minúsculo e imprima o seu equivalente maiúsculo.

.text
main:	#<----- Primeiros passos ----->
	addi $2, $0, 12		# Aplico o código para ler caractér especial
	syscall
	add $9, $0, $2		# Armazeno o valor do ascii na registrador $t1
	addi $8 $0, 32		# O valor de 32 foi armazenado pois é
				# a diferença entre os valores de ascii
				# dos minúsculos para maiúsculo. 
				# a = 97 -> 97-32=65 -> 65 = A
	#<----- Transformação ----->
	sub $10, $9, $8		
	
	addi $2, $0, 11		# Apenas usado para o caractér aparecer
	addi $4, $11, '\n'	# embaixo do input
	syscall
	
	add $4, $0, $10
	addi $2, $0, 11		# Imprime o caractér em maiúsculo
	syscall

	#<----- Finaliza o programa ----->
	addi $2, $0, 10
	syscall

# EXPLICAÇÃO: Cada caractér usado na tabela ASCII possui um valor
# e para encontrar o valor maiúsculo de uma letra maiúscula
# devemos subtrair o código por 32 e aí printar na tela
