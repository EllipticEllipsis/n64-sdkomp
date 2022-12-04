glabel address_to_section # 556
/* 034F94 00434F94 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 034F98 00434F98 279CDDCC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDDDCC
/* 034F9C 00434F9C 0399E021 */  addu        $gp, $gp, $t9
/* 034FA0 00434FA0 8F998524 */  lw          $t9, %call16(foreach_section)($gp)
/* 034FA4 00434FA4 00A03025 */  move        $a2, $a1
/* 034FA8 00434FA8 8F858020 */  lw          $a1, %got(func_00434E88)($gp)
/* 034FAC 00434FAC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 034FB0 00434FB0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 034FB4 00434FB4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 034FB8 00434FB8 0320F809 */  jalr        $t9
/* 034FBC 00434FBC 24A54E88 */   addiu      $a1, $a1, %lo(func_00434E88)
/* 034FC0 00434FC0 2401FFFF */  addiu       $at, $zero, -0x1
/* 034FC4 00434FC4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 034FC8 00434FC8 14410003 */  bne         $v0, $at, .L00434FD8
/* 034FCC 00434FCC 00401825 */   move       $v1, $v0
/* 034FD0 00434FD0 10000002 */  b           .L00434FDC
/* 034FD4 00434FD4 00001025 */   move       $v0, $zero
.L00434FD8:
/* 034FD8 00434FD8 00601025 */  move        $v0, $v1
.L00434FDC:
/* 034FDC 00434FDC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 034FE0 00434FE0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 034FE4 00434FE4 03E00008 */  jr          $ra
/* 034FE8 00434FE8 00000000 */   nop
