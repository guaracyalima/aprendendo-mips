# resultado fica armazenado em $t0
.data
  array: .word 1, 2, 3, 4, 5

.text
  li $4, 0 # define o zerésimo elemento do array
  li $6, 5 # define o length o array

    while:
      beq $t0, $6, exit # se ao entrar no loop for maior que o length sai do laço

      lw $t1, array($4)

      addi $t0, $t0, $t1 # soma a posição com a anterior

      li $v0, 1

      move $a0, $t0
      syscall

    j while

  exit:
    li $v0, 10 # encerra o programa
    syscall
