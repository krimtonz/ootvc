glabel xlListTestItem
/* 800808F4 0007BEB4  3C A0 80 1D */	lis r5, lbl_801C96B8@ha
/* 800808F8 0007BEB8  38 A5 96 B8 */	addi r5, r5, lbl_801C96B8@l
/* 800808FC 0007BEBC  7C 03 28 40 */	cmplw r3, r5
/* 80080900 0007BEC0  40 82 00 0C */	bne lbl_8008090C
/* 80080904 0007BEC4  38 00 00 01 */	li r0, 1
/* 80080908 0007BEC8  48 00 00 30 */	b lbl_80080938
lbl_8008090C:
/* 8008090C 0007BECC  80 A5 00 08 */	lwz r5, 8(r5)
/* 80080910 0007BED0  48 00 00 1C */	b lbl_8008092C
lbl_80080914:
/* 80080914 0007BED4  38 05 00 04 */	addi r0, r5, 4
/* 80080918 0007BED8  7C 03 00 40 */	cmplw r3, r0
/* 8008091C 0007BEDC  40 82 00 0C */	bne lbl_80080928
/* 80080920 0007BEE0  38 00 00 01 */	li r0, 1
/* 80080924 0007BEE4  48 00 00 14 */	b lbl_80080938
lbl_80080928:
/* 80080928 0007BEE8  80 A5 00 00 */	lwz r5, 0(r5)
lbl_8008092C:
/* 8008092C 0007BEEC  2C 05 00 00 */	cmpwi r5, 0
/* 80080930 0007BEF0  40 82 FF E4 */	bne lbl_80080914
/* 80080934 0007BEF4  38 00 00 00 */	li r0, 0
lbl_80080938:
/* 80080938 0007BEF8  2C 00 00 00 */	cmpwi r0, 0
/* 8008093C 0007BEFC  41 82 00 0C */	beq lbl_80080948
/* 80080940 0007BF00  2C 04 00 00 */	cmpwi r4, 0
/* 80080944 0007BF04  40 82 00 0C */	bne lbl_80080950
lbl_80080948:
/* 80080948 0007BF08  38 60 00 00 */	li r3, 0
/* 8008094C 0007BF0C  4E 80 00 20 */	blr 
lbl_80080950:
/* 80080950 0007BF10  80 63 00 08 */	lwz r3, 8(r3)
/* 80080954 0007BF14  48 00 00 1C */	b lbl_80080970
lbl_80080958:
/* 80080958 0007BF18  38 03 00 04 */	addi r0, r3, 4
/* 8008095C 0007BF1C  7C 04 00 40 */	cmplw r4, r0
/* 80080960 0007BF20  40 82 00 0C */	bne lbl_8008096C
/* 80080964 0007BF24  38 60 00 01 */	li r3, 1
/* 80080968 0007BF28  4E 80 00 20 */	blr 
lbl_8008096C:
/* 8008096C 0007BF2C  80 63 00 00 */	lwz r3, 0(r3)
lbl_80080970:
/* 80080970 0007BF30  2C 03 00 00 */	cmpwi r3, 0
/* 80080974 0007BF34  40 82 FF E4 */	bne lbl_80080958
/* 80080978 0007BF38  38 60 00 00 */	li r3, 0
/* 8008097C 0007BF3C  4E 80 00 20 */	blr 