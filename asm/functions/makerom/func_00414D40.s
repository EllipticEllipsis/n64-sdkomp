glabel func_00414D40 # 56
/* 014D40 00414D40 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 014D44 00414D44 279CE020 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBFE020
/* 014D48 00414D48 0399E021 */  addu        $gp, $gp, $t9
/* 014D4C 00414D4C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 014D50 00414D50 AFA60038 */  sw          $a2, 0x38($sp)
/* 014D54 00414D54 8FAE0038 */  lw          $t6, 0x38($sp)
/* 014D58 00414D58 AFA50034 */  sw          $a1, 0x34($sp)
/* 014D5C 00414D5C 8FB80034 */  lw          $t8, 0x34($sp)
/* 014D60 00414D60 AFB00014 */  sw          $s0, 0x14($sp)
/* 014D64 00414D64 000E78C0 */  sll         $t7, $t6, 3
/* 014D68 00414D68 AFBF001C */  sw          $ra, 0x1C($sp)
/* 014D6C 00414D6C AFBC0018 */  sw          $gp, 0x18($sp)
/* 014D70 00414D70 AFA40030 */  sw          $a0, 0x30($sp)
/* 014D74 00414D74 01F88021 */  addu        $s0, $t7, $t8
.L00414D78:
/* 014D78 00414D78 8FB90034 */  lw          $t9, 0x34($sp)
/* 014D7C 00414D7C 8FAB0030 */  lw          $t3, 0x30($sp)
/* 014D80 00414D80 24060000 */  addiu       $a2, $zero, 0x0
/* 014D84 00414D84 8F290004 */  lw          $t1, 0x4($t9)
/* 014D88 00414D88 8F280000 */  lw          $t0, 0x0($t9)
/* 014D8C 00414D8C 24070008 */  addiu       $a3, $zero, 0x8
/* 014D90 00414D90 AFA90024 */  sw          $t1, 0x24($sp)
/* 014D94 00414D94 01205025 */  move        $t2, $t1
/* 014D98 00414D98 AFA80020 */  sw          $t0, 0x20($sp)
/* 014D9C 00414D9C A16A0007 */  sb          $t2, 0x7($t3)
/* 014DA0 00414DA0 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014DA4 00414DA4 8FA50024 */  lw          $a1, 0x24($sp)
/* 014DA8 00414DA8 8FA40020 */  lw          $a0, 0x20($sp)
/* 014DAC 00414DAC 0320F809 */  jalr        $t9
/* 014DB0 00414DB0 00000000 */   nop
/* 014DB4 00414DB4 8FAD0030 */  lw          $t5, 0x30($sp)
/* 014DB8 00414DB8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014DBC 00414DBC 00606025 */  move        $t4, $v1
/* 014DC0 00414DC0 A1AC0006 */  sb          $t4, 0x6($t5)
/* 014DC4 00414DC4 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014DC8 00414DC8 8FA50024 */  lw          $a1, 0x24($sp)
/* 014DCC 00414DCC 8FA40020 */  lw          $a0, 0x20($sp)
/* 014DD0 00414DD0 24060000 */  addiu       $a2, $zero, 0x0
/* 014DD4 00414DD4 0320F809 */  jalr        $t9
/* 014DD8 00414DD8 24070010 */   addiu      $a3, $zero, 0x10
/* 014DDC 00414DDC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 014DE0 00414DE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014DE4 00414DE4 00607025 */  move        $t6, $v1
/* 014DE8 00414DE8 A1EE0005 */  sb          $t6, 0x5($t7)
/* 014DEC 00414DEC 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014DF0 00414DF0 8FA50024 */  lw          $a1, 0x24($sp)
/* 014DF4 00414DF4 8FA40020 */  lw          $a0, 0x20($sp)
/* 014DF8 00414DF8 24060000 */  addiu       $a2, $zero, 0x0
/* 014DFC 00414DFC 0320F809 */  jalr        $t9
/* 014E00 00414E00 24070018 */   addiu      $a3, $zero, 0x18
/* 014E04 00414E04 8FB90030 */  lw          $t9, 0x30($sp)
/* 014E08 00414E08 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014E0C 00414E0C 0060C025 */  move        $t8, $v1
/* 014E10 00414E10 A3380004 */  sb          $t8, 0x4($t9)
/* 014E14 00414E14 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014E18 00414E18 8FA50024 */  lw          $a1, 0x24($sp)
/* 014E1C 00414E1C 8FA40020 */  lw          $a0, 0x20($sp)
/* 014E20 00414E20 24060000 */  addiu       $a2, $zero, 0x0
/* 014E24 00414E24 0320F809 */  jalr        $t9
/* 014E28 00414E28 24070020 */   addiu      $a3, $zero, 0x20
/* 014E2C 00414E2C 8FA90030 */  lw          $t1, 0x30($sp)
/* 014E30 00414E30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014E34 00414E34 00604025 */  move        $t0, $v1
/* 014E38 00414E38 A1280003 */  sb          $t0, 0x3($t1)
/* 014E3C 00414E3C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014E40 00414E40 8FA50024 */  lw          $a1, 0x24($sp)
/* 014E44 00414E44 8FA40020 */  lw          $a0, 0x20($sp)
/* 014E48 00414E48 24060000 */  addiu       $a2, $zero, 0x0
/* 014E4C 00414E4C 0320F809 */  jalr        $t9
/* 014E50 00414E50 24070028 */   addiu      $a3, $zero, 0x28
/* 014E54 00414E54 8FAB0030 */  lw          $t3, 0x30($sp)
/* 014E58 00414E58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014E5C 00414E5C 00605025 */  move        $t2, $v1
/* 014E60 00414E60 A16A0002 */  sb          $t2, 0x2($t3)
/* 014E64 00414E64 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014E68 00414E68 8FA50024 */  lw          $a1, 0x24($sp)
/* 014E6C 00414E6C 8FA40020 */  lw          $a0, 0x20($sp)
/* 014E70 00414E70 24060000 */  addiu       $a2, $zero, 0x0
/* 014E74 00414E74 0320F809 */  jalr        $t9
/* 014E78 00414E78 24070030 */   addiu      $a3, $zero, 0x30
/* 014E7C 00414E7C 8FAD0030 */  lw          $t5, 0x30($sp)
/* 014E80 00414E80 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014E84 00414E84 00606025 */  move        $t4, $v1
/* 014E88 00414E88 A1AC0001 */  sb          $t4, 0x1($t5)
/* 014E8C 00414E8C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014E90 00414E90 8FA50024 */  lw          $a1, 0x24($sp)
/* 014E94 00414E94 8FA40020 */  lw          $a0, 0x20($sp)
/* 014E98 00414E98 24060000 */  addiu       $a2, $zero, 0x0
/* 014E9C 00414E9C 0320F809 */  jalr        $t9
/* 014EA0 00414EA0 24070038 */   addiu      $a3, $zero, 0x38
/* 014EA4 00414EA4 8FAF0030 */  lw          $t7, 0x30($sp)
/* 014EA8 00414EA8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014EAC 00414EAC 00607025 */  move        $t6, $v1
/* 014EB0 00414EB0 A1EE0000 */  sb          $t6, 0x0($t7)
/* 014EB4 00414EB4 8FA80034 */  lw          $t0, 0x34($sp)
/* 014EB8 00414EB8 8FB80030 */  lw          $t8, 0x30($sp)
/* 014EBC 00414EBC 25090008 */  addiu       $t1, $t0, 0x8
/* 014EC0 00414EC0 0130082B */  sltu        $at, $t1, $s0
/* 014EC4 00414EC4 27190008 */  addiu       $t9, $t8, 0x8
/* 014EC8 00414EC8 AFB90030 */  sw          $t9, 0x30($sp)
/* 014ECC 00414ECC 1420FFAA */  bnez        $at, .L00414D78
/* 014ED0 00414ED0 AFA90034 */   sw         $t1, 0x34($sp)
/* 014ED4 00414ED4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 014ED8 00414ED8 8FB00014 */  lw          $s0, 0x14($sp)
/* 014EDC 00414EDC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 014EE0 00414EE0 03E00008 */  jr          $ra
/* 014EE4 00414EE4 00000000 */   nop
