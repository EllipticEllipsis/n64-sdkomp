glabel end_symbol # 599
/* 03B864 0043B864 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03B868 0043B868 279C74FC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD74FC
/* 03B86C 0043B86C 0399E021 */  addu        $gp, $gp, $t9
/* 03B870 0043B870 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03B874 0043B874 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03B878 0043B878 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B87C 0043B87C AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B880 0043B880 AFA40020 */  sw          $a0, 0x20($sp)
/* 03B884 0043B884 0320F809 */  jalr        $t9
/* 03B888 0043B888 AFA50024 */   sw         $a1, 0x24($sp)
/* 03B88C 0043B88C 24010006 */  addiu       $at, $zero, 0x6
/* 03B890 0043B890 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B894 0043B894 8FA40020 */  lw          $a0, 0x20($sp)
/* 03B898 0043B898 10410004 */  beq         $v0, $at, .L0043B8AC
/* 03B89C 0043B89C 8FA50024 */   lw         $a1, 0x24($sp)
/* 03B8A0 0043B8A0 2401000E */  addiu       $at, $zero, 0xE
/* 03B8A4 0043B8A4 54410007 */  bnel        $v0, $at, .L0043B8C4
/* 03B8A8 0043B8A8 24010007 */   addiu      $at, $zero, 0x7
.L0043B8AC:
/* 03B8AC 0043B8AC 8F998584 */  lw          $t9, %call16(procedure_end_symbol)($gp)
/* 03B8B0 0043B8B0 0320F809 */  jalr        $t9
/* 03B8B4 0043B8B4 00000000 */   nop
/* 03B8B8 0043B8B8 10000013 */  b           .L0043B908
/* 03B8BC 0043B8BC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03B8C0 0043B8C0 24010007 */  addiu       $at, $zero, 0x7
.L0043B8C4:
/* 03B8C4 0043B8C4 10410005 */  beq         $v0, $at, .L0043B8DC
/* 03B8C8 0043B8C8 2401000B */   addiu      $at, $zero, 0xB
/* 03B8CC 0043B8CC 10410003 */  beq         $v0, $at, .L0043B8DC
/* 03B8D0 0043B8D0 00000000 */   nop
/* 03B8D4 0043B8D4 1000000C */  b           .L0043B908
/* 03B8D8 0043B8D8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043B8DC:
/* 03B8DC 0043B8DC 8F998574 */  lw          $t9, %call16(symbol_isym)($gp)
/* 03B8E0 0043B8E0 0320F809 */  jalr        $t9
/* 03B8E4 0043B8E4 00000000 */   nop
/* 03B8E8 0043B8E8 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B8EC 0043B8EC 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B8F0 0043B8F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B8F4 0043B8F4 14410003 */  bne         $v0, $at, .L0043B904
/* 03B8F8 0043B8F8 00401825 */   move       $v1, $v0
/* 03B8FC 0043B8FC 10000002 */  b           .L0043B908
/* 03B900 0043B900 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043B904:
/* 03B904 0043B904 2462FFFF */  addiu       $v0, $v1, -0x1
.L0043B908:
/* 03B908 0043B908 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B90C 0043B90C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03B910 0043B910 03E00008 */  jr          $ra
/* 03B914 0043B914 00000000 */   nop
