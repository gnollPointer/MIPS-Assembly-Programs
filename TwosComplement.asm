# Chapter 13, Program 5
# Michael A. Dougherty II
#
# This program calculates the two's complement of a number. 
# 
# Registers:
# $8 --- Holds an integer
# $10 --- temporary storage
# $11 --- Holds final result in two's complement form

	.text
	.globl main
	
main:
	ori $8, $0, -1		# $8 gets X
	sll $10, $8, 4		# 16x
	subu $10, $10, $8	# 15x
	subu $10, $10, $8	# 14x
	subu $10, $10, $8	# 13x
	
	subu $11, $0, $10	# -13x
	
	# An alternative method
	# nor $11, $0, $10	#Flip the bits
	# addiu $11, $11, 0x1	# Add one, result: -13x (two's comp.)	

	

#End of file