glabel ldrseek # 227
/* 02A77C 0042A77C 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A780 0042A780 279C85E4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE85E4
/* 02A784 0042A784 0399E021 */  addu        $gp, $gp, $t9
/* 02A788 0042A788 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A78C 0042A78C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A790 0042A790 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A794 0042A794 AFA50024 */  sw          $a1, 0x24($sp)
/* 02A798 0042A798 8C8E002C */  lw          $t6, 0x2C($a0)
/* 02A79C 0042A79C 30A7FFFF */  andi        $a3, $a1, 0xFFFF
/* 02A7A0 0042A7A0 0007C080 */  sll         $t8, $a3, 2
/* 02A7A4 0042A7A4 8DCF0098 */  lw          $t7, 0x98($t6)
/* 02A7A8 0042A7A8 0307C021 */  addu        $t8, $t8, $a3
/* 02A7AC 0042A7AC 0018C0C0 */  sll         $t8, $t8, 3
/* 02A7B0 0042A7B0 01F8C821 */  addu        $t9, $t7, $t8
/* 02A7B4 0042A7B4 8F25FFF0 */  lw          $a1, -0x10($t9)
/* 02A7B8 0042A7B8 8F998254 */  lw          $t9, %call16(ldfseek)($gp)
/* 02A7BC 0042A7BC 00003025 */  move        $a2, $zero
/* 02A7C0 0042A7C0 0320F809 */  jalr        $t9
/* 02A7C4 0042A7C4 00000000 */   nop
/* 02A7C8 0042A7C8 14400003 */  bnez        $v0, .L0042A7D8
/* 02A7CC 0042A7CC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02A7D0 0042A7D0 10000002 */  b           .L0042A7DC
/* 02A7D4 0042A7D4 24020001 */   addiu      $v0, $zero, 0x1
.L0042A7D8:
/* 02A7D8 0042A7D8 00001025 */  move        $v0, $zero
.L0042A7DC:
/* 02A7DC 0042A7DC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A7E0 0042A7E0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A7E4 0042A7E4 03E00008 */  jr          $ra
/* 02A7E8 0042A7E8 00000000 */   nop
