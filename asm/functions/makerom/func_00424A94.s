glabel func_00424A94 # 150
/* 024A94 00424A94 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 024A98 00424A98 279CE2CC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEE2CC
/* 024A9C 00424A9C 0399E021 */  addu        $gp, $gp, $t9
/* 024AA0 00424AA0 00067080 */  sll         $t6, $a2, 2
/* 024AA4 00424AA4 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 024AA8 00424AA8 01C53821 */  addu        $a3, $t6, $a1
.L00424AAC:
/* 024AAC 00424AAC 8CA80000 */  lw          $t0, 0x0($a1)
/* 024AB0 00424AB0 24A50004 */  addiu       $a1, $a1, 0x4
/* 024AB4 00424AB4 00A7082B */  sltu        $at, $a1, $a3
/* 024AB8 00424AB8 00087A02 */  srl         $t7, $t0, 8
/* 024ABC 00424ABC 0008C402 */  srl         $t8, $t0, 16
/* 024AC0 00424AC0 0008CE02 */  srl         $t9, $t0, 24
/* 024AC4 00424AC4 A0990000 */  sb          $t9, 0x0($a0)
/* 024AC8 00424AC8 A0980001 */  sb          $t8, 0x1($a0)
/* 024ACC 00424ACC A08F0002 */  sb          $t7, 0x2($a0)
/* 024AD0 00424AD0 24840004 */  addiu       $a0, $a0, 0x4
/* 024AD4 00424AD4 1420FFF5 */  bnez        $at, .L00424AAC
/* 024AD8 00424AD8 A088FFFF */   sb         $t0, -0x1($a0)
/* 024ADC 00424ADC 03E00008 */  jr          $ra
/* 024AE0 00424AE0 27BD0008 */   addiu      $sp, $sp, 0x8
