glabel foreach_obj # 550
/* 034AF8 00434AF8 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 034AFC 00434AFC 279CE268 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDE268
/* 034B00 00434B00 0399E021 */  addu        $gp, $gp, $t9
/* 034B04 00434B04 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 034B08 00434B08 AFB20020 */  sw          $s2, 0x20($sp)
/* 034B0C 00434B0C AFB1001C */  sw          $s1, 0x1C($sp)
/* 034B10 00434B10 00C08825 */  move        $s1, $a2
/* 034B14 00434B14 00A09025 */  move        $s2, $a1
/* 034B18 00434B18 AFBF002C */  sw          $ra, 0x2C($sp)
/* 034B1C 00434B1C AFBC0028 */  sw          $gp, 0x28($sp)
/* 034B20 00434B20 AFB30024 */  sw          $s3, 0x24($sp)
/* 034B24 00434B24 AFB00018 */  sw          $s0, 0x18($sp)
/* 034B28 00434B28 1080000E */  beqz        $a0, .L00434B64
/* 034B2C 00434B2C 00803825 */   move       $a3, $a0
/* 034B30 00434B30 2413FFFF */  addiu       $s3, $zero, -0x1
.L00434B34:
/* 034B34 00434B34 8CF00004 */  lw          $s0, 0x4($a3)
/* 034B38 00434B38 8CE40000 */  lw          $a0, 0x0($a3)
/* 034B3C 00434B3C 02202825 */  move        $a1, $s1
/* 034B40 00434B40 00E03025 */  move        $a2, $a3
/* 034B44 00434B44 0240F809 */  jalr        $s2
/* 034B48 00434B48 0240C825 */   move       $t9, $s2
/* 034B4C 00434B4C 10530003 */  beq         $v0, $s3, .L00434B5C
/* 034B50 00434B50 8FBC0028 */   lw         $gp, 0x28($sp)
/* 034B54 00434B54 10000005 */  b           .L00434B6C
/* 034B58 00434B58 8FBF002C */   lw         $ra, 0x2C($sp)
.L00434B5C:
/* 034B5C 00434B5C 1600FFF5 */  bnez        $s0, .L00434B34
/* 034B60 00434B60 02003825 */   move       $a3, $s0
.L00434B64:
/* 034B64 00434B64 2402FFFF */  addiu       $v0, $zero, -0x1
/* 034B68 00434B68 8FBF002C */  lw          $ra, 0x2C($sp)
.L00434B6C:
/* 034B6C 00434B6C 8FB00018 */  lw          $s0, 0x18($sp)
/* 034B70 00434B70 8FB1001C */  lw          $s1, 0x1C($sp)
/* 034B74 00434B74 8FB20020 */  lw          $s2, 0x20($sp)
/* 034B78 00434B78 8FB30024 */  lw          $s3, 0x24($sp)
/* 034B7C 00434B7C 03E00008 */  jr          $ra
/* 034B80 00434B80 27BD0030 */   addiu      $sp, $sp, 0x30
