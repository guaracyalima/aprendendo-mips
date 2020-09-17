.text
	li $t0, 10
	addi $t1, $zero, 12
	
	# o resultado da multiplicação ficará armazenado em $s0
	mul $s0, $t0, $t1
	
	#imprimindo o resultado
	li $v0, 1
	
	#move o valor do registrador $a0 para o registrador $s0
	move $a0, $s0 
	syscall