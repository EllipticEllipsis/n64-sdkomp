glabel ALIGNn # 32
/* 010850 00410850 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 010854 00410854 279C2510 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC02510
/* 010858 00410858 0399E021 */  addu        $gp, $gp, $t9
/* 01085C 0041085C 14800002 */  bnez        $a0, .L00410868
/* 010860 00410860 00000000 */   nop
/* 010864 00410864 24040010 */  addiu       $a0, $zero, 0x10
.L00410868:
/* 010868 00410868 00A47021 */  addu        $t6, $a1, $a0
/* 01086C 0041086C 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 010870 00410870 01E4001B */  divu        $zero, $t7, $a0
/* 010874 00410874 0000C012 */  mflo        $t8
/* 010878 00410878 14800002 */  bnez        $a0, .L00410884
/* 01087C 0041087C 00000000 */   nop
/* 010880 00410880 0007000D */  break       7
.L00410884:
/* 010884 00410884 03040019 */  multu       $t8, $a0
/* 010888 00410888 00001012 */  mflo        $v0
/* 01088C 0041088C 03E00008 */  jr          $ra
/* 010890 00410890 00000000 */   nop
/* 010894 00410894 03E00008 */  jr          $ra
/* 010898 00410898 00000000 */   nop
/* 01089C 0041089C 03E00008 */  jr          $ra
/* 0108A0 004108A0 00000000 */   nop
/* 0108A4 004108A4 00000000 */  nop
/* 0108A8 004108A8 00000000 */  nop
/* 0108AC 004108AC 00000000 */  nop
