glabel _sgi_st_blockbegin # 691
/* 041D90 00441D90 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 041D94 00441D94 279C0FD0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD0FD0
/* 041D98 00441D98 0399E021 */  addu        $gp, $gp, $t9
/* 041D9C 00441D9C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 041DA0 00441DA0 24020001 */  addiu       $v0, $zero, 0x1
/* 041DA4 00441DA4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 041DA8 00441DA8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 041DAC 00441DAC AFA60040 */  sw          $a2, 0x40($sp)
/* 041DB0 00441DB0 14C2000A */  bne         $a2, $v0, .L00441DDC
/* 041DB4 00441DB4 AFA70044 */   sw         $a3, 0x44($sp)
/* 041DB8 00441DB8 8F8F8030 */  lw          $t7, %got(B_10010824)($gp)
/* 041DBC 00441DBC 3C08000F */  lui         $t0, (0xFFFFF >> 16)
/* 041DC0 00441DC0 8DEF0824 */  lw          $t7, %lo(B_10010824)($t7)
/* 041DC4 00441DC4 11E00005 */  beqz        $t7, .L00441DDC
/* 041DC8 00441DC8 00000000 */   nop
/* 041DCC 00441DCC 8F818030 */  lw          $at, %got(D_1000AD64)($gp)
/* 041DD0 00441DD0 3508FFFF */  ori         $t0, $t0, (0xFFFFF & 0xFFFF)
/* 041DD4 00441DD4 10000008 */  b           .L00441DF8
/* 041DD8 00441DD8 AC22AD64 */   sw         $v0, %lo(D_1000AD64)($at)
.L00441DDC:
/* 041DDC 00441DDC 8F998600 */  lw          $t9, %call16(st_symadd)($gp)
/* 041DE0 00441DE0 8FA60044 */  lw          $a2, 0x44($sp)
/* 041DE4 00441DE4 8FA70040 */  lw          $a3, 0x40($sp)
/* 041DE8 00441DE8 0320F809 */  jalr        $t9
/* 041DEC 00441DEC AFA00010 */   sw         $zero, 0x10($sp)
/* 041DF0 00441DF0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041DF4 00441DF4 00404025 */  move        $t0, $v0
.L00441DF8:
/* 041DF8 00441DF8 8F9985D8 */  lw          $t9, %call16(st_currentifd)($gp)
/* 041DFC 00441DFC AFA80034 */  sw          $t0, 0x34($sp)
/* 041E00 00441E00 0320F809 */  jalr        $t9
/* 041E04 00441E04 00000000 */   nop
/* 041E08 00441E08 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041E0C 00441E0C 8FA80034 */  lw          $t0, 0x34($sp)
/* 041E10 00441E10 AFA2002C */  sw          $v0, 0x2C($sp)
/* 041E14 00441E14 8F858030 */  lw          $a1, %got(B_10010828)($gp)
/* 041E18 00441E18 8F898030 */  lw          $t1, %got(B_10010824)($gp)
/* 041E1C 00441E1C 24060008 */  addiu       $a2, $zero, 0x8
/* 041E20 00441E20 24A50828 */  addiu       $a1, $a1, %lo(B_10010828)
/* 041E24 00441E24 25290824 */  addiu       $t1, $t1, %lo(B_10010824)
/* 041E28 00441E28 8D230000 */  lw          $v1, 0x0($t1)
/* 041E2C 00441E2C 8CB80000 */  lw          $t8, 0x0($a1)
/* 041E30 00441E30 24070019 */  addiu       $a3, $zero, 0x19
/* 041E34 00441E34 AFA80030 */  sw          $t0, 0x30($sp)
/* 041E38 00441E38 0078082A */  slt         $at, $v1, $t8
/* 041E3C 00441E3C 1420000E */  bnez        $at, .L00441E78
/* 041E40 00441E40 00000000 */   nop
/* 041E44 00441E44 8F9985FC */  lw          $t9, %call16(st_malloc)($gp)
/* 041E48 00441E48 8F848030 */  lw          $a0, %got(B_10010820)($gp)
/* 041E4C 00441E4C AFA80034 */  sw          $t0, 0x34($sp)
/* 041E50 00441E50 0320F809 */  jalr        $t9
/* 041E54 00441E54 8C840820 */   lw         $a0, %lo(B_10010820)($a0)
/* 041E58 00441E58 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041E5C 00441E5C 8FA80034 */  lw          $t0, 0x34($sp)
/* 041E60 00441E60 8F818030 */  lw          $at, %got(B_10010820)($gp)
/* 041E64 00441E64 8F838030 */  lw          $v1, %got(B_10010824)($gp)
/* 041E68 00441E68 8F898030 */  lw          $t1, %got(B_10010824)($gp)
/* 041E6C 00441E6C AC220820 */  sw          $v0, %lo(B_10010820)($at)
/* 041E70 00441E70 8C630824 */  lw          $v1, %lo(B_10010824)($v1)
/* 041E74 00441E74 25290824 */  addiu       $t1, $t1, %lo(B_10010824)
.L00441E78:
/* 041E78 00441E78 8F998030 */  lw          $t9, %got(B_10010820)($gp)
/* 041E7C 00441E7C 27A2002C */  addiu       $v0, $sp, 0x2C
/* 041E80 00441E80 8C4D0000 */  lw          $t5, 0x0($v0)
/* 041E84 00441E84 8F390820 */  lw          $t9, %lo(B_10010820)($t9)
/* 041E88 00441E88 000350C0 */  sll         $t2, $v1, 3
/* 041E8C 00441E8C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 041E90 00441E90 032A5821 */  addu        $t3, $t9, $t2
/* 041E94 00441E94 AD6D0000 */  sw          $t5, 0x0($t3)
/* 041E98 00441E98 8C4C0004 */  lw          $t4, 0x4($v0)
/* 041E9C 00441E9C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 041EA0 00441EA0 AD6C0004 */  sw          $t4, 0x4($t3)
/* 041EA4 00441EA4 8D2E0000 */  lw          $t6, 0x0($t1)
/* 041EA8 00441EA8 25CF0001 */  addiu       $t7, $t6, 0x1
/* 041EAC 00441EAC 15010003 */  bne         $t0, $at, .L00441EBC
/* 041EB0 00441EB0 AD2F0000 */   sw         $t7, 0x0($t1)
/* 041EB4 00441EB4 10000008 */  b           .L00441ED8
/* 041EB8 00441EB8 00001025 */   move       $v0, $zero
.L00441EBC:
/* 041EBC 00441EBC 8C440000 */  lw          $a0, 0x0($v0)
/* 041EC0 00441EC0 8F9985D0 */  lw          $t9, %call16(st_idn_dn)($gp)
/* 041EC4 00441EC4 AFA40000 */  sw          $a0, 0x0($sp)
/* 041EC8 00441EC8 8C450004 */  lw          $a1, 0x4($v0)
/* 041ECC 00441ECC 0320F809 */  jalr        $t9
/* 041ED0 00441ED0 AFA50004 */   sw         $a1, 0x4($sp)
/* 041ED4 00441ED4 8FBC0020 */  lw          $gp, 0x20($sp)
.L00441ED8:
/* 041ED8 00441ED8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 041EDC 00441EDC 27BD0038 */  addiu       $sp, $sp, 0x38
/* 041EE0 00441EE0 03E00008 */  jr          $ra
/* 041EE4 00441EE4 00000000 */   nop
