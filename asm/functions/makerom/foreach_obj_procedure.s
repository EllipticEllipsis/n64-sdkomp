glabel foreach_obj_procedure # 529
/* 033D48 00433D48 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 033D4C 00433D4C 279CF018 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDF018
/* 033D50 00433D50 0399E021 */  addu        $gp, $gp, $t9
/* 033D54 00433D54 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 033D58 00433D58 AFB5002C */  sw          $s5, 0x2C($sp)
/* 033D5C 00433D5C AFB40028 */  sw          $s4, 0x28($sp)
/* 033D60 00433D60 AFB30024 */  sw          $s3, 0x24($sp)
/* 033D64 00433D64 00809825 */  move        $s3, $a0
/* 033D68 00433D68 00C0A025 */  move        $s4, $a2
/* 033D6C 00433D6C 00A0A825 */  move        $s5, $a1
/* 033D70 00433D70 AFBF0034 */  sw          $ra, 0x34($sp)
/* 033D74 00433D74 AFBC0030 */  sw          $gp, 0x30($sp)
/* 033D78 00433D78 AFB20020 */  sw          $s2, 0x20($sp)
/* 033D7C 00433D7C AFB1001C */  sw          $s1, 0x1C($sp)
/* 033D80 00433D80 10800004 */  beqz        $a0, .L00433D94
/* 033D84 00433D84 AFB00018 */   sw         $s0, 0x18($sp)
/* 033D88 00433D88 8C84009C */  lw          $a0, 0x9C($a0)
/* 033D8C 00433D8C 54800004 */  bnel        $a0, $zero, .L00433DA0
/* 033D90 00433D90 8E7000D4 */   lw         $s0, 0xD4($s3)
.L00433D94:
/* 033D94 00433D94 10000015 */  b           .L00433DEC
/* 033D98 00433D98 2402FFFF */   addiu      $v0, $zero, -0x1
/* 033D9C 00433D9C 8E7000D4 */  lw          $s0, 0xD4($s3)
.L00433DA0:
/* 033DA0 00433DA0 8C830018 */  lw          $v1, 0x18($a0)
/* 033DA4 00433DA4 2412FFFF */  addiu       $s2, $zero, -0x1
/* 033DA8 00433DA8 02038821 */  addu        $s1, $s0, $v1
/* 033DAC 00433DAC 0211082B */  sltu        $at, $s0, $s1
/* 033DB0 00433DB0 1020000D */  beqz        $at, .L00433DE8
/* 033DB4 00433DB4 02602025 */   move       $a0, $s3
.L00433DB8:
/* 033DB8 00433DB8 02002825 */  move        $a1, $s0
/* 033DBC 00433DBC 02803025 */  move        $a2, $s4
/* 033DC0 00433DC0 02A0F809 */  jalr        $s5
/* 033DC4 00433DC4 02A0C825 */   move       $t9, $s5
/* 033DC8 00433DC8 10520003 */  beq         $v0, $s2, .L00433DD8
/* 033DCC 00433DCC 8FBC0030 */   lw         $gp, 0x30($sp)
/* 033DD0 00433DD0 10000007 */  b           .L00433DF0
/* 033DD4 00433DD4 8FBF0034 */   lw         $ra, 0x34($sp)
.L00433DD8:
/* 033DD8 00433DD8 26100001 */  addiu       $s0, $s0, 0x1
/* 033DDC 00433DDC 0211082B */  sltu        $at, $s0, $s1
/* 033DE0 00433DE0 5420FFF5 */  bnel        $at, $zero, .L00433DB8
/* 033DE4 00433DE4 02602025 */   move       $a0, $s3
.L00433DE8:
/* 033DE8 00433DE8 2402FFFF */  addiu       $v0, $zero, -0x1
.L00433DEC:
/* 033DEC 00433DEC 8FBF0034 */  lw          $ra, 0x34($sp)
.L00433DF0:
/* 033DF0 00433DF0 8FB00018 */  lw          $s0, 0x18($sp)
/* 033DF4 00433DF4 8FB1001C */  lw          $s1, 0x1C($sp)
/* 033DF8 00433DF8 8FB20020 */  lw          $s2, 0x20($sp)
/* 033DFC 00433DFC 8FB30024 */  lw          $s3, 0x24($sp)
/* 033E00 00433E00 8FB40028 */  lw          $s4, 0x28($sp)
/* 033E04 00433E04 8FB5002C */  lw          $s5, 0x2C($sp)
/* 033E08 00433E08 03E00008 */  jr          $ra
/* 033E0C 00433E0C 27BD0038 */   addiu      $sp, $sp, 0x38
