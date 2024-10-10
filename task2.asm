#Ask the user for three numbers with the prompt shown in the example outputs
#Calculate a - b + c
#Print out a - b + c = ___, where the values are replaced with the actual numbers
#Make sure the program exits without falling off the bottom (use a sys call for this)

.data
  enterA: .asciiz "Enter a: "
  enterB: .asciiz "Enter b: "
  enterC: .asciiz "Enter b: "
  minus: .asciiz " - "
  plus: .asciiz " + "
  equals: .asciiz " = "
.text

.globl main
main:

#print "Enter a: "
li $v0, 4
la $a0, enterA
syscall
#get A, store it in $t0
li $v0, 5
syscall
move $t0, $v0

#print "Enter b: "
li $v0, 4
la $a0, enterB
syscall
#get B, store it in $t1
li $v0, 5
syscall
move $t1, $v0

#print "Enter a: "
li $v0, 4
la $a0, enterC
syscall
#get C, store it in $t2
li $v0, 5
syscall
move $t2, $v0


#calculate a-b+c, store result in $t4
sub $t3, $t0, $t1
add $t4, $t3, $t2

#print a+b-c=$t4
#print a
li $v0, 1
move $a0, $t0
syscall
#print ' - '
li $v0, 4
la $a0, minus
syscall 
#print b
li $v0, 1
move $a0, $t1
syscall
#print ' + '
li $v0, 4
la $a0, plus
syscall 
#print c
li $v0, 1
move $a0, $t2
syscall
#print ' = '
li $v0, 4
la $a0, equals
syscall 
#print $t4
li $v0, 1
move $a0, $t4
syscall

#exit program
li $v0, 10
syscall


