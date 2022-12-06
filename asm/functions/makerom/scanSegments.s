.section .rodata
glabel STR_10004F60
/* 044F60 10004F60 */ .asciz "makerom: out of date\n"
                      .balign 4

glabel STR_10004F78
/* 044F78 10004F78 */ .asciz "makerom: segment \"%s\": not found in any wave\n"
                      .balign 4

glabel STR_10004FA8
/* 044FA8 10004FA8 */ .asciz "makerom: malloc failed [RomSize= %d kB]\n"
                      .balign 4


.section .text
glabel scanSegments # 19
/* 00C940 0040C940 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00C944 0040C944 279C6420 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC06420
/* 00C948 0040C948 0399E021 */  addu        $gp, $gp, $t9
/* 00C94C 0040C94C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00C950 0040C950 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00C954 0040C954 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00C958 0040C958 240E0050 */  addiu       $t6, $zero, 0x50
/* 00C95C 0040C95C AFAE0028 */  sw          $t6, 0x28($sp)
/* 00C960 0040C960 8F9981D8 */  lw          $t9, %call16(elf_version)($gp)
/* 00C964 0040C964 24040001 */  addiu       $a0, $zero, 0x1
/* 00C968 0040C968 0320F809 */  jalr        $t9
/* 00C96C 0040C96C 00000000 */   nop
/* 00C970 0040C970 1440000A */  bnez        $v0, .L0040C99C
/* 00C974 0040C974 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00C978 0040C978 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00C97C 0040C97C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00C980 0040C980 8F85802C */  lw          $a1, %got(STR_10004F60)($gp)
/* 00C984 0040C984 24840020 */  addiu       $a0, $a0, 0x20
/* 00C988 0040C988 0320F809 */  jalr        $t9
/* 00C98C 0040C98C 24A54F60 */   addiu      $a1, $a1, %lo(STR_10004F60)
/* 00C990 0040C990 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C994 0040C994 10000077 */  b           .L0040CB74
/* 00C998 0040C998 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040C99C:
/* 00C99C 0040C99C 8F8F8658 */  lw          $t7, %got(segmentList)($gp)
/* 00C9A0 0040C9A0 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00C9A4 0040C9A4 11E0004B */  beqz        $t7, .L0040CAD4
/* 00C9A8 0040C9A8 AFAF002C */   sw         $t7, 0x2C($sp)
.L0040C9AC:
/* 00C9AC 0040C9AC 8FB8002C */  lw          $t8, 0x2C($sp)
/* 00C9B0 0040C9B0 8F19000C */  lw          $t9, 0xC($t8)
/* 00C9B4 0040C9B4 1720000C */  bnez        $t9, .L0040C9E8
/* 00C9B8 0040C9B8 00000000 */   nop
/* 00C9BC 0040C9BC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00C9C0 0040C9C0 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00C9C4 0040C9C4 8F85802C */  lw          $a1, %got(STR_10004F78)($gp)
/* 00C9C8 0040C9C8 8FA8002C */  lw          $t0, 0x2C($sp)
/* 00C9CC 0040C9CC 24840020 */  addiu       $a0, $a0, 0x20
/* 00C9D0 0040C9D0 24A54F78 */  addiu       $a1, $a1, %lo(STR_10004F78)
/* 00C9D4 0040C9D4 0320F809 */  jalr        $t9
/* 00C9D8 0040C9D8 8D060004 */   lw         $a2, 0x4($t0)
/* 00C9DC 0040C9DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C9E0 0040C9E0 10000064 */  b           .L0040CB74
/* 00C9E4 0040C9E4 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040C9E8:
/* 00C9E8 0040C9E8 8FA90028 */  lw          $t1, 0x28($sp)
/* 00C9EC 0040C9EC 8FAA002C */  lw          $t2, 0x2C($sp)
/* 00C9F0 0040C9F0 AD490024 */  sw          $t1, 0x24($t2)
/* 00C9F4 0040C9F4 8FAB002C */  lw          $t3, 0x2C($sp)
/* 00C9F8 0040C9F8 8D6C0028 */  lw          $t4, 0x28($t3)
/* 00C9FC 0040C9FC 318D0002 */  andi        $t5, $t4, 0x2
/* 00CA00 0040CA00 11A0000D */  beqz        $t5, .L0040CA38
/* 00CA04 0040CA04 00000000 */   nop
/* 00CA08 0040CA08 8F998018 */  lw          $t9, %got(sizeObject)($gp)
/* 00CA0C 0040CA0C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00CA10 0040CA10 2739CB84 */  addiu       $t9, $t9, %lo(sizeObject)
/* 00CA14 0040CA14 0320F809 */  jalr        $t9
/* 00CA18 0040CA18 00000000 */   nop
/* 00CA1C 0040CA1C 2401FFFF */  addiu       $at, $zero, -0x1
/* 00CA20 0040CA20 14410003 */  bne         $v0, $at, .L0040CA30
/* 00CA24 0040CA24 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00CA28 0040CA28 10000052 */  b           .L0040CB74
/* 00CA2C 0040CA2C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CA30:
/* 00CA30 0040CA30 10000010 */  b           .L0040CA74
/* 00CA34 0040CA34 00000000 */   nop
.L0040CA38:
/* 00CA38 0040CA38 8FAE002C */  lw          $t6, 0x2C($sp)
/* 00CA3C 0040CA3C 8DCF0028 */  lw          $t7, 0x28($t6)
/* 00CA40 0040CA40 31F80004 */  andi        $t8, $t7, 0x4
/* 00CA44 0040CA44 1300000B */  beqz        $t8, .L0040CA74
/* 00CA48 0040CA48 00000000 */   nop
/* 00CA4C 0040CA4C 8F998018 */  lw          $t9, %got(sizeRaw)($gp)
/* 00CA50 0040CA50 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00CA54 0040CA54 2739DA80 */  addiu       $t9, $t9, %lo(sizeRaw)
/* 00CA58 0040CA58 0320F809 */  jalr        $t9
/* 00CA5C 0040CA5C 00000000 */   nop
/* 00CA60 0040CA60 2401FFFF */  addiu       $at, $zero, -0x1
/* 00CA64 0040CA64 14410003 */  bne         $v0, $at, .L0040CA74
/* 00CA68 0040CA68 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00CA6C 0040CA6C 10000041 */  b           .L0040CB74
/* 00CA70 0040CA70 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CA74:
/* 00CA74 0040CA74 8FB9002C */  lw          $t9, 0x2C($sp)
/* 00CA78 0040CA78 8F280024 */  lw          $t0, 0x24($t9)
/* 00CA7C 0040CA7C AFA80028 */  sw          $t0, 0x28($sp)
/* 00CA80 0040CA80 8FA9002C */  lw          $t1, 0x2C($sp)
/* 00CA84 0040CA84 8FAF0028 */  lw          $t7, 0x28($sp)
/* 00CA88 0040CA88 8D2A002C */  lw          $t2, 0x2C($t1)
/* 00CA8C 0040CA8C 8D2B0030 */  lw          $t3, 0x30($t1)
/* 00CA90 0040CA90 8D2D0034 */  lw          $t5, 0x34($t1)
/* 00CA94 0040CA94 014B6021 */  addu        $t4, $t2, $t3
/* 00CA98 0040CA98 018D7021 */  addu        $t6, $t4, $t5
/* 00CA9C 0040CA9C 01EEC021 */  addu        $t8, $t7, $t6
/* 00CAA0 0040CAA0 AFB80028 */  sw          $t8, 0x28($sp)
/* 00CAA4 0040CAA4 8FB9002C */  lw          $t9, 0x2C($sp)
/* 00CAA8 0040CAA8 8FA50028 */  lw          $a1, 0x28($sp)
/* 00CAAC 0040CAAC 8F240048 */  lw          $a0, 0x48($t9)
/* 00CAB0 0040CAB0 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00CAB4 0040CAB4 0320F809 */  jalr        $t9
/* 00CAB8 0040CAB8 00000000 */   nop
/* 00CABC 0040CABC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CAC0 0040CAC0 AFA20028 */  sw          $v0, 0x28($sp)
/* 00CAC4 0040CAC4 8FA8002C */  lw          $t0, 0x2C($sp)
/* 00CAC8 0040CAC8 8D0A0000 */  lw          $t2, 0x0($t0)
/* 00CACC 0040CACC 1540FFB7 */  bnez        $t2, .L0040C9AC
/* 00CAD0 0040CAD0 AFAA002C */   sw         $t2, 0x2C($sp)
.L0040CAD4:
/* 00CAD4 0040CAD4 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00CAD8 0040CAD8 2D610051 */  sltiu       $at, $t3, 0x51
/* 00CADC 0040CADC 14200003 */  bnez        $at, .L0040CAEC
/* 00CAE0 0040CAE0 00000000 */   nop
/* 00CAE4 0040CAE4 10000003 */  b           .L0040CAF4
/* 00CAE8 0040CAE8 AFAB0024 */   sw         $t3, 0x24($sp)
.L0040CAEC:
/* 00CAEC 0040CAEC 24090050 */  addiu       $t1, $zero, 0x50
/* 00CAF0 0040CAF0 AFA90024 */  sw          $t1, 0x24($sp)
.L0040CAF4:
/* 00CAF4 0040CAF4 8F9980D8 */  lw          $t9, %call16(calloc)($gp)
/* 00CAF8 0040CAF8 8FA40024 */  lw          $a0, 0x24($sp)
/* 00CAFC 0040CAFC 24050001 */  addiu       $a1, $zero, 0x1
/* 00CB00 0040CB00 0320F809 */  jalr        $t9
/* 00CB04 0040CB04 00000000 */   nop
/* 00CB08 0040CB08 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CB0C 0040CB0C 8F818030 */  lw          $at, %got(B_1000BA80)($gp)
/* 00CB10 0040CB10 AC22BA80 */  sw          $v0, %lo(B_1000BA80)($at)
/* 00CB14 0040CB14 8F8C8030 */  lw          $t4, %got(B_1000BA80)($gp)
/* 00CB18 0040CB18 8D8CBA80 */  lw          $t4, %lo(B_1000BA80)($t4)
/* 00CB1C 0040CB1C 15800011 */  bnez        $t4, .L0040CB64
/* 00CB20 0040CB20 00000000 */   nop
/* 00CB24 0040CB24 8FA60024 */  lw          $a2, 0x24($sp)
/* 00CB28 0040CB28 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00CB2C 0040CB2C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00CB30 0040CB30 24C603FF */  addiu       $a2, $a2, 0x3FF
/* 00CB34 0040CB34 8F85802C */  lw          $a1, %got(STR_10004FA8)($gp)
/* 00CB38 0040CB38 24840020 */  addiu       $a0, $a0, 0x20
/* 00CB3C 0040CB3C 24A54FA8 */  addiu       $a1, $a1, %lo(STR_10004FA8)
/* 00CB40 0040CB40 04C10002 */  bgez        $a2, .L0040CB4C
/* 00CB44 0040CB44 00C00821 */   addu       $at, $a2, $zero
/* 00CB48 0040CB48 24C103FF */  addiu       $at, $a2, 0x3FF
.L0040CB4C:
/* 00CB4C 0040CB4C 00013283 */  sra         $a2, $at, 10
/* 00CB50 0040CB50 0320F809 */  jalr        $t9
/* 00CB54 0040CB54 00000000 */   nop
/* 00CB58 0040CB58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CB5C 0040CB5C 10000005 */  b           .L0040CB74
/* 00CB60 0040CB60 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CB64:
/* 00CB64 0040CB64 10000003 */  b           .L0040CB74
/* 00CB68 0040CB68 00001025 */   move       $v0, $zero
/* 00CB6C 0040CB6C 10000001 */  b           .L0040CB74
/* 00CB70 0040CB70 00000000 */   nop
.L0040CB74:
/* 00CB74 0040CB74 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00CB78 0040CB78 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00CB7C 0040CB7C 03E00008 */  jr          $ra
/* 00CB80 0040CB80 00000000 */   nop
