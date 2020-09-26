# codigo assembly que executa a operacao E = A + B + C - D

.data 

.text
	# primeiro somar a + b
	add $t0, $s1, $s2
	# somar o resultado com c
	add $t0, $t0, $s3
	# subtrair d
	sub $t0, $t0, $s4
	#somar E
	add $t0, $t0, $s5
