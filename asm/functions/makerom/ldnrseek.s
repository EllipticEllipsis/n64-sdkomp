glabel ldnrseek # 224
/* 02A4E0 0042A4E0 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A4E4 0042A4E4 279C8880 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8880
/* 02A4E8 0042A4E8 0399E021 */  addu        $gp, $gp, $t9
/* 02A4EC 0042A4EC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02A4F0 0042A4F0 AFBF002C */  sw          $ra, 0x2C($sp)
/* 02A4F4 0042A4F4 AFBC0028 */  sw          $gp, 0x28($sp)
/* 02A4F8 0042A4F8 AFB30024 */  sw          $s3, 0x24($sp)
/* 02A4FC 0042A4FC AFB20020 */  sw          $s2, 0x20($sp)
/* 02A500 0042A500 AFB1001C */  sw          $s1, 0x1C($sp)
/* 02A504 0042A504 AFB00018 */  sw          $s0, 0x18($sp)
/* 02A508 0042A508 8C82002C */  lw          $v0, 0x2C($a0)
/* 02A50C 0042A50C 00809025 */  move        $s2, $a0
/* 02A510 0042A510 00A09825 */  move        $s3, $a1
/* 02A514 0042A514 8C4E0090 */  lw          $t6, 0x90($v0)
/* 02A518 0042A518 00008025 */  move        $s0, $zero
/* 02A51C 0042A51C 00008825 */  move        $s1, $zero
/* 02A520 0042A520 95CF0002 */  lhu         $t7, 0x2($t6)
/* 02A524 0042A524 51E00020 */  beql        $t7, $zero, .L0042A5A8
/* 02A528 0042A528 00001025 */   move       $v0, $zero
.L0042A52C:
/* 02A52C 0042A52C 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 02A530 0042A530 8C580098 */  lw          $t8, 0x98($v0)
/* 02A534 0042A534 02602025 */  move        $a0, $s3
/* 02A538 0042A538 0320F809 */  jalr        $t9
/* 02A53C 0042A53C 03102821 */   addu       $a1, $t8, $s0
/* 02A540 0042A540 14400010 */  bnez        $v0, .L0042A584
/* 02A544 0042A544 8FBC0028 */   lw         $gp, 0x28($sp)
/* 02A548 0042A548 8E59002C */  lw          $t9, 0x2C($s2)
/* 02A54C 0042A54C 8F280098 */  lw          $t0, 0x98($t9)
/* 02A550 0042A550 01101021 */  addu        $v0, $t0, $s0
/* 02A554 0042A554 94490020 */  lhu         $t1, 0x20($v0)
/* 02A558 0042A558 5120000B */  beql        $t1, $zero, .L0042A588
/* 02A55C 0042A55C 8E42002C */   lw         $v0, 0x2C($s2)
/* 02A560 0042A560 8F998254 */  lw          $t9, %call16(ldfseek)($gp)
/* 02A564 0042A564 02402025 */  move        $a0, $s2
/* 02A568 0042A568 8C450018 */  lw          $a1, 0x18($v0)
/* 02A56C 0042A56C 0320F809 */  jalr        $t9
/* 02A570 0042A570 00003025 */   move       $a2, $zero
/* 02A574 0042A574 14400003 */  bnez        $v0, .L0042A584
/* 02A578 0042A578 8FBC0028 */   lw         $gp, 0x28($sp)
/* 02A57C 0042A57C 1000000A */  b           .L0042A5A8
/* 02A580 0042A580 24020001 */   addiu      $v0, $zero, 0x1
.L0042A584:
/* 02A584 0042A584 8E42002C */  lw          $v0, 0x2C($s2)
.L0042A588:
/* 02A588 0042A588 26310001 */  addiu       $s1, $s1, 0x1
/* 02A58C 0042A58C 26100028 */  addiu       $s0, $s0, 0x28
/* 02A590 0042A590 8C4A0090 */  lw          $t2, 0x90($v0)
/* 02A594 0042A594 954B0002 */  lhu         $t3, 0x2($t2)
/* 02A598 0042A598 022B082B */  sltu        $at, $s1, $t3
/* 02A59C 0042A59C 1420FFE3 */  bnez        $at, .L0042A52C
/* 02A5A0 0042A5A0 00000000 */   nop
/* 02A5A4 0042A5A4 00001025 */  move        $v0, $zero
.L0042A5A8:
/* 02A5A8 0042A5A8 8FBF002C */  lw          $ra, 0x2C($sp)
/* 02A5AC 0042A5AC 8FB00018 */  lw          $s0, 0x18($sp)
/* 02A5B0 0042A5B0 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02A5B4 0042A5B4 8FB20020 */  lw          $s2, 0x20($sp)
/* 02A5B8 0042A5B8 8FB30024 */  lw          $s3, 0x24($sp)
/* 02A5BC 0042A5BC 03E00008 */  jr          $ra
/* 02A5C0 0042A5C0 27BD0030 */   addiu      $sp, $sp, 0x30