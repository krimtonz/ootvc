glabel cpuSetXPC
/* 8003D004 000385C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003D008 000385C8  7C 08 02 A6 */	mflr r0
/* 8003D00C 000385CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003D010 000385D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8003D014 000385D4  48 11 5E 41 */	bl _savegpr_26
/* 8003D018 000385D8  3C 80 80 17 */	lis r4, lbl_80171F38@ha
/* 8003D01C 000385DC  7C 7A 1B 78 */	mr r26, r3
/* 8003D020 000385E0  7C DB 33 78 */	mr r27, r6
/* 8003D024 000385E4  7C FD 3B 78 */	mr r29, r7
/* 8003D028 000385E8  7D 1C 43 78 */	mr r28, r8
/* 8003D02C 000385EC  7D 3F 4B 78 */	mr r31, r9
/* 8003D030 000385F0  7D 5E 53 78 */	mr r30, r10
/* 8003D034 000385F4  38 84 1F 38 */	addi r4, r4, lbl_80171F38@l
/* 8003D038 000385F8  48 04 53 B5 */	bl xlObjectTest
/* 8003D03C 000385FC  2C 03 00 00 */	cmpwi r3, 0
/* 8003D040 00038600  40 82 00 0C */	bne lbl_8003D04C
/* 8003D044 00038604  38 60 00 00 */	li r3, 0
/* 8003D048 00038608  48 00 00 28 */	b lbl_8003D070
lbl_8003D04C:
/* 8003D04C 0003860C  80 1A 00 00 */	lwz r0, 0(r26)
/* 8003D050 00038610  38 60 00 01 */	li r3, 1
/* 8003D054 00038614  93 7A 00 20 */	stw r27, 0x20(r26)
/* 8003D058 00038618  60 00 00 04 */	ori r0, r0, 4
/* 8003D05C 0003861C  90 1A 00 00 */	stw r0, 0(r26)
/* 8003D060 00038620  93 9A 00 0C */	stw r28, 0xc(r26)
/* 8003D064 00038624  93 BA 00 08 */	stw r29, 8(r26)
/* 8003D068 00038628  93 DA 00 14 */	stw r30, 0x14(r26)
/* 8003D06C 0003862C  93 FA 00 10 */	stw r31, 0x10(r26)
lbl_8003D070:
/* 8003D070 00038630  39 61 00 20 */	addi r11, r1, 0x20
/* 8003D074 00038634  48 11 5E 2D */	bl _restgpr_26
/* 8003D078 00038638  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003D07C 0003863C  7C 08 03 A6 */	mtlr r0
/* 8003D080 00038640  38 21 00 20 */	addi r1, r1, 0x20
/* 8003D084 00038644  4E 80 00 20 */	blr 
