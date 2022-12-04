glabel ldtbseek # 229
/* 02A868 0042A868 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A86C 0042A86C 279C84F8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE84F8
/* 02A870 0042A870 0399E021 */  addu        $gp, $gp, $t9
/* 02A874 0042A874 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A878 0042A878 8F99845C */  lw          $t9, %call16(hdr_symptr)($gp)
/* 02A87C 0042A87C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A880 0042A880 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A884 0042A884 00803825 */  move        $a3, $a0
/* 02A888 0042A888 8C84002C */  lw          $a0, 0x2C($a0)
/* 02A88C 0042A88C 0320F809 */  jalr        $t9
/* 02A890 0042A890 AFA70020 */   sw         $a3, 0x20($sp)
/* 02A894 0042A894 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A898 0042A898 1040000C */  beqz        $v0, .L0042A8CC
/* 02A89C 0042A89C 8FA70020 */   lw         $a3, 0x20($sp)
/* 02A8A0 0042A8A0 8CEE002C */  lw          $t6, 0x2C($a3)
/* 02A8A4 0042A8A4 8F998254 */  lw          $t9, %call16(ldfseek)($gp)
/* 02A8A8 0042A8A8 00E02025 */  move        $a0, $a3
/* 02A8AC 0042A8AC 8DCF009C */  lw          $t7, 0x9C($t6)
/* 02A8B0 0042A8B0 00003025 */  move        $a2, $zero
/* 02A8B4 0042A8B4 0320F809 */  jalr        $t9
/* 02A8B8 0042A8B8 8DE50024 */   lw         $a1, 0x24($t7)
/* 02A8BC 0042A8BC 14400003 */  bnez        $v0, .L0042A8CC
/* 02A8C0 0042A8C0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02A8C4 0042A8C4 10000002 */  b           .L0042A8D0
/* 02A8C8 0042A8C8 24020001 */   addiu      $v0, $zero, 0x1
.L0042A8CC:
/* 02A8CC 0042A8CC 00001025 */  move        $v0, $zero
.L0042A8D0:
/* 02A8D0 0042A8D0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A8D4 0042A8D4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A8D8 0042A8D8 03E00008 */  jr          $ra
/* 02A8DC 0042A8DC 00000000 */   nop
