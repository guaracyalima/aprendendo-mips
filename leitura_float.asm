.data
	msg: .asciiz "Informe um numero decimal: "
	zero: .float 0.0
.text 
	#imprime a mensagem para o usuario
	li $v0, 4
	la $a0, msg
	syscall
	
	#lendo o numero  - o valor lido estará em $f0
	# li $v0, 2 imprime um numero float
	li $v0, 6
	syscall 
	
	lwc1 $f1, zero #load word do coprocessador 1
	add.s $f12, $f1, $f0
	
	# imprimindo o numero
	li $v0, 2
	syscall
	