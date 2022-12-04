glabel func_004219E0 # 111
/* 0219E0 004219E0 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0219E4 004219E4 279C1380 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF1380
/* 0219E8 004219E8 0399E021 */  addu        $gp, $gp, $t9
/* 0219EC 004219EC 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 0219F0 004219F0 AFA60070 */  sw          $a2, 0x70($sp)
/* 0219F4 004219F4 8FAF0070 */  lw          $t7, 0x70($sp)
/* 0219F8 004219F8 AFA40068 */  sw          $a0, 0x68($sp)
/* 0219FC 004219FC 8FAE0068 */  lw          $t6, 0x68($sp)
/* 021A00 00421A00 AFA5006C */  sw          $a1, 0x6C($sp)
/* 021A04 00421A04 000FC0C0 */  sll         $t8, $t7, 3
/* 021A08 00421A08 8FA8006C */  lw          $t0, 0x6C($sp)
/* 021A0C 00421A0C 01D8C821 */  addu        $t9, $t6, $t8
/* 021A10 00421A10 AFB00018 */  sw          $s0, 0x18($sp)
/* 021A14 00421A14 AFB1001C */  sw          $s1, 0x1C($sp)
/* 021A18 00421A18 01C08025 */  move        $s0, $t6
/* 021A1C 00421A1C AFB90068 */  sw          $t9, 0x68($sp)
/* 021A20 00421A20 0219882B */  sltu        $s1, $s0, $t9
/* 021A24 00421A24 272AFFF8 */  addiu       $t2, $t9, -0x8
/* 021A28 00421A28 01184821 */  addu        $t1, $t0, $t8
/* 021A2C 00421A2C AFBF0024 */  sw          $ra, 0x24($sp)
/* 021A30 00421A30 AFBC0020 */  sw          $gp, 0x20($sp)
/* 021A34 00421A34 AFA9006C */  sw          $t1, 0x6C($sp)
/* 021A38 00421A38 12200086 */  beqz        $s1, .L00421C54
/* 021A3C 00421A3C AFAA0068 */   sw         $t2, 0x68($sp)
.L00421A40:
/* 021A40 00421A40 8FAB006C */  lw          $t3, 0x6C($sp)
/* 021A44 00421A44 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 021A48 00421A48 24040000 */  addiu       $a0, $zero, 0x0
/* 021A4C 00421A4C 256CFFF8 */  addiu       $t4, $t3, -0x8
/* 021A50 00421A50 AFAC006C */  sw          $t4, 0x6C($sp)
/* 021A54 00421A54 918D0000 */  lbu         $t5, 0x0($t4)
/* 021A58 00421A58 24060000 */  addiu       $a2, $zero, 0x0
/* 021A5C 00421A5C 24070008 */  addiu       $a3, $zero, 0x8
/* 021A60 00421A60 0320F809 */  jalr        $t9
/* 021A64 00421A64 01A02825 */   move       $a1, $t5
/* 021A68 00421A68 8FAF006C */  lw          $t7, 0x6C($sp)
/* 021A6C 00421A6C AFA20028 */  sw          $v0, 0x28($sp)
/* 021A70 00421A70 AFA3002C */  sw          $v1, 0x2C($sp)
/* 021A74 00421A74 91EE0001 */  lbu         $t6, 0x1($t7)
/* 021A78 00421A78 8FB9002C */  lw          $t9, 0x2C($sp)
/* 021A7C 00421A7C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 021A80 00421A80 01C04825 */  move        $t1, $t6
/* 021A84 00421A84 01392821 */  addu        $a1, $t1, $t9
/* 021A88 00421A88 00B9082B */  sltu        $at, $a1, $t9
/* 021A8C 00421A8C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 021A90 00421A90 8FB80028 */  lw          $t8, 0x28($sp)
/* 021A94 00421A94 000E47C3 */  sra         $t0, $t6, 31
/* 021A98 00421A98 00282021 */  addu        $a0, $at, $t0
/* 021A9C 00421A9C 24060000 */  addiu       $a2, $zero, 0x0
/* 021AA0 00421AA0 24070008 */  addiu       $a3, $zero, 0x8
/* 021AA4 00421AA4 0320F809 */  jalr        $t9
/* 021AA8 00421AA8 00982021 */   addu       $a0, $a0, $t8
/* 021AAC 00421AAC 8FAA006C */  lw          $t2, 0x6C($sp)
/* 021AB0 00421AB0 AFA20030 */  sw          $v0, 0x30($sp)
/* 021AB4 00421AB4 AFA30034 */  sw          $v1, 0x34($sp)
/* 021AB8 00421AB8 914B0002 */  lbu         $t3, 0x2($t2)
/* 021ABC 00421ABC 8FAF0034 */  lw          $t7, 0x34($sp)
/* 021AC0 00421AC0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 021AC4 00421AC4 01606825 */  move        $t5, $t3
/* 021AC8 00421AC8 01AF2821 */  addu        $a1, $t5, $t7
/* 021ACC 00421ACC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 021AD0 00421AD0 8FAE0030 */  lw          $t6, 0x30($sp)
/* 021AD4 00421AD4 000B67C3 */  sra         $t4, $t3, 31
/* 021AD8 00421AD8 00AF082B */  sltu        $at, $a1, $t7
/* 021ADC 00421ADC 002C2021 */  addu        $a0, $at, $t4
/* 021AE0 00421AE0 24060000 */  addiu       $a2, $zero, 0x0
/* 021AE4 00421AE4 24070008 */  addiu       $a3, $zero, 0x8
/* 021AE8 00421AE8 0320F809 */  jalr        $t9
/* 021AEC 00421AEC 008E2021 */   addu       $a0, $a0, $t6
/* 021AF0 00421AF0 8FA8006C */  lw          $t0, 0x6C($sp)
/* 021AF4 00421AF4 AFA20038 */  sw          $v0, 0x38($sp)
/* 021AF8 00421AF8 AFA3003C */  sw          $v1, 0x3C($sp)
/* 021AFC 00421AFC 91090003 */  lbu         $t1, 0x3($t0)
/* 021B00 00421B00 8FAB003C */  lw          $t3, 0x3C($sp)
/* 021B04 00421B04 8FBC0020 */  lw          $gp, 0x20($sp)
/* 021B08 00421B08 0120C825 */  move        $t9, $t1
/* 021B0C 00421B0C 032B2821 */  addu        $a1, $t9, $t3
/* 021B10 00421B10 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 021B14 00421B14 8FAA0038 */  lw          $t2, 0x38($sp)
/* 021B18 00421B18 0009C7C3 */  sra         $t8, $t1, 31
/* 021B1C 00421B1C 00AB082B */  sltu        $at, $a1, $t3
/* 021B20 00421B20 00382021 */  addu        $a0, $at, $t8
/* 021B24 00421B24 24060000 */  addiu       $a2, $zero, 0x0
/* 021B28 00421B28 24070008 */  addiu       $a3, $zero, 0x8
/* 021B2C 00421B2C 0320F809 */  jalr        $t9
/* 021B30 00421B30 008A2021 */   addu       $a0, $a0, $t2
/* 021B34 00421B34 8FAC006C */  lw          $t4, 0x6C($sp)
/* 021B38 00421B38 AFA20040 */  sw          $v0, 0x40($sp)
/* 021B3C 00421B3C AFA30044 */  sw          $v1, 0x44($sp)
/* 021B40 00421B40 918D0004 */  lbu         $t5, 0x4($t4)
/* 021B44 00421B44 8FA90044 */  lw          $t1, 0x44($sp)
/* 021B48 00421B48 8FBC0020 */  lw          $gp, 0x20($sp)
/* 021B4C 00421B4C 01A07825 */  move        $t7, $t5
/* 021B50 00421B50 01E92821 */  addu        $a1, $t7, $t1
/* 021B54 00421B54 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 021B58 00421B58 8FA80040 */  lw          $t0, 0x40($sp)
/* 021B5C 00421B5C 000D77C3 */  sra         $t6, $t5, 31
/* 021B60 00421B60 00A9082B */  sltu        $at, $a1, $t1
/* 021B64 00421B64 002E2021 */  addu        $a0, $at, $t6
/* 021B68 00421B68 24060000 */  addiu       $a2, $zero, 0x0
/* 021B6C 00421B6C 24070008 */  addiu       $a3, $zero, 0x8
/* 021B70 00421B70 0320F809 */  jalr        $t9
/* 021B74 00421B74 00882021 */   addu       $a0, $a0, $t0
/* 021B78 00421B78 8FB8006C */  lw          $t8, 0x6C($sp)
/* 021B7C 00421B7C AFA20048 */  sw          $v0, 0x48($sp)
/* 021B80 00421B80 AFA3004C */  sw          $v1, 0x4C($sp)
/* 021B84 00421B84 93190005 */  lbu         $t9, 0x5($t8)
/* 021B88 00421B88 8FAD004C */  lw          $t5, 0x4C($sp)
/* 021B8C 00421B8C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 021B90 00421B90 03205825 */  move        $t3, $t9
/* 021B94 00421B94 001957C3 */  sra         $t2, $t9, 31
/* 021B98 00421B98 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 021B9C 00421B9C 016D2821 */  addu        $a1, $t3, $t5
/* 021BA0 00421BA0 8FAC0048 */  lw          $t4, 0x48($sp)
/* 021BA4 00421BA4 00AD082B */  sltu        $at, $a1, $t5
/* 021BA8 00421BA8 002A2021 */  addu        $a0, $at, $t2
/* 021BAC 00421BAC 24060000 */  addiu       $a2, $zero, 0x0
/* 021BB0 00421BB0 24070008 */  addiu       $a3, $zero, 0x8
/* 021BB4 00421BB4 0320F809 */  jalr        $t9
/* 021BB8 00421BB8 008C2021 */   addu       $a0, $a0, $t4
/* 021BBC 00421BBC 8FAE006C */  lw          $t6, 0x6C($sp)
/* 021BC0 00421BC0 AFA20050 */  sw          $v0, 0x50($sp)
/* 021BC4 00421BC4 AFA30054 */  sw          $v1, 0x54($sp)
/* 021BC8 00421BC8 91CF0006 */  lbu         $t7, 0x6($t6)
/* 021BCC 00421BCC 8FB90054 */  lw          $t9, 0x54($sp)
/* 021BD0 00421BD0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 021BD4 00421BD4 01E04825 */  move        $t1, $t7
/* 021BD8 00421BD8 01392821 */  addu        $a1, $t1, $t9
/* 021BDC 00421BDC 00B9082B */  sltu        $at, $a1, $t9
/* 021BE0 00421BE0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 021BE4 00421BE4 8FB80050 */  lw          $t8, 0x50($sp)
/* 021BE8 00421BE8 000F47C3 */  sra         $t0, $t7, 31
/* 021BEC 00421BEC 00282021 */  addu        $a0, $at, $t0
/* 021BF0 00421BF0 24060000 */  addiu       $a2, $zero, 0x0
/* 021BF4 00421BF4 24070008 */  addiu       $a3, $zero, 0x8
/* 021BF8 00421BF8 0320F809 */  jalr        $t9
/* 021BFC 00421BFC 00982021 */   addu       $a0, $a0, $t8
/* 021C00 00421C00 8FAA006C */  lw          $t2, 0x6C($sp)
/* 021C04 00421C04 AFA20058 */  sw          $v0, 0x58($sp)
/* 021C08 00421C08 AFA3005C */  sw          $v1, 0x5C($sp)
/* 021C0C 00421C0C 914B0007 */  lbu         $t3, 0x7($t2)
/* 021C10 00421C10 8FAF005C */  lw          $t7, 0x5C($sp)
/* 021C14 00421C14 8FAE0058 */  lw          $t6, 0x58($sp)
/* 021C18 00421C18 01606825 */  move        $t5, $t3
/* 021C1C 00421C1C 8FB80068 */  lw          $t8, 0x68($sp)
/* 021C20 00421C20 01AF4821 */  addu        $t1, $t5, $t7
/* 021C24 00421C24 000B67C3 */  sra         $t4, $t3, 31
/* 021C28 00421C28 012F082B */  sltu        $at, $t1, $t7
/* 021C2C 00421C2C 002C4021 */  addu        $t0, $at, $t4
/* 021C30 00421C30 8FBC0020 */  lw          $gp, 0x20($sp)
/* 021C34 00421C34 010E4021 */  addu        $t0, $t0, $t6
/* 021C38 00421C38 AF080000 */  sw          $t0, 0x0($t8)
/* 021C3C 00421C3C AF090004 */  sw          $t1, 0x4($t8)
/* 021C40 00421C40 8FB90068 */  lw          $t9, 0x68($sp)
/* 021C44 00421C44 0219882B */  sltu        $s1, $s0, $t9
/* 021C48 00421C48 272AFFF8 */  addiu       $t2, $t9, -0x8
/* 021C4C 00421C4C 1620FF7C */  bnez        $s1, .L00421A40
/* 021C50 00421C50 AFAA0068 */   sw         $t2, 0x68($sp)
.L00421C54:
/* 021C54 00421C54 8FBF0024 */  lw          $ra, 0x24($sp)
/* 021C58 00421C58 8FB00018 */  lw          $s0, 0x18($sp)
/* 021C5C 00421C5C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 021C60 00421C60 03E00008 */  jr          $ra
/* 021C64 00421C64 27BD0068 */   addiu      $sp, $sp, 0x68
/* 021C68 00421C68 00000000 */  nop
/* 021C6C 00421C6C 00000000 */  nop
