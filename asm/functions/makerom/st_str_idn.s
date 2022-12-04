glabel st_str_idn # 698
/* 042774 00442774 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 042778 00442778 279C05EC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD05EC
/* 04277C 0044277C 0399E021 */  addu        $gp, $gp, $t9
/* 042780 00442780 8F998634 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 042784 00442784 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 042788 00442788 AFBF001C */  sw          $ra, 0x1C($sp)
/* 04278C 0044278C 0320F809 */  jalr        $t9
/* 042790 00442790 AFBC0018 */   sw         $gp, 0x18($sp)
/* 042794 00442794 8C580000 */  lw          $t8, 0x0($v0)
/* 042798 00442798 8FBC0018 */  lw          $gp, 0x18($sp)
/* 04279C 0044279C 27AE0028 */  addiu       $t6, $sp, 0x28
/* 0427A0 004427A0 ADD80000 */  sw          $t8, 0x0($t6)
/* 0427A4 004427A4 8C4F0004 */  lw          $t7, 0x4($v0)
/* 0427A8 004427A8 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 0427AC 004427AC 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 0427B0 004427B0 ADCF0004 */  sw          $t7, 0x4($t6)
/* 0427B4 004427B4 8FB9002C */  lw          $t9, 0x2C($sp)
/* 0427B8 004427B8 17210003 */  bne         $t9, $at, .L004427C8
/* 0427BC 004427BC 00000000 */   nop
/* 0427C0 004427C0 1000000D */  b           .L004427F8
/* 0427C4 004427C4 2402FFFF */   addiu      $v0, $zero, -0x1
.L004427C8:
/* 0427C8 004427C8 8F99860C */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 0427CC 004427CC 8FA40028 */  lw          $a0, 0x28($sp)
/* 0427D0 004427D0 8FA5002C */  lw          $a1, 0x2C($sp)
/* 0427D4 004427D4 0320F809 */  jalr        $t9
/* 0427D8 004427D8 00000000 */   nop
/* 0427DC 004427DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0427E0 004427E0 8FA40028 */  lw          $a0, 0x28($sp)
/* 0427E4 004427E4 8C450000 */  lw          $a1, 0x0($v0)
/* 0427E8 004427E8 8F998614 */  lw          $t9, %call16(st_str_ifd_iss)($gp)
/* 0427EC 004427EC 0320F809 */  jalr        $t9
/* 0427F0 004427F0 00000000 */   nop
/* 0427F4 004427F4 8FBC0018 */  lw          $gp, 0x18($sp)
.L004427F8:
/* 0427F8 004427F8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0427FC 004427FC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 042800 00442800 03E00008 */  jr          $ra
/* 042804 00442804 00000000 */   nop
