glabel func_00419CE0 # 83
/* 019CE0 00419CE0 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 019CE4 00419CE4 279C9080 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF9080
/* 019CE8 00419CE8 0399E021 */  addu        $gp, $gp, $t9
/* 019CEC 00419CEC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 019CF0 00419CF0 AFA60038 */  sw          $a2, 0x38($sp)
/* 019CF4 00419CF4 8FAE0038 */  lw          $t6, 0x38($sp)
/* 019CF8 00419CF8 AFA50034 */  sw          $a1, 0x34($sp)
/* 019CFC 00419CFC 8FB80034 */  lw          $t8, 0x34($sp)
/* 019D00 00419D00 AFB00014 */  sw          $s0, 0x14($sp)
/* 019D04 00419D04 000E78C0 */  sll         $t7, $t6, 3
/* 019D08 00419D08 AFBF001C */  sw          $ra, 0x1C($sp)
/* 019D0C 00419D0C AFBC0018 */  sw          $gp, 0x18($sp)
/* 019D10 00419D10 AFA40030 */  sw          $a0, 0x30($sp)
/* 019D14 00419D14 01F88021 */  addu        $s0, $t7, $t8
.L00419D18:
/* 019D18 00419D18 8FB90034 */  lw          $t9, 0x34($sp)
/* 019D1C 00419D1C 8FAB0030 */  lw          $t3, 0x30($sp)
/* 019D20 00419D20 24060000 */  addiu       $a2, $zero, 0x0
/* 019D24 00419D24 8F290004 */  lw          $t1, 0x4($t9)
/* 019D28 00419D28 8F280000 */  lw          $t0, 0x0($t9)
/* 019D2C 00419D2C 24070008 */  addiu       $a3, $zero, 0x8
/* 019D30 00419D30 AFA90024 */  sw          $t1, 0x24($sp)
/* 019D34 00419D34 01205025 */  move        $t2, $t1
/* 019D38 00419D38 AFA80020 */  sw          $t0, 0x20($sp)
/* 019D3C 00419D3C A16A0007 */  sb          $t2, 0x7($t3)
/* 019D40 00419D40 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019D44 00419D44 8FA50024 */  lw          $a1, 0x24($sp)
/* 019D48 00419D48 8FA40020 */  lw          $a0, 0x20($sp)
/* 019D4C 00419D4C 0320F809 */  jalr        $t9
/* 019D50 00419D50 00000000 */   nop
/* 019D54 00419D54 8FAD0030 */  lw          $t5, 0x30($sp)
/* 019D58 00419D58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019D5C 00419D5C 00606025 */  move        $t4, $v1
/* 019D60 00419D60 A1AC0006 */  sb          $t4, 0x6($t5)
/* 019D64 00419D64 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019D68 00419D68 8FA50024 */  lw          $a1, 0x24($sp)
/* 019D6C 00419D6C 8FA40020 */  lw          $a0, 0x20($sp)
/* 019D70 00419D70 24060000 */  addiu       $a2, $zero, 0x0
/* 019D74 00419D74 0320F809 */  jalr        $t9
/* 019D78 00419D78 24070010 */   addiu      $a3, $zero, 0x10
/* 019D7C 00419D7C 8FAF0030 */  lw          $t7, 0x30($sp)
/* 019D80 00419D80 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019D84 00419D84 00607025 */  move        $t6, $v1
/* 019D88 00419D88 A1EE0005 */  sb          $t6, 0x5($t7)
/* 019D8C 00419D8C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019D90 00419D90 8FA50024 */  lw          $a1, 0x24($sp)
/* 019D94 00419D94 8FA40020 */  lw          $a0, 0x20($sp)
/* 019D98 00419D98 24060000 */  addiu       $a2, $zero, 0x0
/* 019D9C 00419D9C 0320F809 */  jalr        $t9
/* 019DA0 00419DA0 24070018 */   addiu      $a3, $zero, 0x18
/* 019DA4 00419DA4 8FB90030 */  lw          $t9, 0x30($sp)
/* 019DA8 00419DA8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019DAC 00419DAC 0060C025 */  move        $t8, $v1
/* 019DB0 00419DB0 A3380004 */  sb          $t8, 0x4($t9)
/* 019DB4 00419DB4 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019DB8 00419DB8 8FA50024 */  lw          $a1, 0x24($sp)
/* 019DBC 00419DBC 8FA40020 */  lw          $a0, 0x20($sp)
/* 019DC0 00419DC0 24060000 */  addiu       $a2, $zero, 0x0
/* 019DC4 00419DC4 0320F809 */  jalr        $t9
/* 019DC8 00419DC8 24070020 */   addiu      $a3, $zero, 0x20
/* 019DCC 00419DCC 8FA90030 */  lw          $t1, 0x30($sp)
/* 019DD0 00419DD0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019DD4 00419DD4 00604025 */  move        $t0, $v1
/* 019DD8 00419DD8 A1280003 */  sb          $t0, 0x3($t1)
/* 019DDC 00419DDC 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019DE0 00419DE0 8FA50024 */  lw          $a1, 0x24($sp)
/* 019DE4 00419DE4 8FA40020 */  lw          $a0, 0x20($sp)
/* 019DE8 00419DE8 24060000 */  addiu       $a2, $zero, 0x0
/* 019DEC 00419DEC 0320F809 */  jalr        $t9
/* 019DF0 00419DF0 24070028 */   addiu      $a3, $zero, 0x28
/* 019DF4 00419DF4 8FAB0030 */  lw          $t3, 0x30($sp)
/* 019DF8 00419DF8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019DFC 00419DFC 00605025 */  move        $t2, $v1
/* 019E00 00419E00 A16A0002 */  sb          $t2, 0x2($t3)
/* 019E04 00419E04 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019E08 00419E08 8FA50024 */  lw          $a1, 0x24($sp)
/* 019E0C 00419E0C 8FA40020 */  lw          $a0, 0x20($sp)
/* 019E10 00419E10 24060000 */  addiu       $a2, $zero, 0x0
/* 019E14 00419E14 0320F809 */  jalr        $t9
/* 019E18 00419E18 24070030 */   addiu      $a3, $zero, 0x30
/* 019E1C 00419E1C 8FAD0030 */  lw          $t5, 0x30($sp)
/* 019E20 00419E20 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019E24 00419E24 00606025 */  move        $t4, $v1
/* 019E28 00419E28 A1AC0001 */  sb          $t4, 0x1($t5)
/* 019E2C 00419E2C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019E30 00419E30 8FA50024 */  lw          $a1, 0x24($sp)
/* 019E34 00419E34 8FA40020 */  lw          $a0, 0x20($sp)
/* 019E38 00419E38 24060000 */  addiu       $a2, $zero, 0x0
/* 019E3C 00419E3C 0320F809 */  jalr        $t9
/* 019E40 00419E40 24070038 */   addiu      $a3, $zero, 0x38
/* 019E44 00419E44 8FAF0030 */  lw          $t7, 0x30($sp)
/* 019E48 00419E48 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019E4C 00419E4C 00607025 */  move        $t6, $v1
/* 019E50 00419E50 A1EE0000 */  sb          $t6, 0x0($t7)
/* 019E54 00419E54 8FA80034 */  lw          $t0, 0x34($sp)
/* 019E58 00419E58 8FB80030 */  lw          $t8, 0x30($sp)
/* 019E5C 00419E5C 25090008 */  addiu       $t1, $t0, 0x8
/* 019E60 00419E60 0130082B */  sltu        $at, $t1, $s0
/* 019E64 00419E64 27190008 */  addiu       $t9, $t8, 0x8
/* 019E68 00419E68 AFB90030 */  sw          $t9, 0x30($sp)
/* 019E6C 00419E6C 1420FFAA */  bnez        $at, .L00419D18
/* 019E70 00419E70 AFA90034 */   sw         $t1, 0x34($sp)
/* 019E74 00419E74 8FBF001C */  lw          $ra, 0x1C($sp)
/* 019E78 00419E78 8FB00014 */  lw          $s0, 0x14($sp)
/* 019E7C 00419E7C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 019E80 00419E80 03E00008 */  jr          $ra
/* 019E84 00419E84 00000000 */   nop
