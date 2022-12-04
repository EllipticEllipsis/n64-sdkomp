glabel func_00423EEC # 134
/* 023EEC 00423EEC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 023EF0 00423EF0 279CEE74 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEEE74
/* 023EF4 00423EF4 0399E021 */  addu        $gp, $gp, $t9
/* 023EF8 00423EF8 00067040 */  sll         $t6, $a2, 1
/* 023EFC 00423EFC 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 023F00 00423F00 01C53821 */  addu        $a3, $t6, $a1
.L00423F04:
/* 023F04 00423F04 94A80000 */  lhu         $t0, 0x0($a1)
/* 023F08 00423F08 24A50002 */  addiu       $a1, $a1, 0x2
/* 023F0C 00423F0C 00A7082B */  sltu        $at, $a1, $a3
/* 023F10 00423F10 00087A03 */  sra         $t7, $t0, 8
/* 023F14 00423F14 A08F0000 */  sb          $t7, 0x0($a0)
/* 023F18 00423F18 24840002 */  addiu       $a0, $a0, 0x2
/* 023F1C 00423F1C 1420FFF9 */  bnez        $at, .L00423F04
/* 023F20 00423F20 A088FFFF */   sb         $t0, -0x1($a0)
/* 023F24 00423F24 03E00008 */  jr          $ra
/* 023F28 00423F28 27BD0008 */   addiu      $sp, $sp, 0x8
