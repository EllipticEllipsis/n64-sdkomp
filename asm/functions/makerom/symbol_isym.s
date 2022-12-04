glabel symbol_isym # 595
/* 03B490 0043B490 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03B494 0043B494 279C78D0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD78D0
/* 03B498 0043B498 0399E021 */  addu        $gp, $gp, $t9
/* 03B49C 0043B49C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03B4A0 0043B4A0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B4A4 0043B4A4 04A1000F */  bgez        $a1, .L0043B4E4
/* 03B4A8 0043B4A8 AFBC0018 */   sw         $gp, 0x18($sp)
/* 03B4AC 0043B4AC 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B4B0 0043B4B0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B4B4 0043B4B4 10A1000B */  beq         $a1, $at, .L0043B4E4
/* 03B4B8 0043B4B8 00057023 */   negu       $t6, $a1
/* 03B4BC 0043B4BC 8F9887D4 */  lw          $t8, %got(usersymbol)($gp)
/* 03B4C0 0043B4C0 000E7880 */  sll         $t7, $t6, 2
/* 03B4C4 0043B4C4 01EE7823 */  subu        $t7, $t7, $t6
/* 03B4C8 0043B4C8 000F7880 */  sll         $t7, $t7, 2
/* 03B4CC 0043B4CC 01F8C821 */  addu        $t9, $t7, $t8
/* 03B4D0 0043B4D0 8F230008 */  lw          $v1, 0x8($t9)
/* 03B4D4 0043B4D4 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B4D8 0043B4D8 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B4DC 0043B4DC 10000039 */  b           .L0043B5C4
/* 03B4E0 0043B4E0 00611024 */   and        $v0, $v1, $at
.L0043B4E4:
/* 03B4E4 0043B4E4 8C8600D8 */  lw          $a2, 0xD8($a0)
/* 03B4E8 0043B4E8 00054900 */  sll         $t1, $a1, 4
/* 03B4EC 0043B4EC 00A6082B */  sltu        $at, $a1, $a2
/* 03B4F0 0043B4F0 1420000D */  bnez        $at, .L0043B528
/* 03B4F4 0043B4F4 00065900 */   sll        $t3, $a2, 4
/* 03B4F8 0043B4F8 8C8800AC */  lw          $t0, 0xAC($a0)
/* 03B4FC 0043B4FC 000B6023 */  negu        $t4, $t3
/* 03B500 0043B500 8C8E00D0 */  lw          $t6, 0xD0($a0)
/* 03B504 0043B504 01095021 */  addu        $t2, $t0, $t1
/* 03B508 0043B508 014C1021 */  addu        $v0, $t2, $t4
/* 03B50C 0043B50C 8C43000C */  lw          $v1, 0xC($v0)
/* 03B510 0043B510 944D0002 */  lhu         $t5, 0x2($v0)
/* 03B514 0043B514 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B518 0043B518 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B51C 0043B51C 00611824 */  and         $v1, $v1, $at
/* 03B520 0043B520 10000019 */  b           .L0043B588
/* 03B524 0043B524 01AE3821 */   addu       $a3, $t5, $t6
.L0043B528:
/* 03B528 0043B528 8F9984F0 */  lw          $t9, %call16(symbol_to_file)($gp)
/* 03B52C 0043B52C AFA40028 */  sw          $a0, 0x28($sp)
/* 03B530 0043B530 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03B534 0043B534 0320F809 */  jalr        $t9
/* 03B538 0043B538 00000000 */   nop
/* 03B53C 0043B53C 8FA40028 */  lw          $a0, 0x28($sp)
/* 03B540 0043B540 8FA5002C */  lw          $a1, 0x2C($sp)
/* 03B544 0043B544 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B548 0043B548 8C8800CC */  lw          $t0, 0xCC($a0)
/* 03B54C 0043B54C 8C8F00A8 */  lw          $t7, 0xA8($a0)
/* 03B550 0043B550 0005C080 */  sll         $t8, $a1, 2
/* 03B554 0043B554 00084880 */  sll         $t1, $t0, 2
/* 03B558 0043B558 0305C023 */  subu        $t8, $t8, $a1
/* 03B55C 0043B55C 01284823 */  subu        $t1, $t1, $t0
/* 03B560 0043B560 00094880 */  sll         $t1, $t1, 2
/* 03B564 0043B564 0018C080 */  sll         $t8, $t8, 2
/* 03B568 0043B568 00095823 */  negu        $t3, $t1
/* 03B56C 0043B56C 01F8C821 */  addu        $t9, $t7, $t8
/* 03B570 0043B570 032B5021 */  addu        $t2, $t9, $t3
/* 03B574 0043B574 8D430008 */  lw          $v1, 0x8($t2)
/* 03B578 0043B578 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B57C 0043B57C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B580 0043B580 00403825 */  move        $a3, $v0
/* 03B584 0043B584 00611824 */  and         $v1, $v1, $at
.L0043B588:
/* 03B588 0043B588 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B58C 0043B58C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B590 0043B590 14610003 */  bne         $v1, $at, .L0043B5A0
/* 03B594 0043B594 3C02000F */   lui        $v0, (0xFFFFF >> 16)
/* 03B598 0043B598 1000000A */  b           .L0043B5C4
/* 03B59C 0043B59C 3442FFFF */   ori        $v0, $v0, (0xFFFFF & 0xFFFF)
.L0043B5A0:
/* 03B5A0 0043B5A0 8F9984FC */  lw          $t9, %call16(file_symbol)($gp)
/* 03B5A4 0043B5A4 00E02825 */  move        $a1, $a3
/* 03B5A8 0043B5A8 AFA30024 */  sw          $v1, 0x24($sp)
/* 03B5AC 0043B5AC 0320F809 */  jalr        $t9
/* 03B5B0 0043B5B0 00000000 */   nop
/* 03B5B4 0043B5B4 8FA30024 */  lw          $v1, 0x24($sp)
/* 03B5B8 0043B5B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B5BC 0043B5BC 00621821 */  addu        $v1, $v1, $v0
/* 03B5C0 0043B5C0 00601025 */  move        $v0, $v1
.L0043B5C4:
/* 03B5C4 0043B5C4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B5C8 0043B5C8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03B5CC 0043B5CC 03E00008 */  jr          $ra
/* 03B5D0 0043B5D0 00000000 */   nop
