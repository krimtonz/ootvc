glabel cpuCompile_DSRAV
/* 800331AC 0002E76C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800331B0 0002E770  7C 08 02 A6 */	mflr r0
/* 800331B4 0002E774  3C A0 30 00 */	lis r5, 0x30000044@ha
/* 800331B8 0002E778  90 01 00 24 */	stw r0, 0x24(r1)
/* 800331BC 0002E77C  38 61 00 08 */	addi r3, r1, 8
/* 800331C0 0002E780  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800331C4 0002E784  7C 9F 23 78 */	mr r31, r4
/* 800331C8 0002E788  38 85 00 44 */	addi r4, r5, 0x30000044@l
/* 800331CC 0002E78C  48 04 DF 2D */	bl xlHeapTake
/* 800331D0 0002E790  2C 03 00 00 */	cmpwi r3, 0
/* 800331D4 0002E794  40 82 00 0C */	bne lbl_800331E0
/* 800331D8 0002E798  38 60 00 00 */	li r3, 0
/* 800331DC 0002E79C  48 00 01 2C */	b lbl_80033308
lbl_800331E0:
/* 800331E0 0002E7A0  80 01 00 08 */	lwz r0, 8(r1)
/* 800331E4 0002E7A4  3D 60 21 27 */	lis r11, 0x21270020@ha
/* 800331E8 0002E7A8  3C A0 94 22 */	lis r5, 0x9421FFE8@ha
/* 800331EC 0002E7AC  3C 60 70 E7 */	lis r3, 0x70E7003F@ha
/* 800331F0 0002E7B0  90 1F 00 00 */	stw r0, 0(r31)
/* 800331F4 0002E7B4  38 05 FF E8 */	addi r0, r5, 0x9421FFE8@l
/* 800331F8 0002E7B8  3C A0 7C A5 */	lis r5, 0x7CA53E30@ha
/* 800331FC 0002E7BC  3D 80 91 21 */	lis r12, 0x91210010@ha
/* 80033200 0002E7C0  80 81 00 08 */	lwz r4, 8(r1)
/* 80033204 0002E7C4  3D 40 91 01 */	lis r10, 0x91010008@ha
/* 80033208 0002E7C8  39 6B 00 20 */	addi r11, r11, 0x21270020@l
/* 8003320C 0002E7CC  3D 20 7C C6 */	lis r9, 0x7CC63C30@ha
/* 80033210 0002E7D0  90 04 00 00 */	stw r0, 0(r4)
/* 80033214 0002E7D4  38 03 00 3F */	addi r0, r3, 0x70E7003F@l
/* 80033218 0002E7D8  3C 80 81 01 */	lis r4, 0x81010008@ha
/* 8003321C 0002E7DC  3C 60 81 21 */	lis r3, 0x81210010@ha
/* 80033220 0002E7E0  83 E1 00 08 */	lwz r31, 8(r1)
/* 80033224 0002E7E4  3D 00 7C A8 */	lis r8, 0x7CA84830@ha
/* 80033228 0002E7E8  3C E0 35 28 */	lis r7, 0x3527FFE0@ha
/* 8003322C 0002E7EC  3C C0 40 81 */	lis r6, 0x40810008@ha
/* 80033230 0002E7F0  90 1F 00 04 */	stw r0, 4(r31)
/* 80033234 0002E7F4  38 0C 00 10 */	addi r0, r12, 0x91210010@l
/* 80033238 0002E7F8  3B EA 00 08 */	addi r31, r10, 0x91010008@l
/* 8003323C 0002E7FC  38 A5 3E 30 */	addi r5, r5, 0x7CA53E30@l
/* 80033240 0002E800  81 81 00 08 */	lwz r12, 8(r1)
/* 80033244 0002E804  38 84 00 08 */	addi r4, r4, 0x81010008@l
/* 80033248 0002E808  90 0C 00 08 */	stw r0, 8(r12)
/* 8003324C 0002E80C  38 09 3C 30 */	addi r0, r9, 0x7CC63C30@l
/* 80033250 0002E810  81 41 00 08 */	lwz r10, 8(r1)
/* 80033254 0002E814  91 6A 00 0C */	stw r11, 0xc(r10)
/* 80033258 0002E818  39 68 48 30 */	addi r11, r8, 0x7CA84830@l
/* 8003325C 0002E81C  39 49 43 78 */	addi r10, r9, 0x4378
/* 80033260 0002E820  39 27 FF E0 */	addi r9, r7, 0x3527FFE0@l
/* 80033264 0002E824  81 81 00 08 */	lwz r12, 8(r1)
/* 80033268 0002E828  38 E6 00 08 */	addi r7, r6, 0x40810008@l
/* 8003326C 0002E82C  39 08 4E 30 */	addi r8, r8, 0x4e30
/* 80033270 0002E830  3C C0 61 06 */	lis r6, 0x6106
/* 80033274 0002E834  93 EC 00 10 */	stw r31, 0x10(r12)
/* 80033278 0002E838  81 81 00 08 */	lwz r12, 8(r1)
/* 8003327C 0002E83C  90 0C 00 14 */	stw r0, 0x14(r12)
/* 80033280 0002E840  38 03 00 10 */	addi r0, r3, 0x81210010@l
/* 80033284 0002E844  80 61 00 08 */	lwz r3, 8(r1)
/* 80033288 0002E848  91 63 00 18 */	stw r11, 0x18(r3)
/* 8003328C 0002E84C  80 61 00 08 */	lwz r3, 8(r1)
/* 80033290 0002E850  91 43 00 1C */	stw r10, 0x1c(r3)
/* 80033294 0002E854  80 61 00 08 */	lwz r3, 8(r1)
/* 80033298 0002E858  91 23 00 20 */	stw r9, 0x20(r3)
/* 8003329C 0002E85C  80 61 00 08 */	lwz r3, 8(r1)
/* 800332A0 0002E860  91 03 00 24 */	stw r8, 0x24(r3)
/* 800332A4 0002E864  80 61 00 08 */	lwz r3, 8(r1)
/* 800332A8 0002E868  90 E3 00 28 */	stw r7, 0x28(r3)
/* 800332AC 0002E86C  80 61 00 08 */	lwz r3, 8(r1)
/* 800332B0 0002E870  90 C3 00 2C */	stw r6, 0x2c(r3)
/* 800332B4 0002E874  80 61 00 08 */	lwz r3, 8(r1)
/* 800332B8 0002E878  90 A3 00 30 */	stw r5, 0x30(r3)
/* 800332BC 0002E87C  80 61 00 08 */	lwz r3, 8(r1)
/* 800332C0 0002E880  90 83 00 34 */	stw r4, 0x34(r3)
/* 800332C4 0002E884  80 61 00 08 */	lwz r3, 8(r1)
/* 800332C8 0002E888  90 03 00 38 */	stw r0, 0x38(r3)
/* 800332CC 0002E88C  3C 60 38 21 */	lis r3, 0x38210018@ha
/* 800332D0 0002E890  38 03 00 18 */	addi r0, r3, 0x38210018@l
/* 800332D4 0002E894  80 81 00 08 */	lwz r4, 8(r1)
/* 800332D8 0002E898  3C 60 4E 80 */	lis r3, 0x4E800020@ha
/* 800332DC 0002E89C  90 04 00 3C */	stw r0, 0x3c(r4)
/* 800332E0 0002E8A0  38 03 00 20 */	addi r0, r3, 0x4E800020@l
/* 800332E4 0002E8A4  38 80 00 44 */	li r4, 0x44
/* 800332E8 0002E8A8  80 61 00 08 */	lwz r3, 8(r1)
/* 800332EC 0002E8AC  90 03 00 40 */	stw r0, 0x40(r3)
/* 800332F0 0002E8B0  80 61 00 08 */	lwz r3, 8(r1)
/* 800332F4 0002E8B4  48 05 83 91 */	bl DCStoreRange
/* 800332F8 0002E8B8  80 61 00 08 */	lwz r3, 8(r1)
/* 800332FC 0002E8BC  38 80 00 44 */	li r4, 0x44
/* 80033300 0002E8C0  48 05 84 0D */	bl ICInvalidateRange
/* 80033304 0002E8C4  38 60 00 01 */	li r3, 1
lbl_80033308:
/* 80033308 0002E8C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003330C 0002E8CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80033310 0002E8D0  7C 08 03 A6 */	mtlr r0
/* 80033314 0002E8D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80033318 0002E8D8  4E 80 00 20 */	blr 

