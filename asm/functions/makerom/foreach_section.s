glabel foreach_section # 554
/* 034D50 00434D50 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 034D54 00434D54 279CE010 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDE010
/* 034D58 00434D58 0399E021 */  addu        $gp, $gp, $t9
/* 034D5C 00434D5C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 034D60 00434D60 AFBF0034 */  sw          $ra, 0x34($sp)
/* 034D64 00434D64 AFBC0030 */  sw          $gp, 0x30($sp)
/* 034D68 00434D68 AFB5002C */  sw          $s5, 0x2C($sp)
/* 034D6C 00434D6C AFB40028 */  sw          $s4, 0x28($sp)
/* 034D70 00434D70 AFB30024 */  sw          $s3, 0x24($sp)
/* 034D74 00434D74 AFB20020 */  sw          $s2, 0x20($sp)
/* 034D78 00434D78 AFB1001C */  sw          $s1, 0x1C($sp)
/* 034D7C 00434D7C AFB00018 */  sw          $s0, 0x18($sp)
/* 034D80 00434D80 8C8E008C */  lw          $t6, 0x8C($a0)
/* 034D84 00434D84 24010002 */  addiu       $at, $zero, 0x2
/* 034D88 00434D88 00808825 */  move        $s1, $a0
/* 034D8C 00434D8C 00C0A025 */  move        $s4, $a2
/* 034D90 00434D90 15C1001B */  bne         $t6, $at, .L00434E00
/* 034D94 00434D94 00A0A825 */   move       $s5, $a1
/* 034D98 00434D98 8C8F0090 */  lw          $t7, 0x90($a0)
/* 034D9C 00434D9C 00009025 */  move        $s2, $zero
/* 034DA0 00434DA0 00008025 */  move        $s0, $zero
/* 034DA4 00434DA4 95F80002 */  lhu         $t8, 0x2($t7)
/* 034DA8 00434DA8 2413FFFF */  addiu       $s3, $zero, -0x1
/* 034DAC 00434DAC 13000012 */  beqz        $t8, .L00434DF8
/* 034DB0 00434DB0 00000000 */   nop
/* 034DB4 00434DB4 8E390098 */  lw          $t9, 0x98($s1)
.L00434DB8:
/* 034DB8 00434DB8 02202025 */  move        $a0, $s1
/* 034DBC 00434DBC 02803025 */  move        $a2, $s4
/* 034DC0 00434DC0 03302821 */  addu        $a1, $t9, $s0
/* 034DC4 00434DC4 02A0F809 */  jalr        $s5
/* 034DC8 00434DC8 02A0C825 */   move       $t9, $s5
/* 034DCC 00434DCC 10530003 */  beq         $v0, $s3, .L00434DDC
/* 034DD0 00434DD0 8FBC0030 */   lw         $gp, 0x30($sp)
/* 034DD4 00434DD4 10000024 */  b           .L00434E68
/* 034DD8 00434DD8 8FBF0034 */   lw         $ra, 0x34($sp)
.L00434DDC:
/* 034DDC 00434DDC 8E280090 */  lw          $t0, 0x90($s1)
/* 034DE0 00434DE0 26520001 */  addiu       $s2, $s2, 0x1
/* 034DE4 00434DE4 26100028 */  addiu       $s0, $s0, 0x28
/* 034DE8 00434DE8 95090002 */  lhu         $t1, 0x2($t0)
/* 034DEC 00434DEC 0249082B */  sltu        $at, $s2, $t1
/* 034DF0 00434DF0 5420FFF1 */  bnel        $at, $zero, .L00434DB8
/* 034DF4 00434DF4 8E390098 */   lw         $t9, 0x98($s1)
.L00434DF8:
/* 034DF8 00434DF8 1000001A */  b           .L00434E64
/* 034DFC 00434DFC 2402FFFF */   addiu      $v0, $zero, -0x1
.L00434E00:
/* 034E00 00434E00 8E2A00E0 */  lw          $t2, 0xE0($s1)
/* 034E04 00434E04 00009025 */  move        $s2, $zero
/* 034E08 00434E08 00008025 */  move        $s0, $zero
/* 034E0C 00434E0C 954B0030 */  lhu         $t3, 0x30($t2)
/* 034E10 00434E10 2413FFFF */  addiu       $s3, $zero, -0x1
/* 034E14 00434E14 51600013 */  beql        $t3, $zero, .L00434E64
/* 034E18 00434E18 2402FFFF */   addiu      $v0, $zero, -0x1
/* 034E1C 00434E1C 8E2C00E8 */  lw          $t4, 0xE8($s1)
.L00434E20:
/* 034E20 00434E20 02202025 */  move        $a0, $s1
/* 034E24 00434E24 02803025 */  move        $a2, $s4
/* 034E28 00434E28 02A0C825 */  move        $t9, $s5
/* 034E2C 00434E2C 02A0F809 */  jalr        $s5
/* 034E30 00434E30 01902821 */   addu       $a1, $t4, $s0
/* 034E34 00434E34 10530003 */  beq         $v0, $s3, .L00434E44
/* 034E38 00434E38 8FBC0030 */   lw         $gp, 0x30($sp)
/* 034E3C 00434E3C 1000000A */  b           .L00434E68
/* 034E40 00434E40 8FBF0034 */   lw         $ra, 0x34($sp)
.L00434E44:
/* 034E44 00434E44 8E2D00E0 */  lw          $t5, 0xE0($s1)
/* 034E48 00434E48 26520001 */  addiu       $s2, $s2, 0x1
/* 034E4C 00434E4C 26100028 */  addiu       $s0, $s0, 0x28
/* 034E50 00434E50 95AE0030 */  lhu         $t6, 0x30($t5)
/* 034E54 00434E54 024E082B */  sltu        $at, $s2, $t6
/* 034E58 00434E58 5420FFF1 */  bnel        $at, $zero, .L00434E20
/* 034E5C 00434E5C 8E2C00E8 */   lw         $t4, 0xE8($s1)
/* 034E60 00434E60 2402FFFF */  addiu       $v0, $zero, -0x1
.L00434E64:
/* 034E64 00434E64 8FBF0034 */  lw          $ra, 0x34($sp)
.L00434E68:
/* 034E68 00434E68 8FB00018 */  lw          $s0, 0x18($sp)
/* 034E6C 00434E6C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 034E70 00434E70 8FB20020 */  lw          $s2, 0x20($sp)
/* 034E74 00434E74 8FB30024 */  lw          $s3, 0x24($sp)
/* 034E78 00434E78 8FB40028 */  lw          $s4, 0x28($sp)
/* 034E7C 00434E7C 8FB5002C */  lw          $s5, 0x2C($sp)
/* 034E80 00434E80 03E00008 */  jr          $ra
/* 034E84 00434E84 27BD0038 */   addiu      $sp, $sp, 0x38
