glabel foreach_sublist # 553
/* 034CB8 00434CB8 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 034CBC 00434CBC 279CE0A8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDE0A8
/* 034CC0 00434CC0 0399E021 */  addu        $gp, $gp, $t9
/* 034CC4 00434CC4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 034CC8 00434CC8 AFB20020 */  sw          $s2, 0x20($sp)
/* 034CCC 00434CCC AFB1001C */  sw          $s1, 0x1C($sp)
/* 034CD0 00434CD0 00C08825 */  move        $s1, $a2
/* 034CD4 00434CD4 00A09025 */  move        $s2, $a1
/* 034CD8 00434CD8 AFBF002C */  sw          $ra, 0x2C($sp)
/* 034CDC 00434CDC AFBC0028 */  sw          $gp, 0x28($sp)
/* 034CE0 00434CE0 AFB30024 */  sw          $s3, 0x24($sp)
/* 034CE4 00434CE4 1080000C */  beqz        $a0, .L00434D18
/* 034CE8 00434CE8 AFB00018 */   sw         $s0, 0x18($sp)
/* 034CEC 00434CEC 2413FFFF */  addiu       $s3, $zero, -0x1
.L00434CF0:
/* 034CF0 00434CF0 8C900004 */  lw          $s0, 0x4($a0)
/* 034CF4 00434CF4 02202825 */  move        $a1, $s1
/* 034CF8 00434CF8 0240F809 */  jalr        $s2
/* 034CFC 00434CFC 0240C825 */   move       $t9, $s2
/* 034D00 00434D00 10530003 */  beq         $v0, $s3, .L00434D10
/* 034D04 00434D04 8FBC0028 */   lw         $gp, 0x28($sp)
/* 034D08 00434D08 10000005 */  b           .L00434D20
/* 034D0C 00434D0C 8FBF002C */   lw         $ra, 0x2C($sp)
.L00434D10:
/* 034D10 00434D10 1600FFF7 */  bnez        $s0, .L00434CF0
/* 034D14 00434D14 02002025 */   move       $a0, $s0
.L00434D18:
/* 034D18 00434D18 2402FFFF */  addiu       $v0, $zero, -0x1
/* 034D1C 00434D1C 8FBF002C */  lw          $ra, 0x2C($sp)
.L00434D20:
/* 034D20 00434D20 8FB00018 */  lw          $s0, 0x18($sp)
/* 034D24 00434D24 8FB1001C */  lw          $s1, 0x1C($sp)
/* 034D28 00434D28 8FB20020 */  lw          $s2, 0x20($sp)
/* 034D2C 00434D2C 8FB30024 */  lw          $s3, 0x24($sp)
/* 034D30 00434D30 03E00008 */  jr          $ra
/* 034D34 00434D34 27BD0030 */   addiu      $sp, $sp, 0x30
/* 034D38 00434D38 00000000 */  nop
/* 034D3C 00434D3C 00000000 */  nop
/* 034D40 00434D40 00000000 */  nop
/* 034D44 00434D44 00000000 */  nop
/* 034D48 00434D48 00000000 */  nop
/* 034D4C 00434D4C 00000000 */  nop
