# ENUNCIADO: Faça um programa que leia a idade (em anos) e o 
# tempo de serviço de um trabalhador. Informe se ele pode se aposentar 
# (imprima S se sim, e N se não). As condições para aposentadoria são: 
# 1) ter, ao menos, 65 anos; OU 
# 2) ter trabalhado 40 anos; OU 
# 3) ter pelo menos 60 anos e mais de 35 anos trabalhados.

.text
main:	# <----- Inputs ----->

	addi $2, $0, 5
	syscall 
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	# <----- Setagem de valores ---->
	
	addi $10, $0, 65	# 65 anos
	addi $11, $0, 40	# 40 anos trabalhados
	addi $12, $0, 35	# 35 anos trabalhados
	addi $13, $0, 60	# 60 anos 
	
	# <----- Lógica ---->
	
	slt $14, $8, $10
	beq $14, $0, porIdade
	
	slt $14, $9, $11
	beq $14, $0, porAnosTrabalhados
	
	slt $14, $8, $13
	beq $14, $0, anosEContribuicao
	
	
negativa:
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall 
	j fim
	
porIdade:
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	j fim
	
porAnosTrabalhados:
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	j fim
	
anosEContribuicao:
	slt $14, $9, $12
	bne $14, $0, negativa
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	

	
fim:	# <----- Finalizando programa ----->
	addi $2, $0, 10
	syscall
	