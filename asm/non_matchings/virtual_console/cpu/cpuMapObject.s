glabel cpuMapObject
/* 8003C614 00037BD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003C618 00037BD8  7C 08 02 A6 */	mflr r0
/* 8003C61C 00037BDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003C620 00037BE0  39 61 00 30 */	addi r11, r1, 0x30
/* 8003C624 00037BE4  48 11 68 35 */	bl _savegpr_27
/* 8003C628 00037BE8  2C 05 00 00 */	cmpwi r5, 0
/* 8003C62C 00037BEC  7D 05 30 50 */	subf r8, r5, r6
/* 8003C630 00037BF0  7C 7B 1B 78 */	mr r27, r3
/* 8003C634 00037BF4  7C 9C 23 78 */	mr r28, r4
/* 8003C638 00037BF8  7C BD 2B 78 */	mr r29, r5
/* 8003C63C 00037BFC  7C FE 3B 78 */	mr r30, r7
/* 8003C640 00037C00  3B E8 00 01 */	addi r31, r8, 1
/* 8003C644 00037C04  40 82 00 48 */	bne lbl_8003C68C
/* 8003C648 00037C08  3C 06 00 01 */	addis r0, r6, 1
/* 8003C64C 00037C0C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8003C650 00037C10  40 82 00 3C */	bne lbl_8003C68C
/* 8003C654 00037C14  7F 85 E3 78 */	mr r5, r28
/* 8003C658 00037C18  7F E8 FB 78 */	mr r8, r31
/* 8003C65C 00037C1C  7F C9 F3 78 */	mr r9, r30
/* 8003C660 00037C20  38 81 00 08 */	addi r4, r1, 8
/* 8003C664 00037C24  38 C0 00 00 */	li r6, 0
/* 8003C668 00037C28  38 E0 00 00 */	li r7, 0
/* 8003C66C 00037C2C  4B FD 0B E5 */	bl cpuMakeDevice
/* 8003C670 00037C30  2C 03 00 00 */	cmpwi r3, 0
/* 8003C674 00037C34  40 82 00 0C */	bne lbl_8003C680
/* 8003C678 00037C38  38 60 00 00 */	li r3, 0
/* 8003C67C 00037C3C  48 00 00 74 */	b lbl_8003C6F0
lbl_8003C680:
/* 8003C680 00037C40  80 01 00 08 */	lwz r0, 8(r1)
/* 8003C684 00037C44  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 8003C688 00037C48  48 00 00 64 */	b lbl_8003C6EC
lbl_8003C68C:
/* 8003C68C 00037C4C  7F 63 DB 78 */	mr r3, r27
/* 8003C690 00037C50  7F 85 E3 78 */	mr r5, r28
/* 8003C694 00037C54  7F A7 EB 78 */	mr r7, r29
/* 8003C698 00037C58  7F E8 FB 78 */	mr r8, r31
/* 8003C69C 00037C5C  7F C9 F3 78 */	mr r9, r30
/* 8003C6A0 00037C60  38 81 00 08 */	addi r4, r1, 8
/* 8003C6A4 00037C64  67 A6 80 00 */	oris r6, r29, 0x8000
/* 8003C6A8 00037C68  4B FD 0B A9 */	bl cpuMakeDevice
/* 8003C6AC 00037C6C  2C 03 00 00 */	cmpwi r3, 0
/* 8003C6B0 00037C70  40 82 00 0C */	bne lbl_8003C6BC
/* 8003C6B4 00037C74  38 60 00 00 */	li r3, 0
/* 8003C6B8 00037C78  48 00 00 38 */	b lbl_8003C6F0
lbl_8003C6BC:
/* 8003C6BC 00037C7C  7F 63 DB 78 */	mr r3, r27
/* 8003C6C0 00037C80  7F 85 E3 78 */	mr r5, r28
/* 8003C6C4 00037C84  7F A7 EB 78 */	mr r7, r29
/* 8003C6C8 00037C88  7F E8 FB 78 */	mr r8, r31
/* 8003C6CC 00037C8C  7F C9 F3 78 */	mr r9, r30
/* 8003C6D0 00037C90  38 81 00 08 */	addi r4, r1, 8
/* 8003C6D4 00037C94  67 A6 A0 00 */	oris r6, r29, 0xa000
/* 8003C6D8 00037C98  4B FD 0B 79 */	bl cpuMakeDevice
/* 8003C6DC 00037C9C  2C 03 00 00 */	cmpwi r3, 0
/* 8003C6E0 00037CA0  40 82 00 0C */	bne lbl_8003C6EC
/* 8003C6E4 00037CA4  38 60 00 00 */	li r3, 0
/* 8003C6E8 00037CA8  48 00 00 08 */	b lbl_8003C6F0
lbl_8003C6EC:
/* 8003C6EC 00037CAC  38 60 00 01 */	li r3, 1
lbl_8003C6F0:
/* 8003C6F0 00037CB0  39 61 00 30 */	addi r11, r1, 0x30
/* 8003C6F4 00037CB4  48 11 67 B1 */	bl _restgpr_27
/* 8003C6F8 00037CB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003C6FC 00037CBC  7C 08 03 A6 */	mtlr r0
/* 8003C700 00037CC0  38 21 00 30 */	addi r1, r1, 0x30
/* 8003C704 00037CC4  4E 80 00 20 */	blr 
