.data

.text
	sub $2, $2, $2
	addi $2, $2, 1
	slt $3, $0, $2
	
	# supondo que isso aqui sejam inteiros
	
	li $v0, 1
	#lw $a0, $3
	
	syscall