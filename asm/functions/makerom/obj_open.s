glabel obj_open # 246
/* 02B5E8 0042B5E8 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02B5EC 0042B5EC 279C7778 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE7778
/* 02B5F0 0042B5F0 0399E021 */  addu        $gp, $gp, $t9
/* 02B5F4 0042B5F4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02B5F8 0042B5F8 8F9980B8 */  lw          $t9, %call16(open)($gp)
/* 02B5FC 0042B5FC AFB0001C */  sw          $s0, 0x1C($sp)
/* 02B600 0042B600 00808025 */  move        $s0, $a0
/* 02B604 0042B604 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02B608 0042B608 AFA50034 */  sw          $a1, 0x34($sp)
/* 02B60C 0042B60C 00A02025 */  move        $a0, $a1
/* 02B610 0042B610 AFBC0020 */  sw          $gp, 0x20($sp)
/* 02B614 0042B614 AFA60038 */  sw          $a2, 0x38($sp)
/* 02B618 0042B618 0320F809 */  jalr        $t9
/* 02B61C 0042B61C 00002825 */   move       $a1, $zero
/* 02B620 0042B620 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B624 0042B624 04410003 */  bgez        $v0, .L0042B634
/* 02B628 0042B628 00402025 */   move       $a0, $v0
/* 02B62C 0042B62C 10000043 */  b           .L0042B73C
/* 02B630 0042B630 00001025 */   move       $v0, $zero
.L0042B634:
/* 02B634 0042B634 8F9980C0 */  lw          $t9, %call16(fstat)($gp)
/* 02B638 0042B638 26050004 */  addiu       $a1, $s0, 0x4
/* 02B63C 0042B63C AFA4002C */  sw          $a0, 0x2C($sp)
/* 02B640 0042B640 0320F809 */  jalr        $t9
/* 02B644 0042B644 00000000 */   nop
/* 02B648 0042B648 10400003 */  beqz        $v0, .L0042B658
/* 02B64C 0042B64C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 02B650 0042B650 1000003A */  b           .L0042B73C
/* 02B654 0042B654 00001025 */   move       $v0, $zero
.L0042B658:
/* 02B658 0042B658 8F998138 */  lw          $t9, %call16(mmap)($gp)
/* 02B65C 0042B65C 8FAE002C */  lw          $t6, 0x2C($sp)
/* 02B660 0042B660 8E050034 */  lw          $a1, 0x34($s0)
/* 02B664 0042B664 AFA00014 */  sw          $zero, 0x14($sp)
/* 02B668 0042B668 00002025 */  move        $a0, $zero
/* 02B66C 0042B66C 24060002 */  addiu       $a2, $zero, 0x2
/* 02B670 0042B670 24070002 */  addiu       $a3, $zero, 0x2
/* 02B674 0042B674 0320F809 */  jalr        $t9
/* 02B678 0042B678 AFAE0010 */   sw         $t6, 0x10($sp)
/* 02B67C 0042B67C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B680 0042B680 2401FFFF */  addiu       $at, $zero, -0x1
/* 02B684 0042B684 14410015 */  bne         $v0, $at, .L0042B6DC
/* 02B688 0042B688 AE0200C4 */   sw         $v0, 0xC4($s0)
/* 02B68C 0042B68C 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 02B690 0042B690 8E040034 */  lw          $a0, 0x34($s0)
/* 02B694 0042B694 0320F809 */  jalr        $t9
/* 02B698 0042B698 00000000 */   nop
/* 02B69C 0042B69C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B6A0 0042B6A0 14400003 */  bnez        $v0, .L0042B6B0
/* 02B6A4 0042B6A4 AE0200C4 */   sw         $v0, 0xC4($s0)
/* 02B6A8 0042B6A8 10000024 */  b           .L0042B73C
/* 02B6AC 0042B6AC 00001025 */   move       $v0, $zero
.L0042B6B0:
/* 02B6B0 0042B6B0 8F9980C8 */  lw          $t9, %call16(read)($gp)
/* 02B6B4 0042B6B4 8FA4002C */  lw          $a0, 0x2C($sp)
/* 02B6B8 0042B6B8 8E0500C4 */  lw          $a1, 0xC4($s0)
/* 02B6BC 0042B6BC 0320F809 */  jalr        $t9
/* 02B6C0 0042B6C0 8E060034 */   lw         $a2, 0x34($s0)
/* 02B6C4 0042B6C4 8E0F0034 */  lw          $t7, 0x34($s0)
/* 02B6C8 0042B6C8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B6CC 0042B6CC 104F0003 */  beq         $v0, $t7, .L0042B6DC
/* 02B6D0 0042B6D0 00000000 */   nop
/* 02B6D4 0042B6D4 10000019 */  b           .L0042B73C
/* 02B6D8 0042B6D8 00001025 */   move       $v0, $zero
.L0042B6DC:
/* 02B6DC 0042B6DC 8F9980C4 */  lw          $t9, %call16(close)($gp)
/* 02B6E0 0042B6E0 8F818030 */  lw          $at, %got(D_1000AB40)($gp)
/* 02B6E4 0042B6E4 24180001 */  addiu       $t8, $zero, 0x1
/* 02B6E8 0042B6E8 8FA4002C */  lw          $a0, 0x2C($sp)
/* 02B6EC 0042B6EC 0320F809 */  jalr        $t9
/* 02B6F0 0042B6F0 AC38AB40 */   sw         $t8, %lo(D_1000AB40)($at)
/* 02B6F4 0042B6F4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B6F8 0042B6F8 02002025 */  move        $a0, $s0
/* 02B6FC 0042B6FC 24050001 */  addiu       $a1, $zero, 0x1
/* 02B700 0042B700 8F998278 */  lw          $t9, %call16(obj_init)($gp)
/* 02B704 0042B704 0320F809 */  jalr        $t9
/* 02B708 0042B708 00000000 */   nop
/* 02B70C 0042B70C 14400003 */  bnez        $v0, .L0042B71C
/* 02B710 0042B710 8FBC0020 */   lw         $gp, 0x20($sp)
/* 02B714 0042B714 10000009 */  b           .L0042B73C
/* 02B718 0042B718 00001025 */   move       $v0, $zero
.L0042B71C:
/* 02B71C 0042B71C 8F998020 */  lw          $t9, %got(func_0042B0E0)($gp)
/* 02B720 0042B720 8FA40034 */  lw          $a0, 0x34($sp)
/* 02B724 0042B724 2739B0E0 */  addiu       $t9, $t9, %lo(func_0042B0E0)
/* 02B728 0042B728 0320F809 */  jalr        $t9
/* 02B72C 0042B72C 00000000 */   nop
/* 02B730 0042B730 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B734 0042B734 AE0200DC */  sw          $v0, 0xDC($s0)
/* 02B738 0042B738 02001025 */  move        $v0, $s0
.L0042B73C:
/* 02B73C 0042B73C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02B740 0042B740 8FB0001C */  lw          $s0, 0x1C($sp)
/* 02B744 0042B744 27BD0030 */  addiu       $sp, $sp, 0x30
/* 02B748 0042B748 03E00008 */  jr          $ra
/* 02B74C 0042B74C 00000000 */   nop
