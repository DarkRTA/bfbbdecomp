.include "macros.inc"

.if 0

.section .text  # 0x80054200 - 0x80054BFC

.global zEGenerator_Init__FP11zEGeneratorP9xEntAsset
zEGenerator_Init__FP11zEGeneratorP9xEntAsset:
/* 80054220 00051020  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80054224 00051024  7C 08 02 A6 */	mflr r0
/* 80054228 00051028  3C A0 45 47 */	lis r5, 0x4547454E@ha
/* 8005422C 0005102C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80054230 00051030  38 A5 45 4E */	addi r5, r5, 0x4547454E@l
/* 80054234 00051034  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80054238 00051038  7C 7F 1B 78 */	mr r31, r3
/* 8005423C 0005103C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80054240 00051040  7C 9E 23 78 */	mr r30, r4
/* 80054244 00051044  48 00 09 B9 */	bl zEntInit__FP4zEntP9xEntAssetUi
/* 80054248 00051048  93 DF 00 D4 */	stw r30, 0xd4(r31)
/* 8005424C 0005104C  88 1F 00 05 */	lbz r0, 5(r31)
/* 80054250 00051050  28 00 00 00 */	cmplwi r0, 0
/* 80054254 00051054  41 82 00 10 */	beq lbl_80054264
/* 80054258 00051058  38 1E 00 6C */	addi r0, r30, 0x6c
/* 8005425C 0005105C  90 1F 00 08 */	stw r0, 8(r31)
/* 80054260 00051060  48 00 00 0C */	b lbl_8005426C
lbl_80054264:
/* 80054264 00051064  38 00 00 00 */	li r0, 0
/* 80054268 00051068  90 1F 00 08 */	stw r0, 8(r31)
lbl_8005426C:
/* 8005426C 0005106C  3C 80 80 05 */	lis r4, zEGenerator_Update__FP11zEGeneratorP6xScenef@ha
/* 80054270 00051070  3C 60 80 05 */	lis r3, zEGenerator_Move__FP11zEGeneratorP6xScenef@ha
/* 80054274 00051074  38 04 45 2C */	addi r0, r4, zEGenerator_Update__FP11zEGeneratorP6xScenef@l
/* 80054278 00051078  3C 80 80 05 */	lis r4, zEGeneratorEventCB__FP5xBaseP5xBaseUiPCfP5xBase@ha
/* 8005427C 0005107C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80054280 00051080  38 03 45 28 */	addi r0, r3, zEGenerator_Move__FP11zEGeneratorP6xScenef@l
/* 80054284 00051084  3C 60 80 05 */	lis r3, zEGenerator_Render__FP11zEGenerator@ha
/* 80054288 00051088  38 84 4A 48 */	addi r4, r4, zEGeneratorEventCB__FP5xBaseP5xBaseUiPCfP5xBase@l
/* 8005428C 0005108C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80054290 00051090  38 63 46 40 */	addi r3, r3, zEGenerator_Render__FP11zEGenerator@l
/* 80054294 00051094  38 00 00 00 */	li r0, 0
/* 80054298 00051098  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8005429C 0005109C  90 7F 00 44 */	stw r3, 0x44(r31)
/* 800542A0 000510A0  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 800542A4 000510A4  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 800542A8 000510A8  28 03 00 00 */	cmplwi r3, 0
/* 800542AC 000510AC  41 82 00 C8 */	beq lbl_80054374
/* 800542B0 000510B0  38 81 00 18 */	addi r4, r1, 0x18
/* 800542B4 000510B4  4B FF 74 59 */	bl xSTFindAsset__FUiPUi
/* 800542B8 000510B8  28 03 00 00 */	cmplwi r3, 0
/* 800542BC 000510BC  41 82 00 B8 */	beq lbl_80054374
/* 800542C0 000510C0  3C 80 80 25 */	lis r4, zEGeneratorStringBase@ha
/* 800542C4 000510C4  38 A0 00 00 */	li r5, 0
/* 800542C8 000510C8  38 84 50 10 */	addi r4, r4, zEGeneratorStringBase@l
/* 800542CC 000510CC  38 C0 00 00 */	li r6, 0
/* 800542D0 000510D0  4B FB 22 99 */	bl xAnimFileNew__FPvPCcUiPP9xAnimFile
/* 800542D4 000510D4  3C 80 80 25 */	lis r4, zEGeneratorStringBase@ha
/* 800542D8 000510D8  90 7F 00 E0 */	stw r3, 0xe0(r31)
/* 800542DC 000510DC  38 64 50 10 */	addi r3, r4, zEGeneratorStringBase@l
/* 800542E0 000510E0  38 A0 00 00 */	li r5, 0
/* 800542E4 000510E4  38 80 00 00 */	li r4, 0
/* 800542E8 000510E8  4B FB 29 89 */	bl xAnimTableNew__FPCcPP10xAnimTableUi
/* 800542EC 000510EC  3C 80 80 00 */	lis r4, xAnimDefaultBeforeEnter__FP9xAnimPlayP10xAnimState@ha
/* 800542F0 000510F0  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 800542F4 000510F4  38 04 6C FC */	addi r0, r4, xAnimDefaultBeforeEnter__FP9xAnimPlayP10xAnimState@l
/* 800542F8 000510F8  3C 60 80 25 */	lis r3, zEGeneratorStringBase@ha
/* 800542FC 000510FC  90 01 00 08 */	stw r0, 8(r1)
/* 80054300 00051100  38 00 00 00 */	li r0, 0
/* 80054304 00051104  38 63 50 10 */	addi r3, r3, zEGeneratorStringBase@l
/* 80054308 00051108  38 A0 00 10 */	li r5, 0x10
/* 8005430C 0005110C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80054310 00051110  38 83 00 01 */	addi r4, r3, 1
/* 80054314 00051114  38 C0 00 00 */	li r6, 0
/* 80054318 00051118  38 E0 00 00 */	li r7, 0
/* 8005431C 0005111C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80054320 00051120  39 00 00 00 */	li r8, 0
/* 80054324 00051124  39 20 00 00 */	li r9, 0
/* 80054328 00051128  39 40 00 00 */	li r10, 0
/* 8005432C 0005112C  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 80054330 00051130  C0 22 89 10 */	lfs f1, lbl_803CD290-_SDA2_BASE_(r2)
/* 80054334 00051134  C0 42 89 14 */	lfs f2, lbl_803CD294-_SDA2_BASE_(r2)
/* 80054338 00051138  4B FB 2A 21 */	bl xAnimTableNewState__FP10xAnimTablePCcUiUifPfPffPUsPvPFP9xAnimPlayP10xAnimState_vPFP10xAnimStateP11xAnimSinglePv_vPFP9xAnimPlayP5xQuatP5xVec3i_v
/* 8005433C 0005113C  3C 80 80 25 */	lis r4, zEGeneratorStringBase@ha
/* 80054340 00051140  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 80054344 00051144  38 A4 50 10 */	addi r5, r4, zEGeneratorStringBase@l
/* 80054348 00051148  80 9F 00 E0 */	lwz r4, 0xe0(r31)
/* 8005434C 0005114C  38 A5 00 01 */	addi r5, r5, 1
/* 80054350 00051150  4B FB 32 25 */	bl xAnimTableAddFile__FP10xAnimTableP9xAnimFilePCc
/* 80054354 00051154  3C 60 80 3C */	lis r3, globals@ha
/* 80054358 00051158  80 BF 00 D0 */	lwz r5, 0xd0(r31)
/* 8005435C 0005115C  38 63 05 58 */	addi r3, r3, globals@l
/* 80054360 00051160  80 DF 00 24 */	lwz r6, 0x24(r31)
/* 80054364 00051164  80 63 1F C0 */	lwz r3, 0x1fc0(r3)
/* 80054368 00051168  7F E4 FB 78 */	mr r4, r31
/* 8005436C 0005116C  38 63 00 48 */	addi r3, r3, 0x48
/* 80054370 00051170  4B FB 4F 65 */	bl xAnimPoolAlloc__FP8xMemPoolPvP10xAnimTableP14xModelInstance
lbl_80054374:
/* 80054374 00051174  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80054378 00051178  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8005437C 0005117C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80054380 00051180  7C 08 03 A6 */	mtlr r0
/* 80054384 00051184  38 21 00 30 */	addi r1, r1, 0x30
/* 80054388 00051188  4E 80 00 20 */	blr 

zEGenerator_Update__FP11zEGeneratorP6xScenef:
/* 8005452C 0005132C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80054530 00051330  7C 08 02 A6 */	mflr r0
/* 80054534 00051334  90 01 00 24 */	stw r0, 0x24(r1)
/* 80054538 00051338  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8005453C 0005133C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80054540 00051340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80054544 00051344  7C 7F 1B 78 */	mr r31, r3
/* 80054548 00051348  FF E0 08 90 */	fmr f31, f1
/* 8005454C 0005134C  4B FC 50 B1 */	bl xEntUpdate__FP4xEntP6xScenef
/* 80054550 00051350  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80054554 00051354  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80054558 00051358  80 BF 00 D4 */	lwz r5, 0xd4(r31)
/* 8005455C 0005135C  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 80054560 00051360  38 A5 00 54 */	addi r5, r5, 0x54
/* 80054564 00051364  4B FB 6A 0D */	bl xMat4x3Toworld__FP5xVec3PC7xMat4x3PC5xVec3
/* 80054568 00051368  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 8005456C 0005136C  28 03 00 00 */	cmplwi r3, 0
/* 80054570 00051370  41 82 00 44 */	beq lbl_800545B4
/* 80054574 00051374  A0 03 00 06 */	lhz r0, 6(r3)
/* 80054578 00051378  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8005457C 0005137C  41 82 00 38 */	beq lbl_800545B4
/* 80054580 00051380  88 03 00 04 */	lbz r0, 4(r3)
/* 80054584 00051384  28 00 00 2F */	cmplwi r0, 0x2f
/* 80054588 00051388  40 82 00 18 */	bne lbl_800545A0
/* 8005458C 0005138C  4B FC 72 A5 */	bl xEntGetCenter__FPC4xEnt
/* 80054590 00051390  7C 64 1B 78 */	mr r4, r3
/* 80054594 00051394  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 80054598 00051398  4B FF 9F 45 */	bl xVec3Copy__FP5xVec3PC5xVec3
/* 8005459C 0005139C  48 00 00 18 */	b lbl_800545B4
lbl_800545A0:
/* 800545A0 000513A0  80 83 00 24 */	lwz r4, 0x24(r3)
/* 800545A4 000513A4  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 800545A8 000513A8  38 BF 00 FC */	addi r5, r31, 0xfc
/* 800545AC 000513AC  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 800545B0 000513B0  4B FB 69 C1 */	bl xMat4x3Toworld__FP5xVec3PC7xMat4x3PC5xVec3
lbl_800545B4:
/* 800545B4 000513B4  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 800545B8 000513B8  28 03 00 00 */	cmplwi r3, 0
/* 800545BC 000513BC  41 82 00 10 */	beq lbl_800545CC
/* 800545C0 000513C0  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 800545C4 000513C4  38 BF 00 F0 */	addi r5, r31, 0xf0
/* 800545C8 000513C8  48 04 D3 01 */	bl zLightningModifyEndpoints__FP10zLightningP5xVec3P5xVec3
lbl_800545CC:
/* 800545CC 000513CC  80 7F 01 10 */	lwz r3, 0x110(r31)
/* 800545D0 000513D0  28 03 00 00 */	cmplwi r3, 0
/* 800545D4 000513D4  41 82 00 10 */	beq lbl_800545E4
/* 800545D8 000513D8  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 800545DC 000513DC  38 BF 00 F0 */	addi r5, r31, 0xf0
/* 800545E0 000513E0  48 04 D2 E9 */	bl zLightningModifyEndpoints__FP10zLightningP5xVec3P5xVec3
lbl_800545E4:
/* 800545E4 000513E4  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 800545E8 000513E8  C0 02 89 14 */	lfs f0, lbl_803CD294-_SDA2_BASE_(r2)
/* 800545EC 000513EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800545F0 000513F0  40 81 00 34 */	ble lbl_80054624
/* 800545F4 000513F4  EC 01 F8 28 */	fsubs f0, f1, f31
/* 800545F8 000513F8  D0 1F 00 DC */	stfs f0, 0xdc(r31)
/* 800545FC 000513FC  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80054600 00051400  C0 02 89 14 */	lfs f0, lbl_803CD294-_SDA2_BASE_(r2)
/* 80054604 00051404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80054608 00051408  4C 40 13 82 */	cror 2, 0, 2
/* 8005460C 0005140C  40 82 00 18 */	bne lbl_80054624
/* 80054610 00051410  7F E3 FB 78 */	mr r3, r31
/* 80054614 00051414  48 00 03 71 */	bl zEGenerator_TurnOff__FP11zEGenerator
/* 80054618 00051418  7F E3 FB 78 */	mr r3, r31
/* 8005461C 0005141C  38 80 00 27 */	li r4, 0x27
/* 80054620 00051420  4B FC AF D1 */	bl zEntEvent__FP5xBaseUi
lbl_80054624:
/* 80054624 00051424  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 80054628 00051428  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005462C 0005142C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80054630 00051430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80054634 00051434  7C 08 03 A6 */	mtlr r0
/* 80054638 00051438  38 21 00 20 */	addi r1, r1, 0x20
/* 8005463C 0005143C  4E 80 00 20 */	blr 

.global zEGenerator_TurnOn__FP11zEGenerator
zEGenerator_TurnOn__FP11zEGenerator:
/* 80054660 00051460  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80054664 00051464  7C 08 02 A6 */	mflr r0
/* 80054668 00051468  90 01 00 84 */	stw r0, 0x84(r1)
/* 8005466C 0005146C  BF 21 00 64 */	stmw r25, 0x64(r1)
/* 80054670 00051470  7C 7F 1B 78 */	mr r31, r3
/* 80054674 00051474  A0 03 00 D8 */	lhz r0, 0xd8(r3)
/* 80054678 00051478  60 00 00 01 */	ori r0, r0, 1
/* 8005467C 0005147C  B0 03 00 D8 */	sth r0, 0xd8(r3)
/* 80054680 00051480  80 03 00 E0 */	lwz r0, 0xe0(r3)
/* 80054684 00051484  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80054688 00051488  28 00 00 00 */	cmplwi r0, 0
/* 8005468C 0005148C  41 82 00 18 */	beq lbl_800546A4
/* 80054690 00051490  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80054694 00051494  C0 02 89 10 */	lfs f0, lbl_803CD290-_SDA2_BASE_(r2)
/* 80054698 00051498  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8005469C 0005149C  80 63 00 08 */	lwz r3, 8(r3)
/* 800546A0 000514A0  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_800546A4:
/* 800546A4 000514A4  C0 04 00 64 */	lfs f0, 0x64(r4)
/* 800546A8 000514A8  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 800546AC 000514AC  38 A4 00 54 */	addi r5, r4, 0x54
/* 800546B0 000514B0  D0 1F 00 DC */	stfs f0, 0xdc(r31)
/* 800546B4 000514B4  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 800546B8 000514B8  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 800546BC 000514BC  4B FB 68 B5 */	bl xMat4x3Toworld__FP5xVec3PC7xMat4x3PC5xVec3
/* 800546C0 000514C0  A0 1F 00 DA */	lhz r0, 0xda(r31)
/* 800546C4 000514C4  28 00 00 00 */	cmplwi r0, 0
/* 800546C8 000514C8  41 82 01 1C */	beq lbl_800547E4
/* 800546CC 000514CC  4B FD C5 9D */	bl xrand__Fv
/* 800546D0 000514D0  A0 9F 00 DA */	lhz r4, 0xda(r31)
/* 800546D4 000514D4  3B 80 00 00 */	li r28, 0
/* 800546D8 000514D8  3B 60 00 00 */	li r27, 0
/* 800546DC 000514DC  3B C0 00 00 */	li r30, 0
/* 800546E0 000514E0  7C 03 23 96 */	divwu r0, r3, r4
/* 800546E4 000514E4  7C 00 21 D6 */	mullw r0, r0, r4
/* 800546E8 000514E8  7C 00 18 50 */	subf r0, r0, r3
/* 800546EC 000514EC  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 800546F0 000514F0  48 00 00 E8 */	b lbl_800547D8
lbl_800546F4:
/* 800546F4 000514F4  80 1F 00 08 */	lwz r0, 8(r31)
/* 800546F8 000514F8  7F 40 F2 14 */	add r26, r0, r30
/* 800546FC 000514FC  80 7A 00 04 */	lwz r3, 4(r26)
/* 80054700 00051500  48 06 03 3D */	bl zSceneFindObject__FUi
/* 80054704 00051504  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80054708 00051508  7C 79 1B 78 */	mr r25, r3
/* 8005470C 0005150C  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80054710 00051510  38 81 00 10 */	addi r4, r1, 0x10
/* 80054714 00051514  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80054718 00051518  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8005471C 0005151C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80054720 00051520  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 80054724 00051524  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80054728 00051528  4B FF 9D B5 */	bl xVec3Copy__FP5xVec3PC5xVec3
/* 8005472C 0005152C  28 19 00 00 */	cmplwi r25, 0
/* 80054730 00051530  41 82 00 A0 */	beq lbl_800547D0
/* 80054734 00051534  A0 1A 00 02 */	lhz r0, 2(r26)
/* 80054738 00051538  28 00 00 C0 */	cmplwi r0, 0xc0
/* 8005473C 0005153C  40 82 00 94 */	bne lbl_800547D0
/* 80054740 00051540  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80054744 00051544  7C 00 E8 40 */	cmplw r0, r29
/* 80054748 00051548  40 82 00 84 */	bne lbl_800547CC
/* 8005474C 0005154C  88 19 00 04 */	lbz r0, 4(r25)
/* 80054750 00051550  28 00 00 0D */	cmplwi r0, 0xd
/* 80054754 00051554  40 82 00 2C */	bne lbl_80054780
/* 80054758 00051558  7F 23 CB 78 */	mr r3, r25
/* 8005475C 0005155C  4B FE 11 89 */	bl xMovePointGetPos__FPC10xMovePoint
/* 80054760 00051560  7C 64 1B 78 */	mr r4, r3
/* 80054764 00051564  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 80054768 00051568  4B FF 9D 75 */	bl xVec3Copy__FP5xVec3PC5xVec3
/* 8005476C 0005156C  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 80054770 00051570  38 9F 00 FC */	addi r4, r31, 0xfc
/* 80054774 00051574  4B FB 9F E1 */	bl xVec3AddTo__FP5xVec3PC5xVec3
/* 80054778 00051578  93 3F 01 08 */	stw r25, 0x108(r31)
/* 8005477C 0005157C  48 00 00 7C */	b lbl_800547F8
lbl_80054780:
/* 80054780 00051580  28 00 00 2F */	cmplwi r0, 0x2f
/* 80054784 00051584  40 82 00 20 */	bne lbl_800547A4
/* 80054788 00051588  7F 23 CB 78 */	mr r3, r25
/* 8005478C 0005158C  4B FC 70 A5 */	bl xEntGetCenter__FPC4xEnt
/* 80054790 00051590  7C 64 1B 78 */	mr r4, r3
/* 80054794 00051594  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 80054798 00051598  4B FF 9D 45 */	bl xVec3Copy__FP5xVec3PC5xVec3
/* 8005479C 0005159C  93 3F 01 08 */	stw r25, 0x108(r31)
/* 800547A0 000515A0  48 00 00 58 */	b lbl_800547F8
lbl_800547A4:
/* 800547A4 000515A4  A0 19 00 06 */	lhz r0, 6(r25)
/* 800547A8 000515A8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800547AC 000515AC  41 82 00 24 */	beq lbl_800547D0
/* 800547B0 000515B0  80 99 00 24 */	lwz r4, 0x24(r25)
/* 800547B4 000515B4  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 800547B8 000515B8  38 BF 00 FC */	addi r5, r31, 0xfc
/* 800547BC 000515BC  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 800547C0 000515C0  4B FB 67 B1 */	bl xMat4x3Toworld__FP5xVec3PC7xMat4x3PC5xVec3
/* 800547C4 000515C4  93 3F 01 08 */	stw r25, 0x108(r31)
/* 800547C8 000515C8  48 00 00 30 */	b lbl_800547F8
lbl_800547CC:
/* 800547CC 000515CC  3B 9C 00 01 */	addi r28, r28, 1
lbl_800547D0:
/* 800547D0 000515D0  3B DE 00 20 */	addi r30, r30, 0x20
/* 800547D4 000515D4  3B 7B 00 01 */	addi r27, r27, 1
lbl_800547D8:
/* 800547D8 000515D8  88 1F 00 05 */	lbz r0, 5(r31)
/* 800547DC 000515DC  7C 1B 00 00 */	cmpw r27, r0
/* 800547E0 000515E0  41 80 FF 14 */	blt lbl_800546F4
lbl_800547E4:
/* 800547E4 000515E4  3C 80 00 0C */	lis r4, 0x000C0006@ha
/* 800547E8 000515E8  C0 22 89 18 */	lfs f1, lbl_803CD298-_SDA2_BASE_(r2)
/* 800547EC 000515EC  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 800547F0 000515F0  38 84 00 06 */	addi r4, r4, 0x000C0006@l
/* 800547F4 000515F4  4B FF 38 AD */	bl xDrawSphere__FPC5xVec3fUi
lbl_800547F8:
/* 800547F8 000515F8  7F FD FB 78 */	mr r29, r31
/* 800547FC 000515FC  3B 20 00 00 */	li r25, 0
/* 80054800 00051600  3B C0 00 00 */	li r30, 0
lbl_80054804:
/* 80054804 00051604  80 7D 01 0C */	lwz r3, 0x10c(r29)
/* 80054808 00051608  28 03 00 00 */	cmplwi r3, 0
/* 8005480C 0005160C  41 82 00 0C */	beq lbl_80054818
/* 80054810 00051610  48 04 D0 A5 */	bl zLightningKill__FP10zLightning
/* 80054814 00051614  93 DD 01 0C */	stw r30, 0x10c(r29)
lbl_80054818:
/* 80054818 00051618  3B 39 00 01 */	addi r25, r25, 1
/* 8005481C 0005161C  3B BD 00 04 */	addi r29, r29, 4
/* 80054820 00051620  2C 19 00 02 */	cmpwi r25, 2
/* 80054824 00051624  41 80 FF E0 */	blt lbl_80054804
/* 80054828 00051628  38 61 00 1C */	addi r3, r1, 0x1c
/* 8005482C 0005162C  38 80 00 00 */	li r4, 0
/* 80054830 00051630  38 A0 00 40 */	li r5, 0x40
/* 80054834 00051634  4B FA EC 25 */	bl memset
/* 80054838 00051638  38 00 00 03 */	li r0, 3
/* 8005483C 0005163C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80054840 00051640  4B FD C4 29 */	bl xrand__Fv
/* 80054844 00051644  54 60 0F 7C */	rlwinm r0, r3, 1, 0x1d, 0x1e
/* 80054848 00051648  38 BF 00 E4 */	addi r5, r31, 0xe4
/* 8005484C 0005164C  7C 03 07 34 */	extsh r3, r0
/* 80054850 00051650  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80054854 00051654  38 63 00 08 */	addi r3, r3, 8
/* 80054858 00051658  38 1F 00 F0 */	addi r0, r31, 0xf0
/* 8005485C 0005165C  B0 61 00 34 */	sth r3, 0x34(r1)
/* 80054860 00051660  38 60 00 C8 */	li r3, 0xc8
/* 80054864 00051664  38 80 00 C8 */	li r4, 0xc8
/* 80054868 00051668  38 C0 00 C8 */	li r6, 0xc8
/* 8005486C 0005166C  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80054870 00051670  38 A0 00 FF */	li r5, 0xff
/* 80054874 00051674  90 01 00 30 */	stw r0, 0x30(r1)
/* 80054878 00051678  C0 02 89 1C */	lfs f0, lbl_803CD29C-_SDA2_BASE_(r2)
/* 8005487C 0005167C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80054880 00051680  4B FD A7 69 */	bl xColorFromRGBA__FUcUcUcUc
/* 80054884 00051684  90 61 00 0C */	stw r3, 0xc(r1)
/* 80054888 00051688  3B A1 00 44 */	addi r29, r1, 0x44
/* 8005488C 0005168C  7F A3 EB 78 */	mr r3, r29
/* 80054890 00051690  38 81 00 0C */	addi r4, r1, 0xc
/* 80054894 00051694  4B FC 37 05 */	bl __as__10iColor_tagFRC10iColor_tag
/* 80054898 00051698  C0 02 89 20 */	lfs f0, lbl_803CD2A0-_SDA2_BASE_(r2)
/* 8005489C 0005169C  38 00 1C 30 */	li r0, 0x1c30
/* 800548A0 000516A0  38 61 00 1C */	addi r3, r1, 0x1c
/* 800548A4 000516A4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800548A8 000516A8  C0 02 89 24 */	lfs f0, lbl_803CD2A4-_SDA2_BASE_(r2)
/* 800548AC 000516AC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800548B0 000516B0  C0 02 89 28 */	lfs f0, lbl_803CD2A8-_SDA2_BASE_(r2)
/* 800548B4 000516B4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800548B8 000516B8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800548BC 000516BC  C0 02 89 2C */	lfs f0, lbl_803CD2AC-_SDA2_BASE_(r2)
/* 800548C0 000516C0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800548C4 000516C4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800548C8 000516C8  48 04 B0 A9 */	bl zLightningAdd__FP16_tagLightningAdd
/* 800548CC 000516CC  90 7F 01 0C */	stw r3, 0x10c(r31)
/* 800548D0 000516D0  38 60 00 10 */	li r3, 0x10
/* 800548D4 000516D4  38 00 00 03 */	li r0, 3
/* 800548D8 000516D8  B0 61 00 34 */	sth r3, 0x34(r1)
/* 800548DC 000516DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800548E0 000516E0  4B FD C3 A9 */	bl xurand__Fv
/* 800548E4 000516E4  C0 42 89 34 */	lfs f2, lbl_803CD2B4-_SDA2_BASE_(r2)
/* 800548E8 000516E8  C0 02 89 30 */	lfs f0, lbl_803CD2B0-_SDA2_BASE_(r2)
/* 800548EC 000516EC  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 800548F0 000516F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800548F4 000516F4  4B FD C3 75 */	bl xrand__Fv
/* 800548F8 000516F8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800548FC 000516FC  41 82 00 10 */	beq lbl_8005490C
/* 80054900 00051700  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80054904 00051704  FC 00 00 50 */	fneg f0, f0
/* 80054908 00051708  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_8005490C:
/* 8005490C 0005170C  4B FD C3 7D */	bl xurand__Fv
/* 80054910 00051710  C0 42 89 3C */	lfs f2, lbl_803CD2BC-_SDA2_BASE_(r2)
/* 80054914 00051714  38 60 00 50 */	li r3, 0x50
/* 80054918 00051718  C0 02 89 38 */	lfs f0, lbl_803CD2B8-_SDA2_BASE_(r2)
/* 8005491C 0005171C  38 80 00 64 */	li r4, 0x64
/* 80054920 00051720  38 A0 00 FF */	li r5, 0xff
/* 80054924 00051724  38 C0 00 C8 */	li r6, 0xc8
/* 80054928 00051728  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8005492C 0005172C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80054930 00051730  4B FD A6 B9 */	bl xColorFromRGBA__FUcUcUcUc
/* 80054934 00051734  90 61 00 08 */	stw r3, 8(r1)
/* 80054938 00051738  7F A3 EB 78 */	mr r3, r29
/* 8005493C 0005173C  38 81 00 08 */	addi r4, r1, 8
/* 80054940 00051740  4B FC 36 59 */	bl __as__10iColor_tagFRC10iColor_tag
/* 80054944 00051744  C0 02 89 40 */	lfs f0, lbl_803CD2C0-_SDA2_BASE_(r2)
/* 80054948 00051748  38 00 0C 18 */	li r0, 0xc18
/* 8005494C 0005174C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80054950 00051750  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80054954 00051754  C0 02 89 1C */	lfs f0, lbl_803CD29C-_SDA2_BASE_(r2)
/* 80054958 00051758  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8005495C 0005175C  C0 02 89 44 */	lfs f0, lbl_803CD2C4-_SDA2_BASE_(r2)
/* 80054960 00051760  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80054964 00051764  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80054968 00051768  48 04 B0 09 */	bl zLightningAdd__FP16_tagLightningAdd
/* 8005496C 0005176C  90 7F 01 10 */	stw r3, 0x110(r31)
/* 80054970 00051770  BB 21 00 64 */	lmw r25, 0x64(r1)
/* 80054974 00051774  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80054978 00051778  7C 08 03 A6 */	mtlr r0
/* 8005497C 0005177C  38 21 00 80 */	addi r1, r1, 0x80
/* 80054980 00051780  4E 80 00 20 */	blr 

zEGeneratorEventCB__FP5xBaseP5xBaseUiPCfP5xBase:
/* 80054A48 00051848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80054A4C 0005184C  7C 08 02 A6 */	mflr r0
/* 80054A50 00051850  2C 05 00 54 */	cmpwi r5, 0x54
/* 80054A54 00051854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80054A58 00051858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80054A5C 0005185C  7C 9F 23 78 */	mr r31, r4
/* 80054A60 00051860  41 82 01 34 */	beq lbl_80054B94
/* 80054A64 00051864  40 80 00 58 */	bge lbl_80054ABC
/* 80054A68 00051868  2C 05 00 0F */	cmpwi r5, 0xf
/* 80054A6C 0005186C  41 82 00 B4 */	beq lbl_80054B20
/* 80054A70 00051870  40 80 00 28 */	bge lbl_80054A98
/* 80054A74 00051874  2C 05 00 04 */	cmpwi r5, 4
/* 80054A78 00051878  41 82 00 D8 */	beq lbl_80054B50
/* 80054A7C 0005187C  40 80 00 10 */	bge lbl_80054A8C
/* 80054A80 00051880  2C 05 00 03 */	cmpwi r5, 3
/* 80054A84 00051884  40 80 00 C0 */	bge lbl_80054B44
/* 80054A88 00051888  48 00 01 5C */	b lbl_80054BE4
lbl_80054A8C:
/* 80054A8C 0005188C  2C 05 00 0A */	cmpwi r5, 0xa
/* 80054A90 00051890  41 82 00 9C */	beq lbl_80054B2C
/* 80054A94 00051894  48 00 01 50 */	b lbl_80054BE4
lbl_80054A98:
/* 80054A98 00051898  2C 05 00 27 */	cmpwi r5, 0x27
/* 80054A9C 0005189C  41 82 00 78 */	beq lbl_80054B14
/* 80054AA0 000518A0  40 80 00 10 */	bge lbl_80054AB0
/* 80054AA4 000518A4  2C 05 00 26 */	cmpwi r5, 0x26
/* 80054AA8 000518A8  40 80 00 60 */	bge lbl_80054B08
/* 80054AAC 000518AC  48 00 01 38 */	b lbl_80054BE4
lbl_80054AB0:
/* 80054AB0 000518B0  2C 05 00 53 */	cmpwi r5, 0x53
/* 80054AB4 000518B4  40 80 00 B0 */	bge lbl_80054B64
/* 80054AB8 000518B8  48 00 01 2C */	b lbl_80054BE4
lbl_80054ABC:
/* 80054ABC 000518BC  2C 05 01 F7 */	cmpwi r5, 0x1f7
/* 80054AC0 000518C0  41 82 00 84 */	beq lbl_80054B44
/* 80054AC4 000518C4  40 80 00 20 */	bge lbl_80054AE4
/* 80054AC8 000518C8  2C 05 01 D5 */	cmpwi r5, 0x1d5
/* 80054ACC 000518CC  41 82 00 EC */	beq lbl_80054BB8
/* 80054AD0 000518D0  40 80 01 14 */	bge lbl_80054BE4
/* 80054AD4 000518D4  2C 05 00 56 */	cmpwi r5, 0x56
/* 80054AD8 000518D8  41 82 00 B4 */	beq lbl_80054B8C
/* 80054ADC 000518DC  40 80 01 08 */	bge lbl_80054BE4
/* 80054AE0 000518E0  48 00 00 7C */	b lbl_80054B5C
lbl_80054AE4:
/* 80054AE4 000518E4  2C 05 02 08 */	cmpwi r5, 0x208
/* 80054AE8 000518E8  41 82 00 C4 */	beq lbl_80054BAC
/* 80054AEC 000518EC  40 80 00 10 */	bge lbl_80054AFC
/* 80054AF0 000518F0  2C 05 01 F9 */	cmpwi r5, 0x1f9
/* 80054AF4 000518F4  40 80 00 F0 */	bge lbl_80054BE4
/* 80054AF8 000518F8  48 00 00 58 */	b lbl_80054B50
lbl_80054AFC:
/* 80054AFC 000518FC  2C 05 02 0A */	cmpwi r5, 0x20a
/* 80054B00 00051900  40 80 00 E4 */	bge lbl_80054BE4
/* 80054B04 00051904  48 00 00 9C */	b lbl_80054BA0
lbl_80054B08:
/* 80054B08 00051908  7F E3 FB 78 */	mr r3, r31
/* 80054B0C 0005190C  4B FF FB 55 */	bl zEGenerator_TurnOn__FP11zEGenerator
/* 80054B10 00051910  48 00 00 D4 */	b lbl_80054BE4
lbl_80054B14:
/* 80054B14 00051914  7F E3 FB 78 */	mr r3, r31
/* 80054B18 00051918  4B FF FE 6D */	bl zEGenerator_TurnOff__FP11zEGenerator
/* 80054B1C 0005191C  48 00 00 C8 */	b lbl_80054BE4
lbl_80054B20:
/* 80054B20 00051920  7F E3 FB 78 */	mr r3, r31
/* 80054B24 00051924  4B FF FE F1 */	bl zEGenerator_ToggleOn__FP11zEGenerator
/* 80054B28 00051928  48 00 00 BC */	b lbl_80054BE4
lbl_80054B2C:
/* 80054B2C 0005192C  3C 80 80 3C */	lis r4, globals@ha
/* 80054B30 00051930  7F E3 FB 78 */	mr r3, r31
/* 80054B34 00051934  38 84 05 58 */	addi r4, r4, globals@l
/* 80054B38 00051938  80 84 1F C0 */	lwz r4, 0x1fc0(r4)
/* 80054B3C 0005193C  4B FF F9 51 */	bl zEGenerator_Reset__FP11zEGeneratorP6xScene
/* 80054B40 00051940  48 00 00 A4 */	b lbl_80054BE4
lbl_80054B44:
/* 80054B44 00051944  7F E3 FB 78 */	mr r3, r31
/* 80054B48 00051948  4B FC 6C B1 */	bl xEntShow__FP4xEnt
/* 80054B4C 0005194C  48 00 00 98 */	b lbl_80054BE4
lbl_80054B50:
/* 80054B50 00051950  7F E3 FB 78 */	mr r3, r31
/* 80054B54 00051954  4B FC 6C 95 */	bl xEntHide__FP4xEnt
/* 80054B58 00051958  48 00 00 8C */	b lbl_80054BE4
lbl_80054B5C:
/* 80054B5C 0005195C  7F E3 FB 78 */	mr r3, r31
/* 80054B60 00051960  4B FC 6C 99 */	bl xEntShow__FP4xEnt
lbl_80054B64:
/* 80054B64 00051964  38 00 00 18 */	li r0, 0x18
/* 80054B68 00051968  7F E3 FB 78 */	mr r3, r31
/* 80054B6C 0005196C  98 1F 00 22 */	stb r0, 0x22(r31)
/* 80054B70 00051970  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80054B74 00051974  81 9F 00 3C */	lwz r12, 0x3c(r31)
/* 80054B78 00051978  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 80054B7C 0005197C  38 84 00 30 */	addi r4, r4, 0x30
/* 80054B80 00051980  7D 89 03 A6 */	mtctr r12
/* 80054B84 00051984  4E 80 04 21 */	bctrl 
/* 80054B88 00051988  48 00 00 5C */	b lbl_80054BE4
lbl_80054B8C:
/* 80054B8C 0005198C  7F E3 FB 78 */	mr r3, r31
/* 80054B90 00051990  4B FC 6C 59 */	bl xEntHide__FP4xEnt
lbl_80054B94:
/* 80054B94 00051994  38 00 00 00 */	li r0, 0
/* 80054B98 00051998  98 1F 00 22 */	stb r0, 0x22(r31)
/* 80054B9C 0005199C  48 00 00 48 */	b lbl_80054BE4
lbl_80054BA0:
/* 80054BA0 000519A0  7F E3 FB 78 */	mr r3, r31
/* 80054BA4 000519A4  48 0C 1D 25 */	bl zCollGeom_CamEnable__FP4xEnt
/* 80054BA8 000519A8  48 00 00 3C */	b lbl_80054BE4
lbl_80054BAC:
/* 80054BAC 000519AC  7F E3 FB 78 */	mr r3, r31
/* 80054BB0 000519B0  48 0C 1D 31 */	bl zCollGeom_CamDisable__FP4xEnt
/* 80054BB4 000519B4  48 00 00 30 */	b lbl_80054BE4
lbl_80054BB8:
/* 80054BB8 000519B8  28 07 00 00 */	cmplwi r7, 0
/* 80054BBC 000519BC  41 82 00 28 */	beq lbl_80054BE4
/* 80054BC0 000519C0  81 87 00 08 */	lwz r12, 8(r7)
/* 80054BC4 000519C4  28 0C 00 00 */	cmplwi r12, 0
/* 80054BC8 000519C8  41 82 00 1C */	beq lbl_80054BE4
/* 80054BCC 000519CC  7C E3 3B 78 */	mr r3, r7
/* 80054BD0 000519D0  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80054BD4 000519D4  38 A0 00 00 */	li r5, 0
/* 80054BD8 000519D8  38 C0 00 00 */	li r6, 0
/* 80054BDC 000519DC  7D 89 03 A6 */	mtctr r12
/* 80054BE0 000519E0  4E 80 04 21 */	bctrl 
lbl_80054BE4:
/* 80054BE4 000519E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80054BE8 000519E8  38 60 00 01 */	li r3, 1
/* 80054BEC 000519EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80054BF0 000519F0  7C 08 03 A6 */	mtlr r0
/* 80054BF4 000519F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80054BF8 000519F8  4E 80 00 20 */	blr 

.endif

.section .rodata
.global zEGeneratorStringBase
zEGeneratorStringBase:
	.incbin "baserom.dol", 0x251FF0, 0x8

.section .sdata2
.global lbl_803CD290
lbl_803CD290:
	.incbin "baserom.dol", 0x2B6B30, 0x4
.global lbl_803CD294
lbl_803CD294:
	.incbin "baserom.dol", 0x2B6B34, 0x4
lbl_803CD298:
	.incbin "baserom.dol", 0x2B6B38, 0x4
lbl_803CD29C:
	.incbin "baserom.dol", 0x2B6B3C, 0x4
lbl_803CD2A0:
	.incbin "baserom.dol", 0x2B6B40, 0x4
lbl_803CD2A4:
	.incbin "baserom.dol", 0x2B6B44, 0x4
lbl_803CD2A8:
	.incbin "baserom.dol", 0x2B6B48, 0x4
lbl_803CD2AC:
	.incbin "baserom.dol", 0x2B6B4C, 0x4
lbl_803CD2B0:
	.incbin "baserom.dol", 0x2B6B50, 0x4
lbl_803CD2B4:
	.incbin "baserom.dol", 0x2B6B54, 0x4
lbl_803CD2B8:
	.incbin "baserom.dol", 0x2B6B58, 0x4
lbl_803CD2BC:
	.incbin "baserom.dol", 0x2B6B5C, 0x4
lbl_803CD2C0:
	.incbin "baserom.dol", 0x2B6B60, 0x4
lbl_803CD2C4:
	.incbin "baserom.dol", 0x2B6B64, 0x4
