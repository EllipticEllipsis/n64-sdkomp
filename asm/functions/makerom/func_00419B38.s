glabel func_00419B38 # 82
/* 019B38 00419B38 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 019B3C 00419B3C 279C9228 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF9228
/* 019B40 00419B40 0399E021 */  addu        $gp, $gp, $t9
/* 019B44 00419B44 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 019B48 00419B48 AFA60038 */  sw          $a2, 0x38($sp)
/* 019B4C 00419B4C 8FAE0038 */  lw          $t6, 0x38($sp)
/* 019B50 00419B50 AFA50034 */  sw          $a1, 0x34($sp)
/* 019B54 00419B54 8FB80034 */  lw          $t8, 0x34($sp)
/* 019B58 00419B58 AFB00014 */  sw          $s0, 0x14($sp)
/* 019B5C 00419B5C 000E78C0 */  sll         $t7, $t6, 3
/* 019B60 00419B60 AFBF001C */  sw          $ra, 0x1C($sp)
/* 019B64 00419B64 AFBC0018 */  sw          $gp, 0x18($sp)
/* 019B68 00419B68 AFA40030 */  sw          $a0, 0x30($sp)
/* 019B6C 00419B6C 01F88021 */  addu        $s0, $t7, $t8
.L00419B70:
/* 019B70 00419B70 8FB90034 */  lw          $t9, 0x34($sp)
/* 019B74 00419B74 8FAB0030 */  lw          $t3, 0x30($sp)
/* 019B78 00419B78 24060000 */  addiu       $a2, $zero, 0x0
/* 019B7C 00419B7C 8F290004 */  lw          $t1, 0x4($t9)
/* 019B80 00419B80 8F280000 */  lw          $t0, 0x0($t9)
/* 019B84 00419B84 24070008 */  addiu       $a3, $zero, 0x8
/* 019B88 00419B88 AFA90024 */  sw          $t1, 0x24($sp)
/* 019B8C 00419B8C 01205025 */  move        $t2, $t1
/* 019B90 00419B90 AFA80020 */  sw          $t0, 0x20($sp)
/* 019B94 00419B94 A16A0000 */  sb          $t2, 0x0($t3)
/* 019B98 00419B98 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019B9C 00419B9C 8FA50024 */  lw          $a1, 0x24($sp)
/* 019BA0 00419BA0 8FA40020 */  lw          $a0, 0x20($sp)
/* 019BA4 00419BA4 0320F809 */  jalr        $t9
/* 019BA8 00419BA8 00000000 */   nop
/* 019BAC 00419BAC 8FAD0030 */  lw          $t5, 0x30($sp)
/* 019BB0 00419BB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019BB4 00419BB4 00606025 */  move        $t4, $v1
/* 019BB8 00419BB8 A1AC0001 */  sb          $t4, 0x1($t5)
/* 019BBC 00419BBC 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019BC0 00419BC0 8FA50024 */  lw          $a1, 0x24($sp)
/* 019BC4 00419BC4 8FA40020 */  lw          $a0, 0x20($sp)
/* 019BC8 00419BC8 24060000 */  addiu       $a2, $zero, 0x0
/* 019BCC 00419BCC 0320F809 */  jalr        $t9
/* 019BD0 00419BD0 24070010 */   addiu      $a3, $zero, 0x10
/* 019BD4 00419BD4 8FAF0030 */  lw          $t7, 0x30($sp)
/* 019BD8 00419BD8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019BDC 00419BDC 00607025 */  move        $t6, $v1
/* 019BE0 00419BE0 A1EE0002 */  sb          $t6, 0x2($t7)
/* 019BE4 00419BE4 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019BE8 00419BE8 8FA50024 */  lw          $a1, 0x24($sp)
/* 019BEC 00419BEC 8FA40020 */  lw          $a0, 0x20($sp)
/* 019BF0 00419BF0 24060000 */  addiu       $a2, $zero, 0x0
/* 019BF4 00419BF4 0320F809 */  jalr        $t9
/* 019BF8 00419BF8 24070018 */   addiu      $a3, $zero, 0x18
/* 019BFC 00419BFC 8FB90030 */  lw          $t9, 0x30($sp)
/* 019C00 00419C00 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019C04 00419C04 0060C025 */  move        $t8, $v1
/* 019C08 00419C08 A3380003 */  sb          $t8, 0x3($t9)
/* 019C0C 00419C0C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019C10 00419C10 8FA50024 */  lw          $a1, 0x24($sp)
/* 019C14 00419C14 8FA40020 */  lw          $a0, 0x20($sp)
/* 019C18 00419C18 24060000 */  addiu       $a2, $zero, 0x0
/* 019C1C 00419C1C 0320F809 */  jalr        $t9
/* 019C20 00419C20 24070020 */   addiu      $a3, $zero, 0x20
/* 019C24 00419C24 8FA90030 */  lw          $t1, 0x30($sp)
/* 019C28 00419C28 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019C2C 00419C2C 00604025 */  move        $t0, $v1
/* 019C30 00419C30 A1280004 */  sb          $t0, 0x4($t1)
/* 019C34 00419C34 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019C38 00419C38 8FA50024 */  lw          $a1, 0x24($sp)
/* 019C3C 00419C3C 8FA40020 */  lw          $a0, 0x20($sp)
/* 019C40 00419C40 24060000 */  addiu       $a2, $zero, 0x0
/* 019C44 00419C44 0320F809 */  jalr        $t9
/* 019C48 00419C48 24070028 */   addiu      $a3, $zero, 0x28
/* 019C4C 00419C4C 8FAB0030 */  lw          $t3, 0x30($sp)
/* 019C50 00419C50 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019C54 00419C54 00605025 */  move        $t2, $v1
/* 019C58 00419C58 A16A0005 */  sb          $t2, 0x5($t3)
/* 019C5C 00419C5C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019C60 00419C60 8FA50024 */  lw          $a1, 0x24($sp)
/* 019C64 00419C64 8FA40020 */  lw          $a0, 0x20($sp)
/* 019C68 00419C68 24060000 */  addiu       $a2, $zero, 0x0
/* 019C6C 00419C6C 0320F809 */  jalr        $t9
/* 019C70 00419C70 24070030 */   addiu      $a3, $zero, 0x30
/* 019C74 00419C74 8FAD0030 */  lw          $t5, 0x30($sp)
/* 019C78 00419C78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019C7C 00419C7C 00606025 */  move        $t4, $v1
/* 019C80 00419C80 A1AC0006 */  sb          $t4, 0x6($t5)
/* 019C84 00419C84 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 019C88 00419C88 8FA50024 */  lw          $a1, 0x24($sp)
/* 019C8C 00419C8C 8FA40020 */  lw          $a0, 0x20($sp)
/* 019C90 00419C90 24060000 */  addiu       $a2, $zero, 0x0
/* 019C94 00419C94 0320F809 */  jalr        $t9
/* 019C98 00419C98 24070038 */   addiu      $a3, $zero, 0x38
/* 019C9C 00419C9C 8FAF0030 */  lw          $t7, 0x30($sp)
/* 019CA0 00419CA0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 019CA4 00419CA4 00607025 */  move        $t6, $v1
/* 019CA8 00419CA8 A1EE0007 */  sb          $t6, 0x7($t7)
/* 019CAC 00419CAC 8FA80034 */  lw          $t0, 0x34($sp)
/* 019CB0 00419CB0 8FB80030 */  lw          $t8, 0x30($sp)
/* 019CB4 00419CB4 25090008 */  addiu       $t1, $t0, 0x8
/* 019CB8 00419CB8 0130082B */  sltu        $at, $t1, $s0
/* 019CBC 00419CBC 27190008 */  addiu       $t9, $t8, 0x8
/* 019CC0 00419CC0 AFB90030 */  sw          $t9, 0x30($sp)
/* 019CC4 00419CC4 1420FFAA */  bnez        $at, .L00419B70
/* 019CC8 00419CC8 AFA90034 */   sw         $t1, 0x34($sp)
/* 019CCC 00419CCC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 019CD0 00419CD0 8FB00014 */  lw          $s0, 0x14($sp)
/* 019CD4 00419CD4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 019CD8 00419CD8 03E00008 */  jr          $ra
/* 019CDC 00419CDC 00000000 */   nop
