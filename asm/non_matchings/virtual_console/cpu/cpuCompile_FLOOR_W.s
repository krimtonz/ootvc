glabel cpuCompile_FLOOR_W
/* 80034A38 0002FFF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80034A3C 0002FFFC  7C 08 02 A6 */	mflr r0
/* 80034A40 00030000  3C A0 30 00 */	lis r5, 0x30000034@ha
/* 80034A44 00030004  90 01 00 24 */	stw r0, 0x24(r1)
/* 80034A48 00030008  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80034A4C 0003000C  7C 9F 23 78 */	mr r31, r4
/* 80034A50 00030010  38 85 00 34 */	addi r4, r5, 0x30000034@l
/* 80034A54 00030014  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80034A58 00030018  7C 7E 1B 78 */	mr r30, r3
/* 80034A5C 0003001C  38 61 00 08 */	addi r3, r1, 8
/* 80034A60 00030020  48 04 C6 99 */	bl xlHeapTake
/* 80034A64 00030024  2C 03 00 00 */	cmpwi r3, 0
/* 80034A68 00030028  40 82 00 0C */	bne lbl_80034A74
/* 80034A6C 0003002C  38 60 00 00 */	li r3, 0
/* 80034A70 00030030  48 00 00 F8 */	b lbl_80034B68
lbl_80034A74:
/* 80034A74 00030034  80 61 00 08 */	lwz r3, 8(r1)
/* 80034A78 00030038  38 1E 01 48 */	addi r0, r30, 0x148
/* 80034A7C 0003003C  7C 1E 00 50 */	subf r0, r30, r0
/* 80034A80 00030040  3D 60 FC 01 */	lis r11, 0xFC010040@ha
/* 80034A84 00030044  90 7F 00 00 */	stw r3, 0(r31)
/* 80034A88 00030048  3C A0 94 22 */	lis r5, 0x9421FFE0@ha
/* 80034A8C 0003004C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80034A90 00030050  39 8B 00 40 */	addi r12, r11, 0xFC010040@l
/* 80034A94 00030054  80 61 00 08 */	lwz r3, 8(r1)
/* 80034A98 00030058  38 05 FF E0 */	addi r0, r5, 0x9421FFE0@l
/* 80034A9C 0003005C  3D 20 42 80 */	lis r9, 0x42800008@ha
/* 80034AA0 00030060  3D 40 41 80 */	lis r10, 0x4180000C@ha
/* 80034AA4 00030064  90 03 00 00 */	stw r0, 0(r3)
/* 80034AA8 00030068  3C 04 C8 03 */	addis r0, r4, 0xc803
/* 80034AAC 0003006C  3F E0 38 C0 */	lis r31, 0x38C00001@ha
/* 80034AB0 00030070  3D 00 FC 20 */	lis r8, 0xFC20081E@ha
/* 80034AB4 00030074  80 61 00 08 */	lwz r3, 8(r1)
/* 80034AB8 00030078  3C E0 D8 21 */	lis r7, 0xD8210010@ha
/* 80034ABC 0003007C  3C C0 80 A1 */	lis r6, 0x80A10014@ha
/* 80034AC0 00030080  3C A0 7C A6 */	lis r5, 0x7CA62850@ha
/* 80034AC4 00030084  90 03 00 04 */	stw r0, 4(r3)
/* 80034AC8 00030088  38 0A 00 0C */	addi r0, r10, 0x4180000C@l
/* 80034ACC 0003008C  3C 60 4E 80 */	lis r3, 0x4E800020@ha
/* 80034AD0 00030090  39 5F 00 01 */	addi r10, r31, 0x38C00001@l
/* 80034AD4 00030094  81 61 00 08 */	lwz r11, 8(r1)
/* 80034AD8 00030098  3C 80 38 21 */	lis r4, 0x38210020@ha
/* 80034ADC 0003009C  91 8B 00 08 */	stw r12, 8(r11)
/* 80034AE0 000300A0  39 89 00 08 */	addi r12, r9, 0x42800008@l
/* 80034AE4 000300A4  81 21 00 08 */	lwz r9, 8(r1)
/* 80034AE8 000300A8  90 09 00 0C */	stw r0, 0xc(r9)
/* 80034AEC 000300AC  39 28 08 1E */	addi r9, r8, 0xFC20081E@l
/* 80034AF0 000300B0  39 07 00 10 */	addi r8, r7, 0xD8210010@l
/* 80034AF4 000300B4  38 E6 00 14 */	addi r7, r6, 0x80A10014@l
/* 80034AF8 000300B8  81 61 00 08 */	lwz r11, 8(r1)
/* 80034AFC 000300BC  38 C5 28 50 */	addi r6, r5, 0x7CA62850@l
/* 80034B00 000300C0  38 A4 00 20 */	addi r5, r4, 0x38210020@l
/* 80034B04 000300C4  38 03 00 20 */	addi r0, r3, 0x4E800020@l
/* 80034B08 000300C8  93 EB 00 10 */	stw r31, 0x10(r11)
/* 80034B0C 000300CC  38 80 00 34 */	li r4, 0x34
/* 80034B10 000300D0  81 61 00 08 */	lwz r11, 8(r1)
/* 80034B14 000300D4  91 8B 00 14 */	stw r12, 0x14(r11)
/* 80034B18 000300D8  80 61 00 08 */	lwz r3, 8(r1)
/* 80034B1C 000300DC  91 43 00 18 */	stw r10, 0x18(r3)
/* 80034B20 000300E0  80 61 00 08 */	lwz r3, 8(r1)
/* 80034B24 000300E4  91 23 00 1C */	stw r9, 0x1c(r3)
/* 80034B28 000300E8  80 61 00 08 */	lwz r3, 8(r1)
/* 80034B2C 000300EC  91 03 00 20 */	stw r8, 0x20(r3)
/* 80034B30 000300F0  80 61 00 08 */	lwz r3, 8(r1)
/* 80034B34 000300F4  90 E3 00 24 */	stw r7, 0x24(r3)
/* 80034B38 000300F8  80 61 00 08 */	lwz r3, 8(r1)
/* 80034B3C 000300FC  90 C3 00 28 */	stw r6, 0x28(r3)
/* 80034B40 00030100  80 61 00 08 */	lwz r3, 8(r1)
/* 80034B44 00030104  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 80034B48 00030108  80 61 00 08 */	lwz r3, 8(r1)
/* 80034B4C 0003010C  90 03 00 30 */	stw r0, 0x30(r3)
/* 80034B50 00030110  80 61 00 08 */	lwz r3, 8(r1)
/* 80034B54 00030114  48 05 6B 31 */	bl DCStoreRange
/* 80034B58 00030118  80 61 00 08 */	lwz r3, 8(r1)
/* 80034B5C 0003011C  38 80 00 34 */	li r4, 0x34
/* 80034B60 00030120  48 05 6B AD */	bl ICInvalidateRange
/* 80034B64 00030124  38 60 00 01 */	li r3, 1
lbl_80034B68:
/* 80034B68 00030128  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80034B6C 0003012C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80034B70 00030130  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80034B74 00030134  7C 08 03 A6 */	mtlr r0
/* 80034B78 00030138  38 21 00 20 */	addi r1, r1, 0x20
/* 80034B7C 0003013C  4E 80 00 20 */	blr 
