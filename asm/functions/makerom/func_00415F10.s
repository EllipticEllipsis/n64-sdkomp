glabel func_00415F10 # 63
/* 015F10 00415F10 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 015F14 00415F14 279CCE50 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBFCE50
/* 015F18 00415F18 0399E021 */  addu        $gp, $gp, $t9
/* 015F1C 00415F1C 00067040 */  sll         $t6, $a2, 1
/* 015F20 00415F20 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 015F24 00415F24 01C53821 */  addu        $a3, $t6, $a1
.L00415F28:
/* 015F28 00415F28 94A80000 */  lhu         $t0, 0x0($a1)
/* 015F2C 00415F2C 24A50002 */  addiu       $a1, $a1, 0x2
/* 015F30 00415F30 00A7082B */  sltu        $at, $a1, $a3
/* 015F34 00415F34 00087A03 */  sra         $t7, $t0, 8
/* 015F38 00415F38 A08F0000 */  sb          $t7, 0x0($a0)
/* 015F3C 00415F3C 24840002 */  addiu       $a0, $a0, 0x2
/* 015F40 00415F40 1420FFF9 */  bnez        $at, .L00415F28
/* 015F44 00415F44 A088FFFF */   sb         $t0, -0x1($a0)
/* 015F48 00415F48 03E00008 */  jr          $ra
/* 015F4C 00415F4C 27BD0008 */   addiu      $sp, $sp, 0x8
