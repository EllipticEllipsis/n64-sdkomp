glabel st_str_ifd_iss # 668
/* 040A10 00440A10 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040A14 00440A14 279C2350 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD2350
/* 040A18 00440A18 0399E021 */  addu        $gp, $gp, $t9
/* 040A1C 00440A1C 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 040A20 00440A20 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 040A24 00440A24 AFBF001C */  sw          $ra, 0x1C($sp)
/* 040A28 00440A28 8DCE0000 */  lw          $t6, 0x0($t6)
/* 040A2C 00440A2C AFBC0018 */  sw          $gp, 0x18($sp)
/* 040A30 00440A30 00803025 */  move        $a2, $a0
/* 040A34 00440A34 8DCF0004 */  lw          $t7, 0x4($t6)
/* 040A38 00440A38 55E0000B */  bnel        $t7, $zero, .L00440A68
/* 040A3C 00440A3C 3C017FFF */   lui        $at, (0x7FFFFFFF >> 16)
/* 040A40 00440A40 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 040A44 00440A44 8F848030 */  lw          $a0, %got(D_1000AC40)($gp)
/* 040A48 00440A48 AFA50024 */  sw          $a1, 0x24($sp)
/* 040A4C 00440A4C AFA60020 */  sw          $a2, 0x20($sp)
/* 040A50 00440A50 0320F809 */  jalr        $t9
/* 040A54 00440A54 2484AC40 */   addiu      $a0, $a0, %lo(D_1000AC40)
/* 040A58 00440A58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 040A5C 00440A5C 8FA50024 */  lw          $a1, 0x24($sp)
/* 040A60 00440A60 8FA60020 */  lw          $a2, 0x20($sp)
/* 040A64 00440A64 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
.L00440A68:
/* 040A68 00440A68 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 040A6C 00440A6C 14C10007 */  bne         $a2, $at, .L00440A8C
/* 040A70 00440A70 00000000 */   nop
/* 040A74 00440A74 8F998620 */  lw          $t9, %call16(_md_st_str_extiss)($gp)
/* 040A78 00440A78 00A02025 */  move        $a0, $a1
/* 040A7C 00440A7C 0320F809 */  jalr        $t9
/* 040A80 00440A80 00000000 */   nop
/* 040A84 00440A84 10000012 */  b           .L00440AD0
/* 040A88 00440A88 8FBC0018 */   lw         $gp, 0x18($sp)
.L00440A8C:
/* 040A8C 00440A8C 8F998608 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 040A90 00440A90 00C02025 */  move        $a0, $a2
/* 040A94 00440A94 AFA50024 */  sw          $a1, 0x24($sp)
/* 040A98 00440A98 0320F809 */  jalr        $t9
/* 040A9C 00440A9C 00000000 */   nop
/* 040AA0 00440AA0 8C580000 */  lw          $t8, 0x0($v0)
/* 040AA4 00440AA4 8FA50024 */  lw          $a1, 0x24($sp)
/* 040AA8 00440AA8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 040AAC 00440AAC 8F03000C */  lw          $v1, 0xC($t8)
/* 040AB0 00440AB0 10600006 */  beqz        $v1, .L00440ACC
/* 040AB4 00440AB4 00A3082A */   slt        $at, $a1, $v1
/* 040AB8 00440AB8 50200005 */  beql        $at, $zero, .L00440AD0
/* 040ABC 00440ABC 00001025 */   move       $v0, $zero
/* 040AC0 00440AC0 8C590014 */  lw          $t9, 0x14($v0)
/* 040AC4 00440AC4 10000002 */  b           .L00440AD0
/* 040AC8 00440AC8 03251021 */   addu       $v0, $t9, $a1
.L00440ACC:
/* 040ACC 00440ACC 00001025 */  move        $v0, $zero
.L00440AD0:
/* 040AD0 00440AD0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 040AD4 00440AD4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 040AD8 00440AD8 03E00008 */  jr          $ra
/* 040ADC 00440ADC 00000000 */   nop
