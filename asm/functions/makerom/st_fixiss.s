glabel st_fixiss # 704
/* 042C94 00442C94 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 042C98 00442C98 279C00CC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD00CC
/* 042C9C 00442C9C 0399E021 */  addu        $gp, $gp, $t9
/* 042CA0 00442CA0 8F998634 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 042CA4 00442CA4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 042CA8 00442CA8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 042CAC 00442CAC AFBC0018 */  sw          $gp, 0x18($sp)
/* 042CB0 00442CB0 0320F809 */  jalr        $t9
/* 042CB4 00442CB4 AFA50024 */   sw         $a1, 0x24($sp)
/* 042CB8 00442CB8 8C4E0000 */  lw          $t6, 0x0($v0)
/* 042CBC 00442CBC 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 042CC0 00442CC0 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 042CC4 00442CC4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 042CC8 00442CC8 15C10008 */  bne         $t6, $at, .L00442CEC
/* 042CCC 00442CCC 00401825 */   move       $v1, $v0
/* 042CD0 00442CD0 8F99862C */  lw          $t9, %call16(st_pext_iext)($gp)
/* 042CD4 00442CD4 8C440004 */  lw          $a0, 0x4($v0)
/* 042CD8 00442CD8 0320F809 */  jalr        $t9
/* 042CDC 00442CDC 00000000 */   nop
/* 042CE0 00442CE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 042CE4 00442CE4 10000008 */  b           .L00442D08
/* 042CE8 00442CE8 24430004 */   addiu      $v1, $v0, 0x4
.L00442CEC:
/* 042CEC 00442CEC 8F99860C */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 042CF0 00442CF0 8C640000 */  lw          $a0, 0x0($v1)
/* 042CF4 00442CF4 8C650004 */  lw          $a1, 0x4($v1)
/* 042CF8 00442CF8 0320F809 */  jalr        $t9
/* 042CFC 00442CFC 00000000 */   nop
/* 042D00 00442D00 8FBC0018 */  lw          $gp, 0x18($sp)
/* 042D04 00442D04 00401825 */  move        $v1, $v0
.L00442D08:
/* 042D08 00442D08 8FAF0024 */  lw          $t7, 0x24($sp)
/* 042D0C 00442D0C AC6F0000 */  sw          $t7, 0x0($v1)
/* 042D10 00442D10 8FBF001C */  lw          $ra, 0x1C($sp)
/* 042D14 00442D14 27BD0020 */  addiu       $sp, $sp, 0x20
/* 042D18 00442D18 03E00008 */  jr          $ra
/* 042D1C 00442D1C 00000000 */   nop
