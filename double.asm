# em double só se pode usar os registradores pares
.data 
	msg: .asciiz "Forneça um numero decimal: "
	zero: .double 0.0
.text
	#imprime a mensagem para o usuario
	li $v0, 4
	la $a0, msg
	syscall
	
	#lendo o numero
	li $v0, 7 # a leitura de dados double ficam no registrador $v07
	syscall 
	
	# faz a copia de $f0 para $f12
	ldc1 $f2, zero
	add.d $f12, $f2, $f0
	
	#imprime 
	li $v0, 3
	syscall