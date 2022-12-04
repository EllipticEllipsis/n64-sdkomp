glabel file_symbol_iaux # 594
/* 03B380 0043B380 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03B384 0043B384 279C79E0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD79E0
/* 03B388 0043B388 0399E021 */  addu        $gp, $gp, $t9
/* 03B38C 0043B38C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03B390 0043B390 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B394 0043B394 04C1000F */  bgez        $a2, .L0043B3D4
/* 03B398 0043B398 AFBC0018 */   sw         $gp, 0x18($sp)
/* 03B39C 0043B39C 3C07000F */  lui         $a3, (0xFFFFF >> 16)
/* 03B3A0 0043B3A0 34E7FFFF */  ori         $a3, $a3, (0xFFFFF & 0xFFFF)
/* 03B3A4 0043B3A4 10C7000B */  beq         $a2, $a3, .L0043B3D4
/* 03B3A8 0043B3A8 00067023 */   negu       $t6, $a2
/* 03B3AC 0043B3AC 8F9887D4 */  lw          $t8, %got(usersymbol)($gp)
/* 03B3B0 0043B3B0 000E7880 */  sll         $t7, $t6, 2
/* 03B3B4 0043B3B4 01EE7823 */  subu        $t7, $t7, $t6
/* 03B3B8 0043B3B8 000F7880 */  sll         $t7, $t7, 2
/* 03B3BC 0043B3BC 01F8C821 */  addu        $t9, $t7, $t8
/* 03B3C0 0043B3C0 8F230008 */  lw          $v1, 0x8($t9)
/* 03B3C4 0043B3C4 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B3C8 0043B3C8 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B3CC 0043B3CC 1000002C */  b           .L0043B480
/* 03B3D0 0043B3D0 00611024 */   and        $v0, $v1, $at
.L0043B3D4:
/* 03B3D4 0043B3D4 8C8200D8 */  lw          $v0, 0xD8($a0)
/* 03B3D8 0043B3D8 3C07000F */  lui         $a3, (0xFFFFF >> 16)
/* 03B3DC 0043B3DC 34E7FFFF */  ori         $a3, $a3, (0xFFFFF & 0xFFFF)
/* 03B3E0 0043B3E0 00C2082B */  sltu        $at, $a2, $v0
/* 03B3E4 0043B3E4 1420000C */  bnez        $at, .L0043B418
/* 03B3E8 0043B3E8 00067880 */   sll        $t7, $a2, 2
/* 03B3EC 0043B3EC 8C8800AC */  lw          $t0, 0xAC($a0)
/* 03B3F0 0043B3F0 00064900 */  sll         $t1, $a2, 4
/* 03B3F4 0043B3F4 00025900 */  sll         $t3, $v0, 4
/* 03B3F8 0043B3F8 000B6023 */  negu        $t4, $t3
/* 03B3FC 0043B3FC 01095021 */  addu        $t2, $t0, $t1
/* 03B400 0043B400 014C6821 */  addu        $t5, $t2, $t4
/* 03B404 0043B404 8DA3000C */  lw          $v1, 0xC($t5)
/* 03B408 0043B408 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B40C 0043B40C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B410 0043B410 1000000F */  b           .L0043B450
/* 03B414 0043B414 00611824 */   and        $v1, $v1, $at
.L0043B418:
/* 03B418 0043B418 8C9900CC */  lw          $t9, 0xCC($a0)
/* 03B41C 0043B41C 8C8E00A8 */  lw          $t6, 0xA8($a0)
/* 03B420 0043B420 01E67823 */  subu        $t7, $t7, $a2
/* 03B424 0043B424 00194080 */  sll         $t0, $t9, 2
/* 03B428 0043B428 01194023 */  subu        $t0, $t0, $t9
/* 03B42C 0043B42C 00084080 */  sll         $t0, $t0, 2
/* 03B430 0043B430 000F7880 */  sll         $t7, $t7, 2
/* 03B434 0043B434 00084823 */  negu        $t1, $t0
/* 03B438 0043B438 01CFC021 */  addu        $t8, $t6, $t7
/* 03B43C 0043B43C 03095821 */  addu        $t3, $t8, $t1
/* 03B440 0043B440 8D630008 */  lw          $v1, 0x8($t3)
/* 03B444 0043B444 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03B448 0043B448 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03B44C 0043B44C 00611824 */  and         $v1, $v1, $at
.L0043B450:
/* 03B450 0043B450 14670003 */  bne         $v1, $a3, .L0043B460
/* 03B454 0043B454 00000000 */   nop
/* 03B458 0043B458 10000009 */  b           .L0043B480
/* 03B45C 0043B45C 00E01025 */   move       $v0, $a3
.L0043B460:
/* 03B460 0043B460 8F998508 */  lw          $t9, %call16(file_type_base)($gp)
/* 03B464 0043B464 AFA30024 */  sw          $v1, 0x24($sp)
/* 03B468 0043B468 0320F809 */  jalr        $t9
/* 03B46C 0043B46C 00000000 */   nop
/* 03B470 0043B470 8FA30024 */  lw          $v1, 0x24($sp)
/* 03B474 0043B474 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B478 0043B478 00621821 */  addu        $v1, $v1, $v0
/* 03B47C 0043B47C 00601025 */  move        $v0, $v1
.L0043B480:
/* 03B480 0043B480 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B484 0043B484 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03B488 0043B488 03E00008 */  jr          $ra
/* 03B48C 0043B48C 00000000 */   nop
