glabel func_00414B98 # 55
/* 014B98 00414B98 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 014B9C 00414B9C 279CE1C8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBFE1C8
/* 014BA0 00414BA0 0399E021 */  addu        $gp, $gp, $t9
/* 014BA4 00414BA4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 014BA8 00414BA8 AFA60038 */  sw          $a2, 0x38($sp)
/* 014BAC 00414BAC 8FAE0038 */  lw          $t6, 0x38($sp)
/* 014BB0 00414BB0 AFA50034 */  sw          $a1, 0x34($sp)
/* 014BB4 00414BB4 8FB80034 */  lw          $t8, 0x34($sp)
/* 014BB8 00414BB8 AFB00014 */  sw          $s0, 0x14($sp)
/* 014BBC 00414BBC 000E78C0 */  sll         $t7, $t6, 3
/* 014BC0 00414BC0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 014BC4 00414BC4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 014BC8 00414BC8 AFA40030 */  sw          $a0, 0x30($sp)
/* 014BCC 00414BCC 01F88021 */  addu        $s0, $t7, $t8
.L00414BD0:
/* 014BD0 00414BD0 8FB90034 */  lw          $t9, 0x34($sp)
/* 014BD4 00414BD4 8FAB0030 */  lw          $t3, 0x30($sp)
/* 014BD8 00414BD8 24060000 */  addiu       $a2, $zero, 0x0
/* 014BDC 00414BDC 8F290004 */  lw          $t1, 0x4($t9)
/* 014BE0 00414BE0 8F280000 */  lw          $t0, 0x0($t9)
/* 014BE4 00414BE4 24070008 */  addiu       $a3, $zero, 0x8
/* 014BE8 00414BE8 AFA90024 */  sw          $t1, 0x24($sp)
/* 014BEC 00414BEC 01205025 */  move        $t2, $t1
/* 014BF0 00414BF0 AFA80020 */  sw          $t0, 0x20($sp)
/* 014BF4 00414BF4 A16A0000 */  sb          $t2, 0x0($t3)
/* 014BF8 00414BF8 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014BFC 00414BFC 8FA50024 */  lw          $a1, 0x24($sp)
/* 014C00 00414C00 8FA40020 */  lw          $a0, 0x20($sp)
/* 014C04 00414C04 0320F809 */  jalr        $t9
/* 014C08 00414C08 00000000 */   nop
/* 014C0C 00414C0C 8FAD0030 */  lw          $t5, 0x30($sp)
/* 014C10 00414C10 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014C14 00414C14 00606025 */  move        $t4, $v1
/* 014C18 00414C18 A1AC0001 */  sb          $t4, 0x1($t5)
/* 014C1C 00414C1C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014C20 00414C20 8FA50024 */  lw          $a1, 0x24($sp)
/* 014C24 00414C24 8FA40020 */  lw          $a0, 0x20($sp)
/* 014C28 00414C28 24060000 */  addiu       $a2, $zero, 0x0
/* 014C2C 00414C2C 0320F809 */  jalr        $t9
/* 014C30 00414C30 24070010 */   addiu      $a3, $zero, 0x10
/* 014C34 00414C34 8FAF0030 */  lw          $t7, 0x30($sp)
/* 014C38 00414C38 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014C3C 00414C3C 00607025 */  move        $t6, $v1
/* 014C40 00414C40 A1EE0002 */  sb          $t6, 0x2($t7)
/* 014C44 00414C44 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014C48 00414C48 8FA50024 */  lw          $a1, 0x24($sp)
/* 014C4C 00414C4C 8FA40020 */  lw          $a0, 0x20($sp)
/* 014C50 00414C50 24060000 */  addiu       $a2, $zero, 0x0
/* 014C54 00414C54 0320F809 */  jalr        $t9
/* 014C58 00414C58 24070018 */   addiu      $a3, $zero, 0x18
/* 014C5C 00414C5C 8FB90030 */  lw          $t9, 0x30($sp)
/* 014C60 00414C60 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014C64 00414C64 0060C025 */  move        $t8, $v1
/* 014C68 00414C68 A3380003 */  sb          $t8, 0x3($t9)
/* 014C6C 00414C6C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014C70 00414C70 8FA50024 */  lw          $a1, 0x24($sp)
/* 014C74 00414C74 8FA40020 */  lw          $a0, 0x20($sp)
/* 014C78 00414C78 24060000 */  addiu       $a2, $zero, 0x0
/* 014C7C 00414C7C 0320F809 */  jalr        $t9
/* 014C80 00414C80 24070020 */   addiu      $a3, $zero, 0x20
/* 014C84 00414C84 8FA90030 */  lw          $t1, 0x30($sp)
/* 014C88 00414C88 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014C8C 00414C8C 00604025 */  move        $t0, $v1
/* 014C90 00414C90 A1280004 */  sb          $t0, 0x4($t1)
/* 014C94 00414C94 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014C98 00414C98 8FA50024 */  lw          $a1, 0x24($sp)
/* 014C9C 00414C9C 8FA40020 */  lw          $a0, 0x20($sp)
/* 014CA0 00414CA0 24060000 */  addiu       $a2, $zero, 0x0
/* 014CA4 00414CA4 0320F809 */  jalr        $t9
/* 014CA8 00414CA8 24070028 */   addiu      $a3, $zero, 0x28
/* 014CAC 00414CAC 8FAB0030 */  lw          $t3, 0x30($sp)
/* 014CB0 00414CB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014CB4 00414CB4 00605025 */  move        $t2, $v1
/* 014CB8 00414CB8 A16A0005 */  sb          $t2, 0x5($t3)
/* 014CBC 00414CBC 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014CC0 00414CC0 8FA50024 */  lw          $a1, 0x24($sp)
/* 014CC4 00414CC4 8FA40020 */  lw          $a0, 0x20($sp)
/* 014CC8 00414CC8 24060000 */  addiu       $a2, $zero, 0x0
/* 014CCC 00414CCC 0320F809 */  jalr        $t9
/* 014CD0 00414CD0 24070030 */   addiu      $a3, $zero, 0x30
/* 014CD4 00414CD4 8FAD0030 */  lw          $t5, 0x30($sp)
/* 014CD8 00414CD8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014CDC 00414CDC 00606025 */  move        $t4, $v1
/* 014CE0 00414CE0 A1AC0006 */  sb          $t4, 0x6($t5)
/* 014CE4 00414CE4 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 014CE8 00414CE8 8FA50024 */  lw          $a1, 0x24($sp)
/* 014CEC 00414CEC 8FA40020 */  lw          $a0, 0x20($sp)
/* 014CF0 00414CF0 24060000 */  addiu       $a2, $zero, 0x0
/* 014CF4 00414CF4 0320F809 */  jalr        $t9
/* 014CF8 00414CF8 24070038 */   addiu      $a3, $zero, 0x38
/* 014CFC 00414CFC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 014D00 00414D00 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014D04 00414D04 00607025 */  move        $t6, $v1
/* 014D08 00414D08 A1EE0007 */  sb          $t6, 0x7($t7)
/* 014D0C 00414D0C 8FA80034 */  lw          $t0, 0x34($sp)
/* 014D10 00414D10 8FB80030 */  lw          $t8, 0x30($sp)
/* 014D14 00414D14 25090008 */  addiu       $t1, $t0, 0x8
/* 014D18 00414D18 0130082B */  sltu        $at, $t1, $s0
/* 014D1C 00414D1C 27190008 */  addiu       $t9, $t8, 0x8
/* 014D20 00414D20 AFB90030 */  sw          $t9, 0x30($sp)
/* 014D24 00414D24 1420FFAA */  bnez        $at, .L00414BD0
/* 014D28 00414D28 AFA90034 */   sw         $t1, 0x34($sp)
/* 014D2C 00414D2C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 014D30 00414D30 8FB00014 */  lw          $s0, 0x14($sp)
/* 014D34 00414D34 27BD0030 */  addiu       $sp, $sp, 0x30
/* 014D38 00414D38 03E00008 */  jr          $ra
/* 014D3C 00414D3C 00000000 */   nop
