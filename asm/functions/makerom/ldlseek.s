glabel ldlseek # 222
/* 02A43C 0042A43C 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A440 0042A440 279C8924 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8924
/* 02A444 0042A444 0399E021 */  addu        $gp, $gp, $t9
/* 02A448 0042A448 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A44C 0042A44C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A450 0042A450 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A454 0042A454 AFA50024 */  sw          $a1, 0x24($sp)
/* 02A458 0042A458 8C8E002C */  lw          $t6, 0x2C($a0)
/* 02A45C 0042A45C 8DC2009C */  lw          $v0, 0x9C($t6)
/* 02A460 0042A460 8C4F0004 */  lw          $t7, 0x4($v0)
/* 02A464 0042A464 51E0000B */  beql        $t7, $zero, .L0042A494
/* 02A468 0042A468 00001025 */   move       $v0, $zero
/* 02A46C 0042A46C 8F998254 */  lw          $t9, %call16(ldfseek)($gp)
/* 02A470 0042A470 8C45000C */  lw          $a1, 0xC($v0)
/* 02A474 0042A474 00003025 */  move        $a2, $zero
/* 02A478 0042A478 0320F809 */  jalr        $t9
/* 02A47C 0042A47C 00000000 */   nop
/* 02A480 0042A480 14400003 */  bnez        $v0, .L0042A490
/* 02A484 0042A484 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02A488 0042A488 10000002 */  b           .L0042A494
/* 02A48C 0042A48C 24020001 */   addiu      $v0, $zero, 0x1
.L0042A490:
/* 02A490 0042A490 00001025 */  move        $v0, $zero
.L0042A494:
/* 02A494 0042A494 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A498 0042A498 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A49C 0042A49C 03E00008 */  jr          $ra
/* 02A4A0 0042A4A0 00000000 */   nop
