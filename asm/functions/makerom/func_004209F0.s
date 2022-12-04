glabel func_004209F0 # 105
/* 0209F0 004209F0 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0209F4 004209F4 279C2370 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF2370
/* 0209F8 004209F8 0399E021 */  addu        $gp, $gp, $t9
/* 0209FC 004209FC 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 020A00 00420A00 AFA60080 */  sw          $a2, 0x80($sp)
/* 020A04 00420A04 8FAF0080 */  lw          $t7, 0x80($sp)
/* 020A08 00420A08 AFA40078 */  sw          $a0, 0x78($sp)
/* 020A0C 00420A0C 8FAE0078 */  lw          $t6, 0x78($sp)
/* 020A10 00420A10 AFA5007C */  sw          $a1, 0x7C($sp)
/* 020A14 00420A14 000FC0C0 */  sll         $t8, $t7, 3
/* 020A18 00420A18 8FA8007C */  lw          $t0, 0x7C($sp)
/* 020A1C 00420A1C 01D8C821 */  addu        $t9, $t6, $t8
/* 020A20 00420A20 AFB00018 */  sw          $s0, 0x18($sp)
/* 020A24 00420A24 AFB1001C */  sw          $s1, 0x1C($sp)
/* 020A28 00420A28 01C08025 */  move        $s0, $t6
/* 020A2C 00420A2C AFB90078 */  sw          $t9, 0x78($sp)
/* 020A30 00420A30 0219882B */  sltu        $s1, $s0, $t9
/* 020A34 00420A34 272AFFF8 */  addiu       $t2, $t9, -0x8
/* 020A38 00420A38 01184821 */  addu        $t1, $t0, $t8
/* 020A3C 00420A3C AFBF0024 */  sw          $ra, 0x24($sp)
/* 020A40 00420A40 AFBC0020 */  sw          $gp, 0x20($sp)
/* 020A44 00420A44 AFA9007C */  sw          $t1, 0x7C($sp)
/* 020A48 00420A48 12200086 */  beqz        $s1, .L00420C64
/* 020A4C 00420A4C AFAA0078 */   sw         $t2, 0x78($sp)
.L00420A50:
/* 020A50 00420A50 8FAB007C */  lw          $t3, 0x7C($sp)
/* 020A54 00420A54 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020A58 00420A58 24040000 */  addiu       $a0, $zero, 0x0
/* 020A5C 00420A5C 256CFFF8 */  addiu       $t4, $t3, -0x8
/* 020A60 00420A60 AFAC007C */  sw          $t4, 0x7C($sp)
/* 020A64 00420A64 918D0000 */  lbu         $t5, 0x0($t4)
/* 020A68 00420A68 24060000 */  addiu       $a2, $zero, 0x0
/* 020A6C 00420A6C 24070008 */  addiu       $a3, $zero, 0x8
/* 020A70 00420A70 0320F809 */  jalr        $t9
/* 020A74 00420A74 01A02825 */   move       $a1, $t5
/* 020A78 00420A78 8FAF007C */  lw          $t7, 0x7C($sp)
/* 020A7C 00420A7C AFA20028 */  sw          $v0, 0x28($sp)
/* 020A80 00420A80 AFA3002C */  sw          $v1, 0x2C($sp)
/* 020A84 00420A84 91EE0001 */  lbu         $t6, 0x1($t7)
/* 020A88 00420A88 8FB9002C */  lw          $t9, 0x2C($sp)
/* 020A8C 00420A8C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 020A90 00420A90 01C04825 */  move        $t1, $t6
/* 020A94 00420A94 01392821 */  addu        $a1, $t1, $t9
/* 020A98 00420A98 00B9082B */  sltu        $at, $a1, $t9
/* 020A9C 00420A9C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020AA0 00420AA0 8FB80028 */  lw          $t8, 0x28($sp)
/* 020AA4 00420AA4 000E47C3 */  sra         $t0, $t6, 31
/* 020AA8 00420AA8 00282021 */  addu        $a0, $at, $t0
/* 020AAC 00420AAC 24060000 */  addiu       $a2, $zero, 0x0
/* 020AB0 00420AB0 24070008 */  addiu       $a3, $zero, 0x8
/* 020AB4 00420AB4 0320F809 */  jalr        $t9
/* 020AB8 00420AB8 00982021 */   addu       $a0, $a0, $t8
/* 020ABC 00420ABC 8FAA007C */  lw          $t2, 0x7C($sp)
/* 020AC0 00420AC0 AFA20030 */  sw          $v0, 0x30($sp)
/* 020AC4 00420AC4 AFA30034 */  sw          $v1, 0x34($sp)
/* 020AC8 00420AC8 914B0002 */  lbu         $t3, 0x2($t2)
/* 020ACC 00420ACC 8FAF0034 */  lw          $t7, 0x34($sp)
/* 020AD0 00420AD0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 020AD4 00420AD4 01606825 */  move        $t5, $t3
/* 020AD8 00420AD8 01AF2821 */  addu        $a1, $t5, $t7
/* 020ADC 00420ADC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020AE0 00420AE0 8FAE0030 */  lw          $t6, 0x30($sp)
/* 020AE4 00420AE4 000B67C3 */  sra         $t4, $t3, 31
/* 020AE8 00420AE8 00AF082B */  sltu        $at, $a1, $t7
/* 020AEC 00420AEC 002C2021 */  addu        $a0, $at, $t4
/* 020AF0 00420AF0 24060000 */  addiu       $a2, $zero, 0x0
/* 020AF4 00420AF4 24070008 */  addiu       $a3, $zero, 0x8
/* 020AF8 00420AF8 0320F809 */  jalr        $t9
/* 020AFC 00420AFC 008E2021 */   addu       $a0, $a0, $t6
/* 020B00 00420B00 8FA8007C */  lw          $t0, 0x7C($sp)
/* 020B04 00420B04 AFA20038 */  sw          $v0, 0x38($sp)
/* 020B08 00420B08 AFA3003C */  sw          $v1, 0x3C($sp)
/* 020B0C 00420B0C 91090003 */  lbu         $t1, 0x3($t0)
/* 020B10 00420B10 8FAB003C */  lw          $t3, 0x3C($sp)
/* 020B14 00420B14 8FBC0020 */  lw          $gp, 0x20($sp)
/* 020B18 00420B18 0120C825 */  move        $t9, $t1
/* 020B1C 00420B1C 032B2821 */  addu        $a1, $t9, $t3
/* 020B20 00420B20 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020B24 00420B24 8FAA0038 */  lw          $t2, 0x38($sp)
/* 020B28 00420B28 0009C7C3 */  sra         $t8, $t1, 31
/* 020B2C 00420B2C 00AB082B */  sltu        $at, $a1, $t3
/* 020B30 00420B30 00382021 */  addu        $a0, $at, $t8
/* 020B34 00420B34 24060000 */  addiu       $a2, $zero, 0x0
/* 020B38 00420B38 24070008 */  addiu       $a3, $zero, 0x8
/* 020B3C 00420B3C 0320F809 */  jalr        $t9
/* 020B40 00420B40 008A2021 */   addu       $a0, $a0, $t2
/* 020B44 00420B44 8FAC007C */  lw          $t4, 0x7C($sp)
/* 020B48 00420B48 AFA20040 */  sw          $v0, 0x40($sp)
/* 020B4C 00420B4C AFA30044 */  sw          $v1, 0x44($sp)
/* 020B50 00420B50 918D0004 */  lbu         $t5, 0x4($t4)
/* 020B54 00420B54 8FA90044 */  lw          $t1, 0x44($sp)
/* 020B58 00420B58 8FBC0020 */  lw          $gp, 0x20($sp)
/* 020B5C 00420B5C 01A07825 */  move        $t7, $t5
/* 020B60 00420B60 01E92821 */  addu        $a1, $t7, $t1
/* 020B64 00420B64 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020B68 00420B68 8FA80040 */  lw          $t0, 0x40($sp)
/* 020B6C 00420B6C 000D77C3 */  sra         $t6, $t5, 31
/* 020B70 00420B70 00A9082B */  sltu        $at, $a1, $t1
/* 020B74 00420B74 002E2021 */  addu        $a0, $at, $t6
/* 020B78 00420B78 24060000 */  addiu       $a2, $zero, 0x0
/* 020B7C 00420B7C 24070008 */  addiu       $a3, $zero, 0x8
/* 020B80 00420B80 0320F809 */  jalr        $t9
/* 020B84 00420B84 00882021 */   addu       $a0, $a0, $t0
/* 020B88 00420B88 8FB8007C */  lw          $t8, 0x7C($sp)
/* 020B8C 00420B8C AFA20048 */  sw          $v0, 0x48($sp)
/* 020B90 00420B90 AFA3004C */  sw          $v1, 0x4C($sp)
/* 020B94 00420B94 93190005 */  lbu         $t9, 0x5($t8)
/* 020B98 00420B98 8FAD004C */  lw          $t5, 0x4C($sp)
/* 020B9C 00420B9C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 020BA0 00420BA0 03205825 */  move        $t3, $t9
/* 020BA4 00420BA4 001957C3 */  sra         $t2, $t9, 31
/* 020BA8 00420BA8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020BAC 00420BAC 016D2821 */  addu        $a1, $t3, $t5
/* 020BB0 00420BB0 8FAC0048 */  lw          $t4, 0x48($sp)
/* 020BB4 00420BB4 00AD082B */  sltu        $at, $a1, $t5
/* 020BB8 00420BB8 002A2021 */  addu        $a0, $at, $t2
/* 020BBC 00420BBC 24060000 */  addiu       $a2, $zero, 0x0
/* 020BC0 00420BC0 24070008 */  addiu       $a3, $zero, 0x8
/* 020BC4 00420BC4 0320F809 */  jalr        $t9
/* 020BC8 00420BC8 008C2021 */   addu       $a0, $a0, $t4
/* 020BCC 00420BCC 8FAE007C */  lw          $t6, 0x7C($sp)
/* 020BD0 00420BD0 AFA20050 */  sw          $v0, 0x50($sp)
/* 020BD4 00420BD4 AFA30054 */  sw          $v1, 0x54($sp)
/* 020BD8 00420BD8 91CF0006 */  lbu         $t7, 0x6($t6)
/* 020BDC 00420BDC 8FB90054 */  lw          $t9, 0x54($sp)
/* 020BE0 00420BE0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 020BE4 00420BE4 01E04825 */  move        $t1, $t7
/* 020BE8 00420BE8 01392821 */  addu        $a1, $t1, $t9
/* 020BEC 00420BEC 00B9082B */  sltu        $at, $a1, $t9
/* 020BF0 00420BF0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 020BF4 00420BF4 8FB80050 */  lw          $t8, 0x50($sp)
/* 020BF8 00420BF8 000F47C3 */  sra         $t0, $t7, 31
/* 020BFC 00420BFC 00282021 */  addu        $a0, $at, $t0
/* 020C00 00420C00 24060000 */  addiu       $a2, $zero, 0x0
/* 020C04 00420C04 24070008 */  addiu       $a3, $zero, 0x8
/* 020C08 00420C08 0320F809 */  jalr        $t9
/* 020C0C 00420C0C 00982021 */   addu       $a0, $a0, $t8
/* 020C10 00420C10 8FAA007C */  lw          $t2, 0x7C($sp)
/* 020C14 00420C14 AFA20058 */  sw          $v0, 0x58($sp)
/* 020C18 00420C18 AFA3005C */  sw          $v1, 0x5C($sp)
/* 020C1C 00420C1C 914B0007 */  lbu         $t3, 0x7($t2)
/* 020C20 00420C20 8FAF005C */  lw          $t7, 0x5C($sp)
/* 020C24 00420C24 8FAE0058 */  lw          $t6, 0x58($sp)
/* 020C28 00420C28 01606825 */  move        $t5, $t3
/* 020C2C 00420C2C 8FB80078 */  lw          $t8, 0x78($sp)
/* 020C30 00420C30 01AF4821 */  addu        $t1, $t5, $t7
/* 020C34 00420C34 000B67C3 */  sra         $t4, $t3, 31
/* 020C38 00420C38 012F082B */  sltu        $at, $t1, $t7
/* 020C3C 00420C3C 002C4021 */  addu        $t0, $at, $t4
/* 020C40 00420C40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 020C44 00420C44 010E4021 */  addu        $t0, $t0, $t6
/* 020C48 00420C48 AF080000 */  sw          $t0, 0x0($t8)
/* 020C4C 00420C4C AF090004 */  sw          $t1, 0x4($t8)
/* 020C50 00420C50 8FB90078 */  lw          $t9, 0x78($sp)
/* 020C54 00420C54 0219882B */  sltu        $s1, $s0, $t9
/* 020C58 00420C58 272AFFF8 */  addiu       $t2, $t9, -0x8
/* 020C5C 00420C5C 1620FF7C */  bnez        $s1, .L00420A50
/* 020C60 00420C60 AFAA0078 */   sw         $t2, 0x78($sp)
.L00420C64:
/* 020C64 00420C64 8FBF0024 */  lw          $ra, 0x24($sp)
/* 020C68 00420C68 8FB00018 */  lw          $s0, 0x18($sp)
/* 020C6C 00420C6C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 020C70 00420C70 03E00008 */  jr          $ra
/* 020C74 00420C74 27BD0078 */   addiu      $sp, $sp, 0x78
