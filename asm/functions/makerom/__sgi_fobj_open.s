glabel __sgi_fobj_open # 245
/* 02B4C4 0042B4C4 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02B4C8 0042B4C8 279C789C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE789C
/* 02B4CC 0042B4CC 0399E021 */  addu        $gp, $gp, $t9
/* 02B4D0 0042B4D0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02B4D4 0042B4D4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02B4D8 0042B4D8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 02B4DC 0042B4DC AFB1001C */  sw          $s1, 0x1C($sp)
/* 02B4E0 0042B4E0 AFB00018 */  sw          $s0, 0x18($sp)
/* 02B4E4 0042B4E4 AFA5002C */  sw          $a1, 0x2C($sp)
/* 02B4E8 0042B4E8 90D1000D */  lbu         $s1, 0xD($a2)
/* 02B4EC 0042B4EC 00808025 */  move        $s0, $a0
/* 02B4F0 0042B4F0 06210003 */  bgez        $s1, .L0042B500
/* 02B4F4 0042B4F4 00000000 */   nop
/* 02B4F8 0042B4F8 10000036 */  b           .L0042B5D4
/* 02B4FC 0042B4FC 00001025 */   move       $v0, $zero
.L0042B500:
/* 02B500 0042B500 8F9980C0 */  lw          $t9, %call16(fstat)($gp)
/* 02B504 0042B504 02202025 */  move        $a0, $s1
/* 02B508 0042B508 26050004 */  addiu       $a1, $s0, 0x4
/* 02B50C 0042B50C 0320F809 */  jalr        $t9
/* 02B510 0042B510 00000000 */   nop
/* 02B514 0042B514 10400003 */  beqz        $v0, .L0042B524
/* 02B518 0042B518 8FBC0020 */   lw         $gp, 0x20($sp)
/* 02B51C 0042B51C 1000002D */  b           .L0042B5D4
/* 02B520 0042B520 00001025 */   move       $v0, $zero
.L0042B524:
/* 02B524 0042B524 8F9980DC */  lw          $t9, %call16(lseek)($gp)
/* 02B528 0042B528 02202025 */  move        $a0, $s1
/* 02B52C 0042B52C 00002825 */  move        $a1, $zero
/* 02B530 0042B530 0320F809 */  jalr        $t9
/* 02B534 0042B534 00003025 */   move       $a2, $zero
/* 02B538 0042B538 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B53C 0042B53C 8E040034 */  lw          $a0, 0x34($s0)
/* 02B540 0042B540 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 02B544 0042B544 0320F809 */  jalr        $t9
/* 02B548 0042B548 00000000 */   nop
/* 02B54C 0042B54C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B550 0042B550 14400003 */  bnez        $v0, .L0042B560
/* 02B554 0042B554 00402825 */   move       $a1, $v0
/* 02B558 0042B558 1000001E */  b           .L0042B5D4
/* 02B55C 0042B55C 00001025 */   move       $v0, $zero
.L0042B560:
/* 02B560 0042B560 AE0500C4 */  sw          $a1, 0xC4($s0)
/* 02B564 0042B564 8F9980C8 */  lw          $t9, %call16(read)($gp)
/* 02B568 0042B568 02202025 */  move        $a0, $s1
/* 02B56C 0042B56C 8E060034 */  lw          $a2, 0x34($s0)
/* 02B570 0042B570 0320F809 */  jalr        $t9
/* 02B574 0042B574 00000000 */   nop
/* 02B578 0042B578 8E0E0034 */  lw          $t6, 0x34($s0)
/* 02B57C 0042B57C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 02B580 0042B580 504E0004 */  beql        $v0, $t6, .L0042B594
/* 02B584 0042B584 8E0F00C4 */   lw         $t7, 0xC4($s0)
/* 02B588 0042B588 10000012 */  b           .L0042B5D4
/* 02B58C 0042B58C 00001025 */   move       $v0, $zero
/* 02B590 0042B590 8E0F00C4 */  lw          $t7, 0xC4($s0)
.L0042B594:
/* 02B594 0042B594 15E00003 */  bnez        $t7, .L0042B5A4
/* 02B598 0042B598 00000000 */   nop
/* 02B59C 0042B59C 1000000D */  b           .L0042B5D4
/* 02B5A0 0042B5A0 00001025 */   move       $v0, $zero
.L0042B5A4:
/* 02B5A4 0042B5A4 8F998278 */  lw          $t9, %call16(obj_init)($gp)
/* 02B5A8 0042B5A8 02002025 */  move        $a0, $s0
/* 02B5AC 0042B5AC 24050001 */  addiu       $a1, $zero, 0x1
/* 02B5B0 0042B5B0 0320F809 */  jalr        $t9
/* 02B5B4 0042B5B4 00000000 */   nop
/* 02B5B8 0042B5B8 14400003 */  bnez        $v0, .L0042B5C8
/* 02B5BC 0042B5BC 8FBC0020 */   lw         $gp, 0x20($sp)
/* 02B5C0 0042B5C0 10000004 */  b           .L0042B5D4
/* 02B5C4 0042B5C4 00001025 */   move       $v0, $zero
.L0042B5C8:
/* 02B5C8 0042B5C8 8FB8002C */  lw          $t8, 0x2C($sp)
/* 02B5CC 0042B5CC 02001025 */  move        $v0, $s0
/* 02B5D0 0042B5D0 AE1800DC */  sw          $t8, 0xDC($s0)
.L0042B5D4:
/* 02B5D4 0042B5D4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02B5D8 0042B5D8 8FB00018 */  lw          $s0, 0x18($sp)
/* 02B5DC 0042B5DC 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02B5E0 0042B5E0 03E00008 */  jr          $ra
/* 02B5E4 0042B5E4 27BD0028 */   addiu      $sp, $sp, 0x28
