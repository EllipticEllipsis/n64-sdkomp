glabel symbol_to_outer_scope_symbol # 605
/* 03BCBC 0043BCBC 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03BCC0 0043BCC0 279C70A4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD70A4
/* 03BCC4 0043BCC4 0399E021 */  addu        $gp, $gp, $t9
/* 03BCC8 0043BCC8 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 03BCCC 0043BCCC AFBF003C */  sw          $ra, 0x3C($sp)
/* 03BCD0 0043BCD0 AFBC0038 */  sw          $gp, 0x38($sp)
/* 03BCD4 0043BCD4 AFB70034 */  sw          $s7, 0x34($sp)
/* 03BCD8 0043BCD8 AFB60030 */  sw          $s6, 0x30($sp)
/* 03BCDC 0043BCDC AFB5002C */  sw          $s5, 0x2C($sp)
/* 03BCE0 0043BCE0 AFB40028 */  sw          $s4, 0x28($sp)
/* 03BCE4 0043BCE4 AFB30024 */  sw          $s3, 0x24($sp)
/* 03BCE8 0043BCE8 AFB20020 */  sw          $s2, 0x20($sp)
/* 03BCEC 0043BCEC AFB1001C */  sw          $s1, 0x1C($sp)
/* 03BCF0 0043BCF0 AFB00018 */  sw          $s0, 0x18($sp)
/* 03BCF4 0043BCF4 8C8E00D8 */  lw          $t6, 0xD8($a0)
/* 03BCF8 0043BCF8 00A08025 */  move        $s0, $a1
/* 03BCFC 0043BCFC 00808825 */  move        $s1, $a0
/* 03BD00 0043BD00 00AE082B */  sltu        $at, $a1, $t6
/* 03BD04 0043BD04 14200003 */  bnez        $at, .L0043BD14
/* 03BD08 0043BD08 00000000 */   nop
/* 03BD0C 0043BD0C 1000005D */  b           .L0043BE84
/* 03BD10 0043BD10 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043BD14:
/* 03BD14 0043BD14 8F9984F0 */  lw          $t9, %call16(symbol_to_file)($gp)
/* 03BD18 0043BD18 02202025 */  move        $a0, $s1
/* 03BD1C 0043BD1C 02002825 */  move        $a1, $s0
/* 03BD20 0043BD20 0320F809 */  jalr        $t9
/* 03BD24 0043BD24 00000000 */   nop
/* 03BD28 0043BD28 8FBC0038 */  lw          $gp, 0x38($sp)
/* 03BD2C 0043BD2C 02202025 */  move        $a0, $s1
/* 03BD30 0043BD30 00402825 */  move        $a1, $v0
/* 03BD34 0043BD34 8F9984FC */  lw          $t9, %call16(file_symbol)($gp)
/* 03BD38 0043BD38 0320F809 */  jalr        $t9
/* 03BD3C 0043BD3C 00000000 */   nop
/* 03BD40 0043BD40 2610FFFF */  addiu       $s0, $s0, -0x1
/* 03BD44 0043BD44 0050082B */  sltu        $at, $v0, $s0
/* 03BD48 0043BD48 8FBC0038 */  lw          $gp, 0x38($sp)
/* 03BD4C 0043BD4C 10200024 */  beqz        $at, .L0043BDE0
/* 03BD50 0043BD50 00409825 */   move       $s3, $v0
/* 03BD54 0043BD54 2416000E */  addiu       $s6, $zero, 0xE
/* 03BD58 0043BD58 24150007 */  addiu       $s5, $zero, 0x7
/* 03BD5C 0043BD5C 24140006 */  addiu       $s4, $zero, 0x6
/* 03BD60 0043BD60 24120008 */  addiu       $s2, $zero, 0x8
.L0043BD64:
/* 03BD64 0043BD64 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03BD68 0043BD68 02202025 */  move        $a0, $s1
/* 03BD6C 0043BD6C 02002825 */  move        $a1, $s0
/* 03BD70 0043BD70 0320F809 */  jalr        $t9
/* 03BD74 0043BD74 00000000 */   nop
/* 03BD78 0043BD78 8FBC0038 */  lw          $gp, 0x38($sp)
/* 03BD7C 0043BD7C 10540003 */  beq         $v0, $s4, .L0043BD8C
/* 03BD80 0043BD80 0040B825 */   move       $s7, $v0
/* 03BD84 0043BD84 14560003 */  bne         $v0, $s6, .L0043BD94
/* 03BD88 0043BD88 00000000 */   nop
.L0043BD8C:
/* 03BD8C 0043BD8C 1000003D */  b           .L0043BE84
/* 03BD90 0043BD90 02001025 */   move       $v0, $s0
.L0043BD94:
/* 03BD94 0043BD94 14520009 */  bne         $v0, $s2, .L0043BDBC
/* 03BD98 0043BD98 00000000 */   nop
/* 03BD9C 0043BD9C 8F998574 */  lw          $t9, %call16(symbol_isym)($gp)
/* 03BDA0 0043BDA0 02202025 */  move        $a0, $s1
/* 03BDA4 0043BDA4 02002825 */  move        $a1, $s0
/* 03BDA8 0043BDA8 0320F809 */  jalr        $t9
/* 03BDAC 0043BDAC 00000000 */   nop
/* 03BDB0 0043BDB0 8FBC0038 */  lw          $gp, 0x38($sp)
/* 03BDB4 0043BDB4 10000005 */  b           .L0043BDCC
/* 03BDB8 0043BDB8 00408025 */   move       $s0, $v0
.L0043BDBC:
/* 03BDBC 0043BDBC 54550004 */  bnel        $v0, $s5, .L0043BDD0
/* 03BDC0 0043BDC0 2610FFFF */   addiu      $s0, $s0, -0x1
/* 03BDC4 0043BDC4 10000006 */  b           .L0043BDE0
/* 03BDC8 0043BDC8 AFB70040 */   sw         $s7, 0x40($sp)
.L0043BDCC:
/* 03BDCC 0043BDCC 2610FFFF */  addiu       $s0, $s0, -0x1
.L0043BDD0:
/* 03BDD0 0043BDD0 0270082B */  sltu        $at, $s3, $s0
/* 03BDD4 0043BDD4 1420FFE3 */  bnez        $at, .L0043BD64
/* 03BDD8 0043BDD8 00000000 */   nop
/* 03BDDC 0043BDDC AFB70040 */  sw          $s7, 0x40($sp)
.L0043BDE0:
/* 03BDE0 0043BDE0 0213082B */  sltu        $at, $s0, $s3
/* 03BDE4 0043BDE4 24140006 */  addiu       $s4, $zero, 0x6
/* 03BDE8 0043BDE8 24150007 */  addiu       $s5, $zero, 0x7
/* 03BDEC 0043BDEC 2416000E */  addiu       $s6, $zero, 0xE
/* 03BDF0 0043BDF0 10200003 */  beqz        $at, .L0043BE00
/* 03BDF4 0043BDF4 8FB70040 */   lw         $s7, 0x40($sp)
/* 03BDF8 0043BDF8 10000022 */  b           .L0043BE84
/* 03BDFC 0043BDFC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043BE00:
/* 03BE00 0043BE00 8F8F8030 */  lw          $t7, %got(B_1000F5F0)($gp)
/* 03BE04 0043BE04 24180001 */  addiu       $t8, $zero, 0x1
/* 03BE08 0043BE08 02202025 */  move        $a0, $s1
/* 03BE0C 0043BE0C 81EFF5F0 */  lb          $t7, %lo(B_1000F5F0)($t7)
/* 03BE10 0043BE10 11E00003 */  beqz        $t7, .L0043BE20
/* 03BE14 0043BE14 00000000 */   nop
/* 03BE18 0043BE18 1000001A */  b           .L0043BE84
/* 03BE1C 0043BE1C 02001025 */   move       $v0, $s0
.L0043BE20:
/* 03BE20 0043BE20 8F99858C */  lw          $t9, %call16(symbol_to_outer_scope_symbol)($gp)
/* 03BE24 0043BE24 8F818030 */  lw          $at, %got(B_1000F5F0)($gp)
/* 03BE28 0043BE28 02002825 */  move        $a1, $s0
/* 03BE2C 0043BE2C 0320F809 */  jalr        $t9
/* 03BE30 0043BE30 A038F5F0 */   sb         $t8, %lo(B_1000F5F0)($at)
/* 03BE34 0043BE34 8FBC0038 */  lw          $gp, 0x38($sp)
/* 03BE38 0043BE38 00409025 */  move        $s2, $v0
/* 03BE3C 0043BE3C 02202025 */  move        $a0, $s1
/* 03BE40 0043BE40 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03BE44 0043BE44 8F818030 */  lw          $at, %got(B_1000F5F0)($gp)
/* 03BE48 0043BE48 00402825 */  move        $a1, $v0
/* 03BE4C 0043BE4C 0320F809 */  jalr        $t9
/* 03BE50 0043BE50 A020F5F0 */   sb         $zero, %lo(B_1000F5F0)($at)
/* 03BE54 0043BE54 2401FFFF */  addiu       $at, $zero, -0x1
/* 03BE58 0043BE58 12410007 */  beq         $s2, $at, .L0043BE78
/* 03BE5C 0043BE5C 8FBC0038 */   lw         $gp, 0x38($sp)
/* 03BE60 0043BE60 16F50005 */  bne         $s7, $s5, .L0043BE78
/* 03BE64 0043BE64 00000000 */   nop
/* 03BE68 0043BE68 50540006 */  beql        $v0, $s4, .L0043BE84
/* 03BE6C 0043BE6C 02401025 */   move       $v0, $s2
/* 03BE70 0043BE70 50560004 */  beql        $v0, $s6, .L0043BE84
/* 03BE74 0043BE74 02401025 */   move       $v0, $s2
.L0043BE78:
/* 03BE78 0043BE78 10000002 */  b           .L0043BE84
/* 03BE7C 0043BE7C 02001025 */   move       $v0, $s0
/* 03BE80 0043BE80 02401025 */  move        $v0, $s2
.L0043BE84:
/* 03BE84 0043BE84 8FBF003C */  lw          $ra, 0x3C($sp)
/* 03BE88 0043BE88 8FB00018 */  lw          $s0, 0x18($sp)
/* 03BE8C 0043BE8C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03BE90 0043BE90 8FB20020 */  lw          $s2, 0x20($sp)
/* 03BE94 0043BE94 8FB30024 */  lw          $s3, 0x24($sp)
/* 03BE98 0043BE98 8FB40028 */  lw          $s4, 0x28($sp)
/* 03BE9C 0043BE9C 8FB5002C */  lw          $s5, 0x2C($sp)
/* 03BEA0 0043BEA0 8FB60030 */  lw          $s6, 0x30($sp)
/* 03BEA4 0043BEA4 8FB70034 */  lw          $s7, 0x34($sp)
/* 03BEA8 0043BEA8 03E00008 */  jr          $ra
/* 03BEAC 0043BEAC 27BD0050 */   addiu      $sp, $sp, 0x50
