glabel type_deref # 635
/* 03E850 0043E850 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03E854 0043E854 279C4510 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD4510
/* 03E858 0043E858 0399E021 */  addu        $gp, $gp, $t9
/* 03E85C 0043E85C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03E860 0043E860 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03E864 0043E864 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03E868 0043E868 8CAE0004 */  lw          $t6, 0x4($a1)
/* 03E86C 0043E86C 55C00015 */  bnel        $t6, $zero, .L0043E8C4
/* 03E870 0043E870 8CA20028 */   lw         $v0, 0x28($a1)
/* 03E874 0043E874 8CA20008 */  lw          $v0, 0x8($a1)
/* 03E878 0043E878 04400004 */  bltz        $v0, .L0043E88C
/* 03E87C 0043E87C 00027823 */   negu       $t7, $v0
/* 03E880 0043E880 00401825 */  move        $v1, $v0
/* 03E884 0043E884 10000003 */  b           .L0043E894
/* 03E888 0043E888 ACA20028 */   sw         $v0, 0x28($a1)
.L0043E88C:
/* 03E88C 0043E88C ACAF0028 */  sw          $t7, 0x28($a1)
/* 03E890 0043E890 00401825 */  move        $v1, $v0
.L0043E894:
/* 03E894 0043E894 8F998024 */  lw          $t9, %got(func_0043E1C8)($gp)
/* 03E898 0043E898 ACA00010 */  sw          $zero, 0x10($a1)
/* 03E89C 0043E89C ACA00044 */  sw          $zero, 0x44($a1)
/* 03E8A0 0043E8A0 ACA00018 */  sw          $zero, 0x18($a1)
/* 03E8A4 0043E8A4 ACA00014 */  sw          $zero, 0x14($a1)
/* 03E8A8 0043E8A8 ACA30004 */  sw          $v1, 0x4($a1)
/* 03E8AC 0043E8AC 2739E1C8 */  addiu       $t9, $t9, %lo(func_0043E1C8)
/* 03E8B0 0043E8B0 0320F809 */  jalr        $t9
/* 03E8B4 0043E8B4 AFA50024 */   sw         $a1, 0x24($sp)
/* 03E8B8 0043E8B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03E8BC 0043E8BC 8FA50024 */  lw          $a1, 0x24($sp)
/* 03E8C0 0043E8C0 8CA20028 */  lw          $v0, 0x28($a1)
.L0043E8C4:
/* 03E8C4 0043E8C4 2401FFFF */  addiu       $at, $zero, -0x1
/* 03E8C8 0043E8C8 10410006 */  beq         $v0, $at, .L0043E8E4
/* 03E8CC 0043E8CC ACA2002C */   sw         $v0, 0x2C($a1)
/* 03E8D0 0043E8D0 8F9985BC */  lw          $t9, %call16(next_tq)($gp)
/* 03E8D4 0043E8D4 00A02025 */  move        $a0, $a1
/* 03E8D8 0043E8D8 0320F809 */  jalr        $t9
/* 03E8DC 0043E8DC 00000000 */   nop
/* 03E8E0 0043E8E0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043E8E4:
/* 03E8E4 0043E8E4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03E8E8 0043E8E8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03E8EC 0043E8EC 03E00008 */  jr          $ra
/* 03E8F0 0043E8F0 00000000 */   nop
/* 03E8F4 0043E8F4 00000000 */  nop
/* 03E8F8 0043E8F8 00000000 */  nop
/* 03E8FC 0043E8FC 00000000 */  nop
