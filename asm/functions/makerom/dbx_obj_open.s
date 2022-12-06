glabel dbx_obj_open # 247
/* 02B750 0042B750 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02B754 0042B754 279C7610 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE7610
/* 02B758 0042B758 0399E021 */  addu        $gp, $gp, $t9
/* 02B75C 0042B75C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02B760 0042B760 8F9980B8 */  lw          $t9, %call16(open)($gp)
/* 02B764 0042B764 AFB0001C */  sw          $s0, 0x1C($sp)
/* 02B768 0042B768 00808025 */  move        $s0, $a0
/* 02B76C 0042B76C AFBF0024 */  sw          $ra, 0x24($sp)
/* 02B770 0042B770 AFA50034 */  sw          $a1, 0x34($sp)
/* 02B774 0042B774 00A02025 */  move        $a0, $a1
/* 02B778 0042B778 AFBC0020 */  sw          $gp, 0x20($sp)
/* 02B77C 0042B77C 0320F809 */  jalr        $t9
/* 02B780 0042B780 00002825 */   move       $a1, $zero
/* 02B784 0042B784 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B788 0042B788 04410003 */  bgez        $v0, .L0042B798
/* 02B78C 0042B78C 00402025 */   move       $a0, $v0
/* 02B790 0042B790 10000031 */  b           .L0042B858
/* 02B794 0042B794 00001025 */   move       $v0, $zero
.L0042B798:
/* 02B798 0042B798 8F9980C0 */  lw          $t9, %call16(fstat)($gp)
/* 02B79C 0042B79C 26050004 */  addiu       $a1, $s0, 0x4
/* 02B7A0 0042B7A0 AFA4002C */  sw          $a0, 0x2C($sp)
/* 02B7A4 0042B7A4 0320F809 */  jalr        $t9
/* 02B7A8 0042B7A8 00000000 */   nop
/* 02B7AC 0042B7AC 10400003 */  beqz        $v0, .L0042B7BC
/* 02B7B0 0042B7B0 8FBC0020 */   lw         $gp, 0x20($sp)
/* 02B7B4 0042B7B4 10000028 */  b           .L0042B858
/* 02B7B8 0042B7B8 00001025 */   move       $v0, $zero
.L0042B7BC:
/* 02B7BC 0042B7BC 8F998138 */  lw          $t9, %call16(mmap)($gp)
/* 02B7C0 0042B7C0 8FAE002C */  lw          $t6, 0x2C($sp)
/* 02B7C4 0042B7C4 8E050034 */  lw          $a1, 0x34($s0)
/* 02B7C8 0042B7C8 AFA00014 */  sw          $zero, 0x14($sp)
/* 02B7CC 0042B7CC 00002025 */  move        $a0, $zero
/* 02B7D0 0042B7D0 24060002 */  addiu       $a2, $zero, 0x2
/* 02B7D4 0042B7D4 24070002 */  addiu       $a3, $zero, 0x2
/* 02B7D8 0042B7D8 0320F809 */  jalr        $t9
/* 02B7DC 0042B7DC AFAE0010 */   sw         $t6, 0x10($sp)
/* 02B7E0 0042B7E0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B7E4 0042B7E4 2401FFFF */  addiu       $at, $zero, -0x1
/* 02B7E8 0042B7E8 14410003 */  bne         $v0, $at, .L0042B7F8
/* 02B7EC 0042B7EC AE0200C4 */   sw         $v0, 0xC4($s0)
/* 02B7F0 0042B7F0 10000019 */  b           .L0042B858
/* 02B7F4 0042B7F4 00001025 */   move       $v0, $zero
.L0042B7F8:
/* 02B7F8 0042B7F8 8F9980C4 */  lw          $t9, %call16(close)($gp)
/* 02B7FC 0042B7FC 8F818030 */  lw          $at, %got(D_1000AB40)($gp)
/* 02B800 0042B800 240F0001 */  addiu       $t7, $zero, 0x1
/* 02B804 0042B804 8FA4002C */  lw          $a0, 0x2C($sp)
/* 02B808 0042B808 0320F809 */  jalr        $t9
/* 02B80C 0042B80C AC2FAB40 */   sw         $t7, %lo(D_1000AB40)($at)
/* 02B810 0042B810 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B814 0042B814 02002025 */  move        $a0, $s0
/* 02B818 0042B818 24050001 */  addiu       $a1, $zero, 0x1
/* 02B81C 0042B81C 8F998278 */  lw          $t9, %call16(obj_init)($gp)
/* 02B820 0042B820 0320F809 */  jalr        $t9
/* 02B824 0042B824 00000000 */   nop
/* 02B828 0042B828 14400003 */  bnez        $v0, .L0042B838
/* 02B82C 0042B82C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 02B830 0042B830 10000009 */  b           .L0042B858
/* 02B834 0042B834 00001025 */   move       $v0, $zero
.L0042B838:
/* 02B838 0042B838 8F998020 */  lw          $t9, %got(save_str)($gp)
/* 02B83C 0042B83C 8FA40034 */  lw          $a0, 0x34($sp)
/* 02B840 0042B840 2739B0E0 */  addiu       $t9, $t9, %lo(save_str)
/* 02B844 0042B844 0320F809 */  jalr        $t9
/* 02B848 0042B848 00000000 */   nop
/* 02B84C 0042B84C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B850 0042B850 AE0200DC */  sw          $v0, 0xDC($s0)
/* 02B854 0042B854 02001025 */  move        $v0, $s0
.L0042B858:
/* 02B858 0042B858 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02B85C 0042B85C 8FB0001C */  lw          $s0, 0x1C($sp)
/* 02B860 0042B860 27BD0030 */  addiu       $sp, $sp, 0x30
/* 02B864 0042B864 03E00008 */  jr          $ra
/* 02B868 0042B868 00000000 */   nop
