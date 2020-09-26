.data

.text
	lw $t0, 16($s0) #armazena a[16] em $t0
	add $t0, $s1, $t0 # realiza a soma
	sw $t0, 20($s0) # amarzena o resultado da soma
	
	# A[4] =  H + A[5]

