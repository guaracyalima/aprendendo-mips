
.data   
  $LS: .asciiz " a soma é: "    
  $LM: .asciiz " a media é: "    
  vetor: .word 0, 1, 2, 3, 4
 
.text
soma:    
   # configurações do procedimento    
    subu $sp, $sp, 32   # reserva o espaço do frame    
    sw $ra, 20($sp)     # salva o endereço de retorno    
    sw $fp, 16($sp)     # salva o frame pointer    
    addiu $fp, $sp, 28  # prepara o frame pointer    
    sw $a0, 0($fp)      # salva o argumento    
    la $s4, vetor # indice do vetor    
    li $s3, 5 # número total de elementos no vetor   
    li $s1, 0 # soma    
 
   #FOR  
     move $s0, $zero     # i = 0 ($s0 é i)  
     LOOP:      
      # configurações do FOR      
      slt $t0, $s0, $s3      # t0 = 0 se $s0 >= $s3 ( i >= n), t0 = 1 caso contrário
      beq $t0, $zero, EXIT   # se $s0 >= $s3 ( i >= n) vá para EXIT      
  
      # configuração do ARRAY      
       sll $t1, $s0, 2      # $t1 = 4 * i (4 * $s0)      
       add $t2, $s4, $t1    # t2 = ( vetor + ( 4 * i) )      
       lw $t3, 0($t2)       # $t3 = vetor[i]      
       add $s1, $s1, $t3    # somando os elementos (soma = soma + vetor[i]    
 
      # configurações do FOR      
       addi $s0, $s0, 1       # $s0 = $s0 + 1 (ou i = i + 1) é o contador      
      j LOOP                 # volta para o LOOP  
      EXIT:    
 
   # configurações do procedimento    
    add $v0, $s1, $zero # retorna para quem chamou.    
    jr $ra
 
 
fim:    
  li $v0, 10    
  syscall