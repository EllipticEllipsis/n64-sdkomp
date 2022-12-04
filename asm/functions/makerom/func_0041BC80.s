glabel func_0041BC80 # 90
/* 01BC80 0041BC80 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01BC84 0041BC84 279C70E0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF70E0
/* 01BC88 0041BC88 0399E021 */  addu        $gp, $gp, $t9
/* 01BC8C 0041BC8C 00803825 */  move        $a3, $a0
/* 01BC90 0041BC90 00067040 */  sll         $t6, $a2, 1
/* 01BC94 0041BC94 008E2021 */  addu        $a0, $a0, $t6
/* 01BC98 0041BC98 00067840 */  sll         $t7, $a2, 1
/* 01BC9C 0041BC9C 00E4402B */  sltu        $t0, $a3, $a0
/* 01BCA0 0041BCA0 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 01BCA4 0041BCA4 00AF2821 */  addu        $a1, $a1, $t7
/* 01BCA8 0041BCA8 1100000A */  beqz        $t0, .L0041BCD4
/* 01BCAC 0041BCAC 2484FFFE */   addiu      $a0, $a0, -0x2
.L0041BCB0:
/* 01BCB0 0041BCB0 90B9FFFF */  lbu         $t9, -0x1($a1)
/* 01BCB4 0041BCB4 90B8FFFE */  lbu         $t8, -0x2($a1)
/* 01BCB8 0041BCB8 00E4402B */  sltu        $t0, $a3, $a0
/* 01BCBC 0041BCBC 00194A00 */  sll         $t1, $t9, 8
/* 01BCC0 0041BCC0 03095021 */  addu        $t2, $t8, $t1
/* 01BCC4 0041BCC4 2484FFFE */  addiu       $a0, $a0, -0x2
/* 01BCC8 0041BCC8 24A5FFFE */  addiu       $a1, $a1, -0x2
/* 01BCCC 0041BCCC 1500FFF8 */  bnez        $t0, .L0041BCB0
/* 01BCD0 0041BCD0 A48A0002 */   sh         $t2, 0x2($a0)
.L0041BCD4:
/* 01BCD4 0041BCD4 03E00008 */  jr          $ra
/* 01BCD8 0041BCD8 27BD0008 */   addiu      $sp, $sp, 0x8
