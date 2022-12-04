glabel func_00423EAC # 133
/* 023EAC 00423EAC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 023EB0 00423EB0 279CEEB4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEEEB4
/* 023EB4 00423EB4 0399E021 */  addu        $gp, $gp, $t9
/* 023EB8 00423EB8 00067040 */  sll         $t6, $a2, 1
/* 023EBC 00423EBC 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 023EC0 00423EC0 01C53821 */  addu        $a3, $t6, $a1
.L00423EC4:
/* 023EC4 00423EC4 94A80000 */  lhu         $t0, 0x0($a1)
/* 023EC8 00423EC8 24A50002 */  addiu       $a1, $a1, 0x2
/* 023ECC 00423ECC 00A7082B */  sltu        $at, $a1, $a3
/* 023ED0 00423ED0 00087A03 */  sra         $t7, $t0, 8
/* 023ED4 00423ED4 A08F0001 */  sb          $t7, 0x1($a0)
/* 023ED8 00423ED8 24840002 */  addiu       $a0, $a0, 0x2
/* 023EDC 00423EDC 1420FFF9 */  bnez        $at, .L00423EC4
/* 023EE0 00423EE0 A088FFFE */   sb         $t0, -0x2($a0)
/* 023EE4 00423EE4 03E00008 */  jr          $ra
/* 023EE8 00423EE8 27BD0008 */   addiu      $sp, $sp, 0x8
