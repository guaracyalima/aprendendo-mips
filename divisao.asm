.text
	li $t0, 32
	li $t1, 5
	
	div $t0, $t1
	
	#parte inteira da divisao
	mflo $s0
	
	#resto da divisao
	mfhi $s1