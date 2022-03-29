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
	li $t7, MID_ADDRESS	# t7 stores brown
	
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
	sw $t3, 1044($t0)
	sw $t1, 1056($t0)
	sw $t1, 1060($t0)
	sw $t1, 1064($t0)
	sw $t1, 1068($t0)
	sw $t1, 1072($t0)
	sw $t1, 1076($t0)
	sw $t1, 1080($t0)
	sw $t1, 1088($t0)
	sw $t1, 1296($t0)
	sw $t1, 1316($t0)
	sw $t1, 1320($t0)
	sw $t2, 1324($t0)
	sw $t1, 1328($t0)
	sw $t1, 1332($t0)
	sw $t2, 1336($t0)
	sw $t1, 1340($t0)
	sw $t1, 1552($t0)
	sw $t1, 1568($t0)
	sw $t1, 1572($t0)
	sw $t1, 1576($t0)
	sw $t1, 1580($t0)
	sw $t1, 1584($t0)
	sw $t1, 1588($t0)
	sw $t1, 1592($t0)
	sw $t1, 1600($t0)
	
	sw $t1, 1808($t0)
	sw $t3, 1832($t0)
	sw $t3, 1836($t0)
	sw $t3, 1840($t0)
	sw $t3, 1844($t0)
	sw $t1, 2068($t0)
	sw $t1, 2084($t0)
	sw $t1, 2088($t0)
	sw $t3, 2092($t0)
	sw $t3, 2096($t0)
	sw $t3, 2100($t0)
	sw $t1, 2328($t0)
	sw $t1, 2332($t0)
	sw $t1, 2336($t0)
	sw $t1, 2340($t0)
	sw $t1, 2344($t0)
	sw $t1, 2348($t0)
	sw $t3, 2352($t0)
	sw $t1, 2356($t0)
	sw $t1, 2584($t0)
	sw $t1, 2588($t0)
	sw $t1, 2592($t0)
	sw $t1, 2596($t0)
	sw $t4, 2600($t0)
	sw $t1, 2604($t0)
	sw $t1, 2608($t0)
	sw $t1, 2612($t0)
	sw $t4, 2616($t0)
	
	# draw 3 basic platform
	# first one
	sw $t6, 2832($t0)
	sw $t6, 2836($t0)
	sw $t6, 2840($t0)
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
	
	li $v0, 10 # terminate the program gracefully
	syscall
