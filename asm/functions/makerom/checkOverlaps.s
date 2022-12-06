.section .rodata
glabel STR_100052D8
/* 0452D8 100052D8 */ .asciz "makerom: segment \"%s\" [0x%x, 0x%x) overlaps with\n"
                      .balign 4

glabel STR_1000530C
/* 04530C 1000530C */ .asciz "         segment \"%s\" [0x%x, 0x%x)\n"
                      .balign 4

glabel STR_10005330
/* 045330 10005330 */ .asciz "         in wave \"%s\"\n"
                      .balign 4


.section .text
glabel checkOverlaps # 23
/* 00E000 0040E000 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00E004 0040E004 279C4D60 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC04D60
/* 00E008 0040E008 0399E021 */  addu        $gp, $gp, $t9
/* 00E00C 0040E00C 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00E010 0040E010 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00E014 0040E014 AFBC0020 */  sw          $gp, 0x20($sp)
/* 00E018 0040E018 AFA00028 */  sw          $zero, 0x28($sp)
/* 00E01C 0040E01C 8F8E865C */  lw          $t6, %got(waveList)($gp)
/* 00E020 0040E020 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00E024 0040E024 11C00064 */  beqz        $t6, .L0040E1B8
/* 00E028 0040E028 AFAE003C */   sw         $t6, 0x3C($sp)
.L0040E02C:
/* 00E02C 0040E02C 8FAF003C */  lw          $t7, 0x3C($sp)
/* 00E030 0040E030 8DF80008 */  lw          $t8, 0x8($t7)
/* 00E034 0040E034 1300005C */  beqz        $t8, .L0040E1A8
/* 00E038 0040E038 AFB80038 */   sw         $t8, 0x38($sp)
.L0040E03C:
/* 00E03C 0040E03C 8FB90038 */  lw          $t9, 0x38($sp)
/* 00E040 0040E040 8F280000 */  lw          $t0, 0x0($t9)
/* 00E044 0040E044 11000054 */  beqz        $t0, .L0040E198
/* 00E048 0040E048 AFA80034 */   sw         $t0, 0x34($sp)
.L0040E04C:
/* 00E04C 0040E04C 8FA90038 */  lw          $t1, 0x38($sp)
/* 00E050 0040E050 8D2A0004 */  lw          $t2, 0x4($t1)
/* 00E054 0040E054 AFAA0030 */  sw          $t2, 0x30($sp)
/* 00E058 0040E058 8FAB0034 */  lw          $t3, 0x34($sp)
/* 00E05C 0040E05C 8D6C0004 */  lw          $t4, 0x4($t3)
/* 00E060 0040E060 AFAC002C */  sw          $t4, 0x2C($sp)
/* 00E064 0040E064 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00E068 0040E068 3C018000 */  lui         $at, (0x80000000 >> 16)
/* 00E06C 0040E06C 8DAE0010 */  lw          $t6, 0x10($t5)
/* 00E070 0040E070 01C1082B */  sltu        $at, $t6, $at
/* 00E074 0040E074 14200044 */  bnez        $at, .L0040E188
/* 00E078 0040E078 00000000 */   nop
/* 00E07C 0040E07C 3C01C000 */  lui         $at, (0xC0000000 >> 16)
/* 00E080 0040E080 01C1082B */  sltu        $at, $t6, $at
/* 00E084 0040E084 10200040 */  beqz        $at, .L0040E188
/* 00E088 0040E088 00000000 */   nop
/* 00E08C 0040E08C 8FAF002C */  lw          $t7, 0x2C($sp)
/* 00E090 0040E090 3C018000 */  lui         $at, (0x80000000 >> 16)
/* 00E094 0040E094 8DF80010 */  lw          $t8, 0x10($t7)
/* 00E098 0040E098 0301082B */  sltu        $at, $t8, $at
/* 00E09C 0040E09C 1420003A */  bnez        $at, .L0040E188
/* 00E0A0 0040E0A0 00000000 */   nop
/* 00E0A4 0040E0A4 3C01C000 */  lui         $at, (0xC0000000 >> 16)
/* 00E0A8 0040E0A8 0301082B */  sltu        $at, $t8, $at
/* 00E0AC 0040E0AC 10200036 */  beqz        $at, .L0040E188
/* 00E0B0 0040E0B0 00000000 */   nop
/* 00E0B4 0040E0B4 8DA80040 */  lw          $t0, 0x40($t5)
/* 00E0B8 0040E0B8 3C011FFF */  lui         $at, (0x1FFFFFFF >> 16)
/* 00E0BC 0040E0BC 3421FFFF */  ori         $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 00E0C0 0040E0C0 01C1C824 */  and         $t9, $t6, $at
/* 00E0C4 0040E0C4 03015024 */  and         $t2, $t8, $at
/* 00E0C8 0040E0C8 03284821 */  addu        $t1, $t9, $t0
/* 00E0CC 0040E0CC 0149082B */  sltu        $at, $t2, $t1
/* 00E0D0 0040E0D0 1020002D */  beqz        $at, .L0040E188
/* 00E0D4 0040E0D4 00000000 */   nop
/* 00E0D8 0040E0D8 8DEB0040 */  lw          $t3, 0x40($t7)
/* 00E0DC 0040E0DC 014B6021 */  addu        $t4, $t2, $t3
/* 00E0E0 0040E0E0 032C082B */  sltu        $at, $t9, $t4
/* 00E0E4 0040E0E4 10200028 */  beqz        $at, .L0040E188
/* 00E0E8 0040E0E8 00000000 */   nop
/* 00E0EC 0040E0EC 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00E0F0 0040E0F0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E0F4 0040E0F4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00E0F8 0040E0F8 8DCD0010 */  lw          $t5, 0x10($t6)
/* 00E0FC 0040E0FC 8DC80040 */  lw          $t0, 0x40($t6)
/* 00E100 0040E100 8F85802C */  lw          $a1, %got(STR_100052D8)($gp)
/* 00E104 0040E104 8DC60004 */  lw          $a2, 0x4($t6)
/* 00E108 0040E108 01A8C021 */  addu        $t8, $t5, $t0
/* 00E10C 0040E10C AFB80010 */  sw          $t8, 0x10($sp)
/* 00E110 0040E110 24840020 */  addiu       $a0, $a0, 0x20
/* 00E114 0040E114 01A03825 */  move        $a3, $t5
/* 00E118 0040E118 0320F809 */  jalr        $t9
/* 00E11C 0040E11C 24A552D8 */   addiu      $a1, $a1, %lo(STR_100052D8)
/* 00E120 0040E120 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00E124 0040E124 8FA9002C */  lw          $t1, 0x2C($sp)
/* 00E128 0040E128 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E12C 0040E12C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00E130 0040E130 8D2F0010 */  lw          $t7, 0x10($t1)
/* 00E134 0040E134 8D2A0040 */  lw          $t2, 0x40($t1)
/* 00E138 0040E138 8F85802C */  lw          $a1, %got(STR_1000530C)($gp)
/* 00E13C 0040E13C 8D260004 */  lw          $a2, 0x4($t1)
/* 00E140 0040E140 01EA5821 */  addu        $t3, $t7, $t2
/* 00E144 0040E144 AFAB0010 */  sw          $t3, 0x10($sp)
/* 00E148 0040E148 24840020 */  addiu       $a0, $a0, 0x20
/* 00E14C 0040E14C 01E03825 */  move        $a3, $t7
/* 00E150 0040E150 0320F809 */  jalr        $t9
/* 00E154 0040E154 24A5530C */   addiu      $a1, $a1, %lo(STR_1000530C)
/* 00E158 0040E158 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00E15C 0040E15C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E160 0040E160 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00E164 0040E164 8F85802C */  lw          $a1, %got(STR_10005330)($gp)
/* 00E168 0040E168 8FAC003C */  lw          $t4, 0x3C($sp)
/* 00E16C 0040E16C 24840020 */  addiu       $a0, $a0, 0x20
/* 00E170 0040E170 24A55330 */  addiu       $a1, $a1, %lo(STR_10005330)
/* 00E174 0040E174 0320F809 */  jalr        $t9
/* 00E178 0040E178 8D860004 */   lw         $a2, 0x4($t4)
/* 00E17C 0040E17C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00E180 0040E180 24190001 */  addiu       $t9, $zero, 0x1
/* 00E184 0040E184 AFB90028 */  sw          $t9, 0x28($sp)
.L0040E188:
/* 00E188 0040E188 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00E18C 0040E18C 8DCD0000 */  lw          $t5, 0x0($t6)
/* 00E190 0040E190 15A0FFAE */  bnez        $t5, .L0040E04C
/* 00E194 0040E194 AFAD0034 */   sw         $t5, 0x34($sp)
.L0040E198:
/* 00E198 0040E198 8FA80038 */  lw          $t0, 0x38($sp)
/* 00E19C 0040E19C 8D180000 */  lw          $t8, 0x0($t0)
/* 00E1A0 0040E1A0 1700FFA6 */  bnez        $t8, .L0040E03C
/* 00E1A4 0040E1A4 AFB80038 */   sw         $t8, 0x38($sp)
.L0040E1A8:
/* 00E1A8 0040E1A8 8FA9003C */  lw          $t1, 0x3C($sp)
/* 00E1AC 0040E1AC 8D2F0000 */  lw          $t7, 0x0($t1)
/* 00E1B0 0040E1B0 15E0FF9E */  bnez        $t7, .L0040E02C
/* 00E1B4 0040E1B4 AFAF003C */   sw         $t7, 0x3C($sp)
.L0040E1B8:
/* 00E1B8 0040E1B8 10000003 */  b           .L0040E1C8
/* 00E1BC 0040E1BC 8FA20028 */   lw         $v0, 0x28($sp)
/* 00E1C0 0040E1C0 10000001 */  b           .L0040E1C8
/* 00E1C4 0040E1C4 00000000 */   nop
.L0040E1C8:
/* 00E1C8 0040E1C8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00E1CC 0040E1CC 27BD0040 */  addiu       $sp, $sp, 0x40
/* 00E1D0 0040E1D0 03E00008 */  jr          $ra
/* 00E1D4 0040E1D4 00000000 */   nop