glabel st_pdadd_idn # 703
/* 042C10 00442C10 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 042C14 00442C14 279C0150 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD0150
/* 042C18 00442C18 0399E021 */  addu        $gp, $gp, $t9
/* 042C1C 00442C1C 8F998634 */  lw          $t9, %call16(st_pdn_idn)($gp)
/* 042C20 00442C20 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 042C24 00442C24 AFBF001C */  sw          $ra, 0x1C($sp)
/* 042C28 00442C28 0320F809 */  jalr        $t9
/* 042C2C 00442C2C AFBC0018 */   sw         $gp, 0x18($sp)
/* 042C30 00442C30 8C4E0000 */  lw          $t6, 0x0($v0)
/* 042C34 00442C34 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 042C38 00442C38 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 042C3C 00442C3C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 042C40 00442C40 15C1000B */  bne         $t6, $at, .L00442C70
/* 042C44 00442C44 00401825 */   move       $v1, $v0
/* 042C48 00442C48 8F99862C */  lw          $t9, %call16(st_pext_iext)($gp)
/* 042C4C 00442C4C 8C640004 */  lw          $a0, 0x4($v1)
/* 042C50 00442C50 0320F809 */  jalr        $t9
/* 042C54 00442C54 00000000 */   nop
/* 042C58 00442C58 8C44000C */  lw          $a0, 0xC($v0)
/* 042C5C 00442C5C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 042C60 00442C60 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 042C64 00442C64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 042C68 00442C68 10000002 */  b           .L00442C74
/* 042C6C 00442C6C 00812024 */   and        $a0, $a0, $at
.L00442C70:
/* 042C70 00442C70 8C440004 */  lw          $a0, 0x4($v0)
.L00442C74:
/* 042C74 00442C74 8F9985EC */  lw          $t9, %call16(st_pdadd)($gp)
/* 042C78 00442C78 0320F809 */  jalr        $t9
/* 042C7C 00442C7C 00000000 */   nop
/* 042C80 00442C80 8FBF001C */  lw          $ra, 0x1C($sp)
/* 042C84 00442C84 8FBC0018 */  lw          $gp, 0x18($sp)
/* 042C88 00442C88 27BD0020 */  addiu       $sp, $sp, 0x20
/* 042C8C 00442C8C 03E00008 */  jr          $ra
/* 042C90 00442C90 00000000 */   nop
