glabel func_800823EC
/* 800823EC 0007D9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800823F0 0007D9B0  7C 08 02 A6 */	mflr r0
/* 800823F4 0007D9B4  2C 03 00 00 */	cmpwi r3, 0
/* 800823F8 0007D9B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800823FC 0007D9BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80082400 0007D9C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80082404 0007D9C4  7C 9E 23 78 */	mr r30, r4
/* 80082408 0007D9C8  41 82 00 30 */	beq lbl_80082438
/* 8008240C 0007D9CC  83 E3 FF FC */	lwz r31, -4(r3)
/* 80082410 0007D9D0  80 6D 8B 38 */	lwz r3, lbl_8025D1F8-_SDA_BASE_(r13)
/* 80082414 0007D9D4  7F E4 FB 78 */	mr r4, r31
/* 80082418 0007D9D8  4B FF E4 DD */	bl xlListTestItem
/* 8008241C 0007D9DC  2C 03 00 00 */	cmpwi r3, 0
/* 80082420 0007D9E0  41 82 00 18 */	beq lbl_80082438
/* 80082424 0007D9E4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80082428 0007D9E8  7C 00 F0 40 */	cmplw r0, r30
/* 8008242C 0007D9EC  40 82 00 0C */	bne lbl_80082438
/* 80082430 0007D9F0  38 60 00 01 */	li r3, 1
/* 80082434 0007D9F4  48 00 00 08 */	b lbl_8008243C
lbl_80082438:
/* 80082438 0007D9F8  38 60 00 00 */	li r3, 0
lbl_8008243C:
/* 8008243C 0007D9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80082440 0007DA00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80082444 0007DA04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80082448 0007DA08  7C 08 03 A6 */	mtlr r0
/* 8008244C 0007DA0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80082450 0007DA10  4E 80 00 20 */	blr
