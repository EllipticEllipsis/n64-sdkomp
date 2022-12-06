glabel scope_name_to_sym # 616
/* 03CCB0 0043CCB0 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03CCB4 0043CCB4 279C60B0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD60B0
/* 03CCB8 0043CCB8 0399E021 */  addu        $gp, $gp, $t9
/* 03CCBC 0043CCBC 27BDFF28 */  addiu       $sp, $sp, -0xD8
/* 03CCC0 0043CCC0 8F9984FC */  lw          $t9, %call16(file_symbol)($gp)
/* 03CCC4 0043CCC4 AFB30028 */  sw          $s3, 0x28($sp)
/* 03CCC8 0043CCC8 00A09825 */  move        $s3, $a1
/* 03CCCC 0043CCCC AFBF0044 */  sw          $ra, 0x44($sp)
/* 03CCD0 0043CCD0 AFB70038 */  sw          $s7, 0x38($sp)
/* 03CCD4 0043CCD4 AFB20024 */  sw          $s2, 0x24($sp)
/* 03CCD8 0043CCD8 00809025 */  move        $s2, $a0
/* 03CCDC 0043CCDC 00C0B825 */  move        $s7, $a2
/* 03CCE0 0043CCE0 AFBE0040 */  sw          $fp, 0x40($sp)
/* 03CCE4 0043CCE4 AFBC003C */  sw          $gp, 0x3C($sp)
/* 03CCE8 0043CCE8 AFB60034 */  sw          $s6, 0x34($sp)
/* 03CCEC 0043CCEC AFB50030 */  sw          $s5, 0x30($sp)
/* 03CCF0 0043CCF0 AFB4002C */  sw          $s4, 0x2C($sp)
/* 03CCF4 0043CCF4 AFB10020 */  sw          $s1, 0x20($sp)
/* 03CCF8 0043CCF8 AFB0001C */  sw          $s0, 0x1C($sp)
/* 03CCFC 0043CCFC AFA700E4 */  sw          $a3, 0xE4($sp)
/* 03CD00 0043CD00 0320F809 */  jalr        $t9
/* 03CD04 0043CD04 00C02825 */   move       $a1, $a2
/* 03CD08 0043CD08 2401FFFF */  addiu       $at, $zero, -0x1
/* 03CD0C 0043CD0C 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CD10 0043CD10 14410003 */  bne         $v0, $at, .L0043CD20
/* 03CD14 0043CD14 AFA200D4 */   sw         $v0, 0xD4($sp)
/* 03CD18 0043CD18 100000C9 */  b           .L0043D040
/* 03CD1C 0043CD1C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043CD20:
/* 03CD20 0043CD20 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03CD24 0043CD24 02402025 */  move        $a0, $s2
/* 03CD28 0043CD28 02602825 */  move        $a1, $s3
/* 03CD2C 0043CD2C 0320F809 */  jalr        $t9
/* 03CD30 0043CD30 00000000 */   nop
/* 03CD34 0043CD34 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CD38 0043CD38 0040B025 */  move        $s6, $v0
/* 03CD3C 0043CD3C 02402025 */  move        $a0, $s2
/* 03CD40 0043CD40 8F998580 */  lw          $t9, %call16(file_end_symbol)($gp)
/* 03CD44 0043CD44 02E02825 */  move        $a1, $s7
/* 03CD48 0043CD48 02603025 */  move        $a2, $s3
/* 03CD4C 0043CD4C 0320F809 */  jalr        $t9
/* 03CD50 0043CD50 00000000 */   nop
/* 03CD54 0043CD54 2401FFFF */  addiu       $at, $zero, -0x1
/* 03CD58 0043CD58 14410003 */  bne         $v0, $at, .L0043CD68
/* 03CD5C 0043CD5C 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CD60 0043CD60 100000B7 */  b           .L0043D040
/* 03CD64 0043CD64 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043CD68:
/* 03CD68 0043CD68 8FAE00D4 */  lw          $t6, 0xD4($sp)
/* 03CD6C 0043CD6C 2453FFFF */  addiu       $s3, $v0, -0x1
/* 03CD70 0043CD70 241E0007 */  addiu       $fp, $zero, 0x7
/* 03CD74 0043CD74 01D3082B */  sltu        $at, $t6, $s3
/* 03CD78 0043CD78 102000B0 */  beqz        $at, .L0043D03C
/* 03CD7C 0043CD7C 2415000B */   addiu      $s5, $zero, 0xB
.L0043CD80:
/* 03CD80 0043CD80 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03CD84 0043CD84 02402025 */  move        $a0, $s2
/* 03CD88 0043CD88 02602825 */  move        $a1, $s3
/* 03CD8C 0043CD8C 0320F809 */  jalr        $t9
/* 03CD90 0043CD90 00000000 */   nop
/* 03CD94 0043CD94 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CD98 0043CD98 0040A025 */  move        $s4, $v0
/* 03CD9C 0043CD9C 02402025 */  move        $a0, $s2
/* 03CDA0 0043CDA0 8F998024 */  lw          $t9, %got(file_symbol_name)($gp)
/* 03CDA4 0043CDA4 02E02825 */  move        $a1, $s7
/* 03CDA8 0043CDA8 02603025 */  move        $a2, $s3
/* 03CDAC 0043CDAC 2739C670 */  addiu       $t9, $t9, %lo(file_symbol_name)
/* 03CDB0 0043CDB0 0320F809 */  jalr        $t9
/* 03CDB4 0043CDB4 00000000 */   nop
/* 03CDB8 0043CDB8 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CDBC 0043CDBC 00402025 */  move        $a0, $v0
/* 03CDC0 0043CDC0 8FA500E4 */  lw          $a1, 0xE4($sp)
/* 03CDC4 0043CDC4 8F9985AC */  lw          $t9, %call16(case_streq)($gp)
/* 03CDC8 0043CDC8 8FA600E8 */  lw          $a2, 0xE8($sp)
/* 03CDCC 0043CDCC 0320F809 */  jalr        $t9
/* 03CDD0 0043CDD0 00000000 */   nop
/* 03CDD4 0043CDD4 10400031 */  beqz        $v0, .L0043CE9C
/* 03CDD8 0043CDD8 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CDDC 0043CDDC 56800009 */  bnel        $s4, $zero, .L0043CE04
/* 03CDE0 0043CDE0 24010008 */   addiu      $at, $zero, 0x8
/* 03CDE4 0043CDE4 8F998560 */  lw          $t9, %call16(symbol_class)($gp)
/* 03CDE8 0043CDE8 02402025 */  move        $a0, $s2
/* 03CDEC 0043CDEC 02602825 */  move        $a1, $s3
/* 03CDF0 0043CDF0 0320F809 */  jalr        $t9
/* 03CDF4 0043CDF4 00000000 */   nop
/* 03CDF8 0043CDF8 1040008B */  beqz        $v0, .L0043D028
/* 03CDFC 0043CDFC 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CE00 0043CE00 24010008 */  addiu       $at, $zero, 0x8
.L0043CE04:
/* 03CE04 0043CE04 16810009 */  bne         $s4, $at, .L0043CE2C
/* 03CE08 0043CE08 02608825 */   move       $s1, $s3
/* 03CE0C 0043CE0C 8F998578 */  lw          $t9, %call16(file_symbol_isym)($gp)
/* 03CE10 0043CE10 02402025 */  move        $a0, $s2
/* 03CE14 0043CE14 02E02825 */  move        $a1, $s7
/* 03CE18 0043CE18 0320F809 */  jalr        $t9
/* 03CE1C 0043CE1C 02603025 */   move       $a2, $s3
/* 03CE20 0043CE20 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CE24 0043CE24 10000001 */  b           .L0043CE2C
/* 03CE28 0043CE28 00408825 */   move       $s1, $v0
.L0043CE2C:
/* 03CE2C 0043CE2C 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03CE30 0043CE30 02402025 */  move        $a0, $s2
/* 03CE34 0043CE34 02202825 */  move        $a1, $s1
/* 03CE38 0043CE38 0320F809 */  jalr        $t9
/* 03CE3C 0043CE3C 00000000 */   nop
/* 03CE40 0043CE40 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CE44 0043CE44 00408025 */  move        $s0, $v0
/* 03CE48 0043CE48 02402025 */  move        $a0, $s2
/* 03CE4C 0043CE4C 8F998560 */  lw          $t9, %call16(symbol_class)($gp)
/* 03CE50 0043CE50 02202825 */  move        $a1, $s1
/* 03CE54 0043CE54 0320F809 */  jalr        $t9
/* 03CE58 0043CE58 00000000 */   nop
/* 03CE5C 0043CE5C 8FAF00EC */  lw          $t7, 0xEC($sp)
/* 03CE60 0043CE60 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CE64 0043CE64 11E00007 */  beqz        $t7, .L0043CE84
/* 03CE68 0043CE68 00000000 */   nop
/* 03CE6C 0043CE6C 561E000C */  bnel        $s0, $fp, .L0043CEA0
/* 03CE70 0043CE70 24010008 */   addiu      $at, $zero, 0x8
/* 03CE74 0043CE74 5455000A */  bnel        $v0, $s5, .L0043CEA0
/* 03CE78 0043CE78 24010008 */   addiu      $at, $zero, 0x8
/* 03CE7C 0043CE7C 10000070 */  b           .L0043D040
/* 03CE80 0043CE80 02201025 */   move       $v0, $s1
.L0043CE84:
/* 03CE84 0043CE84 161E0003 */  bne         $s0, $fp, .L0043CE94
/* 03CE88 0043CE88 00000000 */   nop
/* 03CE8C 0043CE8C 50550004 */  beql        $v0, $s5, .L0043CEA0
/* 03CE90 0043CE90 24010008 */   addiu      $at, $zero, 0x8
.L0043CE94:
/* 03CE94 0043CE94 1000006A */  b           .L0043D040
/* 03CE98 0043CE98 02201025 */   move       $v0, $s1
.L0043CE9C:
/* 03CE9C 0043CE9C 24010008 */  addiu       $at, $zero, 0x8
.L0043CEA0:
/* 03CEA0 0043CEA0 5681003A */  bnel        $s4, $at, .L0043CF8C
/* 03CEA4 0043CEA4 24010002 */   addiu      $at, $zero, 0x2
/* 03CEA8 0043CEA8 8F998578 */  lw          $t9, %call16(file_symbol_isym)($gp)
/* 03CEAC 0043CEAC 02402025 */  move        $a0, $s2
/* 03CEB0 0043CEB0 02E02825 */  move        $a1, $s7
/* 03CEB4 0043CEB4 0320F809 */  jalr        $t9
/* 03CEB8 0043CEB8 02603025 */   move       $a2, $s3
/* 03CEBC 0043CEBC 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CEC0 0043CEC0 00408025 */  move        $s0, $v0
/* 03CEC4 0043CEC4 02402025 */  move        $a0, $s2
/* 03CEC8 0043CEC8 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03CECC 0043CECC 00402825 */  move        $a1, $v0
/* 03CED0 0043CED0 0320F809 */  jalr        $t9
/* 03CED4 0043CED4 00000000 */   nop
/* 03CED8 0043CED8 145E001A */  bne         $v0, $fp, .L0043CF44
/* 03CEDC 0043CEDC 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CEE0 0043CEE0 8F998560 */  lw          $t9, %call16(symbol_class)($gp)
/* 03CEE4 0043CEE4 02402025 */  move        $a0, $s2
/* 03CEE8 0043CEE8 02002825 */  move        $a1, $s0
/* 03CEEC 0043CEEC 0320F809 */  jalr        $t9
/* 03CEF0 0043CEF0 00000000 */   nop
/* 03CEF4 0043CEF4 14550013 */  bne         $v0, $s5, .L0043CF44
/* 03CEF8 0043CEF8 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CEFC 0043CEFC 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03CF00 0043CF00 26110001 */  addiu       $s1, $s0, 0x1
/* 03CF04 0043CF04 02202825 */  move        $a1, $s1
/* 03CF08 0043CF08 0320F809 */  jalr        $t9
/* 03CF0C 0043CF0C 02402025 */   move       $a0, $s2
/* 03CF10 0043CF10 24010009 */  addiu       $at, $zero, 0x9
/* 03CF14 0043CF14 1441000B */  bne         $v0, $at, .L0043CF44
/* 03CF18 0043CF18 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CF1C 0043CF1C 8F998024 */  lw          $t9, %got(symbol_check_enum)($gp)
/* 03CF20 0043CF20 02402025 */  move        $a0, $s2
/* 03CF24 0043CF24 02E02825 */  move        $a1, $s7
/* 03CF28 0043CF28 2739C7D8 */  addiu       $t9, $t9, %lo(symbol_check_enum)
/* 03CF2C 0043CF2C 0320F809 */  jalr        $t9
/* 03CF30 0043CF30 02003025 */   move       $a2, $s0
/* 03CF34 0043CF34 1440003C */  bnez        $v0, .L0043D028
/* 03CF38 0043CF38 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CF3C 0043CF3C 1000003A */  b           .L0043D028
/* 03CF40 0043CF40 02209825 */   move       $s3, $s1
.L0043CF44:
/* 03CF44 0043CF44 24010006 */  addiu       $at, $zero, 0x6
/* 03CF48 0043CF48 12C10007 */  beq         $s6, $at, .L0043CF68
/* 03CF4C 0043CF4C 2401000E */   addiu      $at, $zero, 0xE
/* 03CF50 0043CF50 12C10005 */  beq         $s6, $at, .L0043CF68
/* 03CF54 0043CF54 00000000 */   nop
/* 03CF58 0043CF58 12D50003 */  beq         $s6, $s5, .L0043CF68
/* 03CF5C 0043CF5C 00000000 */   nop
/* 03CF60 0043CF60 10000031 */  b           .L0043D028
/* 03CF64 0043CF64 02009825 */   move       $s3, $s0
.L0043CF68:
/* 03CF68 0043CF68 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03CF6C 0043CF6C 02402025 */  move        $a0, $s2
/* 03CF70 0043CF70 02002825 */  move        $a1, $s0
/* 03CF74 0043CF74 0320F809 */  jalr        $t9
/* 03CF78 0043CF78 00000000 */   nop
/* 03CF7C 0043CF7C 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CF80 0043CF80 10000029 */  b           .L0043D028
/* 03CF84 0043CF84 0040B025 */   move       $s6, $v0
/* 03CF88 0043CF88 24010002 */  addiu       $at, $zero, 0x2
.L0043CF8C:
/* 03CF8C 0043CF8C 56810027 */  bnel        $s4, $at, .L0043D02C
/* 03CF90 0043CF90 8FB900D4 */   lw         $t9, 0xD4($sp)
/* 03CF94 0043CF94 8F998560 */  lw          $t9, %call16(symbol_class)($gp)
/* 03CF98 0043CF98 02402025 */  move        $a0, $s2
/* 03CF9C 0043CF9C 02602825 */  move        $a1, $s3
/* 03CFA0 0043CFA0 0320F809 */  jalr        $t9
/* 03CFA4 0043CFA4 00000000 */   nop
/* 03CFA8 0043CFA8 24010011 */  addiu       $at, $zero, 0x11
/* 03CFAC 0043CFAC 1441001E */  bne         $v0, $at, .L0043D028
/* 03CFB0 0043CFB0 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CFB4 0043CFB4 8F99856C */  lw          $t9, %call16(symbol_iaux)($gp)
/* 03CFB8 0043CFB8 02402025 */  move        $a0, $s2
/* 03CFBC 0043CFBC 02602825 */  move        $a1, $s3
/* 03CFC0 0043CFC0 0320F809 */  jalr        $t9
/* 03CFC4 0043CFC4 00000000 */   nop
/* 03CFC8 0043CFC8 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CFCC 0043CFCC AFA20060 */  sw          $v0, 0x60($sp)
/* 03CFD0 0043CFD0 AFA0005C */  sw          $zero, 0x5C($sp)
/* 03CFD4 0043CFD4 8F9985C0 */  lw          $t9, %call16(type_deref)($gp)
/* 03CFD8 0043CFD8 02402025 */  move        $a0, $s2
/* 03CFDC 0043CFDC 27A50058 */  addiu       $a1, $sp, 0x58
/* 03CFE0 0043CFE0 0320F809 */  jalr        $t9
/* 03CFE4 0043CFE4 00000000 */   nop
/* 03CFE8 0043CFE8 8FA5006C */  lw          $a1, 0x6C($sp)
/* 03CFEC 0043CFEC 2401FFFF */  addiu       $at, $zero, -0x1
/* 03CFF0 0043CFF0 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CFF4 0043CFF4 10A1000C */  beq         $a1, $at, .L0043D028
/* 03CFF8 0043CFF8 02402025 */   move       $a0, $s2
/* 03CFFC 0043CFFC 8F9985A0 */  lw          $t9, %call16(scope_name_search)($gp)
/* 03D000 0043D000 8FB800EC */  lw          $t8, 0xEC($sp)
/* 03D004 0043D004 8FA600E4 */  lw          $a2, 0xE4($sp)
/* 03D008 0043D008 8FA700E8 */  lw          $a3, 0xE8($sp)
/* 03D00C 0043D00C 0320F809 */  jalr        $t9
/* 03D010 0043D010 AFB80010 */   sw         $t8, 0x10($sp)
/* 03D014 0043D014 2401FFFF */  addiu       $at, $zero, -0x1
/* 03D018 0043D018 10410003 */  beq         $v0, $at, .L0043D028
/* 03D01C 0043D01C 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03D020 0043D020 10000008 */  b           .L0043D044
/* 03D024 0043D024 8FBF0044 */   lw         $ra, 0x44($sp)
.L0043D028:
/* 03D028 0043D028 8FB900D4 */  lw          $t9, 0xD4($sp)
.L0043D02C:
/* 03D02C 0043D02C 2673FFFF */  addiu       $s3, $s3, -0x1
/* 03D030 0043D030 0333082B */  sltu        $at, $t9, $s3
/* 03D034 0043D034 1420FF52 */  bnez        $at, .L0043CD80
/* 03D038 0043D038 00000000 */   nop
.L0043D03C:
/* 03D03C 0043D03C 2402FFFF */  addiu       $v0, $zero, -0x1
.L0043D040:
/* 03D040 0043D040 8FBF0044 */  lw          $ra, 0x44($sp)
.L0043D044:
/* 03D044 0043D044 8FB0001C */  lw          $s0, 0x1C($sp)
/* 03D048 0043D048 8FB10020 */  lw          $s1, 0x20($sp)
/* 03D04C 0043D04C 8FB20024 */  lw          $s2, 0x24($sp)
/* 03D050 0043D050 8FB30028 */  lw          $s3, 0x28($sp)
/* 03D054 0043D054 8FB4002C */  lw          $s4, 0x2C($sp)
/* 03D058 0043D058 8FB50030 */  lw          $s5, 0x30($sp)
/* 03D05C 0043D05C 8FB60034 */  lw          $s6, 0x34($sp)
/* 03D060 0043D060 8FB70038 */  lw          $s7, 0x38($sp)
/* 03D064 0043D064 8FBE0040 */  lw          $fp, 0x40($sp)
/* 03D068 0043D068 03E00008 */  jr          $ra
/* 03D06C 0043D06C 27BD00D8 */   addiu      $sp, $sp, 0xD8
