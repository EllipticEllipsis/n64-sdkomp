glabel func_00419AE8 # 81
/* 019AE8 00419AE8 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 019AEC 00419AEC 279C9278 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF9278
/* 019AF0 00419AF0 0399E021 */  addu        $gp, $gp, $t9
/* 019AF4 00419AF4 00067080 */  sll         $t6, $a2, 2
/* 019AF8 00419AF8 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 019AFC 00419AFC 01C53821 */  addu        $a3, $t6, $a1
.L00419B00:
/* 019B00 00419B00 8CA80000 */  lw          $t0, 0x0($a1)
/* 019B04 00419B04 24A50004 */  addiu       $a1, $a1, 0x4
/* 019B08 00419B08 00A7082B */  sltu        $at, $a1, $a3
/* 019B0C 00419B0C 00087A02 */  srl         $t7, $t0, 8
/* 019B10 00419B10 0008C402 */  srl         $t8, $t0, 16
/* 019B14 00419B14 0008CE02 */  srl         $t9, $t0, 24
/* 019B18 00419B18 A0990000 */  sb          $t9, 0x0($a0)
/* 019B1C 00419B1C A0980001 */  sb          $t8, 0x1($a0)
/* 019B20 00419B20 A08F0002 */  sb          $t7, 0x2($a0)
/* 019B24 00419B24 24840004 */  addiu       $a0, $a0, 0x4
/* 019B28 00419B28 1420FFF5 */  bnez        $at, .L00419B00
/* 019B2C 00419B2C A088FFFF */   sb         $t0, -0x1($a0)
/* 019B30 00419B30 03E00008 */  jr          $ra
/* 019B34 00419B34 27BD0008 */   addiu      $sp, $sp, 0x8
