.data
	saudacao: .asciiz "Informe sua idade: "
	saida: .asciiz "Sua idade �: "
.text
	li $v0, 4 #impimir uma string

	#move o conteudo de sauda��o da memoria principal para o registrador $a0
	la $a0, saudacao 
		
	syscall
	
	#leitura do inteiro
	li $v0, 5
	syscall #ao usuario digitar enter o valor digitado ser� atribuido ao registrador $v0
	

	# para n�o perder o valor que est� em v0, move-se o seu conteudo para $t0	
	move $t0, $v0
	
	li $v0, 4 
	la $a0, saida 
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	