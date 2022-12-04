glabel func_00419A98 # 80
/* 019A98 00419A98 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 019A9C 00419A9C 279C92C8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF92C8
/* 019AA0 00419AA0 0399E021 */  addu        $gp, $gp, $t9
/* 019AA4 00419AA4 00067080 */  sll         $t6, $a2, 2
/* 019AA8 00419AA8 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 019AAC 00419AAC 01C53821 */  addu        $a3, $t6, $a1
.L00419AB0:
/* 019AB0 00419AB0 8CA80000 */  lw          $t0, 0x0($a1)
/* 019AB4 00419AB4 24A50004 */  addiu       $a1, $a1, 0x4
/* 019AB8 00419AB8 00A7082B */  sltu        $at, $a1, $a3
/* 019ABC 00419ABC 00087A02 */  srl         $t7, $t0, 8
/* 019AC0 00419AC0 0008C402 */  srl         $t8, $t0, 16
/* 019AC4 00419AC4 0008CE02 */  srl         $t9, $t0, 24
/* 019AC8 00419AC8 A0990003 */  sb          $t9, 0x3($a0)
/* 019ACC 00419ACC A0980002 */  sb          $t8, 0x2($a0)
/* 019AD0 00419AD0 A08F0001 */  sb          $t7, 0x1($a0)
/* 019AD4 00419AD4 24840004 */  addiu       $a0, $a0, 0x4
/* 019AD8 00419AD8 1420FFF5 */  bnez        $at, .L00419AB0
/* 019ADC 00419ADC A088FFFC */   sb         $t0, -0x4($a0)
/* 019AE0 00419AE0 03E00008 */  jr          $ra
/* 019AE4 00419AE4 27BD0008 */   addiu      $sp, $sp, 0x8
