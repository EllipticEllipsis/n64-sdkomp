glabel func_0041A110 # 85
/* 01A110 0041A110 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 01A114 0041A114 279C8C50 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF8C50
/* 01A118 0041A118 0399E021 */  addu        $gp, $gp, $t9
/* 01A11C 0041A11C 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 01A120 0041A120 AFA60070 */  sw          $a2, 0x70($sp)
/* 01A124 0041A124 8FAF0070 */  lw          $t7, 0x70($sp)
/* 01A128 0041A128 AFA40068 */  sw          $a0, 0x68($sp)
/* 01A12C 0041A12C 8FAE0068 */  lw          $t6, 0x68($sp)
/* 01A130 0041A130 AFA5006C */  sw          $a1, 0x6C($sp)
/* 01A134 0041A134 000FC0C0 */  sll         $t8, $t7, 3
/* 01A138 0041A138 8FA8006C */  lw          $t0, 0x6C($sp)
/* 01A13C 0041A13C 01D8C821 */  addu        $t9, $t6, $t8
/* 01A140 0041A140 AFB00018 */  sw          $s0, 0x18($sp)
/* 01A144 0041A144 AFB1001C */  sw          $s1, 0x1C($sp)
/* 01A148 0041A148 01C08025 */  move        $s0, $t6
/* 01A14C 0041A14C AFB90068 */  sw          $t9, 0x68($sp)
/* 01A150 0041A150 0219882B */  sltu        $s1, $s0, $t9
/* 01A154 0041A154 272AFFF8 */  addiu       $t2, $t9, -0x8
/* 01A158 0041A158 01184821 */  addu        $t1, $t0, $t8
/* 01A15C 0041A15C AFBF0024 */  sw          $ra, 0x24($sp)
/* 01A160 0041A160 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01A164 0041A164 AFA9006C */  sw          $t1, 0x6C($sp)
/* 01A168 0041A168 12200086 */  beqz        $s1, .L0041A384
/* 01A16C 0041A16C AFAA0068 */   sw         $t2, 0x68($sp)
.L0041A170:
/* 01A170 0041A170 8FAB006C */  lw          $t3, 0x6C($sp)
/* 01A174 0041A174 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A178 0041A178 24040000 */  addiu       $a0, $zero, 0x0
/* 01A17C 0041A17C 256CFFF8 */  addiu       $t4, $t3, -0x8
/* 01A180 0041A180 AFAC006C */  sw          $t4, 0x6C($sp)
/* 01A184 0041A184 918D0000 */  lbu         $t5, 0x0($t4)
/* 01A188 0041A188 24060000 */  addiu       $a2, $zero, 0x0
/* 01A18C 0041A18C 24070008 */  addiu       $a3, $zero, 0x8
/* 01A190 0041A190 0320F809 */  jalr        $t9
/* 01A194 0041A194 01A02825 */   move       $a1, $t5
/* 01A198 0041A198 8FAF006C */  lw          $t7, 0x6C($sp)
/* 01A19C 0041A19C AFA20028 */  sw          $v0, 0x28($sp)
/* 01A1A0 0041A1A0 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01A1A4 0041A1A4 91EE0001 */  lbu         $t6, 0x1($t7)
/* 01A1A8 0041A1A8 8FB9002C */  lw          $t9, 0x2C($sp)
/* 01A1AC 0041A1AC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A1B0 0041A1B0 01C04825 */  move        $t1, $t6
/* 01A1B4 0041A1B4 01392821 */  addu        $a1, $t1, $t9
/* 01A1B8 0041A1B8 00B9082B */  sltu        $at, $a1, $t9
/* 01A1BC 0041A1BC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A1C0 0041A1C0 8FB80028 */  lw          $t8, 0x28($sp)
/* 01A1C4 0041A1C4 000E47C3 */  sra         $t0, $t6, 31
/* 01A1C8 0041A1C8 00282021 */  addu        $a0, $at, $t0
/* 01A1CC 0041A1CC 24060000 */  addiu       $a2, $zero, 0x0
/* 01A1D0 0041A1D0 24070008 */  addiu       $a3, $zero, 0x8
/* 01A1D4 0041A1D4 0320F809 */  jalr        $t9
/* 01A1D8 0041A1D8 00982021 */   addu       $a0, $a0, $t8
/* 01A1DC 0041A1DC 8FAA006C */  lw          $t2, 0x6C($sp)
/* 01A1E0 0041A1E0 AFA20030 */  sw          $v0, 0x30($sp)
/* 01A1E4 0041A1E4 AFA30034 */  sw          $v1, 0x34($sp)
/* 01A1E8 0041A1E8 914B0002 */  lbu         $t3, 0x2($t2)
/* 01A1EC 0041A1EC 8FAF0034 */  lw          $t7, 0x34($sp)
/* 01A1F0 0041A1F0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A1F4 0041A1F4 01606825 */  move        $t5, $t3
/* 01A1F8 0041A1F8 01AF2821 */  addu        $a1, $t5, $t7
/* 01A1FC 0041A1FC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A200 0041A200 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01A204 0041A204 000B67C3 */  sra         $t4, $t3, 31
/* 01A208 0041A208 00AF082B */  sltu        $at, $a1, $t7
/* 01A20C 0041A20C 002C2021 */  addu        $a0, $at, $t4
/* 01A210 0041A210 24060000 */  addiu       $a2, $zero, 0x0
/* 01A214 0041A214 24070008 */  addiu       $a3, $zero, 0x8
/* 01A218 0041A218 0320F809 */  jalr        $t9
/* 01A21C 0041A21C 008E2021 */   addu       $a0, $a0, $t6
/* 01A220 0041A220 8FA8006C */  lw          $t0, 0x6C($sp)
/* 01A224 0041A224 AFA20038 */  sw          $v0, 0x38($sp)
/* 01A228 0041A228 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01A22C 0041A22C 91090003 */  lbu         $t1, 0x3($t0)
/* 01A230 0041A230 8FAB003C */  lw          $t3, 0x3C($sp)
/* 01A234 0041A234 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A238 0041A238 0120C825 */  move        $t9, $t1
/* 01A23C 0041A23C 032B2821 */  addu        $a1, $t9, $t3
/* 01A240 0041A240 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A244 0041A244 8FAA0038 */  lw          $t2, 0x38($sp)
/* 01A248 0041A248 0009C7C3 */  sra         $t8, $t1, 31
/* 01A24C 0041A24C 00AB082B */  sltu        $at, $a1, $t3
/* 01A250 0041A250 00382021 */  addu        $a0, $at, $t8
/* 01A254 0041A254 24060000 */  addiu       $a2, $zero, 0x0
/* 01A258 0041A258 24070008 */  addiu       $a3, $zero, 0x8
/* 01A25C 0041A25C 0320F809 */  jalr        $t9
/* 01A260 0041A260 008A2021 */   addu       $a0, $a0, $t2
/* 01A264 0041A264 8FAC006C */  lw          $t4, 0x6C($sp)
/* 01A268 0041A268 AFA20040 */  sw          $v0, 0x40($sp)
/* 01A26C 0041A26C AFA30044 */  sw          $v1, 0x44($sp)
/* 01A270 0041A270 918D0004 */  lbu         $t5, 0x4($t4)
/* 01A274 0041A274 8FA90044 */  lw          $t1, 0x44($sp)
/* 01A278 0041A278 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A27C 0041A27C 01A07825 */  move        $t7, $t5
/* 01A280 0041A280 01E92821 */  addu        $a1, $t7, $t1
/* 01A284 0041A284 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A288 0041A288 8FA80040 */  lw          $t0, 0x40($sp)
/* 01A28C 0041A28C 000D77C3 */  sra         $t6, $t5, 31
/* 01A290 0041A290 00A9082B */  sltu        $at, $a1, $t1
/* 01A294 0041A294 002E2021 */  addu        $a0, $at, $t6
/* 01A298 0041A298 24060000 */  addiu       $a2, $zero, 0x0
/* 01A29C 0041A29C 24070008 */  addiu       $a3, $zero, 0x8
/* 01A2A0 0041A2A0 0320F809 */  jalr        $t9
/* 01A2A4 0041A2A4 00882021 */   addu       $a0, $a0, $t0
/* 01A2A8 0041A2A8 8FB8006C */  lw          $t8, 0x6C($sp)
/* 01A2AC 0041A2AC AFA20048 */  sw          $v0, 0x48($sp)
/* 01A2B0 0041A2B0 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01A2B4 0041A2B4 93190005 */  lbu         $t9, 0x5($t8)
/* 01A2B8 0041A2B8 8FAD004C */  lw          $t5, 0x4C($sp)
/* 01A2BC 0041A2BC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A2C0 0041A2C0 03205825 */  move        $t3, $t9
/* 01A2C4 0041A2C4 001957C3 */  sra         $t2, $t9, 31
/* 01A2C8 0041A2C8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A2CC 0041A2CC 016D2821 */  addu        $a1, $t3, $t5
/* 01A2D0 0041A2D0 8FAC0048 */  lw          $t4, 0x48($sp)
/* 01A2D4 0041A2D4 00AD082B */  sltu        $at, $a1, $t5
/* 01A2D8 0041A2D8 002A2021 */  addu        $a0, $at, $t2
/* 01A2DC 0041A2DC 24060000 */  addiu       $a2, $zero, 0x0
/* 01A2E0 0041A2E0 24070008 */  addiu       $a3, $zero, 0x8
/* 01A2E4 0041A2E4 0320F809 */  jalr        $t9
/* 01A2E8 0041A2E8 008C2021 */   addu       $a0, $a0, $t4
/* 01A2EC 0041A2EC 8FAE006C */  lw          $t6, 0x6C($sp)
/* 01A2F0 0041A2F0 AFA20050 */  sw          $v0, 0x50($sp)
/* 01A2F4 0041A2F4 AFA30054 */  sw          $v1, 0x54($sp)
/* 01A2F8 0041A2F8 91CF0006 */  lbu         $t7, 0x6($t6)
/* 01A2FC 0041A2FC 8FB90054 */  lw          $t9, 0x54($sp)
/* 01A300 0041A300 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A304 0041A304 01E04825 */  move        $t1, $t7
/* 01A308 0041A308 01392821 */  addu        $a1, $t1, $t9
/* 01A30C 0041A30C 00B9082B */  sltu        $at, $a1, $t9
/* 01A310 0041A310 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A314 0041A314 8FB80050 */  lw          $t8, 0x50($sp)
/* 01A318 0041A318 000F47C3 */  sra         $t0, $t7, 31
/* 01A31C 0041A31C 00282021 */  addu        $a0, $at, $t0
/* 01A320 0041A320 24060000 */  addiu       $a2, $zero, 0x0
/* 01A324 0041A324 24070008 */  addiu       $a3, $zero, 0x8
/* 01A328 0041A328 0320F809 */  jalr        $t9
/* 01A32C 0041A32C 00982021 */   addu       $a0, $a0, $t8
/* 01A330 0041A330 8FAA006C */  lw          $t2, 0x6C($sp)
/* 01A334 0041A334 AFA20058 */  sw          $v0, 0x58($sp)
/* 01A338 0041A338 AFA3005C */  sw          $v1, 0x5C($sp)
/* 01A33C 0041A33C 914B0007 */  lbu         $t3, 0x7($t2)
/* 01A340 0041A340 8FAF005C */  lw          $t7, 0x5C($sp)
/* 01A344 0041A344 8FAE0058 */  lw          $t6, 0x58($sp)
/* 01A348 0041A348 01606825 */  move        $t5, $t3
/* 01A34C 0041A34C 8FB80068 */  lw          $t8, 0x68($sp)
/* 01A350 0041A350 01AF4821 */  addu        $t1, $t5, $t7
/* 01A354 0041A354 000B67C3 */  sra         $t4, $t3, 31
/* 01A358 0041A358 012F082B */  sltu        $at, $t1, $t7
/* 01A35C 0041A35C 002C4021 */  addu        $t0, $at, $t4
/* 01A360 0041A360 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A364 0041A364 010E4021 */  addu        $t0, $t0, $t6
/* 01A368 0041A368 AF080000 */  sw          $t0, 0x0($t8)
/* 01A36C 0041A36C AF090004 */  sw          $t1, 0x4($t8)
/* 01A370 0041A370 8FB90068 */  lw          $t9, 0x68($sp)
/* 01A374 0041A374 0219882B */  sltu        $s1, $s0, $t9
/* 01A378 0041A378 272AFFF8 */  addiu       $t2, $t9, -0x8
/* 01A37C 0041A37C 1620FF7C */  bnez        $s1, .L0041A170
/* 01A380 0041A380 AFAA0068 */   sw         $t2, 0x68($sp)
.L0041A384:
/* 01A384 0041A384 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01A388 0041A388 8FB00018 */  lw          $s0, 0x18($sp)
/* 01A38C 0041A38C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 01A390 0041A390 03E00008 */  jr          $ra
/* 01A394 0041A394 27BD0068 */   addiu      $sp, $sp, 0x68
