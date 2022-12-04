glabel file_procedure_end_symbol # 602
/* 03BA44 0043BA44 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03BA48 0043BA48 279C731C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD731C
/* 03BA4C 0043BA4C 0399E021 */  addu        $gp, $gp, $t9
/* 03BA50 0043BA50 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03BA54 0043BA54 8F998570 */  lw          $t9, %call16(file_symbol_iaux)($gp)
/* 03BA58 0043BA58 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03BA5C 0043BA5C AFBC0018 */  sw          $gp, 0x18($sp)
/* 03BA60 0043BA60 AFA40020 */  sw          $a0, 0x20($sp)
/* 03BA64 0043BA64 AFA50024 */  sw          $a1, 0x24($sp)
/* 03BA68 0043BA68 0320F809 */  jalr        $t9
/* 03BA6C 0043BA6C AFA60028 */   sw         $a2, 0x28($sp)
/* 03BA70 0043BA70 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03BA74 0043BA74 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03BA78 0043BA78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03BA7C 0043BA7C 14410003 */  bne         $v0, $at, .L0043BA8C
/* 03BA80 0043BA80 00403025 */   move       $a2, $v0
/* 03BA84 0043BA84 10000008 */  b           .L0043BAA8
/* 03BA88 0043BA88 8FA20028 */   lw         $v0, 0x28($sp)
.L0043BA8C:
/* 03BA8C 0043BA8C 8F9985B8 */  lw          $t9, %call16(file_aux_isym)($gp)
/* 03BA90 0043BA90 8FA40020 */  lw          $a0, 0x20($sp)
/* 03BA94 0043BA94 8FA50024 */  lw          $a1, 0x24($sp)
/* 03BA98 0043BA98 0320F809 */  jalr        $t9
/* 03BA9C 0043BA9C 00000000 */   nop
/* 03BAA0 0043BAA0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03BAA4 0043BAA4 2442FFFF */  addiu       $v0, $v0, -0x1
.L0043BAA8:
/* 03BAA8 0043BAA8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03BAAC 0043BAAC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03BAB0 0043BAB0 03E00008 */  jr          $ra
/* 03BAB4 0043BAB4 00000000 */   nop
