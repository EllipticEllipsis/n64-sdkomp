glabel func_00424A44 # 149
/* 024A44 00424A44 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 024A48 00424A48 279CE31C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEE31C
/* 024A4C 00424A4C 0399E021 */  addu        $gp, $gp, $t9
/* 024A50 00424A50 00067080 */  sll         $t6, $a2, 2
/* 024A54 00424A54 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 024A58 00424A58 01C53821 */  addu        $a3, $t6, $a1
.L00424A5C:
/* 024A5C 00424A5C 8CA80000 */  lw          $t0, 0x0($a1)
/* 024A60 00424A60 24A50004 */  addiu       $a1, $a1, 0x4
/* 024A64 00424A64 00A7082B */  sltu        $at, $a1, $a3
/* 024A68 00424A68 00087A02 */  srl         $t7, $t0, 8
/* 024A6C 00424A6C 0008C402 */  srl         $t8, $t0, 16
/* 024A70 00424A70 0008CE02 */  srl         $t9, $t0, 24
/* 024A74 00424A74 A0990003 */  sb          $t9, 0x3($a0)
/* 024A78 00424A78 A0980002 */  sb          $t8, 0x2($a0)
/* 024A7C 00424A7C A08F0001 */  sb          $t7, 0x1($a0)
/* 024A80 00424A80 24840004 */  addiu       $a0, $a0, 0x4
/* 024A84 00424A84 1420FFF5 */  bnez        $at, .L00424A5C
/* 024A88 00424A88 A088FFFC */   sb         $t0, -0x4($a0)
/* 024A8C 00424A8C 03E00008 */  jr          $ra
/* 024A90 00424A90 27BD0008 */   addiu      $sp, $sp, 0x8
