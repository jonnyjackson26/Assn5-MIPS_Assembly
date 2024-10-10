#Write a program that satisfies the following requirements:
#Create three variables in memory (RAM). Name these variables a, b, and c. 
#Their data type should be words, they can have any value however
#Create space for a variable named result to store the addition of these three variables
#Load a, b, and c into the register file and add them all together
#Store the result of addition into the result variable (back in RAM)
#Additionally, print out the result of the addition to the console

.data
	a: .word -5
	b: .word -4
	c: .word 3
	result: .word
	
.text
.globl main
main:
	#load a, b, and c into registers
	lw $t0, a
	lw $t1, b
	lw $t2, c
	
	#calculate
	add $t3, $t0, $t1
	add $t3, $t3, $t2
	#store
	sw $t3, result
	#print
	move $a0, $t3
	li $v0, 1
	syscall
	
	