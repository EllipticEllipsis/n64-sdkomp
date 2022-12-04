glabel func_00434E88 # 555
/* 034E88 00434E88 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 034E8C 00434E8C 279CDED8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDDED8
/* 034E90 00434E90 0399E021 */  addu        $gp, $gp, $t9
/* 034E94 00434E94 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 034E98 00434E98 8F998448 */  lw          $t9, %call16(obj_section_vaddr)($gp)
/* 034E9C 00434E9C AFBF0024 */  sw          $ra, 0x24($sp)
/* 034EA0 00434EA0 AFB2001C */  sw          $s2, 0x1C($sp)
/* 034EA4 00434EA4 AFB10018 */  sw          $s1, 0x18($sp)
/* 034EA8 00434EA8 00808825 */  move        $s1, $a0
/* 034EAC 00434EAC 00A09025 */  move        $s2, $a1
/* 034EB0 00434EB0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 034EB4 00434EB4 AFB00014 */  sw          $s0, 0x14($sp)
/* 034EB8 00434EB8 0320F809 */  jalr        $t9
/* 034EBC 00434EBC AFA60040 */   sw         $a2, 0x40($sp)
/* 034EC0 00434EC0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 034EC4 00434EC4 00408025 */  move        $s0, $v0
/* 034EC8 00434EC8 02202025 */  move        $a0, $s1
/* 034ECC 00434ECC 8F998390 */  lw          $t9, %call16(obj_text_start)($gp)
/* 034ED0 00434ED0 0320F809 */  jalr        $t9
/* 034ED4 00434ED4 00000000 */   nop
/* 034ED8 00434ED8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 034EDC 00434EDC AFA2002C */  sw          $v0, 0x2C($sp)
/* 034EE0 00434EE0 02202025 */  move        $a0, $s1
/* 034EE4 00434EE4 8F9982C8 */  lw          $t9, %call16(obj_base_address)($gp)
/* 034EE8 00434EE8 0320F809 */  jalr        $t9
/* 034EEC 00434EEC 00000000 */   nop
/* 034EF0 00434EF0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 034EF4 00434EF4 8FAE002C */  lw          $t6, 0x2C($sp)
/* 034EF8 00434EF8 02202025 */  move        $a0, $s1
/* 034EFC 00434EFC 8F99844C */  lw          $t9, %call16(obj_section_size)($gp)
/* 034F00 00434F00 020E7821 */  addu        $t7, $s0, $t6
/* 034F04 00434F04 01E28023 */  subu        $s0, $t7, $v0
/* 034F08 00434F08 0320F809 */  jalr        $t9
/* 034F0C 00434F0C 02402825 */   move       $a1, $s2
/* 034F10 00434F10 8FA60040 */  lw          $a2, 0x40($sp)
/* 034F14 00434F14 8FBC0020 */  lw          $gp, 0x20($sp)
/* 034F18 00434F18 00401825 */  move        $v1, $v0
/* 034F1C 00434F1C 00D0082B */  sltu        $at, $a2, $s0
/* 034F20 00434F20 14200006 */  bnez        $at, .L00434F3C
/* 034F24 00434F24 0202C021 */   addu       $t8, $s0, $v0
/* 034F28 00434F28 00D8082B */  sltu        $at, $a2, $t8
/* 034F2C 00434F2C 10200003 */  beqz        $at, .L00434F3C
/* 034F30 00434F30 00000000 */   nop
/* 034F34 00434F34 10000011 */  b           .L00434F7C
/* 034F38 00434F38 02401025 */   move       $v0, $s2
.L00434F3C:
/* 034F3C 00434F3C 8F99852C */  lw          $t9, %call16(section_type)($gp)
/* 034F40 00434F40 02202025 */  move        $a0, $s1
/* 034F44 00434F44 02402825 */  move        $a1, $s2
/* 034F48 00434F48 0320F809 */  jalr        $t9
/* 034F4C 00434F4C AFA30030 */   sw         $v1, 0x30($sp)
/* 034F50 00434F50 24010006 */  addiu       $at, $zero, 0x6
/* 034F54 00434F54 8FBC0020 */  lw          $gp, 0x20($sp)
/* 034F58 00434F58 14410007 */  bne         $v0, $at, .L00434F78
/* 034F5C 00434F5C 8FA30030 */   lw         $v1, 0x30($sp)
/* 034F60 00434F60 8FB90040 */  lw          $t9, 0x40($sp)
/* 034F64 00434F64 02034021 */  addu        $t0, $s0, $v1
/* 034F68 00434F68 57280004 */  bnel        $t9, $t0, .L00434F7C
/* 034F6C 00434F6C 2402FFFF */   addiu      $v0, $zero, -0x1
/* 034F70 00434F70 10000002 */  b           .L00434F7C
/* 034F74 00434F74 02401025 */   move       $v0, $s2
.L00434F78:
/* 034F78 00434F78 2402FFFF */  addiu       $v0, $zero, -0x1
.L00434F7C:
/* 034F7C 00434F7C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 034F80 00434F80 8FB00014 */  lw          $s0, 0x14($sp)
/* 034F84 00434F84 8FB10018 */  lw          $s1, 0x18($sp)
/* 034F88 00434F88 8FB2001C */  lw          $s2, 0x1C($sp)
/* 034F8C 00434F8C 03E00008 */  jr          $ra
/* 034F90 00434F90 27BD0038 */   addiu      $sp, $sp, 0x38
