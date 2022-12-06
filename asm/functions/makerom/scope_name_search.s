glabel scope_name_search # 615
/* 03C8AC 0043C8AC 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03C8B0 0043C8B0 279C64B4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD64B4
/* 03C8B4 0043C8B4 0399E021 */  addu        $gp, $gp, $t9
/* 03C8B8 0043C8B8 27BDFF28 */  addiu       $sp, $sp, -0xD8
/* 03C8BC 0043C8BC AFBF0044 */  sw          $ra, 0x44($sp)
/* 03C8C0 0043C8C0 AFBE0040 */  sw          $fp, 0x40($sp)
/* 03C8C4 0043C8C4 AFBC003C */  sw          $gp, 0x3C($sp)
/* 03C8C8 0043C8C8 AFB70038 */  sw          $s7, 0x38($sp)
/* 03C8CC 0043C8CC AFB60034 */  sw          $s6, 0x34($sp)
/* 03C8D0 0043C8D0 AFB50030 */  sw          $s5, 0x30($sp)
/* 03C8D4 0043C8D4 AFB4002C */  sw          $s4, 0x2C($sp)
/* 03C8D8 0043C8D8 AFB30028 */  sw          $s3, 0x28($sp)
/* 03C8DC 0043C8DC AFB20024 */  sw          $s2, 0x24($sp)
/* 03C8E0 0043C8E0 AFB10020 */  sw          $s1, 0x20($sp)
/* 03C8E4 0043C8E4 AFB0001C */  sw          $s0, 0x1C($sp)
/* 03C8E8 0043C8E8 AFA600E0 */  sw          $a2, 0xE0($sp)
/* 03C8EC 0043C8EC AFA700E4 */  sw          $a3, 0xE4($sp)
/* 03C8F0 0043C8F0 8C8E00CC */  lw          $t6, 0xCC($a0)
/* 03C8F4 0043C8F4 00809025 */  move        $s2, $a0
/* 03C8F8 0043C8F8 00A09825 */  move        $s3, $a1
/* 03C8FC 0043C8FC 00AE082B */  sltu        $at, $a1, $t6
/* 03C900 0043C900 14200005 */  bnez        $at, .L0043C918
/* 03C904 0043C904 00000000 */   nop
/* 03C908 0043C908 8C8F00D8 */  lw          $t7, 0xD8($a0)
/* 03C90C 0043C90C 00AF082B */  sltu        $at, $a1, $t7
/* 03C910 0043C910 14200003 */  bnez        $at, .L0043C920
/* 03C914 0043C914 00000000 */   nop
.L0043C918:
/* 03C918 0043C918 100000D9 */  b           .L0043CC80
/* 03C91C 0043C91C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043C920:
/* 03C920 0043C920 8F9984F0 */  lw          $t9, %call16(symbol_to_file)($gp)
/* 03C924 0043C924 02402025 */  move        $a0, $s2
/* 03C928 0043C928 02602825 */  move        $a1, $s3
/* 03C92C 0043C92C 0320F809 */  jalr        $t9
/* 03C930 0043C930 00000000 */   nop
/* 03C934 0043C934 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03C938 0043C938 AFA200D4 */  sw          $v0, 0xD4($sp)
/* 03C93C 0043C93C 02402025 */  move        $a0, $s2
/* 03C940 0043C940 8F9984FC */  lw          $t9, %call16(file_symbol)($gp)
/* 03C944 0043C944 00402825 */  move        $a1, $v0
/* 03C948 0043C948 0320F809 */  jalr        $t9
/* 03C94C 0043C94C 00000000 */   nop
/* 03C950 0043C950 2401FFFF */  addiu       $at, $zero, -0x1
/* 03C954 0043C954 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03C958 0043C958 14410003 */  bne         $v0, $at, .L0043C968
/* 03C95C 0043C95C AFA200D0 */   sw         $v0, 0xD0($sp)
/* 03C960 0043C960 100000C7 */  b           .L0043CC80
/* 03C964 0043C964 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043C968:
/* 03C968 0043C968 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03C96C 0043C96C 02402025 */  move        $a0, $s2
/* 03C970 0043C970 02602825 */  move        $a1, $s3
/* 03C974 0043C974 0320F809 */  jalr        $t9
/* 03C978 0043C978 00000000 */   nop
/* 03C97C 0043C97C 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03C980 0043C980 0040B025 */  move        $s6, $v0
/* 03C984 0043C984 02402025 */  move        $a0, $s2
/* 03C988 0043C988 8F998580 */  lw          $t9, %call16(file_end_symbol)($gp)
/* 03C98C 0043C98C 8FA500D4 */  lw          $a1, 0xD4($sp)
/* 03C990 0043C990 02603025 */  move        $a2, $s3
/* 03C994 0043C994 0320F809 */  jalr        $t9
/* 03C998 0043C998 00000000 */   nop
/* 03C99C 0043C99C 2401FFFF */  addiu       $at, $zero, -0x1
/* 03C9A0 0043C9A0 14410003 */  bne         $v0, $at, .L0043C9B0
/* 03C9A4 0043C9A4 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03C9A8 0043C9A8 100000B5 */  b           .L0043CC80
/* 03C9AC 0043C9AC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043C9B0:
/* 03C9B0 0043C9B0 8FB800D0 */  lw          $t8, 0xD0($sp)
/* 03C9B4 0043C9B4 2453FFFF */  addiu       $s3, $v0, -0x1
/* 03C9B8 0043C9B8 8FBE00E8 */  lw          $fp, 0xE8($sp)
/* 03C9BC 0043C9BC 0313082B */  sltu        $at, $t8, $s3
/* 03C9C0 0043C9C0 102000AE */  beqz        $at, .L0043CC7C
/* 03C9C4 0043C9C4 24170007 */   addiu      $s7, $zero, 0x7
/* 03C9C8 0043C9C8 2415000B */  addiu       $s5, $zero, 0xB
.L0043C9CC:
/* 03C9CC 0043C9CC 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03C9D0 0043C9D0 02402025 */  move        $a0, $s2
/* 03C9D4 0043C9D4 02602825 */  move        $a1, $s3
/* 03C9D8 0043C9D8 0320F809 */  jalr        $t9
/* 03C9DC 0043C9DC 00000000 */   nop
/* 03C9E0 0043C9E0 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03C9E4 0043C9E4 0040A025 */  move        $s4, $v0
/* 03C9E8 0043C9E8 02402025 */  move        $a0, $s2
/* 03C9EC 0043C9EC 8F998024 */  lw          $t9, %got(file_symbol_name)($gp)
/* 03C9F0 0043C9F0 8FA500D4 */  lw          $a1, 0xD4($sp)
/* 03C9F4 0043C9F4 02603025 */  move        $a2, $s3
/* 03C9F8 0043C9F8 2739C670 */  addiu       $t9, $t9, %lo(file_symbol_name)
/* 03C9FC 0043C9FC 0320F809 */  jalr        $t9
/* 03CA00 0043CA00 00000000 */   nop
/* 03CA04 0043CA04 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CA08 0043CA08 00402025 */  move        $a0, $v0
/* 03CA0C 0043CA0C 8FA500E0 */  lw          $a1, 0xE0($sp)
/* 03CA10 0043CA10 8F9985AC */  lw          $t9, %call16(case_streq)($gp)
/* 03CA14 0043CA14 8FA600E4 */  lw          $a2, 0xE4($sp)
/* 03CA18 0043CA18 0320F809 */  jalr        $t9
/* 03CA1C 0043CA1C 00000000 */   nop
/* 03CA20 0043CA20 1040002F */  beqz        $v0, .L0043CAE0
/* 03CA24 0043CA24 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CA28 0043CA28 56800009 */  bnel        $s4, $zero, .L0043CA50
/* 03CA2C 0043CA2C 24010008 */   addiu      $at, $zero, 0x8
/* 03CA30 0043CA30 8F998560 */  lw          $t9, %call16(symbol_class)($gp)
/* 03CA34 0043CA34 02402025 */  move        $a0, $s2
/* 03CA38 0043CA38 02602825 */  move        $a1, $s3
/* 03CA3C 0043CA3C 0320F809 */  jalr        $t9
/* 03CA40 0043CA40 00000000 */   nop
/* 03CA44 0043CA44 10400088 */  beqz        $v0, .L0043CC68
/* 03CA48 0043CA48 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CA4C 0043CA4C 24010008 */  addiu       $at, $zero, 0x8
.L0043CA50:
/* 03CA50 0043CA50 16810009 */  bne         $s4, $at, .L0043CA78
/* 03CA54 0043CA54 02608825 */   move       $s1, $s3
/* 03CA58 0043CA58 8F998574 */  lw          $t9, %call16(symbol_isym)($gp)
/* 03CA5C 0043CA5C 02402025 */  move        $a0, $s2
/* 03CA60 0043CA60 02602825 */  move        $a1, $s3
/* 03CA64 0043CA64 0320F809 */  jalr        $t9
/* 03CA68 0043CA68 00000000 */   nop
/* 03CA6C 0043CA6C 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CA70 0043CA70 10000001 */  b           .L0043CA78
/* 03CA74 0043CA74 00408825 */   move       $s1, $v0
.L0043CA78:
/* 03CA78 0043CA78 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03CA7C 0043CA7C 02402025 */  move        $a0, $s2
/* 03CA80 0043CA80 02202825 */  move        $a1, $s1
/* 03CA84 0043CA84 0320F809 */  jalr        $t9
/* 03CA88 0043CA88 00000000 */   nop
/* 03CA8C 0043CA8C 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CA90 0043CA90 00408025 */  move        $s0, $v0
/* 03CA94 0043CA94 02402025 */  move        $a0, $s2
/* 03CA98 0043CA98 8F998560 */  lw          $t9, %call16(symbol_class)($gp)
/* 03CA9C 0043CA9C 02202825 */  move        $a1, $s1
/* 03CAA0 0043CAA0 0320F809 */  jalr        $t9
/* 03CAA4 0043CAA4 00000000 */   nop
/* 03CAA8 0043CAA8 13C00007 */  beqz        $fp, .L0043CAC8
/* 03CAAC 0043CAAC 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CAB0 0043CAB0 5617000C */  bnel        $s0, $s7, .L0043CAE4
/* 03CAB4 0043CAB4 24010008 */   addiu      $at, $zero, 0x8
/* 03CAB8 0043CAB8 5455000A */  bnel        $v0, $s5, .L0043CAE4
/* 03CABC 0043CABC 24010008 */   addiu      $at, $zero, 0x8
/* 03CAC0 0043CAC0 1000006F */  b           .L0043CC80
/* 03CAC4 0043CAC4 02201025 */   move       $v0, $s1
.L0043CAC8:
/* 03CAC8 0043CAC8 16170003 */  bne         $s0, $s7, .L0043CAD8
/* 03CACC 0043CACC 00000000 */   nop
/* 03CAD0 0043CAD0 50550004 */  beql        $v0, $s5, .L0043CAE4
/* 03CAD4 0043CAD4 24010008 */   addiu      $at, $zero, 0x8
.L0043CAD8:
/* 03CAD8 0043CAD8 10000069 */  b           .L0043CC80
/* 03CADC 0043CADC 02201025 */   move       $v0, $s1
.L0043CAE0:
/* 03CAE0 0043CAE0 24010008 */  addiu       $at, $zero, 0x8
.L0043CAE4:
/* 03CAE4 0043CAE4 5681003A */  bnel        $s4, $at, .L0043CBD0
/* 03CAE8 0043CAE8 24010002 */   addiu      $at, $zero, 0x2
/* 03CAEC 0043CAEC 8F998574 */  lw          $t9, %call16(symbol_isym)($gp)
/* 03CAF0 0043CAF0 02402025 */  move        $a0, $s2
/* 03CAF4 0043CAF4 02602825 */  move        $a1, $s3
/* 03CAF8 0043CAF8 0320F809 */  jalr        $t9
/* 03CAFC 0043CAFC 00000000 */   nop
/* 03CB00 0043CB00 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CB04 0043CB04 00408025 */  move        $s0, $v0
/* 03CB08 0043CB08 02402025 */  move        $a0, $s2
/* 03CB0C 0043CB0C 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03CB10 0043CB10 00402825 */  move        $a1, $v0
/* 03CB14 0043CB14 0320F809 */  jalr        $t9
/* 03CB18 0043CB18 00000000 */   nop
/* 03CB1C 0043CB1C 1457001A */  bne         $v0, $s7, .L0043CB88
/* 03CB20 0043CB20 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CB24 0043CB24 8F998560 */  lw          $t9, %call16(symbol_class)($gp)
/* 03CB28 0043CB28 02402025 */  move        $a0, $s2
/* 03CB2C 0043CB2C 02002825 */  move        $a1, $s0
/* 03CB30 0043CB30 0320F809 */  jalr        $t9
/* 03CB34 0043CB34 00000000 */   nop
/* 03CB38 0043CB38 14550013 */  bne         $v0, $s5, .L0043CB88
/* 03CB3C 0043CB3C 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CB40 0043CB40 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03CB44 0043CB44 26110001 */  addiu       $s1, $s0, 0x1
/* 03CB48 0043CB48 02202825 */  move        $a1, $s1
/* 03CB4C 0043CB4C 0320F809 */  jalr        $t9
/* 03CB50 0043CB50 02402025 */   move       $a0, $s2
/* 03CB54 0043CB54 24010009 */  addiu       $at, $zero, 0x9
/* 03CB58 0043CB58 1441000B */  bne         $v0, $at, .L0043CB88
/* 03CB5C 0043CB5C 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CB60 0043CB60 8F998024 */  lw          $t9, %got(symbol_check_enum)($gp)
/* 03CB64 0043CB64 02402025 */  move        $a0, $s2
/* 03CB68 0043CB68 8FA500D4 */  lw          $a1, 0xD4($sp)
/* 03CB6C 0043CB6C 2739C7D8 */  addiu       $t9, $t9, %lo(symbol_check_enum)
/* 03CB70 0043CB70 0320F809 */  jalr        $t9
/* 03CB74 0043CB74 02003025 */   move       $a2, $s0
/* 03CB78 0043CB78 1440003B */  bnez        $v0, .L0043CC68
/* 03CB7C 0043CB7C 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CB80 0043CB80 10000039 */  b           .L0043CC68
/* 03CB84 0043CB84 02209825 */   move       $s3, $s1
.L0043CB88:
/* 03CB88 0043CB88 24010006 */  addiu       $at, $zero, 0x6
/* 03CB8C 0043CB8C 12C10007 */  beq         $s6, $at, .L0043CBAC
/* 03CB90 0043CB90 2401000E */   addiu      $at, $zero, 0xE
/* 03CB94 0043CB94 12C10005 */  beq         $s6, $at, .L0043CBAC
/* 03CB98 0043CB98 00000000 */   nop
/* 03CB9C 0043CB9C 12D50003 */  beq         $s6, $s5, .L0043CBAC
/* 03CBA0 0043CBA0 00000000 */   nop
/* 03CBA4 0043CBA4 10000030 */  b           .L0043CC68
/* 03CBA8 0043CBA8 02009825 */   move       $s3, $s0
.L0043CBAC:
/* 03CBAC 0043CBAC 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03CBB0 0043CBB0 02402025 */  move        $a0, $s2
/* 03CBB4 0043CBB4 02002825 */  move        $a1, $s0
/* 03CBB8 0043CBB8 0320F809 */  jalr        $t9
/* 03CBBC 0043CBBC 00000000 */   nop
/* 03CBC0 0043CBC0 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CBC4 0043CBC4 10000028 */  b           .L0043CC68
/* 03CBC8 0043CBC8 0040B025 */   move       $s6, $v0
/* 03CBCC 0043CBCC 24010002 */  addiu       $at, $zero, 0x2
.L0043CBD0:
/* 03CBD0 0043CBD0 56810026 */  bnel        $s4, $at, .L0043CC6C
/* 03CBD4 0043CBD4 8FB900D0 */   lw         $t9, 0xD0($sp)
/* 03CBD8 0043CBD8 8F998560 */  lw          $t9, %call16(symbol_class)($gp)
/* 03CBDC 0043CBDC 02402025 */  move        $a0, $s2
/* 03CBE0 0043CBE0 02602825 */  move        $a1, $s3
/* 03CBE4 0043CBE4 0320F809 */  jalr        $t9
/* 03CBE8 0043CBE8 00000000 */   nop
/* 03CBEC 0043CBEC 24010011 */  addiu       $at, $zero, 0x11
/* 03CBF0 0043CBF0 1441001D */  bne         $v0, $at, .L0043CC68
/* 03CBF4 0043CBF4 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CBF8 0043CBF8 8F99856C */  lw          $t9, %call16(symbol_iaux)($gp)
/* 03CBFC 0043CBFC 02402025 */  move        $a0, $s2
/* 03CC00 0043CC00 02602825 */  move        $a1, $s3
/* 03CC04 0043CC04 0320F809 */  jalr        $t9
/* 03CC08 0043CC08 00000000 */   nop
/* 03CC0C 0043CC0C 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CC10 0043CC10 AFA2005C */  sw          $v0, 0x5C($sp)
/* 03CC14 0043CC14 AFA00058 */  sw          $zero, 0x58($sp)
/* 03CC18 0043CC18 8F9985C0 */  lw          $t9, %call16(type_deref)($gp)
/* 03CC1C 0043CC1C 02402025 */  move        $a0, $s2
/* 03CC20 0043CC20 27A50054 */  addiu       $a1, $sp, 0x54
/* 03CC24 0043CC24 0320F809 */  jalr        $t9
/* 03CC28 0043CC28 00000000 */   nop
/* 03CC2C 0043CC2C 8FA50068 */  lw          $a1, 0x68($sp)
/* 03CC30 0043CC30 2401FFFF */  addiu       $at, $zero, -0x1
/* 03CC34 0043CC34 8FBC003C */  lw          $gp, 0x3C($sp)
/* 03CC38 0043CC38 10A1000B */  beq         $a1, $at, .L0043CC68
/* 03CC3C 0043CC3C 02402025 */   move       $a0, $s2
/* 03CC40 0043CC40 8F9985A0 */  lw          $t9, %call16(scope_name_search)($gp)
/* 03CC44 0043CC44 8FA600E0 */  lw          $a2, 0xE0($sp)
/* 03CC48 0043CC48 8FA700E4 */  lw          $a3, 0xE4($sp)
/* 03CC4C 0043CC4C 0320F809 */  jalr        $t9
/* 03CC50 0043CC50 AFBE0010 */   sw         $fp, 0x10($sp)
/* 03CC54 0043CC54 2401FFFF */  addiu       $at, $zero, -0x1
/* 03CC58 0043CC58 10410003 */  beq         $v0, $at, .L0043CC68
/* 03CC5C 0043CC5C 8FBC003C */   lw         $gp, 0x3C($sp)
/* 03CC60 0043CC60 10000008 */  b           .L0043CC84
/* 03CC64 0043CC64 8FBF0044 */   lw         $ra, 0x44($sp)
.L0043CC68:
/* 03CC68 0043CC68 8FB900D0 */  lw          $t9, 0xD0($sp)
.L0043CC6C:
/* 03CC6C 0043CC6C 2673FFFF */  addiu       $s3, $s3, -0x1
/* 03CC70 0043CC70 0333082B */  sltu        $at, $t9, $s3
/* 03CC74 0043CC74 1420FF55 */  bnez        $at, .L0043C9CC
/* 03CC78 0043CC78 00000000 */   nop
.L0043CC7C:
/* 03CC7C 0043CC7C 2402FFFF */  addiu       $v0, $zero, -0x1
.L0043CC80:
/* 03CC80 0043CC80 8FBF0044 */  lw          $ra, 0x44($sp)
.L0043CC84:
/* 03CC84 0043CC84 8FB0001C */  lw          $s0, 0x1C($sp)
/* 03CC88 0043CC88 8FB10020 */  lw          $s1, 0x20($sp)
/* 03CC8C 0043CC8C 8FB20024 */  lw          $s2, 0x24($sp)
/* 03CC90 0043CC90 8FB30028 */  lw          $s3, 0x28($sp)
/* 03CC94 0043CC94 8FB4002C */  lw          $s4, 0x2C($sp)
/* 03CC98 0043CC98 8FB50030 */  lw          $s5, 0x30($sp)
/* 03CC9C 0043CC9C 8FB60034 */  lw          $s6, 0x34($sp)
/* 03CCA0 0043CCA0 8FB70038 */  lw          $s7, 0x38($sp)
/* 03CCA4 0043CCA4 8FBE0040 */  lw          $fp, 0x40($sp)
/* 03CCA8 0043CCA8 03E00008 */  jr          $ra
/* 03CCAC 0043CCAC 27BD00D8 */   addiu      $sp, $sp, 0xD8
