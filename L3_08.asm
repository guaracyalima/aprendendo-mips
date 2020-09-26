.data

.text
	add $t0, $t0, $t1 # a = a +b
	addi $t0, $t0, -1
	
	li $v0, 1
	syscall
	
