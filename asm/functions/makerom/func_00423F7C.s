glabel func_00423F7C # 136
/* 023F7C 00423F7C 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 023F80 00423F80 279CEDE4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEEDE4
/* 023F84 00423F84 0399E021 */  addu        $gp, $gp, $t9
/* 023F88 00423F88 00067080 */  sll         $t6, $a2, 2
/* 023F8C 00423F8C 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 023F90 00423F90 01C53821 */  addu        $a3, $t6, $a1
.L00423F94:
/* 023F94 00423F94 8CA80000 */  lw          $t0, 0x0($a1)
/* 023F98 00423F98 24A50004 */  addiu       $a1, $a1, 0x4
/* 023F9C 00423F9C 00A7082B */  sltu        $at, $a1, $a3
/* 023FA0 00423FA0 00087A02 */  srl         $t7, $t0, 8
/* 023FA4 00423FA4 0008C402 */  srl         $t8, $t0, 16
/* 023FA8 00423FA8 0008CE02 */  srl         $t9, $t0, 24
/* 023FAC 00423FAC A0990000 */  sb          $t9, 0x0($a0)
/* 023FB0 00423FB0 A0980001 */  sb          $t8, 0x1($a0)
/* 023FB4 00423FB4 A08F0002 */  sb          $t7, 0x2($a0)
/* 023FB8 00423FB8 24840004 */  addiu       $a0, $a0, 0x4
/* 023FBC 00423FBC 1420FFF5 */  bnez        $at, .L00423F94
/* 023FC0 00423FC0 A088FFFF */   sb         $t0, -0x1($a0)
/* 023FC4 00423FC4 03E00008 */  jr          $ra
/* 023FC8 00423FC8 27BD0008 */   addiu      $sp, $sp, 0x8
