glabel cpuSetTLB
/* 8000D6EC 00008CAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8000D6F0 00008CB0  7C 08 02 A6 */	mflr r0
/* 8000D6F4 00008CB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8000D6F8 00008CB8  39 61 00 40 */	addi r11, r1, 0x40
/* 8000D6FC 00008CBC  48 14 57 4D */	bl _savegpr_23
/* 8000D700 00008CC0  1F A4 00 28 */	mulli r29, r4, 0x28
/* 8000D704 00008CC4  3C 80 02 00 */	lis r4, 0x01FFE000@ha
/* 8000D708 00008CC8  80 A3 0A 74 */	lwz r5, 0xa74(r3)
/* 8000D70C 00008CCC  3B E0 00 00 */	li r31, 0
/* 8000D710 00008CD0  38 04 E0 00 */	addi r0, r4, 0x01FFE000@l
/* 8000D714 00008CD4  7F C3 EA 14 */	add r30, r3, r29
/* 8000D718 00008CD8  7C A0 00 38 */	and r0, r5, r0
/* 8000D71C 00008CDC  7C 79 1B 78 */	mr r25, r3
/* 8000D720 00008CE0  90 1E 02 64 */	stw r0, 0x264(r30)
/* 8000D724 00008CE4  93 FE 02 60 */	stw r31, 0x260(r30)
/* 8000D728 00008CE8  80 03 0A 98 */	lwz r0, 0xa98(r3)
/* 8000D72C 00008CEC  80 83 0A 9C */	lwz r4, 0xa9c(r3)
/* 8000D730 00008CF0  90 9E 02 5C */	stw r4, 0x25c(r30)
/* 8000D734 00008CF4  90 1E 02 58 */	stw r0, 0x258(r30)
/* 8000D738 00008CF8  80 03 0A 5C */	lwz r0, 0xa5c(r3)
/* 8000D73C 00008CFC  80 A3 0A 58 */	lwz r5, 0xa58(r3)
/* 8000D740 00008D00  54 04 07 BD */	rlwinm. r4, r0, 0, 0x1e, 0x1e
/* 8000D744 00008D04  90 1E 02 4C */	stw r0, 0x24c(r30)
/* 8000D748 00008D08  90 BE 02 48 */	stw r5, 0x248(r30)
/* 8000D74C 00008D0C  80 A3 0A 60 */	lwz r5, 0xa60(r3)
/* 8000D750 00008D10  80 C3 0A 64 */	lwz r6, 0xa64(r3)
/* 8000D754 00008D14  90 DE 02 54 */	stw r6, 0x254(r30)
/* 8000D758 00008D18  90 BE 02 50 */	stw r5, 0x250(r30)
/* 8000D75C 00008D1C  40 82 00 10 */	bne lbl_8000D76C
/* 8000D760 00008D20  80 BE 02 54 */	lwz r5, 0x254(r30)
/* 8000D764 00008D24  54 A5 07 BD */	rlwinm. r5, r5, 0, 0x1e, 0x1e
/* 8000D768 00008D28  41 82 04 A0 */	beq lbl_8000DC08
lbl_8000D76C:
/* 8000D76C 00008D2C  3C A0 00 08 */	lis r5, 0x0007E000@ha
/* 8000D770 00008D30  81 1E 02 64 */	lwz r8, 0x264(r30)
/* 8000D774 00008D34  38 C5 E0 00 */	addi r6, r5, 0x0007E000@l
/* 8000D778 00008D38  80 FE 02 60 */	lwz r7, 0x260(r30)
/* 8000D77C 00008D3C  7D 06 32 78 */	xor r6, r8, r6
/* 8000D780 00008D40  7C C6 3B 79 */	or. r6, r6, r7
/* 8000D784 00008D44  41 82 00 E4 */	beq lbl_8000D868
/* 8000D788 00008D48  38 C5 E0 00 */	addi r6, r5, -8192
/* 8000D78C 00008D4C  38 A0 00 00 */	li r5, 0
/* 8000D790 00008D50  7C C6 40 10 */	subfc r6, r6, r8
/* 8000D794 00008D54  7C A5 39 10 */	subfe r5, r5, r7
/* 8000D798 00008D58  7C A6 31 10 */	subfe r5, r6, r6
/* 8000D79C 00008D5C  7C A5 00 D1 */	neg. r5, r5
/* 8000D7A0 00008D60  41 82 00 50 */	beq lbl_8000D7F0
/* 8000D7A4 00008D64  69 05 60 00 */	xori r5, r8, 0x6000
/* 8000D7A8 00008D68  7C A5 3B 79 */	or. r5, r5, r7
/* 8000D7AC 00008D6C  41 82 00 AC */	beq lbl_8000D858
/* 8000D7B0 00008D70  38 C0 60 00 */	li r6, 0x6000
/* 8000D7B4 00008D74  38 A0 00 00 */	li r5, 0
/* 8000D7B8 00008D78  7C C6 40 10 */	subfc r6, r6, r8
/* 8000D7BC 00008D7C  7C A5 39 10 */	subfe r5, r5, r7
/* 8000D7C0 00008D80  7C A6 31 10 */	subfe r5, r6, r6
/* 8000D7C4 00008D84  7C A5 00 D1 */	neg. r5, r5
/* 8000D7C8 00008D88  41 82 00 10 */	beq lbl_8000D7D8
/* 8000D7CC 00008D8C  7D 05 3B 79 */	or. r5, r8, r7
/* 8000D7D0 00008D90  41 82 00 80 */	beq lbl_8000D850
/* 8000D7D4 00008D94  48 00 00 B4 */	b lbl_8000D888
lbl_8000D7D8:
/* 8000D7D8 00008D98  3C A0 00 02 */	lis r5, 0x0001E000@ha
/* 8000D7DC 00008D9C  38 A5 E0 00 */	addi r5, r5, 0x0001E000@l
/* 8000D7E0 00008DA0  7D 05 2A 78 */	xor r5, r8, r5
/* 8000D7E4 00008DA4  7C A5 3B 79 */	or. r5, r5, r7
/* 8000D7E8 00008DA8  41 82 00 78 */	beq lbl_8000D860
/* 8000D7EC 00008DAC  48 00 00 9C */	b lbl_8000D888
lbl_8000D7F0:
/* 8000D7F0 00008DB0  3C A0 00 80 */	lis r5, 0x007FE000@ha
/* 8000D7F4 00008DB4  38 C5 E0 00 */	addi r6, r5, 0x007FE000@l
/* 8000D7F8 00008DB8  7D 06 32 78 */	xor r6, r8, r6
/* 8000D7FC 00008DBC  7C C6 3B 79 */	or. r6, r6, r7
/* 8000D800 00008DC0  41 82 00 78 */	beq lbl_8000D878
/* 8000D804 00008DC4  38 C5 E0 00 */	addi r6, r5, -8192
/* 8000D808 00008DC8  38 A0 00 00 */	li r5, 0
/* 8000D80C 00008DCC  7C C6 40 10 */	subfc r6, r6, r8
/* 8000D810 00008DD0  7C A5 39 10 */	subfe r5, r5, r7
/* 8000D814 00008DD4  7C A6 31 10 */	subfe r5, r6, r6
/* 8000D818 00008DD8  7C A5 00 D1 */	neg. r5, r5
/* 8000D81C 00008DDC  41 82 00 1C */	beq lbl_8000D838
/* 8000D820 00008DE0  3C A0 00 20 */	lis r5, 0x001FE000@ha
/* 8000D824 00008DE4  38 A5 E0 00 */	addi r5, r5, 0x001FE000@l
/* 8000D828 00008DE8  7D 05 2A 78 */	xor r5, r8, r5
/* 8000D82C 00008DEC  7C A5 3B 79 */	or. r5, r5, r7
/* 8000D830 00008DF0  41 82 00 40 */	beq lbl_8000D870
/* 8000D834 00008DF4  48 00 00 54 */	b lbl_8000D888
lbl_8000D838:
/* 8000D838 00008DF8  3C A0 02 00 */	lis r5, 0x01FFE000@ha
/* 8000D83C 00008DFC  38 A5 E0 00 */	addi r5, r5, 0x01FFE000@l
/* 8000D840 00008E00  7D 05 2A 78 */	xor r5, r8, r5
/* 8000D844 00008E04  7C A5 3B 79 */	or. r5, r5, r7
/* 8000D848 00008E08  41 82 00 38 */	beq lbl_8000D880
/* 8000D84C 00008E0C  48 00 00 3C */	b lbl_8000D888
lbl_8000D850:
/* 8000D850 00008E10  3B 80 10 00 */	li r28, 0x1000
/* 8000D854 00008E14  48 00 00 38 */	b lbl_8000D88C
lbl_8000D858:
/* 8000D858 00008E18  3B 80 40 00 */	li r28, 0x4000
/* 8000D85C 00008E1C  48 00 00 30 */	b lbl_8000D88C
lbl_8000D860:
/* 8000D860 00008E20  3F 80 00 01 */	lis r28, 1
/* 8000D864 00008E24  48 00 00 28 */	b lbl_8000D88C
lbl_8000D868:
/* 8000D868 00008E28  3F 80 00 04 */	lis r28, 4
/* 8000D86C 00008E2C  48 00 00 20 */	b lbl_8000D88C
lbl_8000D870:
/* 8000D870 00008E30  3F 80 00 10 */	lis r28, 0x10
/* 8000D874 00008E34  48 00 00 18 */	b lbl_8000D88C
lbl_8000D878:
/* 8000D878 00008E38  3F 80 00 40 */	lis r28, 0x40
/* 8000D87C 00008E3C  48 00 00 10 */	b lbl_8000D88C
lbl_8000D880:
/* 8000D880 00008E40  3F 80 01 00 */	lis r28, 0x100
/* 8000D884 00008E44  48 00 00 08 */	b lbl_8000D88C
lbl_8000D888:
/* 8000D888 00008E48  3B 80 00 00 */	li r28, 0
lbl_8000D88C:
/* 8000D88C 00008E4C  80 BE 02 5C */	lwz r5, 0x25c(r30)
/* 8000D890 00008E50  2C 04 00 00 */	cmpwi r4, 0
/* 8000D894 00008E54  3A E0 00 00 */	li r23, 0
/* 8000D898 00008E58  54 BB 00 24 */	rlwinm r27, r5, 0, 0, 0x12
/* 8000D89C 00008E5C  41 82 01 AC */	beq lbl_8000DA48
/* 8000D8A0 00008E60  7F E3 EA 14 */	add r31, r3, r29
/* 8000D8A4 00008E64  54 1A 30 26 */	rlwinm r26, r0, 6, 0, 0x13
/* 8000D8A8 00008E68  80 1F 02 6C */	lwz r0, 0x26c(r31)
/* 8000D8AC 00008E6C  54 18 06 3E */	clrlwi r24, r0, 0x18
/* 8000D8B0 00008E70  2C 18 00 FF */	cmpwi r24, 0xff
/* 8000D8B4 00008E74  93 01 00 08 */	stw r24, 8(r1)
/* 8000D8B8 00008E78  41 82 01 34 */	beq lbl_8000D9EC
/* 8000D8BC 00008E7C  57 00 10 3A */	slwi r0, r24, 2
/* 8000D8C0 00008E80  7C 63 02 14 */	add r3, r3, r0
/* 8000D8C4 00008E84  38 63 0B 60 */	addi r3, r3, 0xb60
/* 8000D8C8 00008E88  48 07 3A A5 */	bl xlHeapFree
/* 8000D8CC 00008E8C  2C 03 00 00 */	cmpwi r3, 0
/* 8000D8D0 00008E90  40 82 00 0C */	bne lbl_8000D8DC
/* 8000D8D4 00008E94  38 00 00 00 */	li r0, 0
/* 8000D8D8 00008E98  48 00 01 04 */	b lbl_8000D9DC
lbl_8000D8DC:
/* 8000D8DC 00008E9C  57 03 10 3A */	slwi r3, r24, 2
/* 8000D8E0 00008EA0  38 00 20 00 */	li r0, 0x2000
/* 8000D8E4 00008EA4  7C 79 1A 14 */	add r3, r25, r3
/* 8000D8E8 00008EA8  92 E3 0B 60 */	stw r23, 0xb60(r3)
/* 8000D8EC 00008EAC  38 60 00 00 */	li r3, 0
/* 8000D8F0 00008EB0  7C 09 03 A6 */	mtctr r0
lbl_8000D8F4:
/* 8000D8F4 00008EB4  7C 99 1A 14 */	add r4, r25, r3
/* 8000D8F8 00008EB8  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000D8FC 00008EBC  7C 18 00 00 */	cmpw r24, r0
/* 8000D900 00008EC0  40 82 00 0C */	bne lbl_8000D90C
/* 8000D904 00008EC4  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000D908 00008EC8  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000D90C:
/* 8000D90C 00008ECC  38 63 00 01 */	addi r3, r3, 1
/* 8000D910 00008ED0  7C 99 1A 14 */	add r4, r25, r3
/* 8000D914 00008ED4  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000D918 00008ED8  7C 18 00 00 */	cmpw r24, r0
/* 8000D91C 00008EDC  40 82 00 0C */	bne lbl_8000D928
/* 8000D920 00008EE0  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000D924 00008EE4  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000D928:
/* 8000D928 00008EE8  38 63 00 01 */	addi r3, r3, 1
/* 8000D92C 00008EEC  7C 99 1A 14 */	add r4, r25, r3
/* 8000D930 00008EF0  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000D934 00008EF4  7C 18 00 00 */	cmpw r24, r0
/* 8000D938 00008EF8  40 82 00 0C */	bne lbl_8000D944
/* 8000D93C 00008EFC  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000D940 00008F00  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000D944:
/* 8000D944 00008F04  38 63 00 01 */	addi r3, r3, 1
/* 8000D948 00008F08  7C 99 1A 14 */	add r4, r25, r3
/* 8000D94C 00008F0C  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000D950 00008F10  7C 18 00 00 */	cmpw r24, r0
/* 8000D954 00008F14  40 82 00 0C */	bne lbl_8000D960
/* 8000D958 00008F18  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000D95C 00008F1C  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000D960:
/* 8000D960 00008F20  38 63 00 01 */	addi r3, r3, 1
/* 8000D964 00008F24  7C 99 1A 14 */	add r4, r25, r3
/* 8000D968 00008F28  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000D96C 00008F2C  7C 18 00 00 */	cmpw r24, r0
/* 8000D970 00008F30  40 82 00 0C */	bne lbl_8000D97C
/* 8000D974 00008F34  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000D978 00008F38  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000D97C:
/* 8000D97C 00008F3C  38 63 00 01 */	addi r3, r3, 1
/* 8000D980 00008F40  7C 99 1A 14 */	add r4, r25, r3
/* 8000D984 00008F44  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000D988 00008F48  7C 18 00 00 */	cmpw r24, r0
/* 8000D98C 00008F4C  40 82 00 0C */	bne lbl_8000D998
/* 8000D990 00008F50  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000D994 00008F54  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000D998:
/* 8000D998 00008F58  38 63 00 01 */	addi r3, r3, 1
/* 8000D99C 00008F5C  7C 99 1A 14 */	add r4, r25, r3
/* 8000D9A0 00008F60  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000D9A4 00008F64  7C 18 00 00 */	cmpw r24, r0
/* 8000D9A8 00008F68  40 82 00 0C */	bne lbl_8000D9B4
/* 8000D9AC 00008F6C  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000D9B0 00008F70  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000D9B4:
/* 8000D9B4 00008F74  38 63 00 01 */	addi r3, r3, 1
/* 8000D9B8 00008F78  7C 99 1A 14 */	add r4, r25, r3
/* 8000D9BC 00008F7C  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000D9C0 00008F80  7C 18 00 00 */	cmpw r24, r0
/* 8000D9C4 00008F84  40 82 00 0C */	bne lbl_8000D9D0
/* 8000D9C8 00008F88  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000D9CC 00008F8C  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000D9D0:
/* 8000D9D0 00008F90  38 63 00 01 */	addi r3, r3, 1
/* 8000D9D4 00008F94  42 00 FF 20 */	bdnz lbl_8000D8F4
/* 8000D9D8 00008F98  38 00 00 01 */	li r0, 1
lbl_8000D9DC:
/* 8000D9DC 00008F9C  2C 00 00 00 */	cmpwi r0, 0
/* 8000D9E0 00008FA0  40 82 00 0C */	bne lbl_8000D9EC
/* 8000D9E4 00008FA4  38 60 00 00 */	li r3, 0
/* 8000D9E8 00008FA8  48 00 04 BC */	b lbl_8000DEA4
lbl_8000D9EC:
/* 8000D9EC 00008FAC  7F 23 CB 78 */	mr r3, r25
/* 8000D9F0 00008FB0  7F 65 DB 78 */	mr r5, r27
/* 8000D9F4 00008FB4  7F 46 D3 78 */	mr r6, r26
/* 8000D9F8 00008FB8  7F 87 E3 78 */	mr r7, r28
/* 8000D9FC 00008FBC  38 81 00 08 */	addi r4, r1, 8
/* 8000DA00 00008FC0  4B FF FB 81 */	bl cpuCreateTLBDevice
/* 8000DA04 00008FC4  2C 03 00 00 */	cmpwi r3, 0
/* 8000DA08 00008FC8  40 82 00 0C */	bne lbl_8000DA14
/* 8000DA0C 00008FCC  38 60 00 00 */	li r3, 0
/* 8000DA10 00008FD0  48 00 04 94 */	b lbl_8000DEA4
lbl_8000DA14:
/* 8000DA14 00008FD4  80 E1 00 08 */	lwz r7, 8(r1)
/* 8000DA18 00008FD8  38 00 FF 00 */	li r0, -256
/* 8000DA1C 00008FDC  80 BF 02 6C */	lwz r5, 0x26c(r31)
/* 8000DA20 00008FE0  38 60 FF FF */	li r3, -1
/* 8000DA24 00008FE4  80 9F 02 68 */	lwz r4, 0x268(r31)
/* 8000DA28 00008FE8  54 E6 06 3E */	clrlwi r6, r7, 0x18
/* 8000DA2C 00008FEC  7C A0 00 38 */	and r0, r5, r0
/* 8000DA30 00008FF0  50 E0 06 3E */	rlwimi r0, r7, 0, 0x18, 0x1f
/* 8000DA34 00008FF4  7C C5 FE 70 */	srawi r5, r6, 0x1f
/* 8000DA38 00008FF8  7C 83 18 38 */	and r3, r4, r3
/* 8000DA3C 00008FFC  90 1F 02 6C */	stw r0, 0x26c(r31)
/* 8000DA40 00009000  7C A0 1B 78 */	or r0, r5, r3
/* 8000DA44 00009004  90 1F 02 68 */	stw r0, 0x268(r31)
lbl_8000DA48:
/* 8000DA48 00009008  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 8000DA4C 0000900C  3B C0 00 00 */	li r30, 0
/* 8000DA50 00009010  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8000DA54 00009014  41 82 04 4C */	beq lbl_8000DEA0
/* 8000DA58 00009018  7F F9 EA 14 */	add r31, r25, r29
/* 8000DA5C 0000901C  54 7D 30 26 */	rlwinm r29, r3, 6, 0, 0x13
/* 8000DA60 00009020  80 1F 02 6C */	lwz r0, 0x26c(r31)
/* 8000DA64 00009024  54 1A 86 3E */	rlwinm r26, r0, 0x10, 0x18, 0x1f
/* 8000DA68 00009028  2C 1A 00 FF */	cmpwi r26, 0xff
/* 8000DA6C 0000902C  93 41 00 08 */	stw r26, 8(r1)
/* 8000DA70 00009030  41 82 01 34 */	beq lbl_8000DBA4
/* 8000DA74 00009034  57 40 10 3A */	slwi r0, r26, 2
/* 8000DA78 00009038  7C 79 02 14 */	add r3, r25, r0
/* 8000DA7C 0000903C  38 63 0B 60 */	addi r3, r3, 0xb60
/* 8000DA80 00009040  48 07 38 ED */	bl xlHeapFree
/* 8000DA84 00009044  2C 03 00 00 */	cmpwi r3, 0
/* 8000DA88 00009048  40 82 00 0C */	bne lbl_8000DA94
/* 8000DA8C 0000904C  38 00 00 00 */	li r0, 0
/* 8000DA90 00009050  48 00 01 04 */	b lbl_8000DB94
lbl_8000DA94:
/* 8000DA94 00009054  57 43 10 3A */	slwi r3, r26, 2
/* 8000DA98 00009058  38 00 20 00 */	li r0, 0x2000
/* 8000DA9C 0000905C  7C 79 1A 14 */	add r3, r25, r3
/* 8000DAA0 00009060  93 C3 0B 60 */	stw r30, 0xb60(r3)
/* 8000DAA4 00009064  38 60 00 00 */	li r3, 0
/* 8000DAA8 00009068  7C 09 03 A6 */	mtctr r0
lbl_8000DAAC:
/* 8000DAAC 0000906C  7C 99 1A 14 */	add r4, r25, r3
/* 8000DAB0 00009070  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DAB4 00009074  7C 1A 00 00 */	cmpw r26, r0
/* 8000DAB8 00009078  40 82 00 0C */	bne lbl_8000DAC4
/* 8000DABC 0000907C  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DAC0 00009080  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DAC4:
/* 8000DAC4 00009084  38 63 00 01 */	addi r3, r3, 1
/* 8000DAC8 00009088  7C 99 1A 14 */	add r4, r25, r3
/* 8000DACC 0000908C  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DAD0 00009090  7C 1A 00 00 */	cmpw r26, r0
/* 8000DAD4 00009094  40 82 00 0C */	bne lbl_8000DAE0
/* 8000DAD8 00009098  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DADC 0000909C  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DAE0:
/* 8000DAE0 000090A0  38 63 00 01 */	addi r3, r3, 1
/* 8000DAE4 000090A4  7C 99 1A 14 */	add r4, r25, r3
/* 8000DAE8 000090A8  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DAEC 000090AC  7C 1A 00 00 */	cmpw r26, r0
/* 8000DAF0 000090B0  40 82 00 0C */	bne lbl_8000DAFC
/* 8000DAF4 000090B4  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DAF8 000090B8  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DAFC:
/* 8000DAFC 000090BC  38 63 00 01 */	addi r3, r3, 1
/* 8000DB00 000090C0  7C 99 1A 14 */	add r4, r25, r3
/* 8000DB04 000090C4  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DB08 000090C8  7C 1A 00 00 */	cmpw r26, r0
/* 8000DB0C 000090CC  40 82 00 0C */	bne lbl_8000DB18
/* 8000DB10 000090D0  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DB14 000090D4  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DB18:
/* 8000DB18 000090D8  38 63 00 01 */	addi r3, r3, 1
/* 8000DB1C 000090DC  7C 99 1A 14 */	add r4, r25, r3
/* 8000DB20 000090E0  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DB24 000090E4  7C 1A 00 00 */	cmpw r26, r0
/* 8000DB28 000090E8  40 82 00 0C */	bne lbl_8000DB34
/* 8000DB2C 000090EC  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DB30 000090F0  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DB34:
/* 8000DB34 000090F4  38 63 00 01 */	addi r3, r3, 1
/* 8000DB38 000090F8  7C 99 1A 14 */	add r4, r25, r3
/* 8000DB3C 000090FC  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DB40 00009100  7C 1A 00 00 */	cmpw r26, r0
/* 8000DB44 00009104  40 82 00 0C */	bne lbl_8000DB50
/* 8000DB48 00009108  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DB4C 0000910C  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DB50:
/* 8000DB50 00009110  38 63 00 01 */	addi r3, r3, 1
/* 8000DB54 00009114  7C 99 1A 14 */	add r4, r25, r3
/* 8000DB58 00009118  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DB5C 0000911C  7C 1A 00 00 */	cmpw r26, r0
/* 8000DB60 00009120  40 82 00 0C */	bne lbl_8000DB6C
/* 8000DB64 00009124  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DB68 00009128  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DB6C:
/* 8000DB6C 0000912C  38 63 00 01 */	addi r3, r3, 1
/* 8000DB70 00009130  7C 99 1A 14 */	add r4, r25, r3
/* 8000DB74 00009134  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DB78 00009138  7C 1A 00 00 */	cmpw r26, r0
/* 8000DB7C 0000913C  40 82 00 0C */	bne lbl_8000DB88
/* 8000DB80 00009140  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DB84 00009144  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DB88:
/* 8000DB88 00009148  38 63 00 01 */	addi r3, r3, 1
/* 8000DB8C 0000914C  42 00 FF 20 */	bdnz lbl_8000DAAC
/* 8000DB90 00009150  38 00 00 01 */	li r0, 1
lbl_8000DB94:
/* 8000DB94 00009154  2C 00 00 00 */	cmpwi r0, 0
/* 8000DB98 00009158  40 82 00 0C */	bne lbl_8000DBA4
/* 8000DB9C 0000915C  38 60 00 00 */	li r3, 0
/* 8000DBA0 00009160  48 00 03 04 */	b lbl_8000DEA4
lbl_8000DBA4:
/* 8000DBA4 00009164  7F 23 CB 78 */	mr r3, r25
/* 8000DBA8 00009168  7F A6 EB 78 */	mr r6, r29
/* 8000DBAC 0000916C  7F 87 E3 78 */	mr r7, r28
/* 8000DBB0 00009170  38 81 00 08 */	addi r4, r1, 8
/* 8000DBB4 00009174  7C BB E2 14 */	add r5, r27, r28
/* 8000DBB8 00009178  4B FF F9 C9 */	bl cpuCreateTLBDevice
/* 8000DBBC 0000917C  2C 03 00 00 */	cmpwi r3, 0
/* 8000DBC0 00009180  40 82 00 0C */	bne lbl_8000DBCC
/* 8000DBC4 00009184  38 60 00 00 */	li r3, 0
/* 8000DBC8 00009188  48 00 02 DC */	b lbl_8000DEA4
lbl_8000DBCC:
/* 8000DBCC 0000918C  80 81 00 08 */	lwz r4, 8(r1)
/* 8000DBD0 00009190  3C 60 FF 01 */	lis r3, 0xFF00FFFF@ha
/* 8000DBD4 00009194  38 03 FF FF */	addi r0, r3, 0xFF00FFFF@l
/* 8000DBD8 00009198  80 BF 02 6C */	lwz r5, 0x26c(r31)
/* 8000DBDC 0000919C  54 86 82 1E */	rlwinm r6, r4, 0x10, 8, 0xf
/* 8000DBE0 000091A0  80 9F 02 68 */	lwz r4, 0x268(r31)
/* 8000DBE4 000091A4  7C A0 00 38 */	and r0, r5, r0
/* 8000DBE8 000091A8  38 60 FF FF */	li r3, -1
/* 8000DBEC 000091AC  7C C0 03 78 */	or r0, r6, r0
/* 8000DBF0 000091B0  7C C5 FE 70 */	srawi r5, r6, 0x1f
/* 8000DBF4 000091B4  7C 83 18 38 */	and r3, r4, r3
/* 8000DBF8 000091B8  90 1F 02 6C */	stw r0, 0x26c(r31)
/* 8000DBFC 000091BC  7C A0 1B 78 */	or r0, r5, r3
/* 8000DC00 000091C0  90 1F 02 68 */	stw r0, 0x268(r31)
/* 8000DC04 000091C4  48 00 02 9C */	b lbl_8000DEA0
lbl_8000DC08:
/* 8000DC08 000091C8  80 1E 02 6C */	lwz r0, 0x26c(r30)
/* 8000DC0C 000091CC  54 1A 06 3E */	clrlwi r26, r0, 0x18
/* 8000DC10 000091D0  2C 1A 00 FF */	cmpwi r26, 0xff
/* 8000DC14 000091D4  93 41 00 08 */	stw r26, 8(r1)
/* 8000DC18 000091D8  41 82 01 34 */	beq lbl_8000DD4C
/* 8000DC1C 000091DC  57 40 10 3A */	slwi r0, r26, 2
/* 8000DC20 000091E0  7C 63 02 14 */	add r3, r3, r0
/* 8000DC24 000091E4  38 63 0B 60 */	addi r3, r3, 0xb60
/* 8000DC28 000091E8  48 07 37 45 */	bl xlHeapFree
/* 8000DC2C 000091EC  2C 03 00 00 */	cmpwi r3, 0
/* 8000DC30 000091F0  40 82 00 0C */	bne lbl_8000DC3C
/* 8000DC34 000091F4  38 00 00 00 */	li r0, 0
/* 8000DC38 000091F8  48 00 01 04 */	b lbl_8000DD3C
lbl_8000DC3C:
/* 8000DC3C 000091FC  57 43 10 3A */	slwi r3, r26, 2
/* 8000DC40 00009200  38 00 20 00 */	li r0, 0x2000
/* 8000DC44 00009204  7C 79 1A 14 */	add r3, r25, r3
/* 8000DC48 00009208  93 E3 0B 60 */	stw r31, 0xb60(r3)
/* 8000DC4C 0000920C  38 60 00 00 */	li r3, 0
/* 8000DC50 00009210  7C 09 03 A6 */	mtctr r0
lbl_8000DC54:
/* 8000DC54 00009214  7C 99 1A 14 */	add r4, r25, r3
/* 8000DC58 00009218  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DC5C 0000921C  7C 1A 00 00 */	cmpw r26, r0
/* 8000DC60 00009220  40 82 00 0C */	bne lbl_8000DC6C
/* 8000DC64 00009224  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DC68 00009228  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DC6C:
/* 8000DC6C 0000922C  38 63 00 01 */	addi r3, r3, 1
/* 8000DC70 00009230  7C 99 1A 14 */	add r4, r25, r3
/* 8000DC74 00009234  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DC78 00009238  7C 1A 00 00 */	cmpw r26, r0
/* 8000DC7C 0000923C  40 82 00 0C */	bne lbl_8000DC88
/* 8000DC80 00009240  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DC84 00009244  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DC88:
/* 8000DC88 00009248  38 63 00 01 */	addi r3, r3, 1
/* 8000DC8C 0000924C  7C 99 1A 14 */	add r4, r25, r3
/* 8000DC90 00009250  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DC94 00009254  7C 1A 00 00 */	cmpw r26, r0
/* 8000DC98 00009258  40 82 00 0C */	bne lbl_8000DCA4
/* 8000DC9C 0000925C  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DCA0 00009260  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DCA4:
/* 8000DCA4 00009264  38 63 00 01 */	addi r3, r3, 1
/* 8000DCA8 00009268  7C 99 1A 14 */	add r4, r25, r3
/* 8000DCAC 0000926C  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DCB0 00009270  7C 1A 00 00 */	cmpw r26, r0
/* 8000DCB4 00009274  40 82 00 0C */	bne lbl_8000DCC0
/* 8000DCB8 00009278  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DCBC 0000927C  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DCC0:
/* 8000DCC0 00009280  38 63 00 01 */	addi r3, r3, 1
/* 8000DCC4 00009284  7C 99 1A 14 */	add r4, r25, r3
/* 8000DCC8 00009288  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DCCC 0000928C  7C 1A 00 00 */	cmpw r26, r0
/* 8000DCD0 00009290  40 82 00 0C */	bne lbl_8000DCDC
/* 8000DCD4 00009294  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DCD8 00009298  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DCDC:
/* 8000DCDC 0000929C  38 63 00 01 */	addi r3, r3, 1
/* 8000DCE0 000092A0  7C 99 1A 14 */	add r4, r25, r3
/* 8000DCE4 000092A4  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DCE8 000092A8  7C 1A 00 00 */	cmpw r26, r0
/* 8000DCEC 000092AC  40 82 00 0C */	bne lbl_8000DCF8
/* 8000DCF0 000092B0  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DCF4 000092B4  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DCF8:
/* 8000DCF8 000092B8  38 63 00 01 */	addi r3, r3, 1
/* 8000DCFC 000092BC  7C 99 1A 14 */	add r4, r25, r3
/* 8000DD00 000092C0  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DD04 000092C4  7C 1A 00 00 */	cmpw r26, r0
/* 8000DD08 000092C8  40 82 00 0C */	bne lbl_8000DD14
/* 8000DD0C 000092CC  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DD10 000092D0  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DD14:
/* 8000DD14 000092D4  38 63 00 01 */	addi r3, r3, 1
/* 8000DD18 000092D8  7C 99 1A 14 */	add r4, r25, r3
/* 8000DD1C 000092DC  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DD20 000092E0  7C 1A 00 00 */	cmpw r26, r0
/* 8000DD24 000092E4  40 82 00 0C */	bne lbl_8000DD30
/* 8000DD28 000092E8  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DD2C 000092EC  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DD30:
/* 8000DD30 000092F0  38 63 00 01 */	addi r3, r3, 1
/* 8000DD34 000092F4  42 00 FF 20 */	bdnz lbl_8000DC54
/* 8000DD38 000092F8  38 00 00 01 */	li r0, 1
lbl_8000DD3C:
/* 8000DD3C 000092FC  2C 00 00 00 */	cmpwi r0, 0
/* 8000DD40 00009300  40 82 00 0C */	bne lbl_8000DD4C
/* 8000DD44 00009304  38 60 00 00 */	li r3, 0
/* 8000DD48 00009308  48 00 01 5C */	b lbl_8000DEA4
lbl_8000DD4C:
/* 8000DD4C 0000930C  80 1E 02 6C */	lwz r0, 0x26c(r30)
/* 8000DD50 00009310  54 1A 86 3E */	rlwinm r26, r0, 0x10, 0x18, 0x1f
/* 8000DD54 00009314  2C 1A 00 FF */	cmpwi r26, 0xff
/* 8000DD58 00009318  93 41 00 08 */	stw r26, 8(r1)
/* 8000DD5C 0000931C  41 82 01 38 */	beq lbl_8000DE94
/* 8000DD60 00009320  57 40 10 3A */	slwi r0, r26, 2
/* 8000DD64 00009324  7C 79 02 14 */	add r3, r25, r0
/* 8000DD68 00009328  38 63 0B 60 */	addi r3, r3, 0xb60
/* 8000DD6C 0000932C  48 07 36 01 */	bl xlHeapFree
/* 8000DD70 00009330  2C 03 00 00 */	cmpwi r3, 0
/* 8000DD74 00009334  40 82 00 0C */	bne lbl_8000DD80
/* 8000DD78 00009338  38 00 00 00 */	li r0, 0
/* 8000DD7C 0000933C  48 00 01 08 */	b lbl_8000DE84
lbl_8000DD80:
/* 8000DD80 00009340  57 40 10 3A */	slwi r0, r26, 2
/* 8000DD84 00009344  38 80 00 00 */	li r4, 0
/* 8000DD88 00009348  7C 79 02 14 */	add r3, r25, r0
/* 8000DD8C 0000934C  90 83 0B 60 */	stw r4, 0xb60(r3)
/* 8000DD90 00009350  38 00 20 00 */	li r0, 0x2000
/* 8000DD94 00009354  38 60 00 00 */	li r3, 0
/* 8000DD98 00009358  7C 09 03 A6 */	mtctr r0
lbl_8000DD9C:
/* 8000DD9C 0000935C  7C 99 1A 14 */	add r4, r25, r3
/* 8000DDA0 00009360  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DDA4 00009364  7C 1A 00 00 */	cmpw r26, r0
/* 8000DDA8 00009368  40 82 00 0C */	bne lbl_8000DDB4
/* 8000DDAC 0000936C  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DDB0 00009370  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DDB4:
/* 8000DDB4 00009374  38 63 00 01 */	addi r3, r3, 1
/* 8000DDB8 00009378  7C 99 1A 14 */	add r4, r25, r3
/* 8000DDBC 0000937C  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DDC0 00009380  7C 1A 00 00 */	cmpw r26, r0
/* 8000DDC4 00009384  40 82 00 0C */	bne lbl_8000DDD0
/* 8000DDC8 00009388  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DDCC 0000938C  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DDD0:
/* 8000DDD0 00009390  38 63 00 01 */	addi r3, r3, 1
/* 8000DDD4 00009394  7C 99 1A 14 */	add r4, r25, r3
/* 8000DDD8 00009398  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DDDC 0000939C  7C 1A 00 00 */	cmpw r26, r0
/* 8000DDE0 000093A0  40 82 00 0C */	bne lbl_8000DDEC
/* 8000DDE4 000093A4  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DDE8 000093A8  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DDEC:
/* 8000DDEC 000093AC  38 63 00 01 */	addi r3, r3, 1
/* 8000DDF0 000093B0  7C 99 1A 14 */	add r4, r25, r3
/* 8000DDF4 000093B4  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DDF8 000093B8  7C 1A 00 00 */	cmpw r26, r0
/* 8000DDFC 000093BC  40 82 00 0C */	bne lbl_8000DE08
/* 8000DE00 000093C0  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DE04 000093C4  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DE08:
/* 8000DE08 000093C8  38 63 00 01 */	addi r3, r3, 1
/* 8000DE0C 000093CC  7C 99 1A 14 */	add r4, r25, r3
/* 8000DE10 000093D0  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DE14 000093D4  7C 1A 00 00 */	cmpw r26, r0
/* 8000DE18 000093D8  40 82 00 0C */	bne lbl_8000DE24
/* 8000DE1C 000093DC  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DE20 000093E0  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DE24:
/* 8000DE24 000093E4  38 63 00 01 */	addi r3, r3, 1
/* 8000DE28 000093E8  7C 99 1A 14 */	add r4, r25, r3
/* 8000DE2C 000093EC  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DE30 000093F0  7C 1A 00 00 */	cmpw r26, r0
/* 8000DE34 000093F4  40 82 00 0C */	bne lbl_8000DE40
/* 8000DE38 000093F8  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DE3C 000093FC  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DE40:
/* 8000DE40 00009400  38 63 00 01 */	addi r3, r3, 1
/* 8000DE44 00009404  7C 99 1A 14 */	add r4, r25, r3
/* 8000DE48 00009408  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DE4C 0000940C  7C 1A 00 00 */	cmpw r26, r0
/* 8000DE50 00009410  40 82 00 0C */	bne lbl_8000DE5C
/* 8000DE54 00009414  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DE58 00009418  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DE5C:
/* 8000DE5C 0000941C  38 63 00 01 */	addi r3, r3, 1
/* 8000DE60 00009420  7C 99 1A 14 */	add r4, r25, r3
/* 8000DE64 00009424  88 04 0F 60 */	lbz r0, 0xf60(r4)
/* 8000DE68 00009428  7C 1A 00 00 */	cmpw r26, r0
/* 8000DE6C 0000942C  40 82 00 0C */	bne lbl_8000DE78
/* 8000DE70 00009430  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8000DE74 00009434  98 04 0F 60 */	stb r0, 0xf60(r4)
lbl_8000DE78:
/* 8000DE78 00009438  38 63 00 01 */	addi r3, r3, 1
/* 8000DE7C 0000943C  42 00 FF 20 */	bdnz lbl_8000DD9C
/* 8000DE80 00009440  38 00 00 01 */	li r0, 1
lbl_8000DE84:
/* 8000DE84 00009444  2C 00 00 00 */	cmpwi r0, 0
/* 8000DE88 00009448  40 82 00 0C */	bne lbl_8000DE94
/* 8000DE8C 0000944C  38 60 00 00 */	li r3, 0
/* 8000DE90 00009450  48 00 00 14 */	b lbl_8000DEA4
lbl_8000DE94:
/* 8000DE94 00009454  38 00 FF FF */	li r0, -1
/* 8000DE98 00009458  90 1E 02 6C */	stw r0, 0x26c(r30)
/* 8000DE9C 0000945C  90 1E 02 68 */	stw r0, 0x268(r30)
lbl_8000DEA0:
/* 8000DEA0 00009460  38 60 00 01 */	li r3, 1
lbl_8000DEA4:
/* 8000DEA4 00009464  39 61 00 40 */	addi r11, r1, 0x40
/* 8000DEA8 00009468  48 14 4F ED */	bl _restgpr_23
/* 8000DEAC 0000946C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8000DEB0 00009470  7C 08 03 A6 */	mtlr r0
/* 8000DEB4 00009474  38 21 00 40 */	addi r1, r1, 0x40
/* 8000DEB8 00009478  4E 80 00 20 */	blr 

