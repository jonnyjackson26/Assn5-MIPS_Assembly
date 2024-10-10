.data
  a: .word 5
  b: .word 10
  c: .word 15
  d: .word 20
  sum: .space 4
  average: .space 4
  
.text
.globl main
main:
  lw $t0, a
  lw $t1, b
  lw $t2, c
  lw $t3, d
  
  #calulate sum (and store in $t4)
  add $t4, $t0, $t1
  add $t4, $t4, $t2
  add $t4, $t4, $t3

  #caluclate avergae (and store in $t5)
  div $t5, $t4, 4
  
  #store in ram
  sw $t4, sum
  sw $t5, average
  
  
  