.data
	message: .asciiz "Qual seu nome cabra: "
	saudacao: .asciiz "Ola "
	nome: .space 25 #define o tamanho maximo da string	
.text
	#imprime a perunta
	li $v0, 4 #leitor de string
	la $a0, message #carrega o endereço da pergunta para o o registrador $a0
	syscall 
	
	#Leitura do nome do caboco
	li $v0, 8 #recebe uma string como argumento
	la $a0, nome #carrega o nome para o registrador $a0
	la $a1, 25 # informa ao registrador o tamanho maximo que queremos ler
	syscall
	
	#imprime a saudação
	li $v0, 4
	la $a0, saudacao
	syscall	
	#imprime o nome do cabra
	li $v0, 4
	la $a0, nome
	syscall