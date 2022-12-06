glabel ldclose # 209
/* 029E3C 00429E3C 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 029E40 00429E40 279C8F24 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8F24
/* 029E44 00429E44 0399E021 */  addu        $gp, $gp, $t9
/* 029E48 00429E48 8F99824C */  lw          $t9, %call16(vldldptr)($gp)
/* 029E4C 00429E4C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 029E50 00429E50 AFBF001C */  sw          $ra, 0x1C($sp)
/* 029E54 00429E54 AFB00014 */  sw          $s0, 0x14($sp)
/* 029E58 00429E58 00808025 */  move        $s0, $a0
/* 029E5C 00429E5C 0320F809 */  jalr        $t9
/* 029E60 00429E60 AFBC0018 */   sw         $gp, 0x18($sp)
/* 029E64 00429E64 14400003 */  bnez        $v0, .L00429E74
/* 029E68 00429E68 8FBC0018 */   lw         $gp, 0x18($sp)
/* 029E6C 00429E6C 10000020 */  b           .L00429EF0
/* 029E70 00429E70 24020001 */   addiu      $v0, $zero, 0x1
.L00429E74:
/* 029E74 00429E74 960E0028 */  lhu         $t6, 0x28($s0)
/* 029E78 00429E78 3401FF65 */  ori         $at, $zero, 0xFF65
/* 029E7C 00429E7C 15C1000A */  bne         $t6, $at, .L00429EA8
/* 029E80 00429E80 00000000 */   nop
/* 029E84 00429E84 8F998020 */  lw          $t9, %got(nextfile)($gp)
/* 029E88 00429E88 02002025 */  move        $a0, $s0
/* 029E8C 00429E8C 273995E4 */  addiu       $t9, $t9, %lo(nextfile)
/* 029E90 00429E90 0320F809 */  jalr        $t9
/* 029E94 00429E94 00000000 */   nop
/* 029E98 00429E98 10400003 */  beqz        $v0, .L00429EA8
/* 029E9C 00429E9C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 029EA0 00429EA0 10000013 */  b           .L00429EF0
/* 029EA4 00429EA4 00001025 */   move       $v0, $zero
.L00429EA8:
/* 029EA8 00429EA8 8F9980C4 */  lw          $t9, %call16(close)($gp)
/* 029EAC 00429EAC 8E040030 */  lw          $a0, 0x30($s0)
/* 029EB0 00429EB0 0320F809 */  jalr        $t9
/* 029EB4 00429EB4 00000000 */   nop
/* 029EB8 00429EB8 8E0F002C */  lw          $t7, 0x2C($s0)
/* 029EBC 00429EBC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029EC0 00429EC0 24030001 */  addiu       $v1, $zero, 0x1
/* 029EC4 00429EC4 15E00003 */  bnez        $t7, .L00429ED4
/* 029EC8 00429EC8 00000000 */   nop
/* 029ECC 00429ECC 10000001 */  b           .L00429ED4
/* 029ED0 00429ED0 00001825 */   move       $v1, $zero
.L00429ED4:
/* 029ED4 00429ED4 8F998250 */  lw          $t9, %call16(freeldptr)($gp)
/* 029ED8 00429ED8 02002025 */  move        $a0, $s0
/* 029EDC 00429EDC AFA30024 */  sw          $v1, 0x24($sp)
/* 029EE0 00429EE0 0320F809 */  jalr        $t9
/* 029EE4 00429EE4 00000000 */   nop
/* 029EE8 00429EE8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029EEC 00429EEC 8FA20024 */  lw          $v0, 0x24($sp)
.L00429EF0:
/* 029EF0 00429EF0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 029EF4 00429EF4 8FB00014 */  lw          $s0, 0x14($sp)
/* 029EF8 00429EF8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 029EFC 00429EFC 03E00008 */  jr          $ra
/* 029F00 00429F00 00000000 */   nop
