glabel st_blockbegin # 692
/* 041EE8 00441EE8 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 041EEC 00441EEC 279C0E78 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD0E78
/* 041EF0 00441EF0 0399E021 */  addu        $gp, $gp, $t9
/* 041EF4 00441EF4 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 041EF8 00441EF8 24020001 */  addiu       $v0, $zero, 0x1
/* 041EFC 00441EFC AFBF0024 */  sw          $ra, 0x24($sp)
/* 041F00 00441F00 AFBC0020 */  sw          $gp, 0x20($sp)
/* 041F04 00441F04 14C2000A */  bne         $a2, $v0, .L00441F30
/* 041F08 00441F08 00C03825 */   move       $a3, $a2
/* 041F0C 00441F0C 8F8E8030 */  lw          $t6, %got(B_10010824)($gp)
/* 041F10 00441F10 3C08000F */  lui         $t0, (0xFFFFF >> 16)
/* 041F14 00441F14 8DCE0824 */  lw          $t6, %lo(B_10010824)($t6)
/* 041F18 00441F18 11C00005 */  beqz        $t6, .L00441F30
/* 041F1C 00441F1C 00000000 */   nop
/* 041F20 00441F20 8F818030 */  lw          $at, %got(D_1000AD64)($gp)
/* 041F24 00441F24 3508FFFF */  ori         $t0, $t0, (0xFFFFF & 0xFFFF)
/* 041F28 00441F28 10000008 */  b           .L00441F4C
/* 041F2C 00441F2C AC22AD64 */   sw         $v0, %lo(D_1000AD64)($at)
.L00441F30:
/* 041F30 00441F30 8F998600 */  lw          $t9, %call16(st_symadd)($gp)
/* 041F34 00441F34 24060007 */  addiu       $a2, $zero, 0x7
/* 041F38 00441F38 AFA00010 */  sw          $zero, 0x10($sp)
/* 041F3C 00441F3C 0320F809 */  jalr        $t9
/* 041F40 00441F40 00000000 */   nop
/* 041F44 00441F44 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041F48 00441F48 00404025 */  move        $t0, $v0
.L00441F4C:
/* 041F4C 00441F4C 8F9985D8 */  lw          $t9, %call16(st_currentifd)($gp)
/* 041F50 00441F50 AFA80034 */  sw          $t0, 0x34($sp)
/* 041F54 00441F54 0320F809 */  jalr        $t9
/* 041F58 00441F58 00000000 */   nop
/* 041F5C 00441F5C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041F60 00441F60 8FA80034 */  lw          $t0, 0x34($sp)
/* 041F64 00441F64 AFA2002C */  sw          $v0, 0x2C($sp)
/* 041F68 00441F68 8F858030 */  lw          $a1, %got(B_10010828)($gp)
/* 041F6C 00441F6C 8F898030 */  lw          $t1, %got(B_10010824)($gp)
/* 041F70 00441F70 24060008 */  addiu       $a2, $zero, 0x8
/* 041F74 00441F74 24A50828 */  addiu       $a1, $a1, %lo(B_10010828)
/* 041F78 00441F78 25290824 */  addiu       $t1, $t1, %lo(B_10010824)
/* 041F7C 00441F7C 8D230000 */  lw          $v1, 0x0($t1)
/* 041F80 00441F80 8CAF0000 */  lw          $t7, 0x0($a1)
/* 041F84 00441F84 24070019 */  addiu       $a3, $zero, 0x19
/* 041F88 00441F88 AFA80030 */  sw          $t0, 0x30($sp)
/* 041F8C 00441F8C 006F082A */  slt         $at, $v1, $t7
/* 041F90 00441F90 1420000E */  bnez        $at, .L00441FCC
/* 041F94 00441F94 00000000 */   nop
/* 041F98 00441F98 8F9985FC */  lw          $t9, %call16(st_malloc)($gp)
/* 041F9C 00441F9C 8F848030 */  lw          $a0, %got(B_10010820)($gp)
/* 041FA0 00441FA0 AFA80034 */  sw          $t0, 0x34($sp)
/* 041FA4 00441FA4 0320F809 */  jalr        $t9
/* 041FA8 00441FA8 8C840820 */   lw         $a0, %lo(B_10010820)($a0)
/* 041FAC 00441FAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041FB0 00441FB0 8FA80034 */  lw          $t0, 0x34($sp)
/* 041FB4 00441FB4 8F818030 */  lw          $at, %got(B_10010820)($gp)
/* 041FB8 00441FB8 8F838030 */  lw          $v1, %got(B_10010824)($gp)
/* 041FBC 00441FBC 8F898030 */  lw          $t1, %got(B_10010824)($gp)
/* 041FC0 00441FC0 AC220820 */  sw          $v0, %lo(B_10010820)($at)
/* 041FC4 00441FC4 8C630824 */  lw          $v1, %lo(B_10010824)($v1)
/* 041FC8 00441FC8 25290824 */  addiu       $t1, $t1, %lo(B_10010824)
.L00441FCC:
/* 041FCC 00441FCC 8F988030 */  lw          $t8, %got(B_10010820)($gp)
/* 041FD0 00441FD0 27A2002C */  addiu       $v0, $sp, 0x2C
/* 041FD4 00441FD4 8C4C0000 */  lw          $t4, 0x0($v0)
/* 041FD8 00441FD8 8F180820 */  lw          $t8, %lo(B_10010820)($t8)
/* 041FDC 00441FDC 0003C8C0 */  sll         $t9, $v1, 3
/* 041FE0 00441FE0 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 041FE4 00441FE4 03195021 */  addu        $t2, $t8, $t9
/* 041FE8 00441FE8 AD4C0000 */  sw          $t4, 0x0($t2)
/* 041FEC 00441FEC 8C4B0004 */  lw          $t3, 0x4($v0)
/* 041FF0 00441FF0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 041FF4 00441FF4 AD4B0004 */  sw          $t3, 0x4($t2)
/* 041FF8 00441FF8 8D2D0000 */  lw          $t5, 0x0($t1)
/* 041FFC 00441FFC 25AE0001 */  addiu       $t6, $t5, 0x1
/* 042000 00442000 15010003 */  bne         $t0, $at, .L00442010
/* 042004 00442004 AD2E0000 */   sw         $t6, 0x0($t1)
/* 042008 00442008 10000008 */  b           .L0044202C
/* 04200C 0044200C 00001025 */   move       $v0, $zero
.L00442010:
/* 042010 00442010 8C440000 */  lw          $a0, 0x0($v0)
/* 042014 00442014 8F9985D0 */  lw          $t9, %call16(st_idn_dn)($gp)
/* 042018 00442018 AFA40000 */  sw          $a0, 0x0($sp)
/* 04201C 0044201C 8C450004 */  lw          $a1, 0x4($v0)
/* 042020 00442020 0320F809 */  jalr        $t9
/* 042024 00442024 AFA50004 */   sw         $a1, 0x4($sp)
/* 042028 00442028 8FBC0020 */  lw          $gp, 0x20($sp)
.L0044202C:
/* 04202C 0044202C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 042030 00442030 27BD0038 */  addiu       $sp, $sp, 0x38
/* 042034 00442034 03E00008 */  jr          $ra
/* 042038 00442038 00000000 */   nop
