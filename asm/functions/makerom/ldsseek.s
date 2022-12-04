glabel ldsseek # 228
/* 02A7EC 0042A7EC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A7F0 0042A7F0 279C8574 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8574
/* 02A7F4 0042A7F4 0399E021 */  addu        $gp, $gp, $t9
/* 02A7F8 0042A7F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A7FC 0042A7FC AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A800 0042A800 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A804 0042A804 AFA50024 */  sw          $a1, 0x24($sp)
/* 02A808 0042A808 8C8E002C */  lw          $t6, 0x2C($a0)
/* 02A80C 0042A80C 30A5FFFF */  andi        $a1, $a1, 0xFFFF
/* 02A810 0042A810 0005C080 */  sll         $t8, $a1, 2
/* 02A814 0042A814 8DCF0098 */  lw          $t7, 0x98($t6)
/* 02A818 0042A818 0305C021 */  addu        $t8, $t8, $a1
/* 02A81C 0042A81C 0018C0C0 */  sll         $t8, $t8, 3
/* 02A820 0042A820 01F8C821 */  addu        $t9, $t7, $t8
/* 02A824 0042A824 8F27FFEC */  lw          $a3, -0x14($t9)
/* 02A828 0042A828 50E0000B */  beql        $a3, $zero, .L0042A858
/* 02A82C 0042A82C 00001025 */   move       $v0, $zero
/* 02A830 0042A830 8F998254 */  lw          $t9, %call16(ldfseek)($gp)
/* 02A834 0042A834 00E02825 */  move        $a1, $a3
/* 02A838 0042A838 00003025 */  move        $a2, $zero
/* 02A83C 0042A83C 0320F809 */  jalr        $t9
/* 02A840 0042A840 00000000 */   nop
/* 02A844 0042A844 14400003 */  bnez        $v0, .L0042A854
/* 02A848 0042A848 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02A84C 0042A84C 10000002 */  b           .L0042A858
/* 02A850 0042A850 24020001 */   addiu      $v0, $zero, 0x1
.L0042A854:
/* 02A854 0042A854 00001025 */  move        $v0, $zero
.L0042A858:
/* 02A858 0042A858 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A85C 0042A85C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A860 0042A860 03E00008 */  jr          $ra
/* 02A864 0042A864 00000000 */   nop
