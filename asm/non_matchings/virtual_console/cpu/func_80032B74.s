glabel func_80032B74
/* 80032B74 0002E134  80 8D 89 20 */	lwz r4, gSystem-_SDA_BASE_(r13)
/* 80032B78 0002E138  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80032B7C 0002E13C  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80032B80 0002E140  81 8D 89 28 */	lwz r12, lbl_8025CFE8-_SDA_BASE_(r13)
/* 80032B84 0002E144  2C 0C 00 00 */	cmpwi r12, 0
/* 80032B88 0002E148  4D 82 00 20 */	beqlr 
/* 80032B8C 0002E14C  7D 89 03 A6 */	mtctr r12
/* 80032B90 0002E150  4E 80 04 20 */	bctr 
/* 80032B94 0002E154  4E 80 00 20 */	blr 