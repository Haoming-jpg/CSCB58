#####################################################################
#
# CSCB58 Winter 2022 Assembly Final Project
# University of Toronto, Scarborough
#
# Student: Haoming Hu
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
# - Milestone 3 
#
# Which approved features have been implemented for milestone 3?
# (See the assignment handout for the list of additional features)
# 1. Fail condition
# 2. moving platform
# 3. start menu
# 4. score
# 5. win condition
# 6. enemies shoot back
#
# Link to video demonstration for final submission:
# - (insert YouTube / MyMedia / other URL here). Make sure we can view it!
#                   https://youtu.be/BjwLBMfLmKo
# Are you OK with us sharing the video with people outside course staff?
# yes, https://github.com/Haoming-jpg/CSCB58
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
.eqv GRAY 0x9e9e9e
.eqv ARROW_COLOR 0x64ffda
.eqv FIREBOTTOM 0x1000B900
.eqv CAT_INITIAL 0x10008220
.eqv CAT_X_LEN 9
.eqv CAT_Y_LEN 7
.eqv SLEEP 40
.eqv GRAVITY_LOOP 8
.eqv POINT 0x1000BB28		# x = 59, y = 10
.eqv FIRST_G 0x10009944 	# 25, 17
.eqv SECOND_G 0x10009994 	# 25, 37
.eqv PF1 0x10008B1C		# x = 11 y = 7
.eqv PF2 0x10009864 		# x = 24, y = 25 offset 6244
.eqv PF3 0x1000A530		# x = 37 y = 12 offset 9520
.eqv PF4 0x1000B2B0		# x = 50, y = 44 offset 12976
.eqv START 0x10009440		# x = 20, y = 16
.eqv EXIT 0x10009E40		# x = 30, y = 16
.eqv START_ARROW 0x100094AC	# x = 20, y = 43
.eqv EXIT_ARROW 0x10009E90	# x = 30, y = 36
.eqv COIN0 0x10008830		# x = 8, y = 12
.eqv COIN1 0x10009578		# x = 21, y = 30
.eqv COIN2 0x1000AFC4		# x = 47, y = 49
.eqv ENEMIE 0x1000B834		# x = 56, y = 13
.eqv SHOOT0 0x1000B634		# x = 54 y = 13
.eqv SHOOT1 0x1000B534		# x = 53 y = 13
.eqv SHOOT2 0x1000B434		# x = 52 y = 13
.eqv SHOOT3 0x1000B334		# x = 51 y = 13
.eqv SHOOT4 0x1000B234		# x = 50 y = 13
.eqv SHOOT5 0x1000B134		# x = 49 y = 13
.eqv SHOOT6 0x1000B034		# x = 48 y = 13
.eqv SHOOT7 0x1000AF34		# x = 47 y = 13
.eqv SHOOT8 0x1000AE34		# x = 46 y = 13



.text
.globl main
main:
	# draw the menu
	li $t0, START
	li $t1, WHITE
	# draw start
	sw $t1, 4($t0)
	sw $t1, 8($t0)
	sw $t1, 12($t0)
	sw $t1, 20($t0)
	sw $t1, 24($t0)
	sw $t1, 28($t0)
	sw $t1, 32($t0)
	sw $t1, 36($t0)
	sw $t1, 48($t0)
	sw $t1, 52($t0)	
	sw $t1, 64($t0)
	sw $t1, 68($t0)
	sw $t1, 72($t0)
	sw $t1, 84($t0)
	sw $t1, 88($t0)
	sw $t1, 92($t0)
	sw $t1, 96($t0)
	sw $t1, 100($t0)

	
	addi $t0, $t0, 256
	sw $t1, 0($t0)
	sw $t1, 28($t0)
	sw $t1, 44($t0)
	sw $t1, 56($t0)
	sw $t1, 64($t0)
	sw $t1, 76($t0)
	sw $t1, 92($t0)


	addi $t0, $t0, 256
	sw $t1, 4($t0)
	sw $t1, 8($t0)
	sw $t1, 28($t0)
	sw $t1, 44($t0)
	sw $t1, 48($t0)
	sw $t1, 52($t0)
	sw $t1, 56($t0)
	sw $t1, 64($t0)
	sw $t1, 68($t0)
	sw $t1, 72($t0)
	sw $t1, 92($t0)
	
	addi $t0, $t0, 256
	sw $t1, 12($t0)
	sw $t1, 28($t0)
	sw $t1, 44($t0)
	sw $t1, 56($t0)
	sw $t1, 64($t0)
	sw $t1, 72($t0)
	sw $t1, 92($t0)



	addi $t0, $t0, 256
	sw $t1, 0($t0)
	sw $t1, 4($t0)
	sw $t1, 8($t0)
	sw $t1, 28($t0)
	sw $t1, 44($t0)
	sw $t1, 56($t0)
	sw $t1, 64($t0)
	sw $t1, 76($t0)
	sw $t1, 92($t0)
	
	li $t0, EXIT
	# draw exit
	sw $t1, 0($t0)
	sw $t1, 4($t0)
	sw $t1, 8($t0)
	sw $t1, 12($t0)
	sw $t1, 20($t0)
	sw $t1, 32($t0)
	sw $t1, 40($t0)
	sw $t1, 44($t0)
	sw $t1, 48($t0)
	sw $t1, 56($t0)
	sw $t1, 60($t0)
	sw $t1, 64($t0)
	sw $t1, 68($t0)
	sw $t1, 72($t0)
	
	
	addi $t0, $t0, 256
	sw $t1, 0($t0)
	sw $t1, 20($t0)
	sw $t1, 32($t0)
	sw $t1, 44($t0)
	sw $t1, 64($t0)


	addi $t0, $t0, 256
	sw $t1, 0($t0)
	sw $t1, 4($t0)
	sw $t1, 8($t0)
	sw $t1, 24($t0)
	sw $t1, 28($t0)
	sw $t1, 44($t0)
	sw $t1, 64($t0)
	

	addi $t0, $t0, 256
	sw $t1, 0($t0)
	sw $t1, 20($t0)
	sw $t1, 32($t0)
	sw $t1, 44($t0)
	sw $t1, 64($t0)
	
	addi $t0, $t0, 256
	sw $t1, 0($t0)
	sw $t1, 4($t0)
	sw $t1, 8($t0)
	sw $t1, 12($t0)
	sw $t1, 20($t0)
	sw $t1, 32($t0)
	sw $t1, 40($t0)
	sw $t1, 44($t0)
	sw $t1, 48($t0)
	sw $t1, 64($t0)	
	
	# darw the arrow
	li $t0, START_ARROW
	li $t1, ARROW_COLOR
	sw $t1, 8($t0)
	sw $t1, 260($t0)
	sw $t1, 512($t0)
	sw $t1, 516($t0)
	sw $t1, 524($t0)
	sw $t1, 520($t0)
	sw $t1, 528($t0)
	sw $t1, 532($t0)
	sw $t1, 772($t0)
	sw $t1, 1032($t0)
	
	li $t2, 0	#t2 = 0 means start, 1 means exit

menu_loop:
	li $t9, 0xffff0000 	# set t9 to keyboard
	lw $t8, 0($t9)
	beq $t8, 1, menu_keypress_happened
	
menu_sleep:
	li $v0, 32
	li $a0, SLEEP		# sleep for 40ms
	syscall
        
        j menu_loop

menu_keypress_happened:
	lw $t8, 4($t9)
	beq $t8, 0x70, start_or_exit	# else if key press = p branch then start game
	beq $t8, 0x77, menu_up		# if key press = w branch to up
	beq $t8, 0x73, menu_down	# else if key press = s branch to down
	j menu_sleep

menu_up:
	beqz $t2, menu_sleep
	li $t0, START_ARROW
	li $t1, ARROW_COLOR
	sw $t1, 8($t0)
	sw $t1, 260($t0)
	sw $t1, 512($t0)
	sw $t1, 516($t0)
	sw $t1, 524($t0)
	sw $t1, 520($t0)
	sw $t1, 528($t0)
	sw $t1, 532($t0)
	sw $t1, 772($t0)
	sw $t1, 1032($t0)

	li $t0, EXIT_ARROW
	li $t1, BLACK
	sw $t1, 8($t0)
	sw $t1, 260($t0)
	sw $t1, 512($t0)
	sw $t1, 516($t0)
	sw $t1, 524($t0)
	sw $t1, 520($t0)
	sw $t1, 528($t0)
	sw $t1, 532($t0)
	sw $t1, 772($t0)
	sw $t1, 1032($t0)

	li $t2, 0
	j menu_sleep
	
	
menu_down:
	bnez $t2, menu_sleep
	li $t0, EXIT_ARROW
	li $t1, ARROW_COLOR
	sw $t1, 8($t0)
	sw $t1, 260($t0)
	sw $t1, 512($t0)
	sw $t1, 516($t0)
	sw $t1, 524($t0)
	sw $t1, 520($t0)
	sw $t1, 528($t0)
	sw $t1, 532($t0)
	sw $t1, 772($t0)
	sw $t1, 1032($t0)

	li $t0, START_ARROW
	li $t1, BLACK
	sw $t1, 8($t0)
	sw $t1, 260($t0)
	sw $t1, 512($t0)
	sw $t1, 516($t0)
	sw $t1, 524($t0)
	sw $t1, 520($t0)
	sw $t1, 528($t0)
	sw $t1, 532($t0)
	sw $t1, 772($t0)
	sw $t1, 1032($t0)

	li $t2, 1
	j menu_sleep


start_or_exit:
	bnez $t2, END_PROGRAM

game_start:
	jal clean_all
	li $t0, BASE_ADDRESS	# t0 stores base address
	li $t1, WHITE		# t1 stores white
	li $t2, YELLOW		# t2 stores yellow
	li $t3, RED		# t3 stores RED
	li $t4, PINK		# t4 stores pink
	li $t5, CAYN		# t5 stores cayn
	li $t6, BROWN		# t6 stores brown
	
	
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
	
	# draw 4 basic platform
	li $a0, PF1
	jal draw_platform

	#second one, x = 24, y = 25 offset 6244
	li $a0, PF2
	jal draw_platform
	
	#third one, x = 37 y = 12 offset 9520
	li $a0, PF3
	jal draw_platform
	
	# forth one, x = 50, y = 44 offset 12976
	li $a0, PF4
	jal draw_platform
	
	#draw the initial coin
	li $a0, COIN1
	jal draw_coin
	
	# draw 0
	li $t7, POINT
	sw $t1, 0($t7)
	sw $t1, 256($t7)
	sw $t1, 512($t7)
	sw $t1, 768($t7)
	sw $t1, 1024($t7)
	addi $t7, $t7, 4
	sw $t1, 0($t7)
	sw $t1, 1024($t7)
	addi $t7, $t7, 4
	sw $t1, 0($t7)
	sw $t1, 256($t7)
	sw $t1, 512($t7)
	sw $t1, 768($t7)
	sw $t1, 1024($t7)
	
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
	# draw up walls
	li $t7, BASE_ADDRESS
	li $t8, 64
	li $t9, GRAY
	
draw_up_wall:
	sw $t9, 0($t7)
	addi $t7, $t7, 4
	addi $t8, $t8, -1
	bnez $t8, draw_up_wall
	
	#draw left walls
	li $t7, BASE_ADDRESS
	li $t8, 64
draw_left_wall:
	sw $t9, 0($t7)
	addi $t7, $t7, 256
	addi $t8, $t8, -1
	bnez $t8, draw_left_wall
	
	#draw right walls
	li $t7, BASE_ADDRESS
	addi $t7, $t7, 252
	li $t8, 64
draw_right_wall:
	sw $t9, 0($t7)
	addi $t7, $t7, 256
	addi $t8, $t8, -1
	bnez $t8, draw_right_wall

	# draw enemie
	li $t0, ENEMIE
	li $t1, RED
	li $t2, CAYN
	li $t3, BROWN
	sw $t1, 0($t0)
	sw $t3, 252($t0)
	sw $t3, 260($t0)
	sw $t2, 256($t0)
	sw $t2, 504($t0)
	sw $t2, 508($t0)
	sw $t2, 512($t0)
	sw $t2, 516($t0)
	sw $t2, 520($t0)
	li $t0, SHOOT0
	sw $t1, 0($t0)


	li $s0, CAT_INITIAL	# s0 = address of initial cat(top left)
	li $s6, GRAVITY_LOOP	# set the loop of gravity
	li $s5, 0		# if s5 < 0 then gg, if s5 > 0 then win
	li $s7, 0		# s7 is for moving platformn, if 0 then go right if 1 then go left
	li $s4, PF3		# PF3 is the mvoing platform
	li $s1, 1		# s1 is the current coin index(base 0)
	li $s2, 0		# s2 is the current marks
	li $s3, 0		# s3 is the shoot index
	
main_loop:
	# main loop of game
	bgtz $s5, you_win
	ble $s5, -1, gg
	j check_gg
	
not_gg:
	addi $sp, $sp, -4	# push the address of cat to the stack
	sw $s0, 0($sp)
	jal is_keypress_happened #jump to the function keypress_happened
	
	lw $s0, 0($sp)		# get the new address of cat
	addi $sp, $sp, 4
	
	bnez $s6, finish_move_platform
	add $a0, $s3, $zero	#push the shoot index
	jal shoot
	add $s3, $zero, $v0	# restore the shoot index
	j do_gravity
finish_gravity:
	j move_platform
finish_move_platform:
	addi $s6, $s6, -1
	addi $sp, $sp, -4	#now we need to check whether we get a point, push 3 argument to the stack
	sw $s0, 0($sp)
	addi $sp, $sp, -4	
	sw $s1, 0($sp)
	addi $sp, $sp, -4
	sw $s2, 0($sp)
	jal check_point
	lw $s1, 0($sp)		# restore the index of coin
	addi $sp, $sp, 4
	lw $s2, 0($sp)		# restore the score
	addi $sp, $sp, 4
	blt $s2, 10, sleep	# if score < 10 then continue
	jal clean_all
	jal draw_win
	li $s5, 1
sleep:
	li $v0, 32
	li $a0, SLEEP		# sleep for 40ms
	syscall
        
        j main_loop
do_gravity:
	addi $sp, $sp, -4	# push the address of cat to the stack
	sw $s0, 0($sp)
	jal gravity
	lw $s0, 0($sp)		# get the new address of cat
	addi $sp, $sp, 4
	j finish_gravity

check_gg:
	add $t0, $s0, $zero	# t0 stores the address of the cat
	addi $t0, $t0, 2304
	li $t3, CAT_Y_LEN
check_gg_loop:
	li $t1, RED
	lw $t2, 0($t0)		# check whether the cat touch the fire
	sub $t2, $t2, $t1
	beqz $t2, gg
	addi $t0, $t0, 4
	addi $t3, $t3, -1
	bnez $t3, check_gg_loop
	j not_gg

gg:
	addi $s5, $s5, -1

	jal gg_keypress_happened
	blt $s5, -1, sleep
	# fist time attach here
	jal clean_all
	jal draw_gg
	j sleep

you_win:
	jal gg_keypress_happened
	j sleep

move_platform:
	#s4 is the address of the platform, s7 = 0 moves right 1 moves left
	li $s6, GRAVITY_LOOP
	li $t0, GRAY
	beqz $s7, move_check_right	
move_check_left:
	lw $t1, -4($s4)
	sub $t1, $t1, $t0
	bnez $t1, finish_check
	li $s7, 0
	j finish_check
move_check_right:
	lw $t1, 40($s4)
	sub $t1, $t1, $t0
	bnez $t1, finish_check
	li $s7, 1
	
finish_check:
	
	add $a0, $s4, $zero
	jal remove_platform
	beqz $s7, moving_right
	addi $s4, $s4, -4
	add $a0, $s4, $zero
	jal draw_platform
	j finish_move_platform

	
	
moving_right:
	addi $s4, $s4, 4
	add $a0, $s4, $zero
	jal draw_platform
	j finish_move_platform

#####################################################################
# int keypress_happened(int cat_address) returns the new cat address
is_keypress_happened:
	lw $t7, 0($sp)		# get the cat address
	addi $sp, $sp, 4
	
	

	li $t9, 0xffff0000 	# set t9 to keyboard
	lw $t8, 0($t9)
	beq $t8, 1, keypress_happened
key_press_return:
	addi $sp, $sp, -4	# push return value(new cat address)
	sw $t7, 0($sp)
	
	jr $ra

keypress_happened:
	lw $t8, 4($t9)
	beq $t8, 0x64, right	# if keypress = d branch to right
	beq $t8, 0x61, left	# else if key press = a branch to left
	beq $t8, 0x77, up	# if key press = w branch to up
	beq $t8, 0x70, restart	# else if key press = p branch to restart
	j key_press_return
	
	
	
right:
	add $t0, $t7, $zero	# t0 stores the address of the cat
	addi $t0, $t0, 28
	li $t1, GRAY
	lw $t2, 0($t0)		# check whether cat touch the wall
	sub $t2, $t2, $t1
	beqz $t2, key_press_return


	add $t0, $t7, $zero	# t0 stores the address of the cat
	addi $t0, $t0, 28
	li $t3, CAT_X_LEN
right_collision_loop:
	li $t1, BROWN
	lw $t2, 0($t0)		# check the collision of the platforms
	sub $t2, $t2, $t1
	beqz $t2, key_press_return
	addi $t0, $t0, 256
	addi $t3, $t3, -1
	bnez $t3, right_collision_loop

right_move:	
	addi $sp, $sp, -4	# push ra
	sw $ra, 0($sp)
	add $a0, $zero, $t7	# get the address of cat
	jal erase_cat
	
	add $t7, $t7, 4		# cat moves right
	add $a0, $zero, $t7	# get the address of cat
	jal draw_cat
	
	lw $ra, 0($sp)		# restore ra
	addi $sp, $sp, 4
	j key_press_return
	
	
	
left:
	add $t0, $t7, $zero	# t0 stores the address of the cat

	addi $t0, $t0, -4
	li $t1, GRAY
	lw $t2, 0($t0)		# check whether cat touch the wall
	sub $t2, $t2, $t1
	beqz $t2, key_press_return
	
	add $t0, $t7, $zero	# t0 stores the address of the cat
	addi $t0, $t0, -4
	li $t3, CAT_X_LEN
left_collision_loop:
	li $t1, BROWN
	lw $t2, 0($t0)		# check the collision of the platforms
	sub $t2, $t2, $t1
	beqz $t2, key_press_return
	addi $t0, $t0, 256
	addi $t3, $t3, -1
	bnez $t3, left_collision_loop
	
	
	
	addi $sp, $sp, -4	# push ra
	sw $ra, 0($sp)
	add $a0, $zero, $t7	# get the address of cat
	jal erase_cat
	
	add $t7, $t7, -4	# cat moves left
	add $a0, $zero, $t7	# get the address of cat
	jal draw_cat
	
	lw $ra, 0($sp)		# restore ra
	addi $sp, $sp, 4
	j key_press_return
	
	
	
	
up:
	add $t0, $t7, $zero	# t0 stores the address of the cat

	addi $t0, $t0, -256
	li $t1, GRAY
	lw $t2, 0($t0)		# check whether cat touch the wall
	sub $t2, $t2, $t1
	beqz $t2, key_press_return
	
	add $t0, $t7, $zero	# t0 stores the address of the cat
	addi $t0, $t0, -256
	li $t3, CAT_Y_LEN
up_collision_loop:
	li $t1, BROWN
	lw $t2, 0($t0)		# check the collision of the platforms
	sub $t2, $t2, $t1
	beqz $t2, key_press_return
	addi $t0, $t0, 4
	addi $t3, $t3, -1
	bnez $t3, up_collision_loop
	
	
	
	addi $sp, $sp, -4	# push ra
	sw $ra, 0($sp)
	add $a0, $zero, $t7	# get the address of cat
	jal erase_cat
	
	add $t7, $t7, -256	# cat moves up
	add $a0, $zero, $t7	# get the address of cat
	jal draw_cat
	
	lw $ra, 0($sp)		# restore ra
	addi $sp, $sp, 4
	j key_press_return

restart:
	addi $sp, $sp, -4	# push ra
	sw $ra, 0($sp)
	jal clean_all
	
	lw $ra, 0($sp)		# restore ra
	addi $sp, $sp, 4
	j main
#####################################################################
	

#####################################################################
# int gravity(int cat_address) moves cat one pixel down and return the new address of the cat
gravity:
	lw $t7, 0($sp)		# get the cat address
	addi $sp, $sp, 4
	add $t0, $t7, $zero	# t0 stores the address of the cat
	addi $t0, $t0, 2304
	li $t3, CAT_Y_LEN
down_collision_loop:
	li $t1, BROWN
	lw $t2, 0($t0)		# check the collision of the platforms
	sub $t2, $t2, $t1
	beqz $t2, gravity_down
	addi $t0, $t0, 4
	addi $t3, $t3, -1
	bnez $t3, down_collision_loop
	
	
	addi $sp, $sp, -4	# push ra
	sw $ra, 0($sp)
	add $a0, $zero, $t7	# get the address of cat
	jal erase_cat
	
	add $t7, $t7, +256	# cat moves down
	add $a0, $zero, $t7	# get the address of cat
	jal draw_cat
	
	lw $ra, 0($sp)		# restore ra
	addi $sp, $sp, 4
gravity_down:
	addi $sp, $sp, -4	# push return value(new cat address)
	sw $t7, 0($sp)
	jr $ra

#####################################################################


#####################################################################
# void erase_cat(int cat_address)
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
#####################################################################

#####################################################################
# void draw_cat(int cat_address)
draw_cat:
	add $t0, $zero, $a0	# get the address of cat
	li $t1, WHITE		# t1 stores white
	li $t2, YELLOW		# t2 stores yellow
	li $t3, RED		# t3 stores RED
	li $t4, PINK		# t4 stores pink
	li $t5, CAYN		# t5 stores cayn
	li $t6, BROWN		# t6 stores brown
	
	# start drawing
	sw $t1, 4($t0)
	sw $t1, 8($t0)
	sw $t1, 24($t0)
	
	sw $t1, 260($t0)
	sw $t5, 264($t0)
	sw $t1, 268($t0)
	sw $t1, 272($t0)
	sw $t1, 276($t0)
	sw $t5, 280($t0)
	
	sw $t1, 512($t0)
	sw $t1, 516($t0)
	sw $t1, 520($t0)
	sw $t1, 524($t0)
	sw $t1, 528($t0)
	sw $t1, 532($t0)
	sw $t1, 536($t0)
	
	sw $t1, 772($t0)
	sw $t1, 776($t0)
	sw $t2, 780($t0)
	sw $t1, 784($t0)
	sw $t1, 788($t0)
	sw $t2, 792($t0)
	
	sw $t1, 1024($t0)
	sw $t1, 1028($t0)
	sw $t1, 1032($t0)
	sw $t1, 1036($t0)
	sw $t1, 1040($t0)
	sw $t1, 1044($t0)
	sw $t1, 1048($t0)
	
	sw $t3, 1288($t0)
	sw $t3, 1292($t0)
	sw $t3, 1296($t0)
	sw $t3, 1300($t0)
	
	sw $t1, 1536($t0)
	sw $t1, 1544($t0)
	sw $t3, 1548($t0)
	sw $t3, 1552($t0)
	sw $t3, 1556($t0)
	
	sw $t1, 1796($t0)
	sw $t1, 1800($t0)
	sw $t1, 1804($t0)
	sw $t3, 1808($t0)
	sw $t1, 1812($t0)
	
	sw $t1, 2052($t0)
	sw $t4, 2056($t0)
	sw $t1, 2060($t0)
	sw $t1, 2064($t0)
	sw $t1, 2068($t0)
	sw $t4, 2072($t0)
	
	jr $ra
	
#####################################################################

#####################################################################
#void clean_all()    clean all things in the screen
clean_all:
	li $t0, BASE_ADDRESS
	li $t1, BLACK
	li $t2, 4096
clean_all_loop:
	sw $t1, 0($t0)
	addi $t0, $t0, 4
	addi $t2, $t2, -1
	bnez $t2, clean_all_loop
	jr $ra

#####################################################################


#####################################################################
# void draw_gg()
draw_gg:
	li, $t0, WHITE
	li, $t1, FIRST_G
	# draw first G
	sw, $t0, 16($t1)
	sw, $t0, 20($t1)
	sw, $t0, 24($t1)
	sw, $t0, 28($t1)
	sw, $t0, 32($t1)
	sw, $t0, 36($t1)
	sw, $t0, 44($t1)
	
	sw, $t0, 268($t1)
	sw, $t0, 272($t1)
	sw, $t0, 292($t1)
	sw, $t0, 296($t1)
	sw, $t0, 300($t1)
	
	sw, $t0, 520($t1)
	sw, $t0, 552($t1)
	sw, $t0, 556($t1)

	sw, $t0, 772($t1)
	sw, $t0, 776($t1)
	sw, $t0, 808($t1)
	sw, $t0, 812($t1)
	
	sw, $t0, 1024($t1)
	sw, $t0, 1028($t1)
	sw, $t0, 1068($t1)
	
	sw, $t0, 1280($t1)
	sw, $t0, 1284($t1)
	
	sw, $t0, 1536($t1)
	sw, $t0, 1540($t1)
	
	sw, $t0, 1792($t1)
	sw, $t0, 1796($t1)
	sw, $t0, 1824($t1)
	sw, $t0, 1828($t1)
	sw, $t0, 1832($t1)
	sw, $t0, 1836($t1)
	sw, $t0, 1840($t1)
	sw, $t0, 1844($t1)
	
	sw, $t0, 2048($t1)
	sw, $t0, 2052($t1)
	sw, $t0, 2088($t1)
	sw, $t0, 2092($t1)

	sw, $t0, 2304($t1)
	sw, $t0, 2308($t1)
	sw, $t0, 2344($t1)
	sw, $t0, 2348($t1)
	
	sw, $t0, 2564($t1)
	sw, $t0, 2568($t1)
	sw, $t0, 2600($t1)
	sw, $t0, 2604($t1)
	
	sw, $t0, 2820($t1)
	sw, $t0, 2824($t1)
	sw, $t0, 2828($t1)
	sw, $t0, 2856($t1)
	sw, $t0, 2860($t1)
	
	sw, $t0, 3080($t1)
	sw, $t0, 3084($t1)
	sw, $t0, 3088($t1)
	sw, $t0, 3108($t1)
	sw, $t0, 3112($t1)
	sw, $t0, 3116($t1)
	
	sw, $t0, 3344($t1)
	sw, $t0, 3348($t1)
	sw, $t0, 3352($t1)
	sw, $t0, 3356($t1)
	sw, $t0, 3360($t1)
	sw, $t0, 3364($t1)

	li, $t1, SECOND_G
	# draw second G
	sw, $t0, 16($t1)
	sw, $t0, 20($t1)
	sw, $t0, 24($t1)
	sw, $t0, 28($t1)
	sw, $t0, 32($t1)
	sw, $t0, 36($t1)
	sw, $t0, 44($t1)
	
	sw, $t0, 268($t1)
	sw, $t0, 272($t1)
	sw, $t0, 292($t1)
	sw, $t0, 296($t1)
	sw, $t0, 300($t1)
	
	sw, $t0, 520($t1)
	sw, $t0, 552($t1)
	sw, $t0, 556($t1)

	sw, $t0, 772($t1)
	sw, $t0, 776($t1)
	sw, $t0, 808($t1)
	sw, $t0, 812($t1)
	
	sw, $t0, 1024($t1)
	sw, $t0, 1028($t1)
	sw, $t0, 1068($t1)
	
	sw, $t0, 1280($t1)
	sw, $t0, 1284($t1)
	
	sw, $t0, 1536($t1)
	sw, $t0, 1540($t1)
	
	sw, $t0, 1792($t1)
	sw, $t0, 1796($t1)
	sw, $t0, 1824($t1)
	sw, $t0, 1828($t1)
	sw, $t0, 1832($t1)
	sw, $t0, 1836($t1)
	sw, $t0, 1840($t1)
	sw, $t0, 1844($t1)
	
	sw, $t0, 2048($t1)
	sw, $t0, 2052($t1)
	sw, $t0, 2088($t1)
	sw, $t0, 2092($t1)

	sw, $t0, 2304($t1)
	sw, $t0, 2308($t1)
	sw, $t0, 2344($t1)
	sw, $t0, 2348($t1)
	
	sw, $t0, 2564($t1)
	sw, $t0, 2568($t1)
	sw, $t0, 2600($t1)
	sw, $t0, 2604($t1)
	
	sw, $t0, 2820($t1)
	sw, $t0, 2824($t1)
	sw, $t0, 2828($t1)
	sw, $t0, 2856($t1)
	sw, $t0, 2860($t1)
	
	sw, $t0, 3080($t1)
	sw, $t0, 3084($t1)
	sw, $t0, 3088($t1)
	sw, $t0, 3108($t1)
	sw, $t0, 3112($t1)
	sw, $t0, 3116($t1)
	
	sw, $t0, 3344($t1)
	sw, $t0, 3348($t1)
	sw, $t0, 3352($t1)
	sw, $t0, 3356($t1)
	sw, $t0, 3360($t1)
	sw, $t0, 3364($t1)


	jr $ra
#####################################################################

#####################################################################
# void gg_keypress_happend()
gg_keypress_happened:
	li $t9, 0xffff0000 	# set t9 to keyboard
	lw $t8, 0($t9)
	beq $t8, 1, gg_keypress
gg_keypress_return:
	addi $sp, $sp, -4	# push return value(new cat address)
	sw $s1, 0($sp)
	
	jr $ra

gg_keypress:
	lw $t8, 4($t9)
	beq $t8, 0x70, gg_restart	# else if key press = p branch to restart
	j gg_keypress_return
gg_restart:
	addi $sp, $sp, -4	# push ra
	sw $ra, 0($sp)
	jal clean_all
	
	lw $ra, 0($sp)		# restore ra
	addi $sp, $sp, 4
	j main
	j gg_keypress_return
#####################################################################
#void draw_platforms(int start address), every platform have length 10
draw_platform:
	add $t7, $zero, $a0
	li $t6, BROWN
	li $t8, 40
	
	
darw_platform_loop:
	sw $t6, 0($t7)
	addi $t7, $t7, 4
	addi $t8, $t8, -4
	bnez $t8, darw_platform_loop
	
	jr $ra
#####################################################################

#####################################################################
remove_platform:
	add $t7, $zero, $a0
	li $t6, BLACK
	li $t8, 40
	
	
remove_platform_loop:
	sw $t6, 0($t7)
	addi $t7, $t7, 4
	addi $t8, $t8, -4
	bnez $t8, remove_platform_loop
	
	jr $ra
#####################################################################

#####################################################################
# void remove_coin(int coin address)
remove_coin:
	add $t8, $zero, $a0	#t0 is the address of start index
	li $t2, BLACK
	sw $t2, 0($t8)
	sw $t2, 252($t8)
	sw $t2, 260($t8)
	sw $t2, 512($t8)
	jr $ra

#####################################################################

#####################################################################
# void draw_coin(int coin address)
draw_coin:
	add $t8, $zero, $a0	#t0 is the address of start index
	li $t2, YELLOW
	sw $t2, 0($t8)
	sw $t2, 252($t8)
	sw $t2, 260($t8)
	sw $t2, 512($t8)
	jr $ra
#####################################################################

#####################################################################
# int check_point(int cat_address, int coin_index, int score) return the new index of coin and new score
check_point:
	lw $s2, 0($sp)		# load score
	addi $sp, $sp, 4	
	lw $s1, 0($sp)		# load coin_index
	addi $sp, $sp, 4	
	lw $t0, 0($sp)		# load cat_address
	addi $sp, $sp, 4	
	
	
	li $t1, YELLOW
	beqz $s1, index_0	# index 0
	addi $s1, $s1, -1
	beqz $s1, index_1	# index 1
	# index 2
	li $s1, 2
	li $t2, COIN2
	li $t5, COIN0
	j go_check
index_0:
	li $s1, 0
	li $t2, COIN0
	li $t5, COIN1
	j go_check
index_1:
	li $s1, 1
	li $t2 COIN1
	li $t5, COIN2
go_check:
	lw $t3, 0($t2)
	sub $t4, $t3, $t1
	bnez $t4, get_points
	
	lw $t3, 252($t2)
	sub $t4, $t3, $t1
	bnez $t4, get_points
	
	lw $t3, 260($t2)
	sub $t4, $t3, $t1
	bnez $t4, get_points
	
	lw $t3, 512($t2)
	sub $t4, $t3, $t1
	bnez $t4, get_points
	j end_check


get_points:
	addi $sp, $sp, -4
	sw $ra, 0($sp)		#save ra
	
	add $a0, $zero, $t2
	jal remove_coin
	
	add $a0, $zero, $t5
	jal draw_coin
	
	add $a0, $zero, $t0
	jal draw_cat
	
	add $a0, $zero, $s2
	jal increase_score
	lw $s2, 0($sp)
	addi $sp, $sp, 4	# restore score
	
	lw $ra, 0($sp)
	addi $sp, $sp, 4	# restore ra

	beqz $s1, next_index1	# should go index 1
	addi $s1, $s1, -1
	beqz $s1, next_index_2	# should go index 2
	# should go index 0
	li $s1, 0
	j end_check
next_index1:
	li $s1, 1
	j end_check
next_index_2:
	li $s1, 2
end_check:
	# put return value to stack
	addi $sp, $sp, -4
	sw $s2, 0($sp)
	addi $sp, $sp, -4
	sw $s1, 0($sp)
	jr $ra
#####################################################################

#####################################################################
# int increase_score(int score) return score + 1
increase_score:
	add $t0, $a0, $zero	# t0 is the current score
	li $t1, WHITE
	li $t2, POINT
	li $t3, BLACK
	
	sw $t3, 0($t2)
	sw $t3, 4($t2)
	sw $t3, 8($t2)
	sw $t3, 256($t2)
	sw $t3, 260($t2)
	sw $t3, 264($t2)
	sw $t3, 512($t2)
	sw $t3, 516($t2)
	sw $t3, 520($t2)
	sw $t3, 768($t2)
	sw $t3, 772($t2)
	sw $t3, 776($t2)
	sw $t3, 1024($t2)
	sw $t3, 1028($t2)
	sw $t3, 1032($t2)
	
	addi $t0, $t0, 1
	li $t4, 1
	beq $t0, $t4, draw1
	addi $t4, $t4, 1
	beq $t0, $t4, draw2
	addi $t4, $t4, 1
	beq $t0, $t4, draw3
	addi $t4, $t4, 1
	beq $t0, $t4, draw4
	addi $t4, $t4, 1
	beq $t0, $t4, draw5
	addi $t4, $t4, 1
	beq $t0, $t4, draw6
	addi $t4, $t4, 1
	beq $t0, $t4, draw7
	addi $t4, $t4, 1
	beq $t0, $t4, draw8
	addi $t4, $t4, 1
	beq $t0, $t4, draw9
	addi $t4, $t4, 1
	beq $t0, $t4, finish_add
	
draw1:
	sw $t1, 0($t2)
	sw $t1, 256($t2)
	sw $t1, 512($t2)
	sw $t1, 768($t2)
	sw $t1, 1024($t2)
	j finish_add
	
draw2:
	sw $t1, 0($t2)
	sw $t1, 4($t2)
	sw $t1, 8($t2)
	sw $t1, 264($t2)
	sw $t1, 512($t2)
	sw $t1, 516($t2)
	sw $t1, 520($t2)
	sw $t1, 768($t2)
	sw $t1, 1024($t2)
	sw $t1, 1028($t2)
	sw $t1, 1032($t2)
	j finish_add
	
draw3:
	sw $t1, 0($t2)
	sw $t1, 4($t2)
	sw $t1, 8($t2)
	sw $t1, 264($t2)
	sw $t1, 512($t2)
	sw $t1, 516($t2)
	sw $t1, 520($t2)
	sw $t1, 776($t2)
	sw $t1, 1024($t2)
	sw $t1, 1028($t2)
	sw $t1, 1032($t2)
	j finish_add
	
draw4:
	sw $t1, 0($t2)
	sw $t1, 8($t2)
	sw $t1, 256($t2)
	sw $t1, 264($t2)
	sw $t1, 512($t2)
	sw $t1, 516($t2)
	sw $t1, 520($t2)
	sw $t1, 776($t2)
	sw $t1, 1032($t2)
	j finish_add
	
draw5:
	sw $t1, 0($t2)
	sw $t1, 4($t2)
	sw $t1, 8($t2)
	sw $t1, 256($t2)
	sw $t1, 512($t2)
	sw $t1, 516($t2)
	sw $t1, 520($t2)
	sw $t1, 776($t2)
	sw $t1, 1024($t2)
	sw $t1, 1028($t2)
	sw $t1, 1032($t2)
	j finish_add	


draw6:
	sw $t1, 0($t2)
	sw $t1, 4($t2)
	sw $t1, 8($t2)
	sw $t1, 256($t2)
	sw $t1, 512($t2)
	sw $t1, 516($t2)
	sw $t1, 520($t2)
	sw $t1, 768($t2)
	sw $t1, 776($t2)
	sw $t1, 1024($t2)
	sw $t1, 1028($t2)
	sw $t1, 1032($t2)
	j finish_add


draw7:
	sw $t1, 0($t2)
	sw $t1, 4($t2)
	sw $t1, 8($t2)
	sw $t1, 264($t2)
	sw $t1, 520($t2)
	sw $t1, 776($t2)
	sw $t1, 1032($t2)
	j finish_add

draw8:
	sw $t1, 0($t2)
	sw $t1, 4($t2)
	sw $t1, 8($t2)
	sw $t1, 256($t2)
	sw $t1, 264($t2)
	sw $t1, 512($t2)
	sw $t1, 516($t2)
	sw $t1, 520($t2)
	sw $t1, 768($t2)
	sw $t1, 776($t2)
	sw $t1, 1024($t2)
	sw $t1, 1028($t2)
	sw $t1, 1032($t2)
	j finish_add
draw9:
	sw $t1, 0($t2)
	sw $t1, 4($t2)
	sw $t1, 8($t2)
	sw $t1, 256($t2)
	sw $t1, 264($t2)
	sw $t1, 512($t2)
	sw $t1, 516($t2)
	sw $t1, 520($t2)
	sw $t1, 776($t2)
	sw $t1, 1032($t2)
	
	
finish_add:
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jr $ra
#####################################################################

#####################################################################
# void draw_win() draw you win!
draw_win:
	li, $t0, WHITE
	li, $t1, FIRST_G
	# draw you win!
	sw $t0, 0($t1)
	sw $t0, 16($t1)
	sw $t0, 28($t1)
	sw $t0, 32($t1)
	sw $t0, 44($t1)
	sw $t0, 56($t1)
	sw $t0, 72($t1)
	sw $t0, 88($t1)
	sw $t0, 96($t1)
	sw $t0, 100($t1)
	sw $t0, 104($t1)
	sw $t0, 112($t1)
	sw $t0, 124($t1)
	sw $t0, 136($t1)
	
	addi $t1, $t1, 256
	sw $t0, 0($t1)
	sw $t0, 16($t1)
	sw $t0, 24($t1)
	sw $t0, 36($t1)
	sw $t0, 44($t1)
	sw $t0, 56($t1)
	sw $t0, 72($t1)
	sw $t0, 88($t1)
	sw $t0, 100($t1)
	sw $t0, 112($t1)
	sw $t0, 116($t1)
	sw $t0, 124($t1)
	sw $t0, 136($t1)

	addi $t1, $t1, 256
	sw $t0, 4($t1)
	sw $t0, 8($t1)
	sw $t0, 12($t1)
	sw $t0, 24($t1)
	sw $t0, 36($t1)
	sw $t0, 44($t1)
	sw $t0, 56($t1)
	sw $t0, 72($t1)
	sw $t0, 80($t1)
	sw $t0, 88($t1)
	sw $t0, 100($t1)
	sw $t0, 112($t1)
	sw $t0, 120($t1)
	sw $t0, 124($t1)
	sw $t0, 136($t1)
	
	addi $t1, $t1, 256
	sw $t0, 8($t1)
	sw $t0, 24($t1)
	sw $t0, 36($t1)
	sw $t0, 44($t1)
	sw $t0, 56($t1)
	sw $t0, 72($t1)
	sw $t0, 76($t1)
	sw $t0, 84($t1)
	sw $t0, 88($t1)
	sw $t0, 100($t1)
	sw $t0, 112($t1)
	sw $t0, 124($t1)
	
	addi $t1, $t1, 256
	sw $t0, 8($t1)
	sw $t0, 28($t1)
	sw $t0, 32($t1)
	sw $t0, 48($t1)
	sw $t0, 52($t1)
	sw $t0, 72($t1)
	sw $t0, 88($t1)
	sw $t0, 96($t1)
	sw $t0, 100($t1)
	sw $t0, 104($t1)
	sw $t0, 112($t1)
	sw $t0, 124($t1)
	sw $t0, 136($t1)
	
	jr $ra

#####################################################################


#####################################################################
# int shoot(int shoot_index) return the new shoot index
shoot:
	add $t0, $a0, $zero	# t0 is the current shoot index
	li $t1, 0
	li $t2, BLACK
	li $t3, RED
	beq $t0, $t1, go_1
	addi $t1, $t1, 1
	beq $t0, $t1, go_2
	addi $t1, $t1, 1
	beq $t0, $t1, go_3
	addi $t1, $t1, 1
	beq $t0, $t1, go_4
	addi $t1, $t1, 1
	beq $t0, $t1, go_5
	addi $t1, $t1, 1
	beq $t0, $t1, go_6
	addi $t1, $t1, 1
	beq $t0, $t1, go_7
	addi $t1, $t1, 1
	beq $t0, $t1, go_8
	# should go to 0
	li $t4, SHOOT8
	sw $t2, 0($t4)
	li $t4, SHOOT0
	sw $t3, 0($t4)
	li $v0, 0
	j finish_shoot
go_1:
	li $t4, SHOOT0
	sw $t2, 0($t4)
	li $t4, SHOOT1
	sw $t3, 0($t4)
	li $v0, 1
	j finish_shoot	
go_2:
	li $t4, SHOOT1
	sw $t2, 0($t4)
	li $t4, SHOOT2
	sw $t3, 0($t4)
	li $v0, 2
	j finish_shoot
go_3:
	li $t4, SHOOT2
	sw $t2, 0($t4)
	li $t4, SHOOT3
	sw $t3, 0($t4)
	li $v0, 3
	j finish_shoot
go_4:
	li $t4, SHOOT3
	sw $t2, 0($t4)
	li $t4, SHOOT4
	sw $t3, 0($t4)
	li $v0, 4
	j finish_shoot
go_5:
	li $t4, SHOOT4
	sw $t2, 0($t4)
	li $t4, SHOOT5
	sw $t3, 0($t4)
	li $v0, 5
	j finish_shoot
go_6:
	li $t4, SHOOT5
	sw $t2, 0($t4)
	li $t4, SHOOT6
	sw $t3, 0($t4)
	li $v0, 6
	j finish_shoot
go_7:
	li $t4, SHOOT6
	sw $t2, 0($t4)
	li $t4, SHOOT7
	sw $t3, 0($t4)
	li $v0, 7
	j finish_shoot
go_8:
	li $t4, SHOOT7
	sw $t2, 0($t4)
	li $t4, SHOOT8
	sw $t3, 0($t4)
	li $v0, 8

finish_shoot:
	jr $ra

#####################################################################


#####################################################################
END_PROGRAM:
	jal clean_all
	li $v0, 10 # terminate the program gracefully
	syscall
