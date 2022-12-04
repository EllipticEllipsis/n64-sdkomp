glabel st_find_symbol # 621
/* 03D46C 0043D46C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03D470 0043D470 279C58F4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD58F4
/* 03D474 0043D474 0399E021 */  addu        $gp, $gp, $t9
/* 03D478 0043D478 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03D47C 0043D47C AFBF0024 */  sw          $ra, 0x24($sp)
/* 03D480 0043D480 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03D484 0043D484 AFA60038 */  sw          $a2, 0x38($sp)
/* 03D488 0043D488 10800005 */  beqz        $a0, .L0043D4A0
/* 03D48C 0043D48C AFA7003C */   sw         $a3, 0x3C($sp)
/* 03D490 0043D490 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D494 0043D494 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D498 0043D498 14A1000F */  bne         $a1, $at, .L0043D4D8
/* 03D49C 0043D49C 00000000 */   nop
.L0043D4A0:
/* 03D4A0 0043D4A0 8F99859C */  lw          $t9, %call16(find_user_symbol)($gp)
/* 03D4A4 0043D4A4 8FA40038 */  lw          $a0, 0x38($sp)
/* 03D4A8 0043D4A8 8FA5003C */  lw          $a1, 0x3C($sp)
/* 03D4AC 0043D4AC 0320F809 */  jalr        $t9
/* 03D4B0 0043D4B0 00000000 */   nop
/* 03D4B4 0043D4B4 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D4B8 0043D4B8 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D4BC 0043D4BC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D4C0 0043D4C0 14410003 */  bne         $v0, $at, .L0043D4D0
/* 03D4C4 0043D4C4 00401825 */   move       $v1, $v0
/* 03D4C8 0043D4C8 10000041 */  b           .L0043D5D0
/* 03D4CC 0043D4CC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043D4D0:
/* 03D4D0 0043D4D0 1000003F */  b           .L0043D5D0
/* 03D4D4 0043D4D4 00601025 */   move       $v0, $v1
.L0043D4D8:
/* 03D4D8 0043D4D8 8F9984F0 */  lw          $t9, %call16(symbol_to_file)($gp)
/* 03D4DC 0043D4DC AFA40030 */  sw          $a0, 0x30($sp)
/* 03D4E0 0043D4E0 AFA50034 */  sw          $a1, 0x34($sp)
/* 03D4E4 0043D4E4 0320F809 */  jalr        $t9
/* 03D4E8 0043D4E8 00000000 */   nop
/* 03D4EC 0043D4EC 8FA40030 */  lw          $a0, 0x30($sp)
/* 03D4F0 0043D4F0 AFA20028 */  sw          $v0, 0x28($sp)
/* 03D4F4 0043D4F4 8FA50034 */  lw          $a1, 0x34($sp)
/* 03D4F8 0043D4F8 8C8E00CC */  lw          $t6, 0xCC($a0)
/* 03D4FC 0043D4FC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D500 0043D500 00AE082B */  sltu        $at, $a1, $t6
/* 03D504 0043D504 54200016 */  bnel        $at, $zero, .L0043D560
/* 03D508 0043D508 8FA80028 */   lw         $t0, 0x28($sp)
/* 03D50C 0043D50C 8C8F00D8 */  lw          $t7, 0xD8($a0)
/* 03D510 0043D510 00AF082B */  sltu        $at, $a1, $t7
/* 03D514 0043D514 50200012 */  beql        $at, $zero, .L0043D560
/* 03D518 0043D518 8FA80028 */   lw         $t0, 0x28($sp)
/* 03D51C 0043D51C 8FB90040 */  lw          $t9, 0x40($sp)
/* 03D520 0043D520 8FB8003C */  lw          $t8, 0x3C($sp)
/* 03D524 0043D524 00403025 */  move        $a2, $v0
/* 03D528 0043D528 AFB90014 */  sw          $t9, 0x14($sp)
/* 03D52C 0043D52C 8F998024 */  lw          $t9, %got(func_0043CCB0)($gp)
/* 03D530 0043D530 8FA70038 */  lw          $a3, 0x38($sp)
/* 03D534 0043D534 AFA40030 */  sw          $a0, 0x30($sp)
/* 03D538 0043D538 2739CCB0 */  addiu       $t9, $t9, %lo(func_0043CCB0)
/* 03D53C 0043D53C 0320F809 */  jalr        $t9
/* 03D540 0043D540 AFB80010 */   sw         $t8, 0x10($sp)
/* 03D544 0043D544 2401FFFF */  addiu       $at, $zero, -0x1
/* 03D548 0043D548 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D54C 0043D54C 10410003 */  beq         $v0, $at, .L0043D55C
/* 03D550 0043D550 8FA40030 */   lw         $a0, 0x30($sp)
/* 03D554 0043D554 1000001F */  b           .L0043D5D4
/* 03D558 0043D558 8FBF0024 */   lw         $ra, 0x24($sp)
.L0043D55C:
/* 03D55C 0043D55C 8FA80028 */  lw          $t0, 0x28($sp)
.L0043D560:
/* 03D560 0043D560 2401FFFF */  addiu       $at, $zero, -0x1
/* 03D564 0043D564 8FA70038 */  lw          $a3, 0x38($sp)
/* 03D568 0043D568 1101000D */  beq         $t0, $at, .L0043D5A0
/* 03D56C 0043D56C 01002825 */   move       $a1, $t0
/* 03D570 0043D570 8F998510 */  lw          $t9, %call16(foreach_rfd)($gp)
/* 03D574 0043D574 8FA9003C */  lw          $t1, 0x3C($sp)
/* 03D578 0043D578 8FAA0040 */  lw          $t2, 0x40($sp)
/* 03D57C 0043D57C 8F8685A4 */  lw          $a2, %got(file_scope_name_search)($gp)
/* 03D580 0043D580 AFA90010 */  sw          $t1, 0x10($sp)
/* 03D584 0043D584 0320F809 */  jalr        $t9
/* 03D588 0043D588 AFAA0014 */   sw         $t2, 0x14($sp)
/* 03D58C 0043D58C 2401FFFF */  addiu       $at, $zero, -0x1
/* 03D590 0043D590 10410003 */  beq         $v0, $at, .L0043D5A0
/* 03D594 0043D594 8FBC0020 */   lw         $gp, 0x20($sp)
/* 03D598 0043D598 1000000E */  b           .L0043D5D4
/* 03D59C 0043D59C 8FBF0024 */   lw         $ra, 0x24($sp)
.L0043D5A0:
/* 03D5A0 0043D5A0 8F99859C */  lw          $t9, %call16(find_user_symbol)($gp)
/* 03D5A4 0043D5A4 8FA40038 */  lw          $a0, 0x38($sp)
/* 03D5A8 0043D5A8 8FA5003C */  lw          $a1, 0x3C($sp)
/* 03D5AC 0043D5AC 0320F809 */  jalr        $t9
/* 03D5B0 0043D5B0 00000000 */   nop
/* 03D5B4 0043D5B4 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03D5B8 0043D5B8 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03D5BC 0043D5BC 10410003 */  beq         $v0, $at, .L0043D5CC
/* 03D5C0 0043D5C0 8FBC0020 */   lw         $gp, 0x20($sp)
/* 03D5C4 0043D5C4 10000003 */  b           .L0043D5D4
/* 03D5C8 0043D5C8 8FBF0024 */   lw         $ra, 0x24($sp)
.L0043D5CC:
/* 03D5CC 0043D5CC 2402FFFF */  addiu       $v0, $zero, -0x1
.L0043D5D0:
/* 03D5D0 0043D5D0 8FBF0024 */  lw          $ra, 0x24($sp)
.L0043D5D4:
/* 03D5D4 0043D5D4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 03D5D8 0043D5D8 03E00008 */  jr          $ra
/* 03D5DC 0043D5DC 00000000 */   nop
