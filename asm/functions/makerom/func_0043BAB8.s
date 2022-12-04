glabel func_0043BAB8 # 603
/* 03BAB8 0043BAB8 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03BABC 0043BABC 279C72A8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD72A8
/* 03BAC0 0043BAC0 0399E021 */  addu        $gp, $gp, $t9
/* 03BAC4 0043BAC4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 03BAC8 0043BAC8 8F9984EC */  lw          $t9, %call16(address_to_procedure)($gp)
/* 03BACC 0043BACC AFBF003C */  sw          $ra, 0x3C($sp)
/* 03BAD0 0043BAD0 AFBE0038 */  sw          $fp, 0x38($sp)
/* 03BAD4 0043BAD4 AFB10018 */  sw          $s1, 0x18($sp)
/* 03BAD8 0043BAD8 00808825 */  move        $s1, $a0
/* 03BADC 0043BADC 00A0F025 */  move        $fp, $a1
/* 03BAE0 0043BAE0 AFBC0034 */  sw          $gp, 0x34($sp)
/* 03BAE4 0043BAE4 AFB70030 */  sw          $s7, 0x30($sp)
/* 03BAE8 0043BAE8 AFB6002C */  sw          $s6, 0x2C($sp)
/* 03BAEC 0043BAEC AFB50028 */  sw          $s5, 0x28($sp)
/* 03BAF0 0043BAF0 AFB40024 */  sw          $s4, 0x24($sp)
/* 03BAF4 0043BAF4 AFB30020 */  sw          $s3, 0x20($sp)
/* 03BAF8 0043BAF8 AFB2001C */  sw          $s2, 0x1C($sp)
/* 03BAFC 0043BAFC AFB00014 */  sw          $s0, 0x14($sp)
/* 03BB00 0043BB00 0320F809 */  jalr        $t9
/* 03BB04 0043BB04 AFA60048 */   sw         $a2, 0x48($sp)
/* 03BB08 0043BB08 2401FFFF */  addiu       $at, $zero, -0x1
/* 03BB0C 0043BB0C 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03BB10 0043BB10 14410003 */  bne         $v0, $at, .L0043BB20
/* 03BB14 0043BB14 00402825 */   move       $a1, $v0
/* 03BB18 0043BB18 1000004C */  b           .L0043BC4C
/* 03BB1C 0043BB1C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043BB20:
/* 03BB20 0043BB20 8F9984E4 */  lw          $t9, %call16(procedure_symbol)($gp)
/* 03BB24 0043BB24 02202025 */  move        $a0, $s1
/* 03BB28 0043BB28 0320F809 */  jalr        $t9
/* 03BB2C 0043BB2C 00000000 */   nop
/* 03BB30 0043BB30 2401FFFF */  addiu       $at, $zero, -0x1
/* 03BB34 0043BB34 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03BB38 0043BB38 14410003 */  bne         $v0, $at, .L0043BB48
/* 03BB3C 0043BB3C 00408025 */   move       $s0, $v0
/* 03BB40 0043BB40 10000042 */  b           .L0043BC4C
/* 03BB44 0043BB44 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043BB48:
/* 03BB48 0043BB48 8F998584 */  lw          $t9, %call16(procedure_end_symbol)($gp)
/* 03BB4C 0043BB4C 02202025 */  move        $a0, $s1
/* 03BB50 0043BB50 02002825 */  move        $a1, $s0
/* 03BB54 0043BB54 0320F809 */  jalr        $t9
/* 03BB58 0043BB58 00000000 */   nop
/* 03BB5C 0043BB5C 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03BB60 0043BB60 0040A825 */  move        $s5, $v0
/* 03BB64 0043BB64 02202025 */  move        $a0, $s1
/* 03BB68 0043BB68 8F998568 */  lw          $t9, %call16(symbol_value)($gp)
/* 03BB6C 0043BB6C 02002825 */  move        $a1, $s0
/* 03BB70 0043BB70 0320F809 */  jalr        $t9
/* 03BB74 0043BB74 00000000 */   nop
/* 03BB78 0043BB78 02009825 */  move        $s3, $s0
/* 03BB7C 0043BB7C 26100001 */  addiu       $s0, $s0, 0x1
/* 03BB80 0043BB80 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03BB84 0043BB84 0040A025 */  move        $s4, $v0
/* 03BB88 0043BB88 1215002F */  beq         $s0, $s5, .L0043BC48
/* 03BB8C 0043BB8C 24120001 */   addiu      $s2, $zero, 0x1
/* 03BB90 0043BB90 24170001 */  addiu       $s7, $zero, 0x1
/* 03BB94 0043BB94 24160007 */  addiu       $s6, $zero, 0x7
.L0043BB98:
/* 03BB98 0043BB98 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03BB9C 0043BB9C 02202025 */  move        $a0, $s1
/* 03BBA0 0043BBA0 02002825 */  move        $a1, $s0
/* 03BBA4 0043BBA4 0320F809 */  jalr        $t9
/* 03BBA8 0043BBA8 00000000 */   nop
/* 03BBAC 0043BBAC 14560023 */  bne         $v0, $s6, .L0043BC3C
/* 03BBB0 0043BBB0 8FBC0034 */   lw         $gp, 0x34($sp)
/* 03BBB4 0043BBB4 8F998560 */  lw          $t9, %call16(symbol_class)($gp)
/* 03BBB8 0043BBB8 02202025 */  move        $a0, $s1
/* 03BBBC 0043BBBC 02002825 */  move        $a1, $s0
/* 03BBC0 0043BBC0 0320F809 */  jalr        $t9
/* 03BBC4 0043BBC4 00000000 */   nop
/* 03BBC8 0043BBC8 1057000C */  beq         $v0, $s7, .L0043BBFC
/* 03BBCC 0043BBCC 8FBC0034 */   lw         $gp, 0x34($sp)
/* 03BBD0 0043BBD0 8F99857C */  lw          $t9, %call16(end_symbol)($gp)
/* 03BBD4 0043BBD4 02202025 */  move        $a0, $s1
/* 03BBD8 0043BBD8 02002825 */  move        $a1, $s0
/* 03BBDC 0043BBDC 0320F809 */  jalr        $t9
/* 03BBE0 0043BBE0 00000000 */   nop
/* 03BBE4 0043BBE4 2401FFFF */  addiu       $at, $zero, -0x1
/* 03BBE8 0043BBE8 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03BBEC 0043BBEC 14410013 */  bne         $v0, $at, .L0043BC3C
/* 03BBF0 0043BBF0 00408025 */   move       $s0, $v0
/* 03BBF4 0043BBF4 10000015 */  b           .L0043BC4C
/* 03BBF8 0043BBF8 02601025 */   move       $v0, $s3
.L0043BBFC:
/* 03BBFC 0043BBFC 8F998568 */  lw          $t9, %call16(symbol_value)($gp)
/* 03BC00 0043BC00 02202025 */  move        $a0, $s1
/* 03BC04 0043BC04 02002825 */  move        $a1, $s0
/* 03BC08 0043BC08 0320F809 */  jalr        $t9
/* 03BC0C 0043BC0C 00000000 */   nop
/* 03BC10 0043BC10 00547021 */  addu        $t6, $v0, $s4
/* 03BC14 0043BC14 03CE082B */  sltu        $at, $fp, $t6
/* 03BC18 0043BC18 10200003 */  beqz        $at, .L0043BC28
/* 03BC1C 0043BC1C 8FBC0034 */   lw         $gp, 0x34($sp)
/* 03BC20 0043BC20 1000000A */  b           .L0043BC4C
/* 03BC24 0043BC24 02601025 */   move       $v0, $s3
.L0043BC28:
/* 03BC28 0043BC28 56400004 */  bnel        $s2, $zero, .L0043BC3C
/* 03BC2C 0043BC2C 00009025 */   move       $s2, $zero
/* 03BC30 0043BC30 10000002 */  b           .L0043BC3C
/* 03BC34 0043BC34 02009825 */   move       $s3, $s0
/* 03BC38 0043BC38 00009025 */  move        $s2, $zero
.L0043BC3C:
/* 03BC3C 0043BC3C 26100001 */  addiu       $s0, $s0, 0x1
/* 03BC40 0043BC40 1615FFD5 */  bne         $s0, $s5, .L0043BB98
/* 03BC44 0043BC44 00000000 */   nop
.L0043BC48:
/* 03BC48 0043BC48 02601025 */  move        $v0, $s3
.L0043BC4C:
/* 03BC4C 0043BC4C 8FBF003C */  lw          $ra, 0x3C($sp)
/* 03BC50 0043BC50 8FB00014 */  lw          $s0, 0x14($sp)
/* 03BC54 0043BC54 8FB10018 */  lw          $s1, 0x18($sp)
/* 03BC58 0043BC58 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03BC5C 0043BC5C 8FB30020 */  lw          $s3, 0x20($sp)
/* 03BC60 0043BC60 8FB40024 */  lw          $s4, 0x24($sp)
/* 03BC64 0043BC64 8FB50028 */  lw          $s5, 0x28($sp)
/* 03BC68 0043BC68 8FB6002C */  lw          $s6, 0x2C($sp)
/* 03BC6C 0043BC6C 8FB70030 */  lw          $s7, 0x30($sp)
/* 03BC70 0043BC70 8FBE0038 */  lw          $fp, 0x38($sp)
/* 03BC74 0043BC74 03E00008 */  jr          $ra
/* 03BC78 0043BC78 27BD0040 */   addiu      $sp, $sp, 0x40
