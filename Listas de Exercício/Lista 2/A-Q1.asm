# ENUNCIADO: Faça um programa para ler dois números e informe qual deles é o maior.

.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	slt $10, $8, $9		# Verifica se o valor do registrador $8 é 0 ou 1
	bne $10, $0, menor	# Compara o valor do $10 com o registrador 0
	
maior:

	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '>'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	j fim

menor:

	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '<'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall

fim:

	addi $2, $0, 10
	syscall
	
# EXPLICAÇÃO: Basta verificar se um número é maior que o outro
# e logo em seguida, compara se o valor gerado pelo slt (1 = menor; 0 = maior) é
# diferente do registrador 0. Caso seja diferente, ( 1 ) então imprime o sinal de menor.
