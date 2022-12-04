.section .rodata
glabel STR_10008F04
/* 048F04 10008F04 */ .asciz "_md_st_malloc: cannot allocate item of 1 byte with malloc(3)\n"
                      .balign 4

glabel STR_10008F44
/* 048F44 10008F44 */ .asciz "_md_st_malloc: cannot allocate item of %ld bytes with malloc(3)\n"
                      .balign 4

glabel STR_10008F88
/* 048F88 10008F88 */ .asciz "_md_st_malloc: cannot grow item to %ld bytes with realloc(3)\n"
                      .balign 4
/* 048FC8 10008FC8 */ .asciz ""
                      .balign 4
/* 048FCC 10008FCC */ .asciz ""
                      .balign 4


.section .text
glabel _md_st_malloc # 676
/* 040E84 00440E84 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040E88 00440E88 279C1EDC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD1EDC
/* 040E8C 00440E8C 0399E021 */  addu        $gp, $gp, $t9
/* 040E90 00440E90 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 040E94 00440E94 AFBF0024 */  sw          $ra, 0x24($sp)
/* 040E98 00440E98 AFBC0020 */  sw          $gp, 0x20($sp)
/* 040E9C 00440E9C AFB1001C */  sw          $s1, 0x1C($sp)
/* 040EA0 00440EA0 AFB00018 */  sw          $s0, 0x18($sp)
/* 040EA4 00440EA4 AFA60030 */  sw          $a2, 0x30($sp)
/* 040EA8 00440EA8 8CA20000 */  lw          $v0, 0x0($a1)
/* 040EAC 00440EAC 00A08025 */  move        $s0, $a1
/* 040EB0 00440EB0 00808825 */  move        $s1, $a0
/* 040EB4 00440EB4 10400005 */  beqz        $v0, .L00440ECC
/* 040EB8 00440EB8 00000000 */   nop
/* 040EBC 00440EBC 10800003 */  beqz        $a0, .L00440ECC
/* 040EC0 00440EC0 2401FFFF */   addiu      $at, $zero, -0x1
/* 040EC4 00440EC4 14810027 */  bne         $a0, $at, .L00440F64
/* 040EC8 00440EC8 00024040 */   sll        $t0, $v0, 1
.L00440ECC:
/* 040ECC 00440ECC 14E0000F */  bnez        $a3, .L00440F0C
/* 040ED0 00440ED0 AE070000 */   sw         $a3, 0x0($s0)
/* 040ED4 00440ED4 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 040ED8 00440ED8 24040001 */  addiu       $a0, $zero, 0x1
/* 040EDC 00440EDC 0320F809 */  jalr        $t9
/* 040EE0 00440EE0 00000000 */   nop
/* 040EE4 00440EE4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 040EE8 00440EE8 14400006 */  bnez        $v0, .L00440F04
/* 040EEC 00440EEC 00408825 */   move       $s1, $v0
/* 040EF0 00440EF0 8F99861C */  lw          $t9, %call16(_md_st_error)($gp)
/* 040EF4 00440EF4 8F848030 */  lw          $a0, %got(STR_10008F04)($gp)
/* 040EF8 00440EF8 0320F809 */  jalr        $t9
/* 040EFC 00440EFC 24848F04 */   addiu      $a0, $a0, %lo(STR_10008F04)
/* 040F00 00440F00 8FBC0020 */  lw          $gp, 0x20($sp)
.L00440F04:
/* 040F04 00440F04 1000002D */  b           .L00440FBC
/* 040F08 00440F08 02201025 */   move       $v0, $s1
.L00440F0C:
/* 040F0C 00440F0C 8E0E0000 */  lw          $t6, 0x0($s0)
/* 040F10 00440F10 8FAF0030 */  lw          $t7, 0x30($sp)
/* 040F14 00440F14 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 040F18 00440F18 01CF0019 */  multu       $t6, $t7
/* 040F1C 00440F1C 00002012 */  mflo        $a0
/* 040F20 00440F20 0320F809 */  jalr        $t9
/* 040F24 00440F24 00000000 */   nop
/* 040F28 00440F28 8FBC0020 */  lw          $gp, 0x20($sp)
/* 040F2C 00440F2C 14400022 */  bnez        $v0, .L00440FB8
/* 040F30 00440F30 00408825 */   move       $s1, $v0
/* 040F34 00440F34 8E180000 */  lw          $t8, 0x0($s0)
/* 040F38 00440F38 8FB90030 */  lw          $t9, 0x30($sp)
/* 040F3C 00440F3C 03190019 */  multu       $t8, $t9
/* 040F40 00440F40 00002812 */  mflo        $a1
/* 040F44 00440F44 50A0001D */  beql        $a1, $zero, .L00440FBC
/* 040F48 00440F48 02201025 */   move       $v0, $s1
/* 040F4C 00440F4C 8F99861C */  lw          $t9, %call16(_md_st_error)($gp)
/* 040F50 00440F50 8F848030 */  lw          $a0, %got(STR_10008F44)($gp)
/* 040F54 00440F54 0320F809 */  jalr        $t9
/* 040F58 00440F58 24848F44 */   addiu      $a0, $a0, %lo(STR_10008F44)
/* 040F5C 00440F5C 10000016 */  b           .L00440FB8
/* 040F60 00440F60 8FBC0020 */   lw         $gp, 0x20($sp)
.L00440F64:
/* 040F64 00440F64 AE080000 */  sw          $t0, 0x0($s0)
/* 040F68 00440F68 8FAA0030 */  lw          $t2, 0x30($sp)
/* 040F6C 00440F6C 8F998110 */  lw          $t9, %call16(realloc)($gp)
/* 040F70 00440F70 02202025 */  move        $a0, $s1
/* 040F74 00440F74 010A0019 */  multu       $t0, $t2
/* 040F78 00440F78 00002812 */  mflo        $a1
/* 040F7C 00440F7C 0320F809 */  jalr        $t9
/* 040F80 00440F80 00000000 */   nop
/* 040F84 00440F84 8FBC0020 */  lw          $gp, 0x20($sp)
/* 040F88 00440F88 1440000B */  bnez        $v0, .L00440FB8
/* 040F8C 00440F8C 00408825 */   move       $s1, $v0
/* 040F90 00440F90 8E0B0000 */  lw          $t3, 0x0($s0)
/* 040F94 00440F94 8FAC0030 */  lw          $t4, 0x30($sp)
/* 040F98 00440F98 8F99861C */  lw          $t9, %call16(_md_st_error)($gp)
/* 040F9C 00440F9C 8F848030 */  lw          $a0, %got(STR_10008F88)($gp)
/* 040FA0 00440FA0 016C0019 */  multu       $t3, $t4
/* 040FA4 00440FA4 24848F88 */  addiu       $a0, $a0, %lo(STR_10008F88)
/* 040FA8 00440FA8 00002812 */  mflo        $a1
/* 040FAC 00440FAC 0320F809 */  jalr        $t9
/* 040FB0 00440FB0 00000000 */   nop
/* 040FB4 00440FB4 8FBC0020 */  lw          $gp, 0x20($sp)
.L00440FB8:
/* 040FB8 00440FB8 02201025 */  move        $v0, $s1
.L00440FBC:
/* 040FBC 00440FBC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 040FC0 00440FC0 8FB00018 */  lw          $s0, 0x18($sp)
/* 040FC4 00440FC4 8FB1001C */  lw          $s1, 0x1C($sp)
/* 040FC8 00440FC8 03E00008 */  jr          $ra
/* 040FCC 00440FCC 27BD0028 */   addiu      $sp, $sp, 0x28
