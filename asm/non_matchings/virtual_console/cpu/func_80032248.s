glabel func_80032248
/* 80032248 0002D808  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003224C 0002D80C  7C 08 02 A6 */	mflr r0
/* 80032250 0002D810  90 01 00 34 */	stw r0, 0x34(r1)
/* 80032254 0002D814  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80032258 0002D818  7C BF 2B 78 */	mr r31, r5
/* 8003225C 0002D81C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80032260 0002D820  7C 9E 23 78 */	mr r30, r4
/* 80032264 0002D824  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80032268 0002D828  7C 7D 1B 78 */	mr r29, r3
/* 8003226C 0002D82C  80 C3 00 00 */	lwz r6, 0(r3)
/* 80032270 0002D830  54 C0 06 B5 */	rlwinm. r0, r6, 0, 0x1a, 0x1a
/* 80032274 0002D834  41 82 00 0C */	beq lbl_80032280
/* 80032278 0002D838  54 C0 06 F2 */	rlwinm r0, r6, 0, 0x1b, 0x19
/* 8003227C 0002D83C  90 03 00 00 */	stw r0, 0(r3)
lbl_80032280:
/* 80032280 0002D840  7F A3 EB 78 */	mr r3, r29
/* 80032284 0002D844  7F C4 F3 78 */	mr r4, r30
/* 80032288 0002D848  7F E5 FB 78 */	mr r5, r31
/* 8003228C 0002D84C  4B FD AB 1D */	bl cpuFindCachedAddress
/* 80032290 0002D850  2C 03 00 00 */	cmpwi r3, 0
/* 80032294 0002D854  41 82 00 0C */	beq lbl_800322A0
/* 80032298 0002D858  38 60 00 01 */	li r3, 1
/* 8003229C 0002D85C  48 00 04 18 */	b lbl_800326B4
lbl_800322A0:
/* 800322A0 0002D860  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 800322A4 0002D864  2C 03 00 00 */	cmpwi r3, 0
/* 800322A8 0002D868  90 61 00 08 */	stw r3, 8(r1)
/* 800322AC 0002D86C  41 82 00 1C */	beq lbl_800322C8
/* 800322B0 0002D870  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800322B4 0002D874  7C 1E 00 00 */	cmpw r30, r0
/* 800322B8 0002D878  41 80 00 10 */	blt lbl_800322C8
/* 800322BC 0002D87C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800322C0 0002D880  7C 00 F0 00 */	cmpw r0, r30
/* 800322C4 0002D884  40 80 00 24 */	bge lbl_800322E8
lbl_800322C8:
/* 800322C8 0002D888  7F A3 EB 78 */	mr r3, r29
/* 800322CC 0002D88C  7F C5 F3 78 */	mr r5, r30
/* 800322D0 0002D890  38 81 00 08 */	addi r4, r1, 8
/* 800322D4 0002D894  4B FF FA 81 */	bl cpuMakeFunction
/* 800322D8 0002D898  2C 03 00 00 */	cmpwi r3, 0
/* 800322DC 0002D89C  40 82 00 0C */	bne lbl_800322E8
/* 800322E0 0002D8A0  38 60 00 00 */	li r3, 0
/* 800322E4 0002D8A4  48 00 03 D0 */	b lbl_800326B4
lbl_800322E8:
/* 800322E8 0002D8A8  80 C1 00 08 */	lwz r6, 8(r1)
/* 800322EC 0002D8AC  38 E0 00 00 */	li r7, 0
/* 800322F0 0002D8B0  38 A0 00 00 */	li r5, 0
/* 800322F4 0002D8B4  80 06 00 08 */	lwz r0, 8(r6)
/* 800322F8 0002D8B8  7C 09 03 A6 */	mtctr r0
/* 800322FC 0002D8BC  2C 00 00 00 */	cmpwi r0, 0
/* 80032300 0002D8C0  40 81 01 A8 */	ble lbl_800324A8
lbl_80032304:
/* 80032304 0002D8C4  80 86 00 0C */	lwz r4, 0xc(r6)
/* 80032308 0002D8C8  7C 64 2A 14 */	add r3, r4, r5
/* 8003230C 0002D8CC  80 03 00 04 */	lwz r0, 4(r3)
/* 80032310 0002D8D0  7C 1E 00 00 */	cmpw r30, r0
/* 80032314 0002D8D4  40 82 01 88 */	bne lbl_8003249C
/* 80032318 0002D8D8  54 E0 18 38 */	slwi r0, r7, 3
/* 8003231C 0002D8DC  80 61 00 08 */	lwz r3, 8(r1)
/* 80032320 0002D8E0  7C 04 00 2E */	lwzx r0, r4, r0
/* 80032324 0002D8E4  80 63 00 04 */	lwz r3, 4(r3)
/* 80032328 0002D8E8  54 00 10 3A */	slwi r0, r0, 2
/* 8003232C 0002D8EC  7C 03 02 14 */	add r0, r3, r0
/* 80032330 0002D8F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80032334 0002D8F4  80 61 00 08 */	lwz r3, 8(r1)
/* 80032338 0002D8F8  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8003233C 0002D8FC  2C 00 00 00 */	cmpwi r0, 0
/* 80032340 0002D900  40 81 00 0C */	ble lbl_8003234C
/* 80032344 0002D904  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 80032348 0002D908  90 03 00 28 */	stw r0, 0x28(r3)
lbl_8003234C:
/* 8003234C 0002D90C  80 FD 00 18 */	lwz r7, 0x18(r29)
/* 80032350 0002D910  3C DD 00 01 */	addis r6, r29, 1
/* 80032354 0002D914  80 A1 00 08 */	lwz r5, 8(r1)
/* 80032358 0002D918  38 C6 14 98 */	addi r6, r6, 0x1498
/* 8003235C 0002D91C  2C 07 01 00 */	cmpwi r7, 0x100
/* 80032360 0002D920  80 9F 00 00 */	lwz r4, 0(r31)
/* 80032364 0002D924  40 82 00 0C */	bne lbl_80032370
/* 80032368 0002D928  38 E7 FF FF */	addi r7, r7, -1
/* 8003236C 0002D92C  48 00 00 0C */	b lbl_80032378
lbl_80032370:
/* 80032370 0002D930  38 07 00 01 */	addi r0, r7, 1
/* 80032374 0002D934  90 1D 00 18 */	stw r0, 0x18(r29)
lbl_80032378:
/* 80032378 0002D938  1C 07 00 0C */	mulli r0, r7, 0xc
/* 8003237C 0002D93C  2C 07 00 00 */	cmpwi r7, 0
/* 80032380 0002D940  7D 06 02 14 */	add r8, r6, r0
/* 80032384 0002D944  40 81 01 04 */	ble lbl_80032488
/* 80032388 0002D948  54 E0 E8 FF */	rlwinm. r0, r7, 0x1d, 3, 0x1f
/* 8003238C 0002D94C  7C 09 03 A6 */	mtctr r0
/* 80032390 0002D950  41 82 00 D4 */	beq lbl_80032464
lbl_80032394:
/* 80032394 0002D954  80 68 FF F4 */	lwz r3, -0xc(r8)
/* 80032398 0002D958  80 08 FF F8 */	lwz r0, -8(r8)
/* 8003239C 0002D95C  90 68 00 00 */	stw r3, 0(r8)
/* 800323A0 0002D960  90 08 00 04 */	stw r0, 4(r8)
/* 800323A4 0002D964  80 08 FF FC */	lwz r0, -4(r8)
/* 800323A8 0002D968  90 08 00 08 */	stw r0, 8(r8)
/* 800323AC 0002D96C  80 68 FF E8 */	lwz r3, -0x18(r8)
/* 800323B0 0002D970  80 08 FF EC */	lwz r0, -0x14(r8)
/* 800323B4 0002D974  90 68 FF F4 */	stw r3, -0xc(r8)
/* 800323B8 0002D978  90 08 FF F8 */	stw r0, -8(r8)
/* 800323BC 0002D97C  80 08 FF F0 */	lwz r0, -0x10(r8)
/* 800323C0 0002D980  90 08 FF FC */	stw r0, -4(r8)
/* 800323C4 0002D984  80 68 FF DC */	lwz r3, -0x24(r8)
/* 800323C8 0002D988  80 08 FF E0 */	lwz r0, -0x20(r8)
/* 800323CC 0002D98C  90 68 FF E8 */	stw r3, -0x18(r8)
/* 800323D0 0002D990  90 08 FF EC */	stw r0, -0x14(r8)
/* 800323D4 0002D994  80 08 FF E4 */	lwz r0, -0x1c(r8)
/* 800323D8 0002D998  90 08 FF F0 */	stw r0, -0x10(r8)
/* 800323DC 0002D99C  80 68 FF D0 */	lwz r3, -0x30(r8)
/* 800323E0 0002D9A0  80 08 FF D4 */	lwz r0, -0x2c(r8)
/* 800323E4 0002D9A4  90 68 FF DC */	stw r3, -0x24(r8)
/* 800323E8 0002D9A8  90 08 FF E0 */	stw r0, -0x20(r8)
/* 800323EC 0002D9AC  80 08 FF D8 */	lwz r0, -0x28(r8)
/* 800323F0 0002D9B0  90 08 FF E4 */	stw r0, -0x1c(r8)
/* 800323F4 0002D9B4  80 68 FF C4 */	lwz r3, -0x3c(r8)
/* 800323F8 0002D9B8  80 08 FF C8 */	lwz r0, -0x38(r8)
/* 800323FC 0002D9BC  90 68 FF D0 */	stw r3, -0x30(r8)
/* 80032400 0002D9C0  90 08 FF D4 */	stw r0, -0x2c(r8)
/* 80032404 0002D9C4  80 08 FF CC */	lwz r0, -0x34(r8)
/* 80032408 0002D9C8  90 08 FF D8 */	stw r0, -0x28(r8)
/* 8003240C 0002D9CC  80 68 FF B8 */	lwz r3, -0x48(r8)
/* 80032410 0002D9D0  80 08 FF BC */	lwz r0, -0x44(r8)
/* 80032414 0002D9D4  90 68 FF C4 */	stw r3, -0x3c(r8)
/* 80032418 0002D9D8  90 08 FF C8 */	stw r0, -0x38(r8)
/* 8003241C 0002D9DC  80 08 FF C0 */	lwz r0, -0x40(r8)
/* 80032420 0002D9E0  90 08 FF CC */	stw r0, -0x34(r8)
/* 80032424 0002D9E4  80 68 FF AC */	lwz r3, -0x54(r8)
/* 80032428 0002D9E8  80 08 FF B0 */	lwz r0, -0x50(r8)
/* 8003242C 0002D9EC  90 68 FF B8 */	stw r3, -0x48(r8)
/* 80032430 0002D9F0  90 08 FF BC */	stw r0, -0x44(r8)
/* 80032434 0002D9F4  80 08 FF B4 */	lwz r0, -0x4c(r8)
/* 80032438 0002D9F8  90 08 FF C0 */	stw r0, -0x40(r8)
/* 8003243C 0002D9FC  80 68 FF A0 */	lwz r3, -0x60(r8)
/* 80032440 0002DA00  80 08 FF A4 */	lwz r0, -0x5c(r8)
/* 80032444 0002DA04  90 68 FF AC */	stw r3, -0x54(r8)
/* 80032448 0002DA08  90 08 FF B0 */	stw r0, -0x50(r8)
/* 8003244C 0002DA0C  80 08 FF A8 */	lwz r0, -0x58(r8)
/* 80032450 0002DA10  90 08 FF B4 */	stw r0, -0x4c(r8)
/* 80032454 0002DA14  39 08 FF A0 */	addi r8, r8, -96
/* 80032458 0002DA18  42 00 FF 3C */	bdnz lbl_80032394
/* 8003245C 0002DA1C  70 E7 00 07 */	andi. r7, r7, 7
/* 80032460 0002DA20  41 82 00 28 */	beq lbl_80032488
lbl_80032464:
/* 80032464 0002DA24  7C E9 03 A6 */	mtctr r7
lbl_80032468:
/* 80032468 0002DA28  80 68 FF F4 */	lwz r3, -0xc(r8)
/* 8003246C 0002DA2C  80 08 FF F8 */	lwz r0, -8(r8)
/* 80032470 0002DA30  90 68 00 00 */	stw r3, 0(r8)
/* 80032474 0002DA34  90 08 00 04 */	stw r0, 4(r8)
/* 80032478 0002DA38  80 08 FF FC */	lwz r0, -4(r8)
/* 8003247C 0002DA3C  90 08 00 08 */	stw r0, 8(r8)
/* 80032480 0002DA40  39 08 FF F4 */	addi r8, r8, -12
/* 80032484 0002DA44  42 00 FF E4 */	bdnz lbl_80032468
lbl_80032488:
/* 80032488 0002DA48  93 C6 00 00 */	stw r30, 0(r6)
/* 8003248C 0002DA4C  38 60 00 01 */	li r3, 1
/* 80032490 0002DA50  90 86 00 04 */	stw r4, 4(r6)
/* 80032494 0002DA54  90 A6 00 08 */	stw r5, 8(r6)
/* 80032498 0002DA58  48 00 02 1C */	b lbl_800326B4
lbl_8003249C:
/* 8003249C 0002DA5C  38 A5 00 08 */	addi r5, r5, 8
/* 800324A0 0002DA60  38 E7 00 01 */	addi r7, r7, 1
/* 800324A4 0002DA64  42 00 FE 60 */	bdnz lbl_80032304
lbl_800324A8:
/* 800324A8 0002DA68  3C 7D 00 01 */	addis r3, r29, 1
/* 800324AC 0002DA6C  3C 00 20 00 */	lis r0, 0x2000
/* 800324B0 0002DA70  38 80 00 00 */	li r4, 0
/* 800324B4 0002DA74  90 03 22 1C */	stw r0, 0x221c(r3)
/* 800324B8 0002DA78  38 00 00 21 */	li r0, 0x21
/* 800324BC 0002DA7C  90 83 22 20 */	stw r4, 0x2220(r3)
/* 800324C0 0002DA80  80 61 00 08 */	lwz r3, 8(r1)
/* 800324C4 0002DA84  90 03 00 20 */	stw r0, 0x20(r3)
/* 800324C8 0002DA88  90 81 00 10 */	stw r4, 0x10(r1)
/* 800324CC 0002DA8C  80 61 00 08 */	lwz r3, 8(r1)
/* 800324D0 0002DA90  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800324D4 0002DA94  7C 00 F0 00 */	cmpw r0, r30
/* 800324D8 0002DA98  41 82 00 08 */	beq lbl_800324E0
/* 800324DC 0002DA9C  90 83 00 28 */	stw r4, 0x28(r3)
lbl_800324E0:
/* 800324E0 0002DAA0  80 61 00 08 */	lwz r3, 8(r1)
/* 800324E4 0002DAA4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800324E8 0002DAA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800324EC 0002DAAC  48 00 01 B0 */	b lbl_8003269C
lbl_800324F0:
/* 800324F0 0002DAB0  7C 03 F0 00 */	cmpw r3, r30
/* 800324F4 0002DAB4  40 82 01 80 */	bne lbl_80032674
/* 800324F8 0002DAB8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800324FC 0002DABC  80 65 00 04 */	lwz r3, 4(r5)
/* 80032500 0002DAC0  54 00 10 3A */	slwi r0, r0, 2
/* 80032504 0002DAC4  7C 03 02 14 */	add r0, r3, r0
/* 80032508 0002DAC8  90 1F 00 00 */	stw r0, 0(r31)
/* 8003250C 0002DACC  80 61 00 08 */	lwz r3, 8(r1)
/* 80032510 0002DAD0  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80032514 0002DAD4  2C 00 00 00 */	cmpwi r0, 0
/* 80032518 0002DAD8  40 81 00 0C */	ble lbl_80032524
/* 8003251C 0002DADC  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 80032520 0002DAE0  90 03 00 28 */	stw r0, 0x28(r3)
lbl_80032524:
/* 80032524 0002DAE4  80 FD 00 18 */	lwz r7, 0x18(r29)
/* 80032528 0002DAE8  3C DD 00 01 */	addis r6, r29, 1
/* 8003252C 0002DAEC  80 A1 00 08 */	lwz r5, 8(r1)
/* 80032530 0002DAF0  38 C6 14 98 */	addi r6, r6, 0x1498
/* 80032534 0002DAF4  2C 07 01 00 */	cmpwi r7, 0x100
/* 80032538 0002DAF8  80 9F 00 00 */	lwz r4, 0(r31)
/* 8003253C 0002DAFC  40 82 00 0C */	bne lbl_80032548
/* 80032540 0002DB00  38 E7 FF FF */	addi r7, r7, -1
/* 80032544 0002DB04  48 00 00 0C */	b lbl_80032550
lbl_80032548:
/* 80032548 0002DB08  38 07 00 01 */	addi r0, r7, 1
/* 8003254C 0002DB0C  90 1D 00 18 */	stw r0, 0x18(r29)
lbl_80032550:
/* 80032550 0002DB10  1C 07 00 0C */	mulli r0, r7, 0xc
/* 80032554 0002DB14  2C 07 00 00 */	cmpwi r7, 0
/* 80032558 0002DB18  7D 06 02 14 */	add r8, r6, r0
/* 8003255C 0002DB1C  40 81 01 04 */	ble lbl_80032660
/* 80032560 0002DB20  54 E0 E8 FF */	rlwinm. r0, r7, 0x1d, 3, 0x1f
/* 80032564 0002DB24  7C 09 03 A6 */	mtctr r0
/* 80032568 0002DB28  41 82 00 D4 */	beq lbl_8003263C
lbl_8003256C:
/* 8003256C 0002DB2C  80 68 FF F4 */	lwz r3, -0xc(r8)
/* 80032570 0002DB30  80 08 FF F8 */	lwz r0, -8(r8)
/* 80032574 0002DB34  90 68 00 00 */	stw r3, 0(r8)
/* 80032578 0002DB38  90 08 00 04 */	stw r0, 4(r8)
/* 8003257C 0002DB3C  80 08 FF FC */	lwz r0, -4(r8)
/* 80032580 0002DB40  90 08 00 08 */	stw r0, 8(r8)
/* 80032584 0002DB44  80 68 FF E8 */	lwz r3, -0x18(r8)
/* 80032588 0002DB48  80 08 FF EC */	lwz r0, -0x14(r8)
/* 8003258C 0002DB4C  90 68 FF F4 */	stw r3, -0xc(r8)
/* 80032590 0002DB50  90 08 FF F8 */	stw r0, -8(r8)
/* 80032594 0002DB54  80 08 FF F0 */	lwz r0, -0x10(r8)
/* 80032598 0002DB58  90 08 FF FC */	stw r0, -4(r8)
/* 8003259C 0002DB5C  80 68 FF DC */	lwz r3, -0x24(r8)
/* 800325A0 0002DB60  80 08 FF E0 */	lwz r0, -0x20(r8)
/* 800325A4 0002DB64  90 68 FF E8 */	stw r3, -0x18(r8)
/* 800325A8 0002DB68  90 08 FF EC */	stw r0, -0x14(r8)
/* 800325AC 0002DB6C  80 08 FF E4 */	lwz r0, -0x1c(r8)
/* 800325B0 0002DB70  90 08 FF F0 */	stw r0, -0x10(r8)
/* 800325B4 0002DB74  80 68 FF D0 */	lwz r3, -0x30(r8)
/* 800325B8 0002DB78  80 08 FF D4 */	lwz r0, -0x2c(r8)
/* 800325BC 0002DB7C  90 68 FF DC */	stw r3, -0x24(r8)
/* 800325C0 0002DB80  90 08 FF E0 */	stw r0, -0x20(r8)
/* 800325C4 0002DB84  80 08 FF D8 */	lwz r0, -0x28(r8)
/* 800325C8 0002DB88  90 08 FF E4 */	stw r0, -0x1c(r8)
/* 800325CC 0002DB8C  80 68 FF C4 */	lwz r3, -0x3c(r8)
/* 800325D0 0002DB90  80 08 FF C8 */	lwz r0, -0x38(r8)
/* 800325D4 0002DB94  90 68 FF D0 */	stw r3, -0x30(r8)
/* 800325D8 0002DB98  90 08 FF D4 */	stw r0, -0x2c(r8)
/* 800325DC 0002DB9C  80 08 FF CC */	lwz r0, -0x34(r8)
/* 800325E0 0002DBA0  90 08 FF D8 */	stw r0, -0x28(r8)
/* 800325E4 0002DBA4  80 68 FF B8 */	lwz r3, -0x48(r8)
/* 800325E8 0002DBA8  80 08 FF BC */	lwz r0, -0x44(r8)
/* 800325EC 0002DBAC  90 68 FF C4 */	stw r3, -0x3c(r8)
/* 800325F0 0002DBB0  90 08 FF C8 */	stw r0, -0x38(r8)
/* 800325F4 0002DBB4  80 08 FF C0 */	lwz r0, -0x40(r8)
/* 800325F8 0002DBB8  90 08 FF CC */	stw r0, -0x34(r8)
/* 800325FC 0002DBBC  80 68 FF AC */	lwz r3, -0x54(r8)
/* 80032600 0002DBC0  80 08 FF B0 */	lwz r0, -0x50(r8)
/* 80032604 0002DBC4  90 68 FF B8 */	stw r3, -0x48(r8)
/* 80032608 0002DBC8  90 08 FF BC */	stw r0, -0x44(r8)
/* 8003260C 0002DBCC  80 08 FF B4 */	lwz r0, -0x4c(r8)
/* 80032610 0002DBD0  90 08 FF C0 */	stw r0, -0x40(r8)
/* 80032614 0002DBD4  80 68 FF A0 */	lwz r3, -0x60(r8)
/* 80032618 0002DBD8  80 08 FF A4 */	lwz r0, -0x5c(r8)
/* 8003261C 0002DBDC  90 68 FF AC */	stw r3, -0x54(r8)
/* 80032620 0002DBE0  90 08 FF B0 */	stw r0, -0x50(r8)
/* 80032624 0002DBE4  80 08 FF A8 */	lwz r0, -0x58(r8)
/* 80032628 0002DBE8  90 08 FF B4 */	stw r0, -0x4c(r8)
/* 8003262C 0002DBEC  39 08 FF A0 */	addi r8, r8, -96
/* 80032630 0002DBF0  42 00 FF 3C */	bdnz lbl_8003256C
/* 80032634 0002DBF4  70 E7 00 07 */	andi. r7, r7, 7
/* 80032638 0002DBF8  41 82 00 28 */	beq lbl_80032660
lbl_8003263C:
/* 8003263C 0002DBFC  7C E9 03 A6 */	mtctr r7
lbl_80032640:
/* 80032640 0002DC00  80 68 FF F4 */	lwz r3, -0xc(r8)
/* 80032644 0002DC04  80 08 FF F8 */	lwz r0, -8(r8)
/* 80032648 0002DC08  90 68 00 00 */	stw r3, 0(r8)
/* 8003264C 0002DC0C  90 08 00 04 */	stw r0, 4(r8)
/* 80032650 0002DC10  80 08 FF FC */	lwz r0, -4(r8)
/* 80032654 0002DC14  90 08 00 08 */	stw r0, 8(r8)
/* 80032658 0002DC18  39 08 FF F4 */	addi r8, r8, -12
/* 8003265C 0002DC1C  42 00 FF E4 */	bdnz lbl_80032640
lbl_80032660:
/* 80032660 0002DC20  93 C6 00 00 */	stw r30, 0(r6)
/* 80032664 0002DC24  38 60 00 01 */	li r3, 1
/* 80032668 0002DC28  90 86 00 04 */	stw r4, 4(r6)
/* 8003266C 0002DC2C  90 A6 00 08 */	stw r5, 8(r6)
/* 80032670 0002DC30  48 00 00 44 */	b lbl_800326B4
lbl_80032674:
/* 80032674 0002DC34  7F A3 EB 78 */	mr r3, r29
/* 80032678 0002DC38  38 81 00 0C */	addi r4, r1, 0xc
/* 8003267C 0002DC3C  38 E1 00 10 */	addi r7, r1, 0x10
/* 80032680 0002DC40  38 C0 00 00 */	li r6, 0
/* 80032684 0002DC44  39 00 00 00 */	li r8, 0
/* 80032688 0002DC48  4B FD C4 21 */	bl cpuGetPPC
/* 8003268C 0002DC4C  2C 03 00 00 */	cmpwi r3, 0
/* 80032690 0002DC50  40 82 00 0C */	bne lbl_8003269C
/* 80032694 0002DC54  38 60 00 00 */	li r3, 0
/* 80032698 0002DC58  48 00 00 1C */	b lbl_800326B4
lbl_8003269C:
/* 8003269C 0002DC5C  80 A1 00 08 */	lwz r5, 8(r1)
/* 800326A0 0002DC60  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800326A4 0002DC64  80 05 00 14 */	lwz r0, 0x14(r5)
/* 800326A8 0002DC68  7C 03 00 00 */	cmpw r3, r0
/* 800326AC 0002DC6C  40 81 FE 44 */	ble lbl_800324F0
/* 800326B0 0002DC70  38 60 00 00 */	li r3, 0
lbl_800326B4:
/* 800326B4 0002DC74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800326B8 0002DC78  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800326BC 0002DC7C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800326C0 0002DC80  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800326C4 0002DC84  7C 08 03 A6 */	mtlr r0
/* 800326C8 0002DC88  38 21 00 30 */	addi r1, r1, 0x30
/* 800326CC 0002DC8C  4E 80 00 20 */	blr 

