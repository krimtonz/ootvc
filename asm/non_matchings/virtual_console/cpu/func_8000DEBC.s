glabel func_8000DEBC
/* 8000DEBC 0000947C  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 8000DEC0 00009480  38 C0 00 00 */	li r6, 0
/* 8000DEC4 00009484  38 E0 00 02 */	li r7, 2
/* 8000DEC8 00009488  41 82 00 10 */	beq lbl_8000DED8
/* 8000DECC 0000948C  90 E5 00 00 */	stw r7, 0(r5)
/* 8000DED0 00009490  38 60 00 01 */	li r3, 1
/* 8000DED4 00009494  4E 80 00 20 */	blr 
lbl_8000DED8:
/* 8000DED8 00009498  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8000DEDC 0000949C  40 82 00 74 */	bne lbl_8000DF50
/* 8000DEE0 000094A0  54 84 06 F8 */	rlwinm r4, r4, 0, 0x1b, 0x1c
/* 8000DEE4 000094A4  68 80 00 08 */	xori r0, r4, 8
/* 8000DEE8 000094A8  2C 00 00 00 */	cmpwi r0, 0
/* 8000DEEC 000094AC  41 82 00 40 */	beq lbl_8000DF2C
/* 8000DEF0 000094B0  38 60 00 08 */	li r3, 8
/* 8000DEF4 000094B4  7C 63 20 10 */	subfc r3, r3, r4
/* 8000DEF8 000094B8  7C 06 31 10 */	subfe r0, r6, r6
/* 8000DEFC 000094BC  7C 03 19 10 */	subfe r0, r3, r3
/* 8000DF00 000094C0  7C 00 00 D1 */	neg. r0, r0
/* 8000DF04 000094C4  41 82 00 10 */	beq lbl_8000DF14
/* 8000DF08 000094C8  2C 04 00 00 */	cmpwi r4, 0
/* 8000DF0C 000094CC  41 82 00 2C */	beq lbl_8000DF38
/* 8000DF10 000094D0  48 00 00 30 */	b lbl_8000DF40
lbl_8000DF14:
/* 8000DF14 000094D4  68 80 00 10 */	xori r0, r4, 0x10
/* 8000DF18 000094D8  2C 00 00 00 */	cmpwi r0, 0
/* 8000DF1C 000094DC  41 82 00 08 */	beq lbl_8000DF24
/* 8000DF20 000094E0  48 00 00 20 */	b lbl_8000DF40
lbl_8000DF24:
/* 8000DF24 000094E4  90 C5 00 00 */	stw r6, 0(r5)
/* 8000DF28 000094E8  48 00 00 20 */	b lbl_8000DF48
lbl_8000DF2C:
/* 8000DF2C 000094EC  38 00 00 01 */	li r0, 1
/* 8000DF30 000094F0  90 05 00 00 */	stw r0, 0(r5)
/* 8000DF34 000094F4  48 00 00 14 */	b lbl_8000DF48
lbl_8000DF38:
/* 8000DF38 000094F8  90 E5 00 00 */	stw r7, 0(r5)
/* 8000DF3C 000094FC  48 00 00 0C */	b lbl_8000DF48
lbl_8000DF40:
/* 8000DF40 00009500  38 60 00 00 */	li r3, 0
/* 8000DF44 00009504  4E 80 00 20 */	blr 
lbl_8000DF48:
/* 8000DF48 00009508  38 60 00 01 */	li r3, 1
/* 8000DF4C 0000950C  4E 80 00 20 */	blr 
lbl_8000DF50:
/* 8000DF50 00009510  38 60 00 00 */	li r3, 0
/* 8000DF54 00009514  4E 80 00 20 */	blr 
