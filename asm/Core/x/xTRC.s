.include "macros.inc"

.section .text  # 0x8004D6AC - 0x8004DC48

.global xTRCInit__Fv
xTRCInit__Fv:
/* 8004D6AC 0004A4AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004D6B0 0004A4B0  7C 08 02 A6 */	mflr r0
/* 8004D6B4 0004A4B4  3C 60 80 3C */	lis r3, lbl_gTrcPad@ha
/* 8004D6B8 0004A4B8  38 80 00 00 */	li r4, 0
/* 8004D6BC 0004A4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004D6C0 0004A4C0  38 63 EF 88 */	addi r3, r3, lbl_gTrcPad@l
/* 8004D6C4 0004A4C4  38 A0 00 30 */	li r5, 0x30
/* 8004D6C8 0004A4C8  4B FB 5D 91 */	bl memset
/* 8004D6CC 0004A4CC  3C 60 80 3C */	lis r3, lbl_gTrcPad@ha
/* 8004D6D0 0004A4D0  38 80 00 00 */	li r4, 0
/* 8004D6D4 0004A4D4  39 03 EF 88 */	addi r8, r3, lbl_gTrcPad@l
/* 8004D6D8 0004A4D8  38 E0 00 01 */	li r7, 1
/* 8004D6DC 0004A4DC  38 C0 00 02 */	li r6, 2
/* 8004D6E0 0004A4E0  38 00 00 03 */	li r0, 3
/* 8004D6E4 0004A4E4  90 88 00 04 */	stw r4, 4(r8)
/* 8004D6E8 0004A4E8  38 6D 8B 18 */	addi r3, r13, lbl_gTrcDisk-_SDA_BASE_
/* 8004D6EC 0004A4EC  38 80 00 00 */	li r4, 0
/* 8004D6F0 0004A4F0  38 A0 00 08 */	li r5, 8
/* 8004D6F4 0004A4F4  90 E8 00 10 */	stw r7, 0x10(r8)
/* 8004D6F8 0004A4F8  90 C8 00 1C */	stw r6, 0x1c(r8)
/* 8004D6FC 0004A4FC  90 08 00 28 */	stw r0, 0x28(r8)
/* 8004D700 0004A500  4B FB 5D 59 */	bl memset
/* 8004D704 0004A504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004D708 0004A508  7C 08 03 A6 */	mtlr r0
/* 8004D70C 0004A50C  38 21 00 10 */	addi r1, r1, 0x10
/* 8004D710 0004A510  4E 80 00 20 */	blr 

.global xTRC.render_message__FPCc
xTRC.render_message__FPCc:
/* 8004D714 0004A514  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8004D718 0004A518  7C 08 02 A6 */	mflr r0
/* 8004D71C 0004A51C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8004D720 0004A520  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8004D724 0004A524  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 8004D728 0004A528  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8004D72C 0004A52C  88 0D 8B 20 */	lbz r0, lbl_init$733-_SDA_BASE_(r13)
/* 8004D730 0004A530  7C 7F 1B 78 */	mr r31, r3
/* 8004D734 0004A534  7C 00 07 75 */	extsb. r0, r0
/* 8004D738 0004A538  40 82 00 9C */	bne lbl_8004D7D4
/* 8004D73C 0004A53C  80 02 87 B0 */	lwz r0, lbl_yellow-_SDA2_BASE_(r2)
/* 8004D740 0004A540  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004D744 0004A544  C0 22 87 B8 */	lfs f1, lbl__747_3-_SDA2_BASE_(r2)
/* 8004D748 0004A548  4B FC A8 75 */	bl NSCREENY__Ff
/* 8004D74C 0004A54C  FF E0 08 90 */	fmr f31, f1
/* 8004D750 0004A550  C0 22 87 B4 */	lfs f1, lbl__746_1-_SDA2_BASE_(r2)
/* 8004D754 0004A554  4B FC A8 75 */	bl NSCREENX__Ff
/* 8004D758 0004A558  FC 40 F8 90 */	fmr f2, f31
/* 8004D75C 0004A55C  3C 60 80 25 */	lis r3, lbl_screen_bounds_3@ha
/* 8004D760 0004A560  C0 62 87 BC */	lfs f3, lbl__748-_SDA2_BASE_(r2)
/* 8004D764 0004A564  38 C3 3F 00 */	addi r6, r3, lbl_screen_bounds_3@l
/* 8004D768 0004A568  38 61 00 10 */	addi r3, r1, 0x10
/* 8004D76C 0004A56C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8004D770 0004A570  38 80 00 01 */	li r4, 1
/* 8004D774 0004A574  4B FC A7 81 */	bl create__5xfontFUifff10iColor_tagRC13basic_rect_f_
/* 8004D778 0004A578  C0 22 87 BC */	lfs f1, lbl__748-_SDA2_BASE_(r2)
/* 8004D77C 0004A57C  3C 60 80 25 */	lis r3, lbl_screen_bounds_3@ha
/* 8004D780 0004A580  38 A3 3F 00 */	addi r5, r3, lbl_screen_bounds_3@l
/* 8004D784 0004A584  38 81 00 10 */	addi r4, r1, 0x10
/* 8004D788 0004A588  FC 40 08 90 */	fmr f2, f1
/* 8004D78C 0004A58C  38 61 00 34 */	addi r3, r1, 0x34
/* 8004D790 0004A590  FC 60 08 90 */	fmr f3, f1
/* 8004D794 0004A594  38 C0 00 02 */	li r6, 2
/* 8004D798 0004A598  FC 80 08 90 */	fmr f4, f1
/* 8004D79C 0004A59C  4B FC A6 49 */	bl create__8xtextboxFRC5xfontRC13basic_rect_f_Uiffff
/* 8004D7A0 0004A5A0  3C 60 80 29 */	lis r3, lbl_tb$731@ha
/* 8004D7A4 0004A5A4  38 00 00 0D */	li r0, 0xd
/* 8004D7A8 0004A5A8  38 63 A2 A8 */	addi r3, r3, lbl_tb$731@l
/* 8004D7AC 0004A5AC  38 81 00 30 */	addi r4, r1, 0x30
/* 8004D7B0 0004A5B0  38 A3 FF FC */	addi r5, r3, -4
/* 8004D7B4 0004A5B4  7C 09 03 A6 */	mtctr r0
lbl_8004D7B8:
/* 8004D7B8 0004A5B8  80 64 00 04 */	lwz r3, 4(r4)
/* 8004D7BC 0004A5BC  84 04 00 08 */	lwzu r0, 8(r4)
/* 8004D7C0 0004A5C0  90 65 00 04 */	stw r3, 4(r5)
/* 8004D7C4 0004A5C4  94 05 00 08 */	stwu r0, 8(r5)
/* 8004D7C8 0004A5C8  42 00 FF F0 */	bdnz lbl_8004D7B8
/* 8004D7CC 0004A5CC  38 00 00 01 */	li r0, 1
/* 8004D7D0 0004A5D0  98 0D 8B 20 */	stb r0, lbl_init$733-_SDA_BASE_(r13)
lbl_8004D7D4:
/* 8004D7D4 0004A5D4  3C 60 80 29 */	lis r3, lbl_tb$731@ha
/* 8004D7D8 0004A5D8  7F E4 FB 78 */	mr r4, r31
/* 8004D7DC 0004A5DC  38 63 A2 A8 */	addi r3, r3, lbl_tb$731@l
/* 8004D7E0 0004A5E0  4B FD 4C E9 */	bl set_text__8xtextboxFPCc
/* 8004D7E4 0004A5E4  3C 80 80 29 */	lis r4, lbl_tb$731@ha
/* 8004D7E8 0004A5E8  3C 60 80 25 */	lis r3, lbl_screen_bounds_3@ha
/* 8004D7EC 0004A5EC  38 84 A2 A8 */	addi r4, r4, lbl_tb$731@l
/* 8004D7F0 0004A5F0  3B E4 00 24 */	addi r31, r4, 0x24
/* 8004D7F4 0004A5F4  38 83 3F 00 */	addi r4, r3, lbl_screen_bounds_3@l
/* 8004D7F8 0004A5F8  7F E3 FB 78 */	mr r3, r31
/* 8004D7FC 0004A5FC  4B FC A8 45 */	bl __as__13basic_rect_f_FRC13basic_rect_f_
/* 8004D800 0004A600  C0 22 87 C0 */	lfs f1, lbl__749_2-_SDA2_BASE_(r2)
/* 8004D804 0004A604  7F E3 FB 78 */	mr r3, r31
/* 8004D808 0004A608  48 00 03 F1 */	bl contract__13basic_rect_f_Ff
/* 8004D80C 0004A60C  3C 60 80 29 */	lis r3, lbl_tb$731@ha
/* 8004D810 0004A610  38 80 00 01 */	li r4, 1
/* 8004D814 0004A614  38 63 A2 A8 */	addi r3, r3, lbl_tb$731@l
/* 8004D818 0004A618  48 00 03 69 */	bl yextent__8xtextboxCFb
/* 8004D81C 0004A61C  3C 60 80 29 */	lis r3, lbl_tb$731@ha
/* 8004D820 0004A620  FC 00 08 18 */	frsp f0, f1
/* 8004D824 0004A624  38 E3 A2 A8 */	addi r7, r3, lbl_tb$731@l
/* 8004D828 0004A628  38 60 00 00 */	li r3, 0
/* 8004D82C 0004A62C  D0 27 00 30 */	stfs f1, 0x30(r7)
/* 8004D830 0004A630  38 80 00 00 */	li r4, 0
/* 8004D834 0004A634  38 A0 00 00 */	li r5, 0
/* 8004D838 0004A638  C0 22 87 C4 */	lfs f1, lbl__750-_SDA2_BASE_(r2)
/* 8004D83C 0004A63C  38 C0 00 C8 */	li r6, 0xc8
/* 8004D840 0004A640  EC 01 08 3C */	fnmsubs f0, f1, f0, f1
/* 8004D844 0004A644  D0 07 00 28 */	stfs f0, 0x28(r7)
/* 8004D848 0004A648  4B FE 17 A1 */	bl xColorFromRGBA__FUcUcUcUc
/* 8004D84C 0004A64C  3C 80 80 29 */	lis r4, lbl_tb$731@ha
/* 8004D850 0004A650  90 61 00 08 */	stw r3, 8(r1)
/* 8004D854 0004A654  38 64 A2 A8 */	addi r3, r4, lbl_tb$731@l
/* 8004D858 0004A658  38 81 00 08 */	addi r4, r1, 8
/* 8004D85C 0004A65C  38 63 00 14 */	addi r3, r3, 0x14
/* 8004D860 0004A660  4B FD 85 31 */	bl render_fill_rect__FRC13basic_rect_f_10iColor_tag
/* 8004D864 0004A664  3C 60 80 29 */	lis r3, lbl_tb$731@ha
/* 8004D868 0004A668  38 80 00 01 */	li r4, 1
/* 8004D86C 0004A66C  38 63 A2 A8 */	addi r3, r3, lbl_tb$731@l
/* 8004D870 0004A670  4B FC A5 35 */	bl render__8xtextboxCFb
/* 8004D874 0004A674  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 8004D878 0004A678  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8004D87C 0004A67C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8004D880 0004A680  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8004D884 0004A684  7C 08 03 A6 */	mtlr r0
/* 8004D888 0004A688  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8004D88C 0004A68C  4E 80 00 20 */	blr 

.global xTRCRender__Fv
xTRCRender__Fv:
/* 8004D890 0004A690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004D894 0004A694  7C 08 02 A6 */	mflr r0
/* 8004D898 0004A698  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004D89C 0004A69C  80 6D 8B 24 */	lwz r3, lbl_message_text-_SDA_BASE_(r13)
/* 8004D8A0 0004A6A0  28 03 00 00 */	cmplwi r3, 0
/* 8004D8A4 0004A6A4  41 82 00 08 */	beq lbl_8004D8AC
/* 8004D8A8 0004A6A8  4B FF FE 6D */	bl xTRC.render_message__FPCc
lbl_8004D8AC:
/* 8004D8AC 0004A6AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004D8B0 0004A6B0  7C 08 03 A6 */	mtlr r0
/* 8004D8B4 0004A6B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8004D8B8 0004A6B8  4E 80 00 20 */	blr 

.global xTRCReset__Fv
xTRCReset__Fv:
/* 8004D8BC 0004A6BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004D8C0 0004A6C0  7C 08 02 A6 */	mflr r0
/* 8004D8C4 0004A6C4  3C 60 80 3C */	lis r3, lbl_globals@ha
/* 8004D8C8 0004A6C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004D8CC 0004A6CC  38 00 00 00 */	li r0, 0
/* 8004D8D0 0004A6D0  38 63 05 58 */	addi r3, r3, lbl_globals@l
/* 8004D8D4 0004A6D4  90 0D 8B 24 */	stw r0, lbl_message_text-_SDA_BASE_(r13)
/* 8004D8D8 0004A6D8  98 03 06 D8 */	stb r0, 0x6d8(r3)
/* 8004D8DC 0004A6DC  80 0D 8F A8 */	lwz r0, lbl_gGameMode-_SDA_BASE_(r13)
/* 8004D8E0 0004A6E0  2C 00 00 08 */	cmpwi r0, 8
/* 8004D8E4 0004A6E4  40 82 00 10 */	bne lbl_8004D8F4
/* 8004D8E8 0004A6E8  38 60 00 0C */	li r3, 0xc
/* 8004D8EC 0004A6EC  48 04 D3 2D */	bl zGameModeSwitch__F9eGameMode
/* 8004D8F0 0004A6F0  4B FF AA 15 */	bl xSndResume__Fv
lbl_8004D8F4:
/* 8004D8F4 0004A6F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004D8F8 0004A6F8  7C 08 03 A6 */	mtlr r0
/* 8004D8FC 0004A6FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8004D900 0004A700  4E 80 00 20 */	blr 

.global xTRCPad__Fi12_tagTRCState
xTRCPad__Fi12_tagTRCState:
/* 8004D904 0004A704  4E 80 00 20 */	blr 

.global xTRCDisk__F12_tagTRCState
xTRCDisk__F12_tagTRCState:
/* 8004D908 0004A708  2C 03 00 05 */	cmpwi r3, 5
/* 8004D90C 0004A70C  41 82 00 18 */	beq lbl_8004D924
/* 8004D910 0004A710  90 6D 8B 18 */	stw r3, lbl_gTrcDisk-_SDA_BASE_(r13)
/* 8004D914 0004A714  38 00 00 06 */	li r0, 6
/* 8004D918 0004A718  38 6D 8B 18 */	addi r3, r13, lbl_gTrcDisk-_SDA_BASE_
/* 8004D91C 0004A71C  90 03 00 04 */	stw r0, 4(r3)
/* 8004D920 0004A720  4E 80 00 20 */	blr 
lbl_8004D924:
/* 8004D924 0004A724  38 00 00 05 */	li r0, 5
/* 8004D928 0004A728  38 6D 8B 18 */	addi r3, r13, lbl_gTrcDisk-_SDA_BASE_
/* 8004D92C 0004A72C  90 03 00 04 */	stw r0, 4(r3)
/* 8004D930 0004A730  4E 80 00 20 */	blr 

.global render_mem_card_no_space__Fiiib
render_mem_card_no_space__Fiiib:
/* 8004D934 0004A734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004D938 0004A738  7C 08 02 A6 */	mflr r0
/* 8004D93C 0004A73C  2C 04 00 00 */	cmpwi r4, 0
/* 8004D940 0004A740  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004D944 0004A744  40 80 00 18 */	bge lbl_8004D95C
/* 8004D948 0004A748  2C 05 FF FF */	cmpwi r5, -1
/* 8004D94C 0004A74C  41 82 00 10 */	beq lbl_8004D95C
/* 8004D950 0004A750  2C 03 FF FF */	cmpwi r3, -1
/* 8004D954 0004A754  41 82 00 08 */	beq lbl_8004D95C
/* 8004D958 0004A758  38 80 00 00 */	li r4, 0
lbl_8004D95C:
/* 8004D95C 0004A75C  90 6D 91 64 */	stw r3, lbl_bad_card_needed-_SDA_BASE_(r13)
/* 8004D960 0004A760  3C E0 80 25 */	lis r7, lbl__stringBase0_19@ha
/* 8004D964 0004A764  2C 05 00 00 */	cmpwi r5, 0
/* 8004D968 0004A768  38 E7 3F 10 */	addi r7, r7, lbl__stringBase0_19@l
/* 8004D96C 0004A76C  90 8D 91 60 */	stw r4, lbl_bad_card_available-_SDA_BASE_(r13)
/* 8004D970 0004A770  38 07 03 68 */	addi r0, r7, 0x368
/* 8004D974 0004A774  40 82 00 14 */	bne lbl_8004D988
/* 8004D978 0004A778  7C 03 20 00 */	cmpw r3, r4
/* 8004D97C 0004A77C  40 81 00 0C */	ble lbl_8004D988
/* 8004D980 0004A780  38 07 03 83 */	addi r0, r7, 0x383
/* 8004D984 0004A784  48 00 00 30 */	b lbl_8004D9B4
lbl_8004D988:
/* 8004D988 0004A788  2C 05 00 00 */	cmpwi r5, 0
/* 8004D98C 0004A78C  40 81 00 0C */	ble lbl_8004D998
/* 8004D990 0004A790  7C 03 20 00 */	cmpw r3, r4
/* 8004D994 0004A794  41 81 00 14 */	bgt lbl_8004D9A8
lbl_8004D998:
/* 8004D998 0004A798  2C 05 FF FF */	cmpwi r5, -1
/* 8004D99C 0004A79C  41 82 00 0C */	beq lbl_8004D9A8
/* 8004D9A0 0004A7A0  7C 03 20 00 */	cmpw r3, r4
/* 8004D9A4 0004A7A4  40 81 00 10 */	ble lbl_8004D9B4
lbl_8004D9A8:
/* 8004D9A8 0004A7A8  3C 60 80 25 */	lis r3, lbl__stringBase0_19@ha
/* 8004D9AC 0004A7AC  38 63 3F 10 */	addi r3, r3, lbl__stringBase0_19@l
/* 8004D9B0 0004A7B0  38 03 03 A8 */	addi r0, r3, 0x3a8
lbl_8004D9B4:
/* 8004D9B4 0004A7B4  7C 03 03 78 */	mr r3, r0
/* 8004D9B8 0004A7B8  7C C4 33 78 */	mr r4, r6
/* 8004D9BC 0004A7BC  48 00 00 15 */	bl RenderText__FPCcb
/* 8004D9C0 0004A7C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004D9C4 0004A7C4  7C 08 03 A6 */	mtlr r0
/* 8004D9C8 0004A7C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8004D9CC 0004A7CC  4E 80 00 20 */	blr 

.global RenderText__FPCcb
RenderText__FPCcb:
/* 8004D9D0 0004A7D0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8004D9D4 0004A7D4  7C 08 02 A6 */	mflr r0
/* 8004D9D8 0004A7D8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8004D9DC 0004A7DC  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8004D9E0 0004A7E0  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 8004D9E4 0004A7E4  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8004D9E8 0004A7E8  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8004D9EC 0004A7EC  88 0D 8B 28 */	lbz r0, lbl_init$897-_SDA_BASE_(r13)
/* 8004D9F0 0004A7F0  7C 7E 1B 78 */	mr r30, r3
/* 8004D9F4 0004A7F4  7C 9F 23 78 */	mr r31, r4
/* 8004D9F8 0004A7F8  7C 00 07 75 */	extsb. r0, r0
/* 8004D9FC 0004A7FC  40 82 00 AC */	bne lbl_8004DAA8
/* 8004DA00 0004A800  38 60 00 FF */	li r3, 0xff
/* 8004DA04 0004A804  38 80 00 E6 */	li r4, 0xe6
/* 8004DA08 0004A808  38 A0 00 00 */	li r5, 0
/* 8004DA0C 0004A80C  38 C0 00 FF */	li r6, 0xff
/* 8004DA10 0004A810  4B FE 15 D9 */	bl xColorFromRGBA__FUcUcUcUc
/* 8004DA14 0004A814  90 61 00 0C */	stw r3, 0xc(r1)
/* 8004DA18 0004A818  C0 22 87 B8 */	lfs f1, lbl__747_3-_SDA2_BASE_(r2)
/* 8004DA1C 0004A81C  4B FC A5 A1 */	bl NSCREENY__Ff
/* 8004DA20 0004A820  FF E0 08 90 */	fmr f31, f1
/* 8004DA24 0004A824  C0 22 87 B4 */	lfs f1, lbl__746_1-_SDA2_BASE_(r2)
/* 8004DA28 0004A828  4B FC A5 A1 */	bl NSCREENX__Ff
/* 8004DA2C 0004A82C  FC 40 F8 90 */	fmr f2, f31
/* 8004DA30 0004A830  3C 60 80 25 */	lis r3, lbl_screen_bounds_3@ha
/* 8004DA34 0004A834  C0 62 87 BC */	lfs f3, lbl__748-_SDA2_BASE_(r2)
/* 8004DA38 0004A838  38 C3 3F 00 */	addi r6, r3, lbl_screen_bounds_3@l
/* 8004DA3C 0004A83C  38 61 00 10 */	addi r3, r1, 0x10
/* 8004DA40 0004A840  38 A1 00 0C */	addi r5, r1, 0xc
/* 8004DA44 0004A844  38 80 00 01 */	li r4, 1
/* 8004DA48 0004A848  4B FC A4 AD */	bl create__5xfontFUifff10iColor_tagRC13basic_rect_f_
/* 8004DA4C 0004A84C  C0 22 87 BC */	lfs f1, lbl__748-_SDA2_BASE_(r2)
/* 8004DA50 0004A850  3C 60 80 25 */	lis r3, lbl_screen_bounds_3@ha
/* 8004DA54 0004A854  38 A3 3F 00 */	addi r5, r3, lbl_screen_bounds_3@l
/* 8004DA58 0004A858  38 81 00 10 */	addi r4, r1, 0x10
/* 8004DA5C 0004A85C  FC 40 08 90 */	fmr f2, f1
/* 8004DA60 0004A860  38 61 00 34 */	addi r3, r1, 0x34
/* 8004DA64 0004A864  FC 60 08 90 */	fmr f3, f1
/* 8004DA68 0004A868  38 C0 00 02 */	li r6, 2
/* 8004DA6C 0004A86C  FC 80 08 90 */	fmr f4, f1
/* 8004DA70 0004A870  4B FC A3 75 */	bl create__8xtextboxFRC5xfontRC13basic_rect_f_Uiffff
/* 8004DA74 0004A874  3C 60 80 29 */	lis r3, lbl_tb$895@ha
/* 8004DA78 0004A878  38 00 00 0D */	li r0, 0xd
/* 8004DA7C 0004A87C  38 63 A3 10 */	addi r3, r3, lbl_tb$895@l
/* 8004DA80 0004A880  38 81 00 30 */	addi r4, r1, 0x30
/* 8004DA84 0004A884  38 A3 FF FC */	addi r5, r3, -4
/* 8004DA88 0004A888  7C 09 03 A6 */	mtctr r0
lbl_8004DA8C:
/* 8004DA8C 0004A88C  80 64 00 04 */	lwz r3, 4(r4)
/* 8004DA90 0004A890  84 04 00 08 */	lwzu r0, 8(r4)
/* 8004DA94 0004A894  90 65 00 04 */	stw r3, 4(r5)
/* 8004DA98 0004A898  94 05 00 08 */	stwu r0, 8(r5)
/* 8004DA9C 0004A89C  42 00 FF F0 */	bdnz lbl_8004DA8C
/* 8004DAA0 0004A8A0  38 00 00 01 */	li r0, 1
/* 8004DAA4 0004A8A4  98 0D 8B 28 */	stb r0, lbl_init$897-_SDA_BASE_(r13)
lbl_8004DAA8:
/* 8004DAA8 0004A8A8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8004DAAC 0004A8AC  3C 60 80 29 */	lis r3, lbl_tb$895@ha
/* 8004DAB0 0004A8B0  38 63 A3 10 */	addi r3, r3, lbl_tb$895@l
/* 8004DAB4 0004A8B4  41 82 00 0C */	beq lbl_8004DAC0
/* 8004DAB8 0004A8B8  7F C4 F3 78 */	mr r4, r30
/* 8004DABC 0004A8BC  48 00 00 10 */	b lbl_8004DACC
lbl_8004DAC0:
/* 8004DAC0 0004A8C0  3C 80 80 25 */	lis r4, lbl__stringBase0_19@ha
/* 8004DAC4 0004A8C4  38 84 3F 10 */	addi r4, r4, lbl__stringBase0_19@l
/* 8004DAC8 0004A8C8  38 84 03 CB */	addi r4, r4, 0x3cb
lbl_8004DACC:
/* 8004DACC 0004A8CC  4B FD 49 FD */	bl set_text__8xtextboxFPCc
/* 8004DAD0 0004A8D0  3C 80 80 29 */	lis r4, lbl_tb$895@ha
/* 8004DAD4 0004A8D4  3C 60 80 25 */	lis r3, lbl_screen_bounds_3@ha
/* 8004DAD8 0004A8D8  38 84 A3 10 */	addi r4, r4, lbl_tb$895@l
/* 8004DADC 0004A8DC  3B C4 00 24 */	addi r30, r4, 0x24
/* 8004DAE0 0004A8E0  38 83 3F 00 */	addi r4, r3, lbl_screen_bounds_3@l
/* 8004DAE4 0004A8E4  7F C3 F3 78 */	mr r3, r30
/* 8004DAE8 0004A8E8  4B FC A5 59 */	bl __as__13basic_rect_f_FRC13basic_rect_f_
/* 8004DAEC 0004A8EC  C0 22 87 C0 */	lfs f1, lbl__749_2-_SDA2_BASE_(r2)
/* 8004DAF0 0004A8F0  7F C3 F3 78 */	mr r3, r30
/* 8004DAF4 0004A8F4  48 00 01 05 */	bl contract__13basic_rect_f_Ff
/* 8004DAF8 0004A8F8  3C 60 80 29 */	lis r3, lbl_tb$895@ha
/* 8004DAFC 0004A8FC  38 80 00 01 */	li r4, 1
/* 8004DB00 0004A900  38 63 A3 10 */	addi r3, r3, lbl_tb$895@l
/* 8004DB04 0004A904  48 00 00 7D */	bl yextent__8xtextboxCFb
/* 8004DB08 0004A908  3C 60 80 29 */	lis r3, lbl_tb$895@ha
/* 8004DB0C 0004A90C  FC 00 08 18 */	frsp f0, f1
/* 8004DB10 0004A910  38 63 A3 10 */	addi r3, r3, lbl_tb$895@l
/* 8004DB14 0004A914  38 80 00 01 */	li r4, 1
/* 8004DB18 0004A918  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8004DB1C 0004A91C  C0 22 87 C4 */	lfs f1, lbl__750-_SDA2_BASE_(r2)
/* 8004DB20 0004A920  EC 01 08 3C */	fnmsubs f0, f1, f0, f1
/* 8004DB24 0004A924  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8004DB28 0004A928  4B FC A2 7D */	bl render__8xtextboxCFb
/* 8004DB2C 0004A92C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8004DB30 0004A930  40 82 00 30 */	bne lbl_8004DB60
/* 8004DB34 0004A934  38 60 00 00 */	li r3, 0
/* 8004DB38 0004A938  38 80 00 00 */	li r4, 0
/* 8004DB3C 0004A93C  38 A0 00 00 */	li r5, 0
/* 8004DB40 0004A940  38 C0 00 96 */	li r6, 0x96
/* 8004DB44 0004A944  4B FE 14 A5 */	bl xColorFromRGBA__FUcUcUcUc
/* 8004DB48 0004A948  3C 80 80 29 */	lis r4, lbl_tb$895@ha
/* 8004DB4C 0004A94C  90 61 00 08 */	stw r3, 8(r1)
/* 8004DB50 0004A950  38 64 A3 10 */	addi r3, r4, lbl_tb$895@l
/* 8004DB54 0004A954  38 81 00 08 */	addi r4, r1, 8
/* 8004DB58 0004A958  38 63 00 14 */	addi r3, r3, 0x14
/* 8004DB5C 0004A95C  4B FD 82 35 */	bl render_fill_rect__FRC13basic_rect_f_10iColor_tag
lbl_8004DB60:
/* 8004DB60 0004A960  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 8004DB64 0004A964  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8004DB68 0004A968  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8004DB6C 0004A96C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8004DB70 0004A970  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8004DB74 0004A974  7C 08 03 A6 */	mtlr r0
/* 8004DB78 0004A978  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8004DB7C 0004A97C  4E 80 00 20 */	blr 

.global yextent__8xtextboxCFb
yextent__8xtextboxCFb:
/* 8004DB80 0004A980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004DB84 0004A984  7C 08 02 A6 */	mflr r0
/* 8004DB88 0004A988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004DB8C 0004A98C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004DB90 0004A990  7C 7F 1B 78 */	mr r31, r3
/* 8004DB94 0004A994  4B FD 4A 9D */	bl temp_layout__8xtextboxCFb
/* 8004DB98 0004A998  7C 64 1B 78 */	mr r4, r3
/* 8004DB9C 0004A99C  7F E3 FB 78 */	mr r3, r31
/* 8004DBA0 0004A9A0  38 A0 00 00 */	li r5, 0
/* 8004DBA4 0004A9A4  38 C0 FF FF */	li r6, -1
/* 8004DBA8 0004A9A8  48 00 00 19 */	bl yextent__8xtextboxCFRCQ28xtextbox6layoutii
/* 8004DBAC 0004A9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004DBB0 0004A9B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004DBB4 0004A9B4  7C 08 03 A6 */	mtlr r0
/* 8004DBB8 0004A9B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8004DBBC 0004A9BC  4E 80 00 20 */	blr 

.global yextent__8xtextboxCFRCQ28xtextbox6layoutii
yextent__8xtextboxCFRCQ28xtextbox6layoutii:
/* 8004DBC0 0004A9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004DBC4 0004A9C4  7C 08 02 A6 */	mflr r0
/* 8004DBC8 0004A9C8  7C C7 33 78 */	mr r7, r6
/* 8004DBCC 0004A9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004DBD0 0004A9D0  7C A0 2B 78 */	mr r0, r5
/* 8004DBD4 0004A9D4  7C 85 23 78 */	mr r5, r4
/* 8004DBD8 0004A9D8  38 81 00 08 */	addi r4, r1, 8
/* 8004DBDC 0004A9DC  C0 22 87 C8 */	lfs f1, lbl__758_1-_SDA2_BASE_(r2)
/* 8004DBE0 0004A9E0  7C 06 03 78 */	mr r6, r0
/* 8004DBE4 0004A9E4  4B FD 4C F9 */	bl yextent__8xtextboxCFfRiRCQ28xtextbox6layoutii
/* 8004DBE8 0004A9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004DBEC 0004A9EC  7C 08 03 A6 */	mtlr r0
/* 8004DBF0 0004A9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8004DBF4 0004A9F4  4E 80 00 20 */	blr 

.global contract__13basic_rect_f_Ff
contract__13basic_rect_f_Ff:
/* 8004DBF8 0004A9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004DBFC 0004A9FC  7C 08 02 A6 */	mflr r0
/* 8004DC00 0004AA00  FC 20 08 50 */	fneg f1, f1
/* 8004DC04 0004AA04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004DC08 0004AA08  48 00 00 15 */	bl expand__13basic_rect_f_Ff
/* 8004DC0C 0004AA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004DC10 0004AA10  7C 08 03 A6 */	mtlr r0
/* 8004DC14 0004AA14  38 21 00 10 */	addi r1, r1, 0x10
/* 8004DC18 0004AA18  4E 80 00 20 */	blr 

.global expand__13basic_rect_f_Ff
expand__13basic_rect_f_Ff:
/* 8004DC1C 0004AA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004DC20 0004AA20  7C 08 02 A6 */	mflr r0
/* 8004DC24 0004AA24  FC 40 08 90 */	fmr f2, f1
/* 8004DC28 0004AA28  FC 60 08 90 */	fmr f3, f1
/* 8004DC2C 0004AA2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004DC30 0004AA30  FC 80 08 90 */	fmr f4, f1
/* 8004DC34 0004AA34  4B FC A3 D1 */	bl expand__13basic_rect_f_Fffff
/* 8004DC38 0004AA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004DC3C 0004AA3C  7C 08 03 A6 */	mtlr r0
/* 8004DC40 0004AA40  38 21 00 10 */	addi r1, r1, 0x10
/* 8004DC44 0004AA44  4E 80 00 20 */	blr 