glabel procedure_end_symbol # 601
/* 03B9D8 0043B9D8 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03B9DC 0043B9DC 279C7388 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD7388
/* 03B9E0 0043B9E0 0399E021 */  addu        $gp, $gp, $t9
/* 03B9E4 0043B9E4 8F99856C */  lw          $t9, %call16(symbol_iaux)($gp)
/* 03B9E8 0043B9E8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03B9EC 0043B9EC AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B9F0 0043B9F0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B9F4 0043B9F4 AFA40020 */  sw          $a0, 0x20($sp)
/* 03B9F8 0043B9F8 0320F809 */  jalr        $t9
/* 03B9FC 0043B9FC AFA50024 */   sw         $a1, 0x24($sp)
/* 03BA00 0043BA00 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03BA04 0043BA04 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03BA08 0043BA08 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03BA0C 0043BA0C 14410003 */  bne         $v0, $at, .L0043BA1C
/* 03BA10 0043BA10 00402825 */   move       $a1, $v0
/* 03BA14 0043BA14 10000007 */  b           .L0043BA34
/* 03BA18 0043BA18 8FA20024 */   lw         $v0, 0x24($sp)
.L0043BA1C:
/* 03BA1C 0043BA1C 8F9985B4 */  lw          $t9, %call16(aux_isym)($gp)
/* 03BA20 0043BA20 8FA40020 */  lw          $a0, 0x20($sp)
/* 03BA24 0043BA24 0320F809 */  jalr        $t9
/* 03BA28 0043BA28 00000000 */   nop
/* 03BA2C 0043BA2C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03BA30 0043BA30 2442FFFF */  addiu       $v0, $v0, -0x1
.L0043BA34:
/* 03BA34 0043BA34 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03BA38 0043BA38 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03BA3C 0043BA3C 03E00008 */  jr          $ra
/* 03BA40 0043BA40 00000000 */   nop
