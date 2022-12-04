glabel find_user_symbol # 612
/* 03C5A4 0043C5A4 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03C5A8 0043C5A8 279C67BC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD67BC
/* 03C5AC 0043C5AC 0399E021 */  addu        $gp, $gp, $t9
/* 03C5B0 0043C5B0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03C5B4 0043C5B4 AFB40024 */  sw          $s4, 0x24($sp)
/* 03C5B8 0043C5B8 8F9486FC */  lw          $s4, %got(sinx)($gp)
/* 03C5BC 0043C5BC AFB30020 */  sw          $s3, 0x20($sp)
/* 03C5C0 0043C5C0 AFB2001C */  sw          $s2, 0x1C($sp)
/* 03C5C4 0043C5C4 8E8E0000 */  lw          $t6, 0x0($s4)
/* 03C5C8 0043C5C8 AFB10018 */  sw          $s1, 0x18($sp)
/* 03C5CC 0043C5CC 00809025 */  move        $s2, $a0
/* 03C5D0 0043C5D0 29C1FFFE */  slti        $at, $t6, -0x2
/* 03C5D4 0043C5D4 00A09825 */  move        $s3, $a1
/* 03C5D8 0043C5D8 AFBF002C */  sw          $ra, 0x2C($sp)
/* 03C5DC 0043C5DC AFBC0028 */  sw          $gp, 0x28($sp)
/* 03C5E0 0043C5E0 AFB00014 */  sw          $s0, 0x14($sp)
/* 03C5E4 0043C5E4 10200015 */  beqz        $at, .L0043C63C
/* 03C5E8 0043C5E8 2411FFFE */   addiu      $s1, $zero, -0x2
/* 03C5EC 0043C5EC 8F9087D4 */  lw          $s0, %got(usersymbol)($gp)
/* 03C5F0 0043C5F0 26100018 */  addiu       $s0, $s0, 0x18
/* 03C5F4 0043C5F4 8E020000 */  lw          $v0, 0x0($s0)
.L0043C5F8:
/* 03C5F8 0043C5F8 5040000B */  beql        $v0, $zero, .L0043C628
/* 03C5FC 0043C5FC 8E8F0000 */   lw         $t7, 0x0($s4)
/* 03C600 0043C600 8F9985AC */  lw          $t9, %call16(case_streq)($gp)
/* 03C604 0043C604 02402025 */  move        $a0, $s2
/* 03C608 0043C608 00402825 */  move        $a1, $v0
/* 03C60C 0043C60C 0320F809 */  jalr        $t9
/* 03C610 0043C610 02603025 */   move       $a2, $s3
/* 03C614 0043C614 10400003 */  beqz        $v0, .L0043C624
/* 03C618 0043C618 8FBC0028 */   lw         $gp, 0x28($sp)
/* 03C61C 0043C61C 10000009 */  b           .L0043C644
/* 03C620 0043C620 02201025 */   move       $v0, $s1
.L0043C624:
/* 03C624 0043C624 8E8F0000 */  lw          $t7, 0x0($s4)
.L0043C628:
/* 03C628 0043C628 2631FFFF */  addiu       $s1, $s1, -0x1
/* 03C62C 0043C62C 2610000C */  addiu       $s0, $s0, 0xC
/* 03C630 0043C630 01F1082A */  slt         $at, $t7, $s1
/* 03C634 0043C634 5420FFF0 */  bnel        $at, $zero, .L0043C5F8
/* 03C638 0043C638 8E020000 */   lw         $v0, 0x0($s0)
.L0043C63C:
/* 03C63C 0043C63C 3C02000F */  lui         $v0, (0xFFFFF >> 16)
/* 03C640 0043C640 3442FFFF */  ori         $v0, $v0, (0xFFFFF & 0xFFFF)
.L0043C644:
/* 03C644 0043C644 8FBF002C */  lw          $ra, 0x2C($sp)
/* 03C648 0043C648 8FB00014 */  lw          $s0, 0x14($sp)
/* 03C64C 0043C64C 8FB10018 */  lw          $s1, 0x18($sp)
/* 03C650 0043C650 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03C654 0043C654 8FB30020 */  lw          $s3, 0x20($sp)
/* 03C658 0043C658 8FB40024 */  lw          $s4, 0x24($sp)
/* 03C65C 0043C65C 03E00008 */  jr          $ra
/* 03C660 0043C660 27BD0030 */   addiu      $sp, $sp, 0x30
/* 03C664 0043C664 00000000 */  nop
/* 03C668 0043C668 00000000 */  nop
/* 03C66C 0043C66C 00000000 */  nop
