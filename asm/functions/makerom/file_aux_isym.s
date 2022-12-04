glabel file_aux_isym # 628
/* 03DC94 0043DC94 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03DC98 0043DC98 279C50CC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD50CC
/* 03DC9C 0043DC9C 0399E021 */  addu        $gp, $gp, $t9
/* 03DCA0 0043DCA0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03DCA4 0043DCA4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03DCA8 0043DCA8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03DCAC 0043DCAC 8C9900C8 */  lw          $t9, 0xC8($a0)
/* 03DCB0 0043DCB0 8C8E00C0 */  lw          $t6, 0xC0($a0)
/* 03DCB4 0043DCB4 00067880 */  sll         $t7, $a2, 2
/* 03DCB8 0043DCB8 00194080 */  sll         $t0, $t9, 2
/* 03DCBC 0043DCBC 00084823 */  negu        $t1, $t0
/* 03DCC0 0043DCC0 01CFC021 */  addu        $t8, $t6, $t7
/* 03DCC4 0043DCC4 03095021 */  addu        $t2, $t8, $t1
/* 03DCC8 0043DCC8 8D430000 */  lw          $v1, 0x0($t2)
/* 03DCCC 0043DCCC 3C07000F */  lui         $a3, (0xFFFFF >> 16)
/* 03DCD0 0043DCD0 34E7FFFF */  ori         $a3, $a3, (0xFFFFF & 0xFFFF)
/* 03DCD4 0043DCD4 14670003 */  bne         $v1, $a3, .L0043DCE4
/* 03DCD8 0043DCD8 00000000 */   nop
/* 03DCDC 0043DCDC 10000009 */  b           .L0043DD04
/* 03DCE0 0043DCE0 00E01025 */   move       $v0, $a3
.L0043DCE4:
/* 03DCE4 0043DCE4 8F9984FC */  lw          $t9, %call16(file_symbol)($gp)
/* 03DCE8 0043DCE8 AFA30024 */  sw          $v1, 0x24($sp)
/* 03DCEC 0043DCEC 0320F809 */  jalr        $t9
/* 03DCF0 0043DCF0 00000000 */   nop
/* 03DCF4 0043DCF4 8FA30024 */  lw          $v1, 0x24($sp)
/* 03DCF8 0043DCF8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DCFC 0043DCFC 00621821 */  addu        $v1, $v1, $v0
/* 03DD00 0043DD00 00601025 */  move        $v0, $v1
.L0043DD04:
/* 03DD04 0043DD04 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03DD08 0043DD08 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03DD0C 0043DD0C 03E00008 */  jr          $ra
/* 03DD10 0043DD10 00000000 */   nop
