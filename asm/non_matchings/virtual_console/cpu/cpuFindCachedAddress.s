glabel cpuFindCachedAddress
/* 8000CDA8 00008368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000CDAC 0000836C  3C C3 00 01 */	addis r6, r3, 1
/* 8000CDB0 00008370  38 C6 14 98 */	addi r6, r6, 0x1498
/* 8000CDB4 00008374  39 40 00 00 */	li r10, 0
/* 8000CDB8 00008378  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8000CDBC 0000837C  7C C7 33 78 */	mr r7, r6
/* 8000CDC0 00008380  7C 09 03 A6 */	mtctr r0
/* 8000CDC4 00008384  2C 00 00 00 */	cmpwi r0, 0
/* 8000CDC8 00008388  40 81 01 A8 */	ble lbl_8000CF70
lbl_8000CDCC:
/* 8000CDCC 0000838C  80 07 00 00 */	lwz r0, 0(r7)
/* 8000CDD0 00008390  7C 04 00 00 */	cmpw r4, r0
/* 8000CDD4 00008394  40 82 01 90 */	bne lbl_8000CF64
/* 8000CDD8 00008398  2C 0A 00 80 */	cmpwi r10, 0x80
/* 8000CDDC 0000839C  40 81 01 54 */	ble lbl_8000CF30
/* 8000CDE0 000083A0  1C 0A 00 0C */	mulli r0, r10, 0xc
/* 8000CDE4 000083A4  2C 0A 00 00 */	cmpwi r10, 0
/* 8000CDE8 000083A8  7D 47 53 78 */	mr r7, r10
/* 8000CDEC 000083AC  7D 26 02 14 */	add r9, r6, r0
/* 8000CDF0 000083B0  7D 06 00 2E */	lwzx r8, r6, r0
/* 8000CDF4 000083B4  80 89 00 04 */	lwz r4, 4(r9)
/* 8000CDF8 000083B8  80 09 00 08 */	lwz r0, 8(r9)
/* 8000CDFC 000083BC  91 01 00 08 */	stw r8, 8(r1)
/* 8000CE00 000083C0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8000CE04 000083C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8000CE08 000083C8  40 81 01 0C */	ble lbl_8000CF14
/* 8000CE0C 000083CC  55 44 E8 FF */	rlwinm. r4, r10, 0x1d, 3, 0x1f
/* 8000CE10 000083D0  7C 0A 00 D0 */	neg r0, r10
/* 8000CE14 000083D4  7C 89 03 A6 */	mtctr r4
/* 8000CE18 000083D8  41 82 00 D4 */	beq lbl_8000CEEC
lbl_8000CE1C:
/* 8000CE1C 000083DC  80 E9 FF F4 */	lwz r7, -0xc(r9)
/* 8000CE20 000083E0  80 89 FF F8 */	lwz r4, -8(r9)
/* 8000CE24 000083E4  90 E9 00 00 */	stw r7, 0(r9)
/* 8000CE28 000083E8  90 89 00 04 */	stw r4, 4(r9)
/* 8000CE2C 000083EC  80 89 FF FC */	lwz r4, -4(r9)
/* 8000CE30 000083F0  90 89 00 08 */	stw r4, 8(r9)
/* 8000CE34 000083F4  80 E9 FF E8 */	lwz r7, -0x18(r9)
/* 8000CE38 000083F8  80 89 FF EC */	lwz r4, -0x14(r9)
/* 8000CE3C 000083FC  90 E9 FF F4 */	stw r7, -0xc(r9)
/* 8000CE40 00008400  90 89 FF F8 */	stw r4, -8(r9)
/* 8000CE44 00008404  80 89 FF F0 */	lwz r4, -0x10(r9)
/* 8000CE48 00008408  90 89 FF FC */	stw r4, -4(r9)
/* 8000CE4C 0000840C  80 E9 FF DC */	lwz r7, -0x24(r9)
/* 8000CE50 00008410  80 89 FF E0 */	lwz r4, -0x20(r9)
/* 8000CE54 00008414  90 E9 FF E8 */	stw r7, -0x18(r9)
/* 8000CE58 00008418  90 89 FF EC */	stw r4, -0x14(r9)
/* 8000CE5C 0000841C  80 89 FF E4 */	lwz r4, -0x1c(r9)
/* 8000CE60 00008420  90 89 FF F0 */	stw r4, -0x10(r9)
/* 8000CE64 00008424  80 E9 FF D0 */	lwz r7, -0x30(r9)
/* 8000CE68 00008428  80 89 FF D4 */	lwz r4, -0x2c(r9)
/* 8000CE6C 0000842C  90 E9 FF DC */	stw r7, -0x24(r9)
/* 8000CE70 00008430  90 89 FF E0 */	stw r4, -0x20(r9)
/* 8000CE74 00008434  80 89 FF D8 */	lwz r4, -0x28(r9)
/* 8000CE78 00008438  90 89 FF E4 */	stw r4, -0x1c(r9)
/* 8000CE7C 0000843C  80 E9 FF C4 */	lwz r7, -0x3c(r9)
/* 8000CE80 00008440  80 89 FF C8 */	lwz r4, -0x38(r9)
/* 8000CE84 00008444  90 E9 FF D0 */	stw r7, -0x30(r9)
/* 8000CE88 00008448  90 89 FF D4 */	stw r4, -0x2c(r9)
/* 8000CE8C 0000844C  80 89 FF CC */	lwz r4, -0x34(r9)
/* 8000CE90 00008450  90 89 FF D8 */	stw r4, -0x28(r9)
/* 8000CE94 00008454  80 E9 FF B8 */	lwz r7, -0x48(r9)
/* 8000CE98 00008458  80 89 FF BC */	lwz r4, -0x44(r9)
/* 8000CE9C 0000845C  90 E9 FF C4 */	stw r7, -0x3c(r9)
/* 8000CEA0 00008460  90 89 FF C8 */	stw r4, -0x38(r9)
/* 8000CEA4 00008464  80 89 FF C0 */	lwz r4, -0x40(r9)
/* 8000CEA8 00008468  90 89 FF CC */	stw r4, -0x34(r9)
/* 8000CEAC 0000846C  80 E9 FF AC */	lwz r7, -0x54(r9)
/* 8000CEB0 00008470  80 89 FF B0 */	lwz r4, -0x50(r9)
/* 8000CEB4 00008474  90 E9 FF B8 */	stw r7, -0x48(r9)
/* 8000CEB8 00008478  90 89 FF BC */	stw r4, -0x44(r9)
/* 8000CEBC 0000847C  80 89 FF B4 */	lwz r4, -0x4c(r9)
/* 8000CEC0 00008480  90 89 FF C0 */	stw r4, -0x40(r9)
/* 8000CEC4 00008484  80 E9 FF A0 */	lwz r7, -0x60(r9)
/* 8000CEC8 00008488  80 89 FF A4 */	lwz r4, -0x5c(r9)
/* 8000CECC 0000848C  90 E9 FF AC */	stw r7, -0x54(r9)
/* 8000CED0 00008490  90 89 FF B0 */	stw r4, -0x50(r9)
/* 8000CED4 00008494  80 89 FF A8 */	lwz r4, -0x58(r9)
/* 8000CED8 00008498  90 89 FF B4 */	stw r4, -0x4c(r9)
/* 8000CEDC 0000849C  39 29 FF A0 */	addi r9, r9, -96
/* 8000CEE0 000084A0  42 00 FF 3C */	bdnz lbl_8000CE1C
/* 8000CEE4 000084A4  71 47 00 07 */	andi. r7, r10, 7
/* 8000CEE8 000084A8  41 82 00 28 */	beq lbl_8000CF10
lbl_8000CEEC:
/* 8000CEEC 000084AC  7C E9 03 A6 */	mtctr r7
lbl_8000CEF0:
/* 8000CEF0 000084B0  80 E9 FF F4 */	lwz r7, -0xc(r9)
/* 8000CEF4 000084B4  80 89 FF F8 */	lwz r4, -8(r9)
/* 8000CEF8 000084B8  90 E9 00 00 */	stw r7, 0(r9)
/* 8000CEFC 000084BC  90 89 00 04 */	stw r4, 4(r9)
/* 8000CF00 000084C0  80 89 FF FC */	lwz r4, -4(r9)
/* 8000CF04 000084C4  90 89 00 08 */	stw r4, 8(r9)
/* 8000CF08 000084C8  39 29 FF F4 */	addi r9, r9, -12
/* 8000CF0C 000084CC  42 00 FF E4 */	bdnz lbl_8000CEF0
lbl_8000CF10:
/* 8000CF10 000084D0  7D 4A 02 14 */	add r10, r10, r0
lbl_8000CF14:
/* 8000CF14 000084D4  80 E1 00 08 */	lwz r7, 8(r1)
/* 8000CF18 000084D8  1D 0A 00 0C */	mulli r8, r10, 0xc
/* 8000CF1C 000084DC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8000CF20 000084E0  7C E8 31 6E */	stwux r7, r8, r6
/* 8000CF24 000084E4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8000CF28 000084E8  90 88 00 04 */	stw r4, 4(r8)
/* 8000CF2C 000084EC  90 08 00 08 */	stw r0, 8(r8)
lbl_8000CF30:
/* 8000CF30 000084F0  1C EA 00 0C */	mulli r7, r10, 0xc
/* 8000CF34 000084F4  7C 86 3A 14 */	add r4, r6, r7
/* 8000CF38 000084F8  80 84 00 08 */	lwz r4, 8(r4)
/* 8000CF3C 000084FC  80 04 00 28 */	lwz r0, 0x28(r4)
/* 8000CF40 00008500  2C 00 00 00 */	cmpwi r0, 0
/* 8000CF44 00008504  40 81 00 0C */	ble lbl_8000CF50
/* 8000CF48 00008508  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8000CF4C 0000850C  90 04 00 28 */	stw r0, 0x28(r4)
lbl_8000CF50:
/* 8000CF50 00008510  7C 86 3A 14 */	add r4, r6, r7
/* 8000CF54 00008514  38 60 00 01 */	li r3, 1
/* 8000CF58 00008518  80 04 00 04 */	lwz r0, 4(r4)
/* 8000CF5C 0000851C  90 05 00 00 */	stw r0, 0(r5)
/* 8000CF60 00008520  48 00 00 14 */	b lbl_8000CF74
lbl_8000CF64:
/* 8000CF64 00008524  38 E7 00 0C */	addi r7, r7, 0xc
/* 8000CF68 00008528  39 4A 00 01 */	addi r10, r10, 1
/* 8000CF6C 0000852C  42 00 FE 60 */	bdnz lbl_8000CDCC
lbl_8000CF70:
/* 8000CF70 00008530  38 60 00 00 */	li r3, 0
lbl_8000CF74:
/* 8000CF74 00008534  38 21 00 20 */	addi r1, r1, 0x20
/* 8000CF78 00008538  4E 80 00 20 */	blr 
