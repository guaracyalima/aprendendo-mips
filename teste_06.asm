.text
  li $t0, 2
	li $t1, 2
  li $t2, 4
  li $t3, 2
  add $s0, $t0, $t1 #a+b
  add $s1, $s0, $t2 # (a+b) + c

  sub $s2, $s1, $t3 #(a+b+c)-d
  
  li $v0, 1
  syscall
