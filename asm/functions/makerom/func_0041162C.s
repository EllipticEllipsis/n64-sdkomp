.section .rodata
glabel STR_10005EF0
/* 045EF0 10005EF0 */ .asciz " %d \"%s\""
                      .balign 4


.section .text
glabel func_0041162C # 37
/* 01162C 0041162C 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 011630 00411630 279C1734 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC01734
/* 011634 00411634 0399E021 */  addu        $gp, $gp, $t9
/* 011638 00411638 27BDFDB0 */  addiu       $sp, $sp, -0x250
/* 01163C 0041163C AFBF002C */  sw          $ra, 0x2C($sp)
/* 011640 00411640 AFBC0028 */  sw          $gp, 0x28($sp)
/* 011644 00411644 AFB40024 */  sw          $s4, 0x24($sp)
/* 011648 00411648 AFB30020 */  sw          $s3, 0x20($sp)
/* 01164C 0041164C AFB2001C */  sw          $s2, 0x1C($sp)
/* 011650 00411650 AFB10018 */  sw          $s1, 0x18($sp)
/* 011654 00411654 AFB00014 */  sw          $s0, 0x14($sp)
/* 011658 00411658 AFA0024C */  sw          $zero, 0x24C($sp)
/* 01165C 0041165C 8F8E86B8 */  lw          $t6, %got(yysptr)($gp)
/* 011660 00411660 8F8F8764 */  lw          $t7, %got(yysbuf)($gp)
/* 011664 00411664 8DCE0000 */  lw          $t6, 0x0($t6)
/* 011668 00411668 01EE082B */  sltu        $at, $t7, $t6
/* 01166C 0041166C 10200006 */  beqz        $at, .L00411688
/* 011670 00411670 00000000 */   nop
/* 011674 00411674 8F8186B8 */  lw          $at, %got(yysptr)($gp)
/* 011678 00411678 25D8FFFF */  addiu       $t8, $t6, -0x1
/* 01167C 0041167C AC380000 */  sw          $t8, 0x0($at)
/* 011680 00411680 10000026 */  b           .L0041171C
/* 011684 00411684 93120000 */   lbu        $s2, 0x0($t8)
.L00411688:
/* 011688 00411688 8F99804C */  lw          $t9, %got(__us_rsthread_stdio)($gp)
/* 01168C 0041168C 8F390000 */  lw          $t9, 0x0($t9)
/* 011690 00411690 13200008 */  beqz        $t9, .L004116B4
/* 011694 00411694 00000000 */   nop
/* 011698 00411698 8F9980F4 */  lw          $t9, %call16(__semgetc)($gp)
/* 01169C 0041169C 8F84868C */  lw          $a0, %got(yyin)($gp)
/* 0116A0 004116A0 0320F809 */  jalr        $t9
/* 0116A4 004116A4 8C840000 */   lw         $a0, 0x0($a0)
/* 0116A8 004116A8 8FBC0028 */  lw          $gp, 0x28($sp)
/* 0116AC 004116AC 1000001A */  b           .L00411718
/* 0116B0 004116B0 00409825 */   move       $s3, $v0
.L004116B4:
/* 0116B4 004116B4 8F88868C */  lw          $t0, %got(yyin)($gp)
/* 0116B8 004116B8 8F8B868C */  lw          $t3, %got(yyin)($gp)
/* 0116BC 004116BC 8D080000 */  lw          $t0, 0x0($t0)
/* 0116C0 004116C0 8D090000 */  lw          $t1, 0x0($t0)
/* 0116C4 004116C4 252AFFFF */  addiu       $t2, $t1, -0x1
/* 0116C8 004116C8 AD0A0000 */  sw          $t2, 0x0($t0)
/* 0116CC 004116CC 8D6B0000 */  lw          $t3, 0x0($t3)
/* 0116D0 004116D0 8D6C0000 */  lw          $t4, 0x0($t3)
/* 0116D4 004116D4 05810008 */  bgez        $t4, .L004116F8
/* 0116D8 004116D8 00000000 */   nop
/* 0116DC 004116DC 8F9980F8 */  lw          $t9, %call16(__filbuf)($gp)
/* 0116E0 004116E0 01602025 */  move        $a0, $t3
/* 0116E4 004116E4 0320F809 */  jalr        $t9
/* 0116E8 004116E8 00000000 */   nop
/* 0116EC 004116EC 8FBC0028 */  lw          $gp, 0x28($sp)
/* 0116F0 004116F0 10000008 */  b           .L00411714
/* 0116F4 004116F4 0040A025 */   move       $s4, $v0
.L004116F8:
/* 0116F8 004116F8 8F8D868C */  lw          $t5, %got(yyin)($gp)
/* 0116FC 004116FC 8DAD0000 */  lw          $t5, 0x0($t5)
/* 011700 00411700 8DAF0004 */  lw          $t7, 0x4($t5)
/* 011704 00411704 8DAE0004 */  lw          $t6, 0x4($t5)
/* 011708 00411708 91F40000 */  lbu         $s4, 0x0($t7)
/* 01170C 0041170C 25D80001 */  addiu       $t8, $t6, 0x1
/* 011710 00411710 ADB80004 */  sw          $t8, 0x4($t5)
.L00411714:
/* 011714 00411714 02809825 */  move        $s3, $s4
.L00411718:
/* 011718 00411718 02609025 */  move        $s2, $s3
.L0041171C:
/* 01171C 0041171C 8F818774 */  lw          $at, %got(yytchar)($gp)
/* 011720 00411720 8F998774 */  lw          $t9, %got(yytchar)($gp)
/* 011724 00411724 AC320000 */  sw          $s2, 0x0($at)
/* 011728 00411728 8F390000 */  lw          $t9, 0x0($t9)
/* 01172C 0041172C 2401000A */  addiu       $at, $zero, 0xA
/* 011730 00411730 17210008 */  bne         $t9, $at, .L00411754
/* 011734 00411734 00000000 */   nop
/* 011738 00411738 8F8986B4 */  lw          $t1, %got(yylineno)($gp)
/* 01173C 0041173C 8F8186B4 */  lw          $at, %got(yylineno)($gp)
/* 011740 00411740 03208825 */  move        $s1, $t9
/* 011744 00411744 8D290000 */  lw          $t1, 0x0($t1)
/* 011748 00411748 252A0001 */  addiu       $t2, $t1, 0x1
/* 01174C 0041174C 10000003 */  b           .L0041175C
/* 011750 00411750 AC2A0000 */   sw         $t2, 0x0($at)
.L00411754:
/* 011754 00411754 8F918774 */  lw          $s1, %got(yytchar)($gp)
/* 011758 00411758 8E310000 */  lw          $s1, 0x0($s1)
.L0041175C:
/* 01175C 0041175C 2401FFFF */  addiu       $at, $zero, -0x1
/* 011760 00411760 16210003 */  bne         $s1, $at, .L00411770
/* 011764 00411764 00000000 */   nop
/* 011768 00411768 10000003 */  b           .L00411778
/* 01176C 0041176C 00008025 */   move       $s0, $zero
.L00411770:
/* 011770 00411770 8F908774 */  lw          $s0, %got(yytchar)($gp)
/* 011774 00411774 8E100000 */  lw          $s0, 0x0($s0)
.L00411778:
/* 011778 00411778 A3B00247 */  sb          $s0, 0x247($sp)
/* 01177C 0041177C 93A80247 */  lbu         $t0, 0x247($sp)
/* 011780 00411780 2401000A */  addiu       $at, $zero, 0xA
/* 011784 00411784 11010055 */  beq         $t0, $at, .L004118DC
/* 011788 00411788 00000000 */   nop
.L0041178C:
/* 01178C 0041178C 8FAB024C */  lw          $t3, 0x24C($sp)
/* 011790 00411790 93AC0247 */  lbu         $t4, 0x247($sp)
/* 011794 00411794 27AF0144 */  addiu       $t7, $sp, 0x144
/* 011798 00411798 016F7021 */  addu        $t6, $t3, $t7
/* 01179C 0041179C A1CC0000 */  sb          $t4, 0x0($t6)
/* 0117A0 004117A0 8FB8024C */  lw          $t8, 0x24C($sp)
/* 0117A4 004117A4 270D0001 */  addiu       $t5, $t8, 0x1
/* 0117A8 004117A8 AFAD024C */  sw          $t5, 0x24C($sp)
/* 0117AC 004117AC 8F8986B8 */  lw          $t1, %got(yysptr)($gp)
/* 0117B0 004117B0 8F8A8764 */  lw          $t2, %got(yysbuf)($gp)
/* 0117B4 004117B4 8D290000 */  lw          $t1, 0x0($t1)
/* 0117B8 004117B8 0149082B */  sltu        $at, $t2, $t1
/* 0117BC 004117BC 10200006 */  beqz        $at, .L004117D8
/* 0117C0 004117C0 00000000 */   nop
/* 0117C4 004117C4 8F8186B8 */  lw          $at, %got(yysptr)($gp)
/* 0117C8 004117C8 2539FFFF */  addiu       $t9, $t1, -0x1
/* 0117CC 004117CC AC390000 */  sw          $t9, 0x0($at)
/* 0117D0 004117D0 10000026 */  b           .L0041186C
/* 0117D4 004117D4 93320000 */   lbu        $s2, 0x0($t9)
.L004117D8:
/* 0117D8 004117D8 8F88804C */  lw          $t0, %got(__us_rsthread_stdio)($gp)
/* 0117DC 004117DC 8D080000 */  lw          $t0, 0x0($t0)
/* 0117E0 004117E0 11000008 */  beqz        $t0, .L00411804
/* 0117E4 004117E4 00000000 */   nop
/* 0117E8 004117E8 8F9980F4 */  lw          $t9, %call16(__semgetc)($gp)
/* 0117EC 004117EC 8F84868C */  lw          $a0, %got(yyin)($gp)
/* 0117F0 004117F0 0320F809 */  jalr        $t9
/* 0117F4 004117F4 8C840000 */   lw         $a0, 0x0($a0)
/* 0117F8 004117F8 8FBC0028 */  lw          $gp, 0x28($sp)
/* 0117FC 004117FC 1000001A */  b           .L00411868
/* 011800 00411800 00409825 */   move       $s3, $v0
.L00411804:
/* 011804 00411804 8F8B868C */  lw          $t3, %got(yyin)($gp)
/* 011808 00411808 8F8E868C */  lw          $t6, %got(yyin)($gp)
/* 01180C 0041180C 8D6B0000 */  lw          $t3, 0x0($t3)
/* 011810 00411810 8D6F0000 */  lw          $t7, 0x0($t3)
/* 011814 00411814 25ECFFFF */  addiu       $t4, $t7, -0x1
/* 011818 00411818 AD6C0000 */  sw          $t4, 0x0($t3)
/* 01181C 0041181C 8DCE0000 */  lw          $t6, 0x0($t6)
/* 011820 00411820 8DD80000 */  lw          $t8, 0x0($t6)
/* 011824 00411824 07010008 */  bgez        $t8, .L00411848
/* 011828 00411828 00000000 */   nop
/* 01182C 0041182C 8F9980F8 */  lw          $t9, %call16(__filbuf)($gp)
/* 011830 00411830 01C02025 */  move        $a0, $t6
/* 011834 00411834 0320F809 */  jalr        $t9
/* 011838 00411838 00000000 */   nop
/* 01183C 0041183C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 011840 00411840 10000008 */  b           .L00411864
/* 011844 00411844 0040A025 */   move       $s4, $v0
.L00411848:
/* 011848 00411848 8F8D868C */  lw          $t5, %got(yyin)($gp)
/* 01184C 0041184C 8DAD0000 */  lw          $t5, 0x0($t5)
/* 011850 00411850 8DAA0004 */  lw          $t2, 0x4($t5)
/* 011854 00411854 8DA90004 */  lw          $t1, 0x4($t5)
/* 011858 00411858 91540000 */  lbu         $s4, 0x0($t2)
/* 01185C 0041185C 25390001 */  addiu       $t9, $t1, 0x1
/* 011860 00411860 ADB90004 */  sw          $t9, 0x4($t5)
.L00411864:
/* 011864 00411864 02809825 */  move        $s3, $s4
.L00411868:
/* 011868 00411868 02609025 */  move        $s2, $s3
.L0041186C:
/* 01186C 0041186C 8F818774 */  lw          $at, %got(yytchar)($gp)
/* 011870 00411870 8F888774 */  lw          $t0, %got(yytchar)($gp)
/* 011874 00411874 AC320000 */  sw          $s2, 0x0($at)
/* 011878 00411878 8D080000 */  lw          $t0, 0x0($t0)
/* 01187C 0041187C 2401000A */  addiu       $at, $zero, 0xA
/* 011880 00411880 15010008 */  bne         $t0, $at, .L004118A4
/* 011884 00411884 00000000 */   nop
/* 011888 00411888 8F8F86B4 */  lw          $t7, %got(yylineno)($gp)
/* 01188C 0041188C 8F8186B4 */  lw          $at, %got(yylineno)($gp)
/* 011890 00411890 01008825 */  move        $s1, $t0
/* 011894 00411894 8DEF0000 */  lw          $t7, 0x0($t7)
/* 011898 00411898 25EC0001 */  addiu       $t4, $t7, 0x1
/* 01189C 0041189C 10000003 */  b           .L004118AC
/* 0118A0 004118A0 AC2C0000 */   sw         $t4, 0x0($at)
.L004118A4:
/* 0118A4 004118A4 8F918774 */  lw          $s1, %got(yytchar)($gp)
/* 0118A8 004118A8 8E310000 */  lw          $s1, 0x0($s1)
.L004118AC:
/* 0118AC 004118AC 2401FFFF */  addiu       $at, $zero, -0x1
/* 0118B0 004118B0 16210003 */  bne         $s1, $at, .L004118C0
/* 0118B4 004118B4 00000000 */   nop
/* 0118B8 004118B8 10000003 */  b           .L004118C8
/* 0118BC 004118BC 00008025 */   move       $s0, $zero
.L004118C0:
/* 0118C0 004118C0 8F908774 */  lw          $s0, %got(yytchar)($gp)
/* 0118C4 004118C4 8E100000 */  lw          $s0, 0x0($s0)
.L004118C8:
/* 0118C8 004118C8 A3B00247 */  sb          $s0, 0x247($sp)
/* 0118CC 004118CC 93AB0247 */  lbu         $t3, 0x247($sp)
/* 0118D0 004118D0 2401000A */  addiu       $at, $zero, 0xA
/* 0118D4 004118D4 1561FFAD */  bne         $t3, $at, .L0041178C
/* 0118D8 004118D8 00000000 */   nop
.L004118DC:
/* 0118DC 004118DC 8FB8024C */  lw          $t8, 0x24C($sp)
/* 0118E0 004118E0 27AE0144 */  addiu       $t6, $sp, 0x144
/* 0118E4 004118E4 030E5021 */  addu        $t2, $t8, $t6
/* 0118E8 004118E8 A1400000 */  sb          $zero, 0x0($t2)
/* 0118EC 004118EC 8F9980EC */  lw          $t9, %call16(sscanf)($gp)
/* 0118F0 004118F0 8F85802C */  lw          $a1, %got(STR_10005EF0)($gp)
/* 0118F4 004118F4 27A40144 */  addiu       $a0, $sp, 0x144
/* 0118F8 004118F8 27A60248 */  addiu       $a2, $sp, 0x248
/* 0118FC 004118FC 27A70044 */  addiu       $a3, $sp, 0x44
/* 011900 00411900 0320F809 */  jalr        $t9
/* 011904 00411904 24A55EF0 */   addiu      $a1, $a1, %lo(STR_10005EF0)
/* 011908 00411908 24010002 */  addiu       $at, $zero, 0x2
/* 01190C 0041190C 14410015 */  bne         $v0, $at, .L00411964
/* 011910 00411910 8FBC0028 */   lw         $gp, 0x28($sp)
/* 011914 00411914 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 011918 00411918 27A40044 */  addiu       $a0, $sp, 0x44
/* 01191C 0041191C 0320F809 */  jalr        $t9
/* 011920 00411920 00000000 */   nop
/* 011924 00411924 00408025 */  move        $s0, $v0
/* 011928 00411928 27A90044 */  addiu       $t1, $sp, 0x44
/* 01192C 0041192C 0209C821 */  addu        $t9, $s0, $t1
/* 011930 00411930 8FBC0028 */  lw          $gp, 0x28($sp)
/* 011934 00411934 A320FFFF */  sb          $zero, -0x1($t9)
/* 011938 00411938 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 01193C 0041193C 8F84870C */  lw          $a0, %got(fileName)($gp)
/* 011940 00411940 27A50044 */  addiu       $a1, $sp, 0x44
/* 011944 00411944 0320F809 */  jalr        $t9
/* 011948 00411948 8C840000 */   lw         $a0, 0x0($a0)
/* 01194C 0041194C 14400005 */  bnez        $v0, .L00411964
/* 011950 00411950 8FBC0028 */   lw         $gp, 0x28($sp)
/* 011954 00411954 8FAD0248 */  lw          $t5, 0x248($sp)
/* 011958 00411958 8F818694 */  lw          $at, %got(lineNumber)($gp)
/* 01195C 0041195C 25AFFFFF */  addiu       $t7, $t5, -0x1
/* 011960 00411960 AC2F0000 */  sw          $t7, 0x0($at)
.L00411964:
/* 011964 00411964 8F8C8694 */  lw          $t4, %got(lineNumber)($gp)
/* 011968 00411968 8F818694 */  lw          $at, %got(lineNumber)($gp)
/* 01196C 0041196C 8D8C0000 */  lw          $t4, 0x0($t4)
/* 011970 00411970 25880001 */  addiu       $t0, $t4, 0x1
/* 011974 00411974 AC280000 */  sw          $t0, 0x0($at)
/* 011978 00411978 10000001 */  b           .L00411980
/* 01197C 0041197C 00000000 */   nop
.L00411980:
/* 011980 00411980 8FBF002C */  lw          $ra, 0x2C($sp)
/* 011984 00411984 8FB00014 */  lw          $s0, 0x14($sp)
/* 011988 00411988 8FB10018 */  lw          $s1, 0x18($sp)
/* 01198C 0041198C 8FB2001C */  lw          $s2, 0x1C($sp)
/* 011990 00411990 8FB30020 */  lw          $s3, 0x20($sp)
/* 011994 00411994 8FB40024 */  lw          $s4, 0x24($sp)
/* 011998 00411998 03E00008 */  jr          $ra
/* 01199C 0041199C 27BD0250 */   addiu      $sp, $sp, 0x250
