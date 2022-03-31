#####################################################################
#
# CSCB58 Winter 2022 Assembly Final Project
# University of Toronto, Scarborough
#
# Student: Haoming Hu, Student Number: 1006763986, UTorID: huhaomi2, official email: haomi.hu@mail.utoronto.ca
#
# Bitmap Display Configuration:
# - Unit width in pixels: 8 (update this as needed)
# - Unit height in pixels: 8 (update this as needed)
# - Display width in pixels: 512 (update this as needed)
# - Display height in pixels: 512 (update this as needed)
# - Base Address for Display: 0x10008000 ($gp)
#
# Which milestones have been reached in this submission?
# (See the assignment handout for descriptions of the milestones)
# - Milestone 1/2/3 (choose the one the applies)
#
# Which approved features have been implemented for milestone 3?
# (See the assignment handout for the list of additional features)
# 1. (fill in the feature, if any)
# 2. (fill in the feature, if any)
# 3. (fill in the feature, if any)
# ... (add more if necessary)
#
# Link to video demonstration for final submission:
# - (insert YouTube / MyMedia / other URL here). Make sure we can view it!
#
# Are you OK with us sharing the video with people outside course staff?
# - yes / no / yes, and please share this project github link as well!
#
# Any additional information that the TA needs to know:
# - (write here, if any)
#
#####################################################################
.eqv BASE_ADDRESS 0x10008000
.eqv MID_ADDRESS 0x1000A000
.eqv WHITE 0xffffff
.eqv YELLOW 0xffeb3b
.eqv CAYN 0x607d8b
.eqv PINK 0xe57373
.eqv RED 0xf44336
.eqv BROWN 0x795548
.eqv BLACK 0x000000
.eqv FIREBOTTOM 0x1000BF00
.eqv CAT_INITIAL 0x10008220
.eqv CAT_X_LEN 9
.eqv CAT_Y_LEN 7
.eqv SLEEP 40

.text
.globl main
main:
	li $t0, BASE_ADDRESS	# t0 stores base address
	li $t1, WHITE		# t1 stores white
	li $t2, YELLOW		# t2 stores yellow
	li $t3, RED		# t3 stores RED
	li $t4, PINK		# t4 stores pink
	li $t5, CAYN		# t5 stores cayn
	li $t6, BROWN		# t6 stores brown
	li $t7, MID_ADDRESS	# t7 stores mid_address
	
	# draw a cat
	sw $t1, 548($t0)
	sw $t1, 552($t0)
	sw $t1, 568($t0)
	sw $t1, 804($t0)
	sw $t5, 808($t0)
	sw $t1, 812($t0)
	sw $t1, 816($t0)
	sw $t1, 820($t0)
	sw $t5, 824($t0)

	sw $t1, 1056($t0)
	sw $t1, 1060($t0)
	sw $t1, 1064($t0)
	sw $t1, 1068($t0)
	sw $t1, 1072($t0)
	sw $t1, 1076($t0)
	sw $t1, 1080($t0)


	sw $t1, 1316($t0)
	sw $t1, 1320($t0)
	sw $t2, 1324($t0)
	sw $t1, 1328($t0)
	sw $t1, 1332($t0)
	sw $t2, 1336($t0)


	sw $t1, 1568($t0)
	sw $t1, 1572($t0)
	sw $t1, 1576($t0)
	sw $t1, 1580($t0)
	sw $t1, 1584($t0)
	sw $t1, 1588($t0)
	sw $t1, 1592($t0)

	

	sw $t3, 1832($t0)
	sw $t3, 1836($t0)
	sw $t3, 1840($t0)
	sw $t3, 1844($t0)
	

	sw $t1, 2080($t0)
	sw $t1, 2088($t0)
	sw $t3, 2092($t0)
	sw $t3, 2096($t0)
	sw $t3, 2100($t0)
	

	sw $t1, 2340($t0)
	sw $t1, 2344($t0)
	sw $t1, 2348($t0)
	sw $t3, 2352($t0)
	sw $t1, 2356($t0)
	

	sw $t1, 2596($t0)
	sw $t4, 2600($t0)
	sw $t1, 2604($t0)
	sw $t1, 2608($t0)
	sw $t1, 2612($t0)
	sw $t4, 2616($t0)
	
	# draw 3 basic platform
	# first one x = 11 y = 28
	sw $t6, 2844($t0)
	sw $t6, 2848($t0)
	sw $t6, 2852($t0)
	sw $t6, 2856($t0)
	sw $t6, 2860($t0)
	sw $t6, 2864($t0)
	sw $t6, 2868($t0)
	sw $t6, 2872($t0)
	sw $t6, 2876($t0)
	sw $t6, 2880($t0)
	
	#second one, x = 30, y = 25 - 35, and also a ball on the platform
	sw $t6, 7780($t0)
	sw $t6, 7784($t0)
	sw $t6, 7788($t0)
	sw $t6, 7792($t0)
	sw $t6, 7796($t0)
	sw $t6, 7800($t0)
	sw $t6, 7804($t0)
	sw $t6, 7808($t0)
	sw $t6, 7812($t0)
	sw $t6, 7816($t0)
	# a ball(simple version)
	sw $t5, 7036($t0)
	sw $t5, 7288($t0)
	sw $t5, 7296($t0)
	sw $t5, 7548($t0)
	
	#third one, x = 50 y = 40-50
	sw $t6, 4768($t7)
	sw $t6, 4772($t7)
	sw $t6, 4776($t7)
	sw $t6, 4780($t7)
	sw $t6, 4784($t7)
	sw $t6, 4788($t7)
	sw $t6, 4792($t7)
	sw $t6, 4796($t7)
	sw $t6, 4800($t7)
	sw $t6, 4804($t7)
	
	#draw fire at bottom
	li $t7, FIREBOTTOM	# t7 = the address of firebottom
	li $t8, 32

FIRE_L1:
	beq $t8, $zero, END_FIRE_L1
	sw $t3, 0($t7)
	addi $t7, $t7, 8
	addi $t8, $t8, -1
	j FIRE_L1
END_FIRE_L1:
	li $t7, FIREBOTTOM	# t7 = the address of firebottom
	li $t8, 32
	addi $t7, $t7, 4
FIRE_L2:
	beq $t8, $zero, END_FIRE_L2
	sw $t2, 0($t7)
	addi $t7, $t7, 8
	addi $t8, $t8, -1
	j FIRE_L2
END_FIRE_L2:
	li $t7, FIREBOTTOM	# t7 = the address of firebottom
	li $t8, 32
	addi $t7, $t7, -252
FIRE_L3:
	beq $t8, $zero, END_FIRE_L3
	sw $t3, 0($t7)
	addi $t7, $t7, 8
	addi $t8, $t8, -1
	j FIRE_L3
END_FIRE_L3:
	li $s0, CAT_INITIAL	# t7 = address of initial cat(top left)
	sw $t1, 0($s0)
	
main_loop:
	# main loop of game
	
	addi $sp, $sp, -4	# push the address of cat to the stack
	sw $s0, 0($sp)
	jal is_keypress_happened #jump to the function keypress_happened
	
	lw $s0, 0($sp)		# get the new address of cat
	addi $sp, $sp, 4


sleep:
	li $v0, 32
	li $a0, SLEEP		# sleep for 40ms
	syscall
        
        j main_loop

# int keypress_happened(int cat_address) returns the new cat address
is_keypress_happened:
	lw $s1, 0($sp)		# get the cat address
	addi $sp, $sp, 4
	
	sw $t7, 0($sp)
	li $t9, 0xffff0000 	# set t9 to keyboard
	lw $t8, 0($t9)
	beq $t8, 1, keypress_happened

return:
	addi $sp, $sp, -4	# push return value(new cat address)
	sw $s1, 0($sp)
	
	jr $ra

keypress_happened:
	lw $t8, 4($t9)
	beq $t8, 100, right	# if keypress = d branch to right
	beq $t8, 97, left	# else if key press = a branch to left
	beq $t8, 119, up	# if key press = w branch to up
	beq $t8, 115, down	# else if key press = s branch to down
	
right:

	
	addi $sp, $sp, -4	# push ra
	sw $ra, 0($sp)
	add $a0, $zero, $s1	# get the address of cat
	jal erase_cat
	
	
	lw $ra, 0($sp)		# restore ra
	addi $sp, $sp, 4
	j return
	
left:
	addi $sp, $sp, -4	# push ra
	sw $ra, 0($sp)
	add $a0, $zero, $s1	# get the address of cat
	jal erase_cat
	
	
	lw $ra, 0($sp)		# restore ra
	addi $sp, $sp, 4
	j return
up:
	addi $sp, $sp, -4	# push ra
	sw $ra, 0($sp)
	add $a0, $zero, $s1	# get the address of cat
	jal erase_cat
	
	
	lw $ra, 0($sp)		# restore ra
	addi $sp, $sp, 4
	j return
down:
	addi $sp, $sp, -4	# push ra
	sw $ra, 0($sp)
	add $a0, $zero, $s1	# get the address of cat
	jal erase_cat
	
	
	lw $ra, 0($sp)		# restore ra
	addi $sp, $sp, 4
	j return
	


erase_cat:

	add $t0, $zero, $a0	# get the address of cat
	li $t1, CAT_X_LEN	# load the size of cat
	
	li $t3, BLACK

erase_x_loop:
	beq $t1, $zero, end_erase
	li $t2, CAT_Y_LEN
	
erase_y_loop:
	beq $t2, $zero, end_erase_y
	sw $t3, 0($t0)
	
	addi $t2, $t2, -1
	addi $t0, $t0, 4
	j erase_y_loop
end_erase_y:
	addi $t1, $t1, -1
	addi $t0, $t0, 228
	j erase_x_loop
	
	
end_erase:
	jr $ra


END_PROGRAM:
	li $v0, 10 # terminate the program gracefully
	syscall
