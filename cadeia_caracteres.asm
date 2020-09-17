# Lendo uma cadeia de caracteres
.data
	caractere: .byte 'J'
.text
	li $v0, 4 #imprimir char ou string
	la $a0, caractere
	syscall
	
	#finalizando o programa na unha seca
	li $v0, 10
	syscall