.data
Title: .asciiz "Welcome to Tic-Tac-Toe in Assembly!!!\n\n The positions are as follows:\n\n"
Positions: .asciiz "0|2|4\n6|8|10\n12|14|16\n\n"
Player1Text: .asciiz "Please Enter a Position to put a X!!!\n\n"
Player2Text: .asciiz "Please Enter a Position to put a O!!!\n\n"
Board: .asciiz " | | \n | | \n | | \n"
InputNumber: .byte 1

.globl main
.text
main:

	li $t0, 1 # Current player- Inital player is 1

	li $t1, 9 # Number of turns remaining

	li $t2, 9 # Board Test Inrementer

	la $t3, Board #charecter adddress

	li $v0, 4 # li = load immediate for syscall 4 – print string

	la $a0, Title # la = load address

	syscall

	li $v0, 4 # li = load immediate for syscall 4 – print string

	la $a0, Positions # la = load address

	syscall

Play:

	beq $t1, 0, Exit

	beq $t0, 1, Player1

	j Player2

Player1:

	li $v0, 4

	la $a0, Player1Text

	syscall

	li $v0, 5 # Read Integer

	syscall

	move $s0, $v0 # Put input into $s0

	add $t3, $t3, $s0

	lb $t4, 0($t3)

	addi $t4, $t4, 56

	sb $t4, 0($t3)

	addi $t1, $t1, -1

	li $t0, 2

	j OutputBoard

Player2:

	li $v0, 4

	la $a0, Player2Text

	syscall

	li $v0, 5 # Read Integer

	syscall

	move $s0, $v0 # Put input into $s0

	add $t3, $t3, $s0

	lb $t4, 0($t3)

	addi $t4, $t4, 47

	sb $t4, 0($t3)

	addi $t1, $t1, -1

	li $t0, 1

	j OutputBoard

OutputBoard:

	li $v0, 4

	la $a0, Positions

	syscall

	la $a0, Board

	syscall

	li $s0, 0

	la $t3, Board

	j Play

Exit:

	li $v0, 10
	syscall