glabel xlObjectReset
/* 80082548 0007DB08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008254C 0007DB0C  7C 08 02 A6 */	mflr r0
/* 80082550 0007DB10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80082554 0007DB14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80082558 0007DB18  80 6D 8B 38 */	lwz r3, lbl_8025D1F8-_SDA_BASE_(r13)
/* 8008255C 0007DB1C  83 E3 00 08 */	lwz r31, 8(r3)
/* 80082560 0007DB20  48 00 00 20 */	b lbl_80082580
lbl_80082564:
/* 80082564 0007DB24  38 7F 00 04 */	addi r3, r31, 4
/* 80082568 0007DB28  4B FF E1 89 */	bl rspFreeList
/* 8008256C 0007DB2C  2C 03 00 00 */	cmpwi r3, 0
/* 80082570 0007DB30  40 82 00 0C */	bne lbl_8008257C
/* 80082574 0007DB34  38 60 00 00 */	li r3, 0
/* 80082578 0007DB38  48 00 00 24 */	b lbl_8008259C
lbl_8008257C:
/* 8008257C 0007DB3C  83 FF 00 00 */	lwz r31, 0(r31)
lbl_80082580:
/* 80082580 0007DB40  2C 1F 00 00 */	cmpwi r31, 0
/* 80082584 0007DB44  40 82 FF E0 */	bne lbl_80082564
/* 80082588 0007DB48  38 6D 8B 38 */	addi r3, r13, lbl_8025D1F8-_SDA_BASE_
/* 8008258C 0007DB4C  4B FF E1 65 */	bl rspFreeList
/* 80082590 0007DB50  7C 03 00 D0 */	neg r0, r3
/* 80082594 0007DB54  7C 00 1B 78 */	or r0, r0, r3
/* 80082598 0007DB58  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_8008259C:
/* 8008259C 0007DB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800825A0 0007DB60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800825A4 0007DB64  7C 08 03 A6 */	mtlr r0
/* 800825A8 0007DB68  38 21 00 10 */	addi r1, r1, 0x10
/* 800825AC 0007DB6C  4E 80 00 20 */	blr 
