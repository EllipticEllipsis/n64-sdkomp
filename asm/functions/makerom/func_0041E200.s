glabel func_0041E200 # 98
/* 01E200 0041E200 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01E204 0041E204 279C4B60 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF4B60
/* 01E208 0041E208 0399E021 */  addu        $gp, $gp, $t9
/* 01E20C 0041E20C 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 01E210 0041E210 AFA60078 */  sw          $a2, 0x78($sp)
/* 01E214 0041E214 8FAF0078 */  lw          $t7, 0x78($sp)
/* 01E218 0041E218 AFA40070 */  sw          $a0, 0x70($sp)
/* 01E21C 0041E21C 8FAE0070 */  lw          $t6, 0x70($sp)
/* 01E220 0041E220 000FC080 */  sll         $t8, $t7, 2
/* 01E224 0041E224 030FC023 */  subu        $t8, $t8, $t7
/* 01E228 0041E228 AFA50074 */  sw          $a1, 0x74($sp)
/* 01E22C 0041E22C 0018C0C0 */  sll         $t8, $t8, 3
/* 01E230 0041E230 AFAE006C */  sw          $t6, 0x6C($sp)
/* 01E234 0041E234 8FA80074 */  lw          $t0, 0x74($sp)
/* 01E238 0041E238 8FAA006C */  lw          $t2, 0x6C($sp)
/* 01E23C 0041E23C 01D8C821 */  addu        $t9, $t6, $t8
/* 01E240 0041E240 AFB00014 */  sw          $s0, 0x14($sp)
/* 01E244 0041E244 AFB90070 */  sw          $t9, 0x70($sp)
/* 01E248 0041E248 272BFFE8 */  addiu       $t3, $t9, -0x18
/* 01E24C 0041E24C 01184821 */  addu        $t1, $t0, $t8
/* 01E250 0041E250 0159802B */  sltu        $s0, $t2, $t9
/* 01E254 0041E254 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01E258 0041E258 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01E25C 0041E25C AFA90074 */  sw          $t1, 0x74($sp)
/* 01E260 0041E260 12000122 */  beqz        $s0, .L0041E6EC
/* 01E264 0041E264 AFAB0070 */   sw         $t3, 0x70($sp)
.L0041E268:
/* 01E268 0041E268 8FAC0074 */  lw          $t4, 0x74($sp)
/* 01E26C 0041E26C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E270 0041E270 24040000 */  addiu       $a0, $zero, 0x0
/* 01E274 0041E274 258DFFE8 */  addiu       $t5, $t4, -0x18
/* 01E278 0041E278 AFAD0074 */  sw          $t5, 0x74($sp)
/* 01E27C 0041E27C 91AF0017 */  lbu         $t7, 0x17($t5)
/* 01E280 0041E280 24060000 */  addiu       $a2, $zero, 0x0
/* 01E284 0041E284 24070008 */  addiu       $a3, $zero, 0x8
/* 01E288 0041E288 0320F809 */  jalr        $t9
/* 01E28C 0041E28C 01E02825 */   move       $a1, $t7
/* 01E290 0041E290 8FAE0074 */  lw          $t6, 0x74($sp)
/* 01E294 0041E294 AFA20020 */  sw          $v0, 0x20($sp)
/* 01E298 0041E298 AFA30024 */  sw          $v1, 0x24($sp)
/* 01E29C 0041E29C 91C80016 */  lbu         $t0, 0x16($t6)
/* 01E2A0 0041E2A0 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01E2A4 0041E2A4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E2A8 0041E2A8 0100C825 */  move        $t9, $t0
/* 01E2AC 0041E2AC 032B2821 */  addu        $a1, $t9, $t3
/* 01E2B0 0041E2B0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E2B4 0041E2B4 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01E2B8 0041E2B8 0008C7C3 */  sra         $t8, $t0, 31
/* 01E2BC 0041E2BC 00AB082B */  sltu        $at, $a1, $t3
/* 01E2C0 0041E2C0 00382021 */  addu        $a0, $at, $t8
/* 01E2C4 0041E2C4 24060000 */  addiu       $a2, $zero, 0x0
/* 01E2C8 0041E2C8 24070008 */  addiu       $a3, $zero, 0x8
/* 01E2CC 0041E2CC 0320F809 */  jalr        $t9
/* 01E2D0 0041E2D0 008A2021 */   addu       $a0, $a0, $t2
/* 01E2D4 0041E2D4 8FA90074 */  lw          $t1, 0x74($sp)
/* 01E2D8 0041E2D8 AFA20028 */  sw          $v0, 0x28($sp)
/* 01E2DC 0041E2DC AFA3002C */  sw          $v1, 0x2C($sp)
/* 01E2E0 0041E2E0 912C0015 */  lbu         $t4, 0x15($t1)
/* 01E2E4 0041E2E4 8FA9002C */  lw          $t1, 0x2C($sp)
/* 01E2E8 0041E2E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E2EC 0041E2EC 01807825 */  move        $t7, $t4
/* 01E2F0 0041E2F0 01E92821 */  addu        $a1, $t7, $t1
/* 01E2F4 0041E2F4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E2F8 0041E2F8 8FA80028 */  lw          $t0, 0x28($sp)
/* 01E2FC 0041E2FC 000C77C3 */  sra         $t6, $t4, 31
/* 01E300 0041E300 00A9082B */  sltu        $at, $a1, $t1
/* 01E304 0041E304 002E2021 */  addu        $a0, $at, $t6
/* 01E308 0041E308 24060000 */  addiu       $a2, $zero, 0x0
/* 01E30C 0041E30C 24070008 */  addiu       $a3, $zero, 0x8
/* 01E310 0041E310 0320F809 */  jalr        $t9
/* 01E314 0041E314 00882021 */   addu       $a0, $a0, $t0
/* 01E318 0041E318 8FAD0074 */  lw          $t5, 0x74($sp)
/* 01E31C 0041E31C AFA20030 */  sw          $v0, 0x30($sp)
/* 01E320 0041E320 AFA30034 */  sw          $v1, 0x34($sp)
/* 01E324 0041E324 91B80014 */  lbu         $t8, 0x14($t5)
/* 01E328 0041E328 8FAD0034 */  lw          $t5, 0x34($sp)
/* 01E32C 0041E32C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E330 0041E330 03005825 */  move        $t3, $t8
/* 01E334 0041E334 016D2821 */  addu        $a1, $t3, $t5
/* 01E338 0041E338 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E33C 0041E33C 8FAC0030 */  lw          $t4, 0x30($sp)
/* 01E340 0041E340 001857C3 */  sra         $t2, $t8, 31
/* 01E344 0041E344 00AD082B */  sltu        $at, $a1, $t5
/* 01E348 0041E348 002A2021 */  addu        $a0, $at, $t2
/* 01E34C 0041E34C 24060000 */  addiu       $a2, $zero, 0x0
/* 01E350 0041E350 24070008 */  addiu       $a3, $zero, 0x8
/* 01E354 0041E354 0320F809 */  jalr        $t9
/* 01E358 0041E358 008C2021 */   addu       $a0, $a0, $t4
/* 01E35C 0041E35C 8FB90074 */  lw          $t9, 0x74($sp)
/* 01E360 0041E360 AFA20038 */  sw          $v0, 0x38($sp)
/* 01E364 0041E364 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01E368 0041E368 932E0013 */  lbu         $t6, 0x13($t9)
/* 01E36C 0041E36C 8FB9003C */  lw          $t9, 0x3C($sp)
/* 01E370 0041E370 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E374 0041E374 01C04825 */  move        $t1, $t6
/* 01E378 0041E378 01392821 */  addu        $a1, $t1, $t9
/* 01E37C 0041E37C 00B9082B */  sltu        $at, $a1, $t9
/* 01E380 0041E380 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E384 0041E384 8FB80038 */  lw          $t8, 0x38($sp)
/* 01E388 0041E388 000E47C3 */  sra         $t0, $t6, 31
/* 01E38C 0041E38C 00282021 */  addu        $a0, $at, $t0
/* 01E390 0041E390 24060000 */  addiu       $a2, $zero, 0x0
/* 01E394 0041E394 24070008 */  addiu       $a3, $zero, 0x8
/* 01E398 0041E398 0320F809 */  jalr        $t9
/* 01E39C 0041E39C 00982021 */   addu       $a0, $a0, $t8
/* 01E3A0 0041E3A0 8FAF0074 */  lw          $t7, 0x74($sp)
/* 01E3A4 0041E3A4 AFA20040 */  sw          $v0, 0x40($sp)
/* 01E3A8 0041E3A8 AFA30044 */  sw          $v1, 0x44($sp)
/* 01E3AC 0041E3AC 91EA0012 */  lbu         $t2, 0x12($t7)
/* 01E3B0 0041E3B0 8FAF0044 */  lw          $t7, 0x44($sp)
/* 01E3B4 0041E3B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E3B8 0041E3B8 01406825 */  move        $t5, $t2
/* 01E3BC 0041E3BC 01AF2821 */  addu        $a1, $t5, $t7
/* 01E3C0 0041E3C0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E3C4 0041E3C4 8FAE0040 */  lw          $t6, 0x40($sp)
/* 01E3C8 0041E3C8 000A67C3 */  sra         $t4, $t2, 31
/* 01E3CC 0041E3CC 00AF082B */  sltu        $at, $a1, $t7
/* 01E3D0 0041E3D0 002C2021 */  addu        $a0, $at, $t4
/* 01E3D4 0041E3D4 24060000 */  addiu       $a2, $zero, 0x0
/* 01E3D8 0041E3D8 24070008 */  addiu       $a3, $zero, 0x8
/* 01E3DC 0041E3DC 0320F809 */  jalr        $t9
/* 01E3E0 0041E3E0 008E2021 */   addu       $a0, $a0, $t6
/* 01E3E4 0041E3E4 8FAB0074 */  lw          $t3, 0x74($sp)
/* 01E3E8 0041E3E8 AFA20048 */  sw          $v0, 0x48($sp)
/* 01E3EC 0041E3EC AFA3004C */  sw          $v1, 0x4C($sp)
/* 01E3F0 0041E3F0 91680011 */  lbu         $t0, 0x11($t3)
/* 01E3F4 0041E3F4 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01E3F8 0041E3F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E3FC 0041E3FC 0100C825 */  move        $t9, $t0
/* 01E400 0041E400 032B2821 */  addu        $a1, $t9, $t3
/* 01E404 0041E404 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E408 0041E408 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01E40C 0041E40C 0008C7C3 */  sra         $t8, $t0, 31
/* 01E410 0041E410 00AB082B */  sltu        $at, $a1, $t3
/* 01E414 0041E414 00382021 */  addu        $a0, $at, $t8
/* 01E418 0041E418 24060000 */  addiu       $a2, $zero, 0x0
/* 01E41C 0041E41C 24070008 */  addiu       $a3, $zero, 0x8
/* 01E420 0041E420 0320F809 */  jalr        $t9
/* 01E424 0041E424 008A2021 */   addu       $a0, $a0, $t2
/* 01E428 0041E428 8FA90074 */  lw          $t1, 0x74($sp)
/* 01E42C 0041E42C AFA20050 */  sw          $v0, 0x50($sp)
/* 01E430 0041E430 AFA30054 */  sw          $v1, 0x54($sp)
/* 01E434 0041E434 912C0010 */  lbu         $t4, 0x10($t1)
/* 01E438 0041E438 8FA90054 */  lw          $t1, 0x54($sp)
/* 01E43C 0041E43C 8FA80050 */  lw          $t0, 0x50($sp)
/* 01E440 0041E440 01807825 */  move        $t7, $t4
/* 01E444 0041E444 8FAD0070 */  lw          $t5, 0x70($sp)
/* 01E448 0041E448 01E9C821 */  addu        $t9, $t7, $t1
/* 01E44C 0041E44C 000C77C3 */  sra         $t6, $t4, 31
/* 01E450 0041E450 0329082B */  sltu        $at, $t9, $t1
/* 01E454 0041E454 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E458 0041E458 002EC021 */  addu        $t8, $at, $t6
/* 01E45C 0041E45C 0308C021 */  addu        $t8, $t8, $t0
/* 01E460 0041E460 ADB80010 */  sw          $t8, 0x10($t5)
/* 01E464 0041E464 ADB90014 */  sw          $t9, 0x14($t5)
/* 01E468 0041E468 8FAA0074 */  lw          $t2, 0x74($sp)
/* 01E46C 0041E46C 8FAC0070 */  lw          $t4, 0x70($sp)
/* 01E470 0041E470 24040000 */  addiu       $a0, $zero, 0x0
/* 01E474 0041E474 914B000F */  lbu         $t3, 0xF($t2)
/* 01E478 0041E478 24060000 */  addiu       $a2, $zero, 0x0
/* 01E47C 0041E47C 24070008 */  addiu       $a3, $zero, 0x8
/* 01E480 0041E480 A18B000F */  sb          $t3, 0xF($t4)
/* 01E484 0041E484 8FAE0074 */  lw          $t6, 0x74($sp)
/* 01E488 0041E488 8FA80070 */  lw          $t0, 0x70($sp)
/* 01E48C 0041E48C 91CF000E */  lbu         $t7, 0xE($t6)
/* 01E490 0041E490 A10F000E */  sb          $t7, 0xE($t0)
/* 01E494 0041E494 8FA90074 */  lw          $t1, 0x74($sp)
/* 01E498 0041E498 8FB90070 */  lw          $t9, 0x70($sp)
/* 01E49C 0041E49C 9138000D */  lbu         $t8, 0xD($t1)
/* 01E4A0 0041E4A0 A338000D */  sb          $t8, 0xD($t9)
/* 01E4A4 0041E4A4 8FAD0074 */  lw          $t5, 0x74($sp)
/* 01E4A8 0041E4A8 8FAB0070 */  lw          $t3, 0x70($sp)
/* 01E4AC 0041E4AC 91AA000C */  lbu         $t2, 0xC($t5)
/* 01E4B0 0041E4B0 A16A000C */  sb          $t2, 0xC($t3)
/* 01E4B4 0041E4B4 8FAC0074 */  lw          $t4, 0x74($sp)
/* 01E4B8 0041E4B8 918E000B */  lbu         $t6, 0xB($t4)
/* 01E4BC 0041E4BC 9188000A */  lbu         $t0, 0xA($t4)
/* 01E4C0 0041E4C0 91990009 */  lbu         $t9, 0x9($t4)
/* 01E4C4 0041E4C4 000E7A00 */  sll         $t7, $t6, 8
/* 01E4C8 0041E4C8 01E84821 */  addu        $t1, $t7, $t0
/* 01E4CC 0041E4CC 918B0008 */  lbu         $t3, 0x8($t4)
/* 01E4D0 0041E4D0 0009C200 */  sll         $t8, $t1, 8
/* 01E4D4 0041E4D4 8FAF0070 */  lw          $t7, 0x70($sp)
/* 01E4D8 0041E4D8 03196821 */  addu        $t5, $t8, $t9
/* 01E4DC 0041E4DC 000D5200 */  sll         $t2, $t5, 8
/* 01E4E0 0041E4E0 016A7021 */  addu        $t6, $t3, $t2
/* 01E4E4 0041E4E4 ADEE0008 */  sw          $t6, 0x8($t7)
/* 01E4E8 0041E4E8 8FA80074 */  lw          $t0, 0x74($sp)
/* 01E4EC 0041E4EC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E4F0 0041E4F0 91090007 */  lbu         $t1, 0x7($t0)
/* 01E4F4 0041E4F4 0320F809 */  jalr        $t9
/* 01E4F8 0041E4F8 01202825 */   move       $a1, $t1
/* 01E4FC 0041E4FC 8FB80074 */  lw          $t8, 0x74($sp)
/* 01E500 0041E500 AFA20020 */  sw          $v0, 0x20($sp)
/* 01E504 0041E504 AFA30024 */  sw          $v1, 0x24($sp)
/* 01E508 0041E508 93190006 */  lbu         $t9, 0x6($t8)
/* 01E50C 0041E50C 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01E510 0041E510 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E514 0041E514 03206825 */  move        $t5, $t9
/* 01E518 0041E518 001967C3 */  sra         $t4, $t9, 31
/* 01E51C 0041E51C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E520 0041E520 01AB2821 */  addu        $a1, $t5, $t3
/* 01E524 0041E524 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01E528 0041E528 00AB082B */  sltu        $at, $a1, $t3
/* 01E52C 0041E52C 002C2021 */  addu        $a0, $at, $t4
/* 01E530 0041E530 24060000 */  addiu       $a2, $zero, 0x0
/* 01E534 0041E534 24070008 */  addiu       $a3, $zero, 0x8
/* 01E538 0041E538 0320F809 */  jalr        $t9
/* 01E53C 0041E53C 008A2021 */   addu       $a0, $a0, $t2
/* 01E540 0041E540 8FAE0074 */  lw          $t6, 0x74($sp)
/* 01E544 0041E544 AFA20028 */  sw          $v0, 0x28($sp)
/* 01E548 0041E548 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01E54C 0041E54C 91CF0005 */  lbu         $t7, 0x5($t6)
/* 01E550 0041E550 8FB9002C */  lw          $t9, 0x2C($sp)
/* 01E554 0041E554 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E558 0041E558 01E04825 */  move        $t1, $t7
/* 01E55C 0041E55C 01392821 */  addu        $a1, $t1, $t9
/* 01E560 0041E560 00B9082B */  sltu        $at, $a1, $t9
/* 01E564 0041E564 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E568 0041E568 8FB80028 */  lw          $t8, 0x28($sp)
/* 01E56C 0041E56C 000F47C3 */  sra         $t0, $t7, 31
/* 01E570 0041E570 00282021 */  addu        $a0, $at, $t0
/* 01E574 0041E574 24060000 */  addiu       $a2, $zero, 0x0
/* 01E578 0041E578 24070008 */  addiu       $a3, $zero, 0x8
/* 01E57C 0041E57C 0320F809 */  jalr        $t9
/* 01E580 0041E580 00982021 */   addu       $a0, $a0, $t8
/* 01E584 0041E584 8FAC0074 */  lw          $t4, 0x74($sp)
/* 01E588 0041E588 AFA20030 */  sw          $v0, 0x30($sp)
/* 01E58C 0041E58C AFA30034 */  sw          $v1, 0x34($sp)
/* 01E590 0041E590 918D0004 */  lbu         $t5, 0x4($t4)
/* 01E594 0041E594 8FAF0034 */  lw          $t7, 0x34($sp)
/* 01E598 0041E598 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E59C 0041E59C 01A05825 */  move        $t3, $t5
/* 01E5A0 0041E5A0 016F2821 */  addu        $a1, $t3, $t7
/* 01E5A4 0041E5A4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E5A8 0041E5A8 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01E5AC 0041E5AC 000D57C3 */  sra         $t2, $t5, 31
/* 01E5B0 0041E5B0 00AF082B */  sltu        $at, $a1, $t7
/* 01E5B4 0041E5B4 002A2021 */  addu        $a0, $at, $t2
/* 01E5B8 0041E5B8 24060000 */  addiu       $a2, $zero, 0x0
/* 01E5BC 0041E5BC 24070008 */  addiu       $a3, $zero, 0x8
/* 01E5C0 0041E5C0 0320F809 */  jalr        $t9
/* 01E5C4 0041E5C4 008E2021 */   addu       $a0, $a0, $t6
/* 01E5C8 0041E5C8 8FA80074 */  lw          $t0, 0x74($sp)
/* 01E5CC 0041E5CC AFA20038 */  sw          $v0, 0x38($sp)
/* 01E5D0 0041E5D0 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01E5D4 0041E5D4 91090003 */  lbu         $t1, 0x3($t0)
/* 01E5D8 0041E5D8 8FAD003C */  lw          $t5, 0x3C($sp)
/* 01E5DC 0041E5DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E5E0 0041E5E0 0120C825 */  move        $t9, $t1
/* 01E5E4 0041E5E4 032D2821 */  addu        $a1, $t9, $t5
/* 01E5E8 0041E5E8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E5EC 0041E5EC 8FAC0038 */  lw          $t4, 0x38($sp)
/* 01E5F0 0041E5F0 0009C7C3 */  sra         $t8, $t1, 31
/* 01E5F4 0041E5F4 00AD082B */  sltu        $at, $a1, $t5
/* 01E5F8 0041E5F8 00382021 */  addu        $a0, $at, $t8
/* 01E5FC 0041E5FC 24060000 */  addiu       $a2, $zero, 0x0
/* 01E600 0041E600 24070008 */  addiu       $a3, $zero, 0x8
/* 01E604 0041E604 0320F809 */  jalr        $t9
/* 01E608 0041E608 008C2021 */   addu       $a0, $a0, $t4
/* 01E60C 0041E60C 8FAA0074 */  lw          $t2, 0x74($sp)
/* 01E610 0041E610 AFA20040 */  sw          $v0, 0x40($sp)
/* 01E614 0041E614 AFA30044 */  sw          $v1, 0x44($sp)
/* 01E618 0041E618 914B0002 */  lbu         $t3, 0x2($t2)
/* 01E61C 0041E61C 8FA90044 */  lw          $t1, 0x44($sp)
/* 01E620 0041E620 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E624 0041E624 01607825 */  move        $t7, $t3
/* 01E628 0041E628 01E92821 */  addu        $a1, $t7, $t1
/* 01E62C 0041E62C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E630 0041E630 8FA80040 */  lw          $t0, 0x40($sp)
/* 01E634 0041E634 000B77C3 */  sra         $t6, $t3, 31
/* 01E638 0041E638 00A9082B */  sltu        $at, $a1, $t1
/* 01E63C 0041E63C 002E2021 */  addu        $a0, $at, $t6
/* 01E640 0041E640 24060000 */  addiu       $a2, $zero, 0x0
/* 01E644 0041E644 24070008 */  addiu       $a3, $zero, 0x8
/* 01E648 0041E648 0320F809 */  jalr        $t9
/* 01E64C 0041E64C 00882021 */   addu       $a0, $a0, $t0
/* 01E650 0041E650 8FB80074 */  lw          $t8, 0x74($sp)
/* 01E654 0041E654 AFA20048 */  sw          $v0, 0x48($sp)
/* 01E658 0041E658 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01E65C 0041E65C 93190001 */  lbu         $t9, 0x1($t8)
/* 01E660 0041E660 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01E664 0041E664 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E668 0041E668 03206825 */  move        $t5, $t9
/* 01E66C 0041E66C 001967C3 */  sra         $t4, $t9, 31
/* 01E670 0041E670 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01E674 0041E674 01AB2821 */  addu        $a1, $t5, $t3
/* 01E678 0041E678 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01E67C 0041E67C 00AB082B */  sltu        $at, $a1, $t3
/* 01E680 0041E680 002C2021 */  addu        $a0, $at, $t4
/* 01E684 0041E684 24060000 */  addiu       $a2, $zero, 0x0
/* 01E688 0041E688 24070008 */  addiu       $a3, $zero, 0x8
/* 01E68C 0041E68C 0320F809 */  jalr        $t9
/* 01E690 0041E690 008A2021 */   addu       $a0, $a0, $t2
/* 01E694 0041E694 8FAE0074 */  lw          $t6, 0x74($sp)
/* 01E698 0041E698 AFA20050 */  sw          $v0, 0x50($sp)
/* 01E69C 0041E69C AFA30054 */  sw          $v1, 0x54($sp)
/* 01E6A0 0041E6A0 91CF0000 */  lbu         $t7, 0x0($t6)
/* 01E6A4 0041E6A4 8FB90054 */  lw          $t9, 0x54($sp)
/* 01E6A8 0041E6A8 8FB80050 */  lw          $t8, 0x50($sp)
/* 01E6AC 0041E6AC 01E04825 */  move        $t1, $t7
/* 01E6B0 0041E6B0 8FAA0070 */  lw          $t2, 0x70($sp)
/* 01E6B4 0041E6B4 01396821 */  addu        $t5, $t1, $t9
/* 01E6B8 0041E6B8 000F47C3 */  sra         $t0, $t7, 31
/* 01E6BC 0041E6BC 01B9082B */  sltu        $at, $t5, $t9
/* 01E6C0 0041E6C0 00286021 */  addu        $t4, $at, $t0
/* 01E6C4 0041E6C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E6C8 0041E6C8 01986021 */  addu        $t4, $t4, $t8
/* 01E6CC 0041E6CC AD4C0000 */  sw          $t4, 0x0($t2)
/* 01E6D0 0041E6D0 AD4D0004 */  sw          $t5, 0x4($t2)
/* 01E6D4 0041E6D4 8FAB0070 */  lw          $t3, 0x70($sp)
/* 01E6D8 0041E6D8 8FAE006C */  lw          $t6, 0x6C($sp)
/* 01E6DC 0041E6DC 256FFFE8 */  addiu       $t7, $t3, -0x18
/* 01E6E0 0041E6E0 01CB802B */  sltu        $s0, $t6, $t3
/* 01E6E4 0041E6E4 1600FEE0 */  bnez        $s0, .L0041E268
/* 01E6E8 0041E6E8 AFAF0070 */   sw         $t7, 0x70($sp)
.L0041E6EC:
/* 01E6EC 0041E6EC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01E6F0 0041E6F0 8FB00014 */  lw          $s0, 0x14($sp)
/* 01E6F4 0041E6F4 27BD0070 */  addiu       $sp, $sp, 0x70
/* 01E6F8 0041E6F8 03E00008 */  jr          $ra
/* 01E6FC 0041E6FC 00000000 */   nop
