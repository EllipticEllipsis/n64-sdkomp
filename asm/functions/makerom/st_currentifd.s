glabel st_currentifd # 649
/* 03F360 0043F360 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03F364 0043F364 279C3A00 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3A00
/* 03F368 0043F368 0399E021 */  addu        $gp, $gp, $t9
/* 03F36C 0043F36C 8F8487CC */  lw          $a0, %got(pcfdcur)($gp)
/* 03F370 0043F370 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03F374 0043F374 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03F378 0043F378 8C840000 */  lw          $a0, 0x0($a0)
/* 03F37C 0043F37C AFBC0018 */  sw          $gp, 0x18($sp)
/* 03F380 0043F380 14800003 */  bnez        $a0, .L0043F390
/* 03F384 0043F384 00000000 */   nop
/* 03F388 0043F388 10000005 */  b           .L0043F3A0
/* 03F38C 0043F38C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043F390:
/* 03F390 0043F390 8F998604 */  lw          $t9, %call16(st_ifd_pcfd)($gp)
/* 03F394 0043F394 0320F809 */  jalr        $t9
/* 03F398 0043F398 00000000 */   nop
/* 03F39C 0043F39C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043F3A0:
/* 03F3A0 0043F3A0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03F3A4 0043F3A4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03F3A8 0043F3A8 03E00008 */  jr          $ra
/* 03F3AC 0043F3AC 00000000 */   nop
