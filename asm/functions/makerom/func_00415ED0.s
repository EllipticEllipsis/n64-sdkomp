glabel func_00415ED0 # 62
/* 015ED0 00415ED0 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 015ED4 00415ED4 279CCE90 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBFCE90
/* 015ED8 00415ED8 0399E021 */  addu        $gp, $gp, $t9
/* 015EDC 00415EDC 00067040 */  sll         $t6, $a2, 1
/* 015EE0 00415EE0 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 015EE4 00415EE4 01C53821 */  addu        $a3, $t6, $a1
.L00415EE8:
/* 015EE8 00415EE8 94A80000 */  lhu         $t0, 0x0($a1)
/* 015EEC 00415EEC 24A50002 */  addiu       $a1, $a1, 0x2
/* 015EF0 00415EF0 00A7082B */  sltu        $at, $a1, $a3
/* 015EF4 00415EF4 00087A03 */  sra         $t7, $t0, 8
/* 015EF8 00415EF8 A08F0001 */  sb          $t7, 0x1($a0)
/* 015EFC 00415EFC 24840002 */  addiu       $a0, $a0, 0x2
/* 015F00 00415F00 1420FFF9 */  bnez        $at, .L00415EE8
/* 015F04 00415F04 A088FFFE */   sb         $t0, -0x2($a0)
/* 015F08 00415F08 03E00008 */  jr          $ra
/* 015F0C 00415F0C 27BD0008 */   addiu      $sp, $sp, 0x8
