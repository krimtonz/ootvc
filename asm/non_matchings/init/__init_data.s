glabel __init_data
/* 80004238 00000338  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000423C 0000033C  7C 08 02 A6 */	mflr r0
/* 80004240 00000340  90 01 00 24 */	stw r0, 0x24(r1)
/* 80004244 00000344  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80004248 00000348  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8000424C 0000034C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80004250 00000350  3F A0 80 00 */	lis r29, __rom_copy_info@ha
/* 80004254 00000354  3B BD 64 20 */	addi r29, r29, __rom_copy_info@l
lbl_80004258:
/* 80004258 00000358  83 DD 00 08 */	lwz r30, 8(r29)
/* 8000425C 0000035C  2C 1E 00 00 */	cmpwi r30, 0
/* 80004260 00000360  41 82 00 38 */	beq lbl_80004298
/* 80004264 00000364  80 9D 00 00 */	lwz r4, 0(r29)
/* 80004268 00000368  83 FD 00 04 */	lwz r31, 4(r29)
/* 8000426C 0000036C  41 82 00 24 */	beq lbl_80004290
/* 80004270 00000370  7C 1F 20 40 */	cmplw r31, r4
/* 80004274 00000374  41 82 00 1C */	beq lbl_80004290
/* 80004278 00000378  7F E3 FB 78 */	mr r3, r31
/* 8000427C 0000037C  7F C5 F3 78 */	mr r5, r30
/* 80004280 00000380  48 00 00 B9 */	bl memcpy
/* 80004284 00000384  7F E3 FB 78 */	mr r3, r31
/* 80004288 00000388  7F C4 F3 78 */	mr r4, r30
/* 8000428C 0000038C  48 00 00 79 */	bl __flush_cache
lbl_80004290:
/* 80004290 00000390  3B BD 00 0C */	addi r29, r29, 0xc
/* 80004294 00000394  4B FF FF C4 */	b lbl_80004258
lbl_80004298:
/* 80004298 00000398  3F A0 80 00 */	lis r29, __bss_init_info@ha
/* 8000429C 0000039C  3B BD 64 A4 */	addi r29, r29, __bss_init_info@l
lbl_800042A0:
/* 800042A0 000003A0  80 BD 00 04 */	lwz r5, 4(r29)
/* 800042A4 000003A4  2C 05 00 00 */	cmpwi r5, 0
/* 800042A8 000003A8  41 82 00 1C */	beq lbl_800042C4
/* 800042AC 000003AC  80 7D 00 00 */	lwz r3, 0(r29)
/* 800042B0 000003B0  41 82 00 0C */	beq lbl_800042BC
/* 800042B4 000003B4  38 80 00 00 */	li r4, 0
/* 800042B8 000003B8  48 00 01 85 */	bl memset
lbl_800042BC:
/* 800042BC 000003BC  3B BD 00 08 */	addi r29, r29, 8
/* 800042C0 000003C0  4B FF FF E0 */	b lbl_800042A0
lbl_800042C4:
/* 800042C4 000003C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800042C8 000003C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800042CC 000003CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800042D0 000003D0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800042D4 000003D4  7C 08 03 A6 */	mtlr r0
/* 800042D8 000003D8  38 21 00 20 */	addi r1, r1, 0x20
/* 800042DC 000003DC  4E 80 00 20 */	blr 
