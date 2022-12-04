glabel file_end_symbol # 600
/* 03B918 0043B918 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03B91C 0043B91C 279C7448 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD7448
/* 03B920 0043B920 0399E021 */  addu        $gp, $gp, $t9
/* 03B924 0043B924 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03B928 0043B928 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03B92C 0043B92C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B930 0043B930 AFA50024 */  sw          $a1, 0x24($sp)
/* 03B934 0043B934 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B938 0043B938 00C02825 */  move        $a1, $a2
/* 03B93C 0043B93C AFA40020 */  sw          $a0, 0x20($sp)
/* 03B940 0043B940 0320F809 */  jalr        $t9
/* 03B944 0043B944 AFA60028 */   sw         $a2, 0x28($sp)
/* 03B948 0043B948 24010006 */  addiu       $at, $zero, 0x6
/* 03B94C 0043B94C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B950 0043B950 8FA40020 */  lw          $a0, 0x20($sp)
/* 03B954 0043B954 8FA50024 */  lw          $a1, 0x24($sp)
/* 03B958 0043B958 10410004 */  beq         $v0, $at, .L0043B96C
/* 03B95C 0043B95C 8FA60028 */   lw         $a2, 0x28($sp)
/* 03B960 0043B960 2401000E */  addiu       $at, $zero, 0xE
/* 03B964 0043B964 54410007 */  bnel        $v0, $at, .L0043B984
/* 03B968 0043B968 24010007 */   addiu      $at, $zero, 0x7
.L0043B96C:
/* 03B96C 0043B96C 8F998588 */  lw          $t9, %call16(file_procedure_end_symbol)($gp)
/* 03B970 0043B970 0320F809 */  jalr        $t9
/* 03B974 0043B974 00000000 */   nop
/* 03B978 0043B978 10000013 */  b           .L0043B9C8
/* 03B97C 0043B97C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03B980 0043B980 24010007 */  addiu       $at, $zero, 0x7
.L0043B984:
/* 03B984 0043B984 10410005 */  beq         $v0, $at, .L0043B99C
/* 03B988 0043B988 2401000B */   addiu      $at, $zero, 0xB
/* 03B98C 0043B98C 10410003 */  beq         $v0, $at, .L0043B99C
/* 03B990 0043B990 00000000 */   nop
/* 03B994 0043B994 1000000C */  b           .L0043B9C8
/* 03B998 0043B998 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043B99C:
/* 03B99C 0043B99C 8F998578 */  lw          $t9, %call16(file_symbol_isym)($gp)
/* 03B9A0 0043B9A0 0320F809 */  jalr        $t9
/* 03B9A4 0043B9A4 00000000 */   nop
/* 03B9A8 0043B9A8 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B9AC 0043B9AC 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B9B0 0043B9B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B9B4 0043B9B4 14410003 */  bne         $v0, $at, .L0043B9C4
/* 03B9B8 0043B9B8 00401825 */   move       $v1, $v0
/* 03B9BC 0043B9BC 10000002 */  b           .L0043B9C8
/* 03B9C0 0043B9C0 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043B9C4:
/* 03B9C4 0043B9C4 2462FFFF */  addiu       $v0, $v1, -0x1
.L0043B9C8:
/* 03B9C8 0043B9C8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B9CC 0043B9CC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03B9D0 0043B9D0 03E00008 */  jr          $ra
/* 03B9D4 0043B9D4 00000000 */   nop
