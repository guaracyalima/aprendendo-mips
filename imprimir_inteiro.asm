.data
	int: .word 56
	
.text
	li $v0, 1
	lw $a0, int #load word para imprimir word
	syscall