.section .rodata
glabel STR_10005954
/* 045954 10005954 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10005964
/* 045964 10005964 */ .asciz ".%s.text"
                      .balign 4

glabel STR_10005970
/* 045970 10005970 */ .asciz "makerom: %s: section size for %s does not match input section sizes\n"
                      .balign 4

glabel STR_100059B8
/* 0459B8 100059B8 */ .asciz "makerom:   shdr = %d, textSize = %d\n"
                      .balign 4

glabel STR_100059E0
/* 0459E0 100059E0 */ .asciz "makerom: %s: seek to section %s failed\n"
                      .balign 4

glabel STR_10005A08
/* 045A08 10005A08 */ .asciz "makerom: %s: read of section %s failed\n"
                      .balign 4

glabel STR_10005A30
/* 045A30 10005A30 */ .asciz ".%s.data"
                      .balign 4

glabel STR_10005A3C
/* 045A3C 10005A3C */ .asciz "makerom: %s: section size for %s does not match input section sizes\n"
                      .balign 4

glabel STR_10005A84
/* 045A84 10005A84 */ .asciz "large data failed\n"
                      .balign 4

glabel STR_10005A98
/* 045A98 10005A98 */ .asciz "%s, file large=%x, our dataSize=%x\n"
                      .balign 4

glabel STR_10005ABC
/* 045ABC 10005ABC */ .asciz "makerom: %s: seek to section %s failed\n"
                      .balign 4

glabel STR_10005AE4
/* 045AE4 10005AE4 */ .asciz "makerom: %s: read of section %s failed\n"
                      .balign 4

glabel STR_10005B0C
/* 045B0C 10005B0C */ .asciz ".%s.sdata"
                      .balign 4

glabel STR_10005B18
/* 045B18 10005B18 */ .asciz "makerom: %s: section size for %s does not match input section sizes\n"
                      .balign 4

glabel STR_10005B60
/* 045B60 10005B60 */ .asciz "small data failed\n"
                      .balign 4

glabel STR_10005B74
/* 045B74 10005B74 */ .asciz "makerom: %s: seek to section %s failed\n"
                      .balign 4

glabel STR_10005B9C
/* 045B9C 10005B9C */ .asciz "makerom: %s: read of section %s failed\n"
                      .balign 4


.section .text
glabel readObject # 29
/* 00F8B4 0040F8B4 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00F8B8 0040F8B8 279C34AC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC034AC
/* 00F8BC 0040F8BC 0399E021 */  addu        $gp, $gp, $t9
/* 00F8C0 0040F8C0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00F8C4 0040F8C4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00F8C8 0040F8C8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 00F8CC 0040F8CC AFA40038 */  sw          $a0, 0x38($sp)
/* 00F8D0 0040F8D0 AFB0001C */  sw          $s0, 0x1C($sp)
/* 00F8D4 0040F8D4 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 00F8D8 0040F8D8 8FAE0038 */  lw          $t6, 0x38($sp)
/* 00F8DC 0040F8DC 0320F809 */  jalr        $t9
/* 00F8E0 0040F8E0 8DC40004 */   lw         $a0, 0x4($t6)
/* 00F8E4 0040F8E4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F8E8 0040F8E8 00408025 */  move        $s0, $v0
/* 00F8EC 0040F8EC 26040009 */  addiu       $a0, $s0, 0x9
/* 00F8F0 0040F8F0 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 00F8F4 0040F8F4 0320F809 */  jalr        $t9
/* 00F8F8 0040F8F8 00000000 */   nop
/* 00F8FC 0040F8FC AFA20034 */  sw          $v0, 0x34($sp)
/* 00F900 0040F900 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00F904 0040F904 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F908 0040F908 15E0000A */  bnez        $t7, .L0040F934
/* 00F90C 0040F90C 00000000 */   nop
/* 00F910 0040F910 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00F914 0040F914 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00F918 0040F918 8F85802C */  lw          $a1, %got(STR_10005954)($gp)
/* 00F91C 0040F91C 24840020 */  addiu       $a0, $a0, 0x20
/* 00F920 0040F920 0320F809 */  jalr        $t9
/* 00F924 0040F924 24A55954 */   addiu      $a1, $a1, %lo(STR_10005954)
/* 00F928 0040F928 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F92C 0040F92C 1000017E */  b           .L0040FF28
/* 00F930 0040F930 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F934:
/* 00F934 0040F934 8F99806C */  lw          $t9, %call16(sprintf)($gp)
/* 00F938 0040F938 8F85802C */  lw          $a1, %got(STR_10005964)($gp)
/* 00F93C 0040F93C 8FB80038 */  lw          $t8, 0x38($sp)
/* 00F940 0040F940 8FA40034 */  lw          $a0, 0x34($sp)
/* 00F944 0040F944 24A55964 */  addiu       $a1, $a1, %lo(STR_10005964)
/* 00F948 0040F948 0320F809 */  jalr        $t9
/* 00F94C 0040F94C 8F060004 */   lw         $a2, 0x4($t8)
/* 00F950 0040F950 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F954 0040F954 8FB90038 */  lw          $t9, 0x38($sp)
/* 00F958 0040F958 8FA50034 */  lw          $a1, 0x34($sp)
/* 00F95C 0040F95C 8F24000C */  lw          $a0, 0xC($t9)
/* 00F960 0040F960 8F998018 */  lw          $t9, %got(lookupShdr)($gp)
/* 00F964 0040F964 2739F5D8 */  addiu       $t9, $t9, %lo(lookupShdr)
/* 00F968 0040F968 0320F809 */  jalr        $t9
/* 00F96C 0040F96C 00000000 */   nop
/* 00F970 0040F970 AFA20030 */  sw          $v0, 0x30($sp)
/* 00F974 0040F974 8FA80030 */  lw          $t0, 0x30($sp)
/* 00F978 0040F978 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F97C 0040F97C 15000003 */  bnez        $t0, .L0040F98C
/* 00F980 0040F980 00000000 */   nop
/* 00F984 0040F984 10000168 */  b           .L0040FF28
/* 00F988 0040F988 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F98C:
/* 00F98C 0040F98C 8FA90030 */  lw          $t1, 0x30($sp)
/* 00F990 0040F990 8FAB0038 */  lw          $t3, 0x38($sp)
/* 00F994 0040F994 8D2A0014 */  lw          $t2, 0x14($t1)
/* 00F998 0040F998 8D6C002C */  lw          $t4, 0x2C($t3)
/* 00F99C 0040F99C 114C001E */  beq         $t2, $t4, .L0040FA18
/* 00F9A0 0040F9A0 00000000 */   nop
/* 00F9A4 0040F9A4 8FAD0038 */  lw          $t5, 0x38($sp)
/* 00F9A8 0040F9A8 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00F9AC 0040F9AC 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00F9B0 0040F9B0 8F85802C */  lw          $a1, %got(STR_10005970)($gp)
/* 00F9B4 0040F9B4 8DAE000C */  lw          $t6, 0xC($t5)
/* 00F9B8 0040F9B8 8FA70034 */  lw          $a3, 0x34($sp)
/* 00F9BC 0040F9BC 24840020 */  addiu       $a0, $a0, 0x20
/* 00F9C0 0040F9C0 24A55970 */  addiu       $a1, $a1, %lo(STR_10005970)
/* 00F9C4 0040F9C4 0320F809 */  jalr        $t9
/* 00F9C8 0040F9C8 8DC60004 */   lw         $a2, 0x4($t6)
/* 00F9CC 0040F9CC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F9D0 0040F9D0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00F9D4 0040F9D4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00F9D8 0040F9D8 8F85802C */  lw          $a1, %got(STR_100059B8)($gp)
/* 00F9DC 0040F9DC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00F9E0 0040F9E0 8FB80038 */  lw          $t8, 0x38($sp)
/* 00F9E4 0040F9E4 24840020 */  addiu       $a0, $a0, 0x20
/* 00F9E8 0040F9E8 24A559B8 */  addiu       $a1, $a1, %lo(STR_100059B8)
/* 00F9EC 0040F9EC 8DE60014 */  lw          $a2, 0x14($t7)
/* 00F9F0 0040F9F0 0320F809 */  jalr        $t9
/* 00F9F4 0040F9F4 8F07002C */   lw         $a3, 0x2C($t8)
/* 00F9F8 0040F9F8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00F9FC 0040F9FC 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 00FA00 0040FA00 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FA04 0040FA04 0320F809 */  jalr        $t9
/* 00FA08 0040FA08 00000000 */   nop
/* 00FA0C 0040FA0C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FA10 0040FA10 10000145 */  b           .L0040FF28
/* 00FA14 0040FA14 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FA18:
/* 00FA18 0040FA18 8FB90038 */  lw          $t9, 0x38($sp)
/* 00FA1C 0040FA1C 8FA90030 */  lw          $t1, 0x30($sp)
/* 00FA20 0040FA20 00003025 */  move        $a2, $zero
/* 00FA24 0040FA24 8F28000C */  lw          $t0, 0xC($t9)
/* 00FA28 0040FA28 8F9980DC */  lw          $t9, %call16(lseek)($gp)
/* 00FA2C 0040FA2C 8D250010 */  lw          $a1, 0x10($t1)
/* 00FA30 0040FA30 8D040114 */  lw          $a0, 0x114($t0)
/* 00FA34 0040FA34 0320F809 */  jalr        $t9
/* 00FA38 0040FA38 00000000 */   nop
/* 00FA3C 0040FA3C 2401FFFF */  addiu       $at, $zero, -0x1
/* 00FA40 0040FA40 14410013 */  bne         $v0, $at, .L0040FA90
/* 00FA44 0040FA44 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00FA48 0040FA48 8FAB0038 */  lw          $t3, 0x38($sp)
/* 00FA4C 0040FA4C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00FA50 0040FA50 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00FA54 0040FA54 8F85802C */  lw          $a1, %got(STR_100059E0)($gp)
/* 00FA58 0040FA58 8D6A000C */  lw          $t2, 0xC($t3)
/* 00FA5C 0040FA5C 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FA60 0040FA60 24840020 */  addiu       $a0, $a0, 0x20
/* 00FA64 0040FA64 24A559E0 */  addiu       $a1, $a1, %lo(STR_100059E0)
/* 00FA68 0040FA68 0320F809 */  jalr        $t9
/* 00FA6C 0040FA6C 8D460004 */   lw         $a2, 0x4($t2)
/* 00FA70 0040FA70 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FA74 0040FA74 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 00FA78 0040FA78 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FA7C 0040FA7C 0320F809 */  jalr        $t9
/* 00FA80 0040FA80 00000000 */   nop
/* 00FA84 0040FA84 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FA88 0040FA88 10000127 */  b           .L0040FF28
/* 00FA8C 0040FA8C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FA90:
/* 00FA90 0040FA90 8FAC0038 */  lw          $t4, 0x38($sp)
/* 00FA94 0040FA94 8F8F8030 */  lw          $t7, %got(B_1000BA80)($gp)
/* 00FA98 0040FA98 8F9980C8 */  lw          $t9, %call16(read)($gp)
/* 00FA9C 0040FA9C 8FB80030 */  lw          $t8, 0x30($sp)
/* 00FAA0 0040FAA0 8D8D000C */  lw          $t5, 0xC($t4)
/* 00FAA4 0040FAA4 8D8E0024 */  lw          $t6, 0x24($t4)
/* 00FAA8 0040FAA8 8DEFBA80 */  lw          $t7, %lo(B_1000BA80)($t7)
/* 00FAAC 0040FAAC 8F060014 */  lw          $a2, 0x14($t8)
/* 00FAB0 0040FAB0 8DA40114 */  lw          $a0, 0x114($t5)
/* 00FAB4 0040FAB4 0320F809 */  jalr        $t9
/* 00FAB8 0040FAB8 01CF2821 */   addu       $a1, $t6, $t7
/* 00FABC 0040FABC 8FB90030 */  lw          $t9, 0x30($sp)
/* 00FAC0 0040FAC0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FAC4 0040FAC4 8F280014 */  lw          $t0, 0x14($t9)
/* 00FAC8 0040FAC8 10480013 */  beq         $v0, $t0, .L0040FB18
/* 00FACC 0040FACC 00000000 */   nop
/* 00FAD0 0040FAD0 8FA90038 */  lw          $t1, 0x38($sp)
/* 00FAD4 0040FAD4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00FAD8 0040FAD8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00FADC 0040FADC 8F85802C */  lw          $a1, %got(STR_10005A08)($gp)
/* 00FAE0 0040FAE0 8D2B000C */  lw          $t3, 0xC($t1)
/* 00FAE4 0040FAE4 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FAE8 0040FAE8 24840020 */  addiu       $a0, $a0, 0x20
/* 00FAEC 0040FAEC 24A55A08 */  addiu       $a1, $a1, %lo(STR_10005A08)
/* 00FAF0 0040FAF0 0320F809 */  jalr        $t9
/* 00FAF4 0040FAF4 8D660004 */   lw         $a2, 0x4($t3)
/* 00FAF8 0040FAF8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FAFC 0040FAFC 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 00FB00 0040FB00 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FB04 0040FB04 0320F809 */  jalr        $t9
/* 00FB08 0040FB08 00000000 */   nop
/* 00FB0C 0040FB0C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FB10 0040FB10 10000105 */  b           .L0040FF28
/* 00FB14 0040FB14 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FB18:
/* 00FB18 0040FB18 8F99806C */  lw          $t9, %call16(sprintf)($gp)
/* 00FB1C 0040FB1C 8F85802C */  lw          $a1, %got(STR_10005A30)($gp)
/* 00FB20 0040FB20 8FAA0038 */  lw          $t2, 0x38($sp)
/* 00FB24 0040FB24 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FB28 0040FB28 24A55A30 */  addiu       $a1, $a1, %lo(STR_10005A30)
/* 00FB2C 0040FB2C 0320F809 */  jalr        $t9
/* 00FB30 0040FB30 8D460004 */   lw         $a2, 0x4($t2)
/* 00FB34 0040FB34 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FB38 0040FB38 8F998018 */  lw          $t9, %got(lookupShdr)($gp)
/* 00FB3C 0040FB3C 8FAD0038 */  lw          $t5, 0x38($sp)
/* 00FB40 0040FB40 8FA50034 */  lw          $a1, 0x34($sp)
/* 00FB44 0040FB44 2739F5D8 */  addiu       $t9, $t9, %lo(lookupShdr)
/* 00FB48 0040FB48 0320F809 */  jalr        $t9
/* 00FB4C 0040FB4C 8DA4000C */   lw         $a0, 0xC($t5)
/* 00FB50 0040FB50 AFA20030 */  sw          $v0, 0x30($sp)
/* 00FB54 0040FB54 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00FB58 0040FB58 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FB5C 0040FB5C 15800003 */  bnez        $t4, .L0040FB6C
/* 00FB60 0040FB60 00000000 */   nop
/* 00FB64 0040FB64 100000F0 */  b           .L0040FF28
/* 00FB68 0040FB68 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FB6C:
/* 00FB6C 0040FB6C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00FB70 0040FB70 8FB80038 */  lw          $t8, 0x38($sp)
/* 00FB74 0040FB74 8DCF0014 */  lw          $t7, 0x14($t6)
/* 00FB78 0040FB78 8F190030 */  lw          $t9, 0x30($t8)
/* 00FB7C 0040FB7C 11F90027 */  beq         $t7, $t9, .L0040FC1C
/* 00FB80 0040FB80 00000000 */   nop
/* 00FB84 0040FB84 8FA80038 */  lw          $t0, 0x38($sp)
/* 00FB88 0040FB88 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00FB8C 0040FB8C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00FB90 0040FB90 8F85802C */  lw          $a1, %got(STR_10005A3C)($gp)
/* 00FB94 0040FB94 8D09000C */  lw          $t1, 0xC($t0)
/* 00FB98 0040FB98 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FB9C 0040FB9C 24840020 */  addiu       $a0, $a0, 0x20
/* 00FBA0 0040FBA0 24A55A3C */  addiu       $a1, $a1, %lo(STR_10005A3C)
/* 00FBA4 0040FBA4 0320F809 */  jalr        $t9
/* 00FBA8 0040FBA8 8D260004 */   lw         $a2, 0x4($t1)
/* 00FBAC 0040FBAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FBB0 0040FBB0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00FBB4 0040FBB4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00FBB8 0040FBB8 8F85802C */  lw          $a1, %got(STR_10005A84)($gp)
/* 00FBBC 0040FBBC 24840020 */  addiu       $a0, $a0, 0x20
/* 00FBC0 0040FBC0 0320F809 */  jalr        $t9
/* 00FBC4 0040FBC4 24A55A84 */   addiu      $a1, $a1, %lo(STR_10005A84)
/* 00FBC8 0040FBC8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FBCC 0040FBCC 8FAB0038 */  lw          $t3, 0x38($sp)
/* 00FBD0 0040FBD0 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00FBD4 0040FBD4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00FBD8 0040FBD8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00FBDC 0040FBDC 8F85802C */  lw          $a1, %got(STR_10005A98)($gp)
/* 00FBE0 0040FBE0 8D6D0030 */  lw          $t5, 0x30($t3)
/* 00FBE4 0040FBE4 8D660004 */  lw          $a2, 0x4($t3)
/* 00FBE8 0040FBE8 8D470014 */  lw          $a3, 0x14($t2)
/* 00FBEC 0040FBEC 24840020 */  addiu       $a0, $a0, 0x20
/* 00FBF0 0040FBF0 24A55A98 */  addiu       $a1, $a1, %lo(STR_10005A98)
/* 00FBF4 0040FBF4 0320F809 */  jalr        $t9
/* 00FBF8 0040FBF8 AFAD0010 */   sw         $t5, 0x10($sp)
/* 00FBFC 0040FBFC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FC00 0040FC00 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 00FC04 0040FC04 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FC08 0040FC08 0320F809 */  jalr        $t9
/* 00FC0C 0040FC0C 00000000 */   nop
/* 00FC10 0040FC10 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FC14 0040FC14 100000C4 */  b           .L0040FF28
/* 00FC18 0040FC18 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FC1C:
/* 00FC1C 0040FC1C 8FAC0038 */  lw          $t4, 0x38($sp)
/* 00FC20 0040FC20 8F9980DC */  lw          $t9, %call16(lseek)($gp)
/* 00FC24 0040FC24 8FB80030 */  lw          $t8, 0x30($sp)
/* 00FC28 0040FC28 8D8E000C */  lw          $t6, 0xC($t4)
/* 00FC2C 0040FC2C 00003025 */  move        $a2, $zero
/* 00FC30 0040FC30 8F050010 */  lw          $a1, 0x10($t8)
/* 00FC34 0040FC34 0320F809 */  jalr        $t9
/* 00FC38 0040FC38 8DC40114 */   lw         $a0, 0x114($t6)
/* 00FC3C 0040FC3C 2401FFFF */  addiu       $at, $zero, -0x1
/* 00FC40 0040FC40 14410014 */  bne         $v0, $at, .L0040FC94
/* 00FC44 0040FC44 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00FC48 0040FC48 8FAF0038 */  lw          $t7, 0x38($sp)
/* 00FC4C 0040FC4C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00FC50 0040FC50 8F85802C */  lw          $a1, %got(STR_10005ABC)($gp)
/* 00FC54 0040FC54 8DF9000C */  lw          $t9, 0xC($t7)
/* 00FC58 0040FC58 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FC5C 0040FC5C 24840020 */  addiu       $a0, $a0, 0x20
/* 00FC60 0040FC60 8F260004 */  lw          $a2, 0x4($t9)
/* 00FC64 0040FC64 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00FC68 0040FC68 24A55ABC */  addiu       $a1, $a1, %lo(STR_10005ABC)
/* 00FC6C 0040FC6C 0320F809 */  jalr        $t9
/* 00FC70 0040FC70 00000000 */   nop
/* 00FC74 0040FC74 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FC78 0040FC78 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 00FC7C 0040FC7C 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FC80 0040FC80 0320F809 */  jalr        $t9
/* 00FC84 0040FC84 00000000 */   nop
/* 00FC88 0040FC88 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FC8C 0040FC8C 100000A6 */  b           .L0040FF28
/* 00FC90 0040FC90 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FC94:
/* 00FC94 0040FC94 8FA80038 */  lw          $t0, 0x38($sp)
/* 00FC98 0040FC98 8F8B8030 */  lw          $t3, %got(B_1000BA80)($gp)
/* 00FC9C 0040FC9C 8F9980C8 */  lw          $t9, %call16(read)($gp)
/* 00FCA0 0040FCA0 8D0A0024 */  lw          $t2, 0x24($t0)
/* 00FCA4 0040FCA4 8D6BBA80 */  lw          $t3, %lo(B_1000BA80)($t3)
/* 00FCA8 0040FCA8 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00FCAC 0040FCAC 8D09000C */  lw          $t1, 0xC($t0)
/* 00FCB0 0040FCB0 8D0C002C */  lw          $t4, 0x2C($t0)
/* 00FCB4 0040FCB4 014B6821 */  addu        $t5, $t2, $t3
/* 00FCB8 0040FCB8 8DC60014 */  lw          $a2, 0x14($t6)
/* 00FCBC 0040FCBC 8D240114 */  lw          $a0, 0x114($t1)
/* 00FCC0 0040FCC0 0320F809 */  jalr        $t9
/* 00FCC4 0040FCC4 01AC2821 */   addu       $a1, $t5, $t4
/* 00FCC8 0040FCC8 8FB80030 */  lw          $t8, 0x30($sp)
/* 00FCCC 0040FCCC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FCD0 0040FCD0 8F0F0014 */  lw          $t7, 0x14($t8)
/* 00FCD4 0040FCD4 104F0013 */  beq         $v0, $t7, .L0040FD24
/* 00FCD8 0040FCD8 00000000 */   nop
/* 00FCDC 0040FCDC 8FB90038 */  lw          $t9, 0x38($sp)
/* 00FCE0 0040FCE0 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00FCE4 0040FCE4 8F85802C */  lw          $a1, %got(STR_10005AE4)($gp)
/* 00FCE8 0040FCE8 8F29000C */  lw          $t1, 0xC($t9)
/* 00FCEC 0040FCEC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00FCF0 0040FCF0 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FCF4 0040FCF4 24840020 */  addiu       $a0, $a0, 0x20
/* 00FCF8 0040FCF8 24A55AE4 */  addiu       $a1, $a1, %lo(STR_10005AE4)
/* 00FCFC 0040FCFC 0320F809 */  jalr        $t9
/* 00FD00 0040FD00 8D260004 */   lw         $a2, 0x4($t1)
/* 00FD04 0040FD04 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FD08 0040FD08 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 00FD0C 0040FD0C 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FD10 0040FD10 0320F809 */  jalr        $t9
/* 00FD14 0040FD14 00000000 */   nop
/* 00FD18 0040FD18 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FD1C 0040FD1C 10000082 */  b           .L0040FF28
/* 00FD20 0040FD20 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FD24:
/* 00FD24 0040FD24 8F99806C */  lw          $t9, %call16(sprintf)($gp)
/* 00FD28 0040FD28 8F85802C */  lw          $a1, %got(STR_10005B0C)($gp)
/* 00FD2C 0040FD2C 8FAA0038 */  lw          $t2, 0x38($sp)
/* 00FD30 0040FD30 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FD34 0040FD34 24A55B0C */  addiu       $a1, $a1, %lo(STR_10005B0C)
/* 00FD38 0040FD38 0320F809 */  jalr        $t9
/* 00FD3C 0040FD3C 8D460004 */   lw         $a2, 0x4($t2)
/* 00FD40 0040FD40 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FD44 0040FD44 8F998018 */  lw          $t9, %got(lookupShdr)($gp)
/* 00FD48 0040FD48 8FAB0038 */  lw          $t3, 0x38($sp)
/* 00FD4C 0040FD4C 8FA50034 */  lw          $a1, 0x34($sp)
/* 00FD50 0040FD50 2739F5D8 */  addiu       $t9, $t9, %lo(lookupShdr)
/* 00FD54 0040FD54 0320F809 */  jalr        $t9
/* 00FD58 0040FD58 8D64000C */   lw         $a0, 0xC($t3)
/* 00FD5C 0040FD5C AFA20030 */  sw          $v0, 0x30($sp)
/* 00FD60 0040FD60 8FA80030 */  lw          $t0, 0x30($sp)
/* 00FD64 0040FD64 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FD68 0040FD68 15000003 */  bnez        $t0, .L0040FD78
/* 00FD6C 0040FD6C 00000000 */   nop
/* 00FD70 0040FD70 1000006D */  b           .L0040FF28
/* 00FD74 0040FD74 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FD78:
/* 00FD78 0040FD78 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00FD7C 0040FD7C 8FAE0038 */  lw          $t6, 0x38($sp)
/* 00FD80 0040FD80 8DAC0014 */  lw          $t4, 0x14($t5)
/* 00FD84 0040FD84 8DD80034 */  lw          $t8, 0x34($t6)
/* 00FD88 0040FD88 1198001B */  beq         $t4, $t8, .L0040FDF8
/* 00FD8C 0040FD8C 00000000 */   nop
/* 00FD90 0040FD90 8FAF0038 */  lw          $t7, 0x38($sp)
/* 00FD94 0040FD94 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00FD98 0040FD98 8F85802C */  lw          $a1, %got(STR_10005B18)($gp)
/* 00FD9C 0040FD9C 8DF9000C */  lw          $t9, 0xC($t7)
/* 00FDA0 0040FDA0 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FDA4 0040FDA4 24840020 */  addiu       $a0, $a0, 0x20
/* 00FDA8 0040FDA8 8F260004 */  lw          $a2, 0x4($t9)
/* 00FDAC 0040FDAC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00FDB0 0040FDB0 24A55B18 */  addiu       $a1, $a1, %lo(STR_10005B18)
/* 00FDB4 0040FDB4 0320F809 */  jalr        $t9
/* 00FDB8 0040FDB8 00000000 */   nop
/* 00FDBC 0040FDBC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FDC0 0040FDC0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00FDC4 0040FDC4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00FDC8 0040FDC8 8F85802C */  lw          $a1, %got(STR_10005B60)($gp)
/* 00FDCC 0040FDCC 24840020 */  addiu       $a0, $a0, 0x20
/* 00FDD0 0040FDD0 0320F809 */  jalr        $t9
/* 00FDD4 0040FDD4 24A55B60 */   addiu      $a1, $a1, %lo(STR_10005B60)
/* 00FDD8 0040FDD8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FDDC 0040FDDC 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 00FDE0 0040FDE0 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FDE4 0040FDE4 0320F809 */  jalr        $t9
/* 00FDE8 0040FDE8 00000000 */   nop
/* 00FDEC 0040FDEC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FDF0 0040FDF0 1000004D */  b           .L0040FF28
/* 00FDF4 0040FDF4 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FDF8:
/* 00FDF8 0040FDF8 8FA90038 */  lw          $t1, 0x38($sp)
/* 00FDFC 0040FDFC 8F9980DC */  lw          $t9, %call16(lseek)($gp)
/* 00FE00 0040FE00 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00FE04 0040FE04 8D2A000C */  lw          $t2, 0xC($t1)
/* 00FE08 0040FE08 00003025 */  move        $a2, $zero
/* 00FE0C 0040FE0C 8D650010 */  lw          $a1, 0x10($t3)
/* 00FE10 0040FE10 0320F809 */  jalr        $t9
/* 00FE14 0040FE14 8D440114 */   lw         $a0, 0x114($t2)
/* 00FE18 0040FE18 2401FFFF */  addiu       $at, $zero, -0x1
/* 00FE1C 0040FE1C 14410013 */  bne         $v0, $at, .L0040FE6C
/* 00FE20 0040FE20 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00FE24 0040FE24 8FA80038 */  lw          $t0, 0x38($sp)
/* 00FE28 0040FE28 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00FE2C 0040FE2C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00FE30 0040FE30 8F85802C */  lw          $a1, %got(STR_10005B74)($gp)
/* 00FE34 0040FE34 8D0D000C */  lw          $t5, 0xC($t0)
/* 00FE38 0040FE38 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FE3C 0040FE3C 24840020 */  addiu       $a0, $a0, 0x20
/* 00FE40 0040FE40 24A55B74 */  addiu       $a1, $a1, %lo(STR_10005B74)
/* 00FE44 0040FE44 0320F809 */  jalr        $t9
/* 00FE48 0040FE48 8DA60004 */   lw         $a2, 0x4($t5)
/* 00FE4C 0040FE4C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FE50 0040FE50 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 00FE54 0040FE54 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FE58 0040FE58 0320F809 */  jalr        $t9
/* 00FE5C 0040FE5C 00000000 */   nop
/* 00FE60 0040FE60 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FE64 0040FE64 10000030 */  b           .L0040FF28
/* 00FE68 0040FE68 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FE6C:
/* 00FE6C 0040FE6C 8FAE0038 */  lw          $t6, 0x38($sp)
/* 00FE70 0040FE70 8F8F8030 */  lw          $t7, %got(B_1000BA80)($gp)
/* 00FE74 0040FE74 8FA80030 */  lw          $t0, 0x30($sp)
/* 00FE78 0040FE78 8DD80024 */  lw          $t8, 0x24($t6)
/* 00FE7C 0040FE7C 8DEFBA80 */  lw          $t7, %lo(B_1000BA80)($t7)
/* 00FE80 0040FE80 8DC9002C */  lw          $t1, 0x2C($t6)
/* 00FE84 0040FE84 8DCC000C */  lw          $t4, 0xC($t6)
/* 00FE88 0040FE88 030FC821 */  addu        $t9, $t8, $t7
/* 00FE8C 0040FE8C 03295021 */  addu        $t2, $t9, $t1
/* 00FE90 0040FE90 8F9980C8 */  lw          $t9, %call16(read)($gp)
/* 00FE94 0040FE94 8DCB0030 */  lw          $t3, 0x30($t6)
/* 00FE98 0040FE98 8D060014 */  lw          $a2, 0x14($t0)
/* 00FE9C 0040FE9C 8D840114 */  lw          $a0, 0x114($t4)
/* 00FEA0 0040FEA0 0320F809 */  jalr        $t9
/* 00FEA4 0040FEA4 014B2821 */   addu       $a1, $t2, $t3
/* 00FEA8 0040FEA8 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00FEAC 0040FEAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FEB0 0040FEB0 8DAC0014 */  lw          $t4, 0x14($t5)
/* 00FEB4 0040FEB4 104C0013 */  beq         $v0, $t4, .L0040FF04
/* 00FEB8 0040FEB8 00000000 */   nop
/* 00FEBC 0040FEBC 8FB80038 */  lw          $t8, 0x38($sp)
/* 00FEC0 0040FEC0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00FEC4 0040FEC4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00FEC8 0040FEC8 8F85802C */  lw          $a1, %got(STR_10005B9C)($gp)
/* 00FECC 0040FECC 8F0F000C */  lw          $t7, 0xC($t8)
/* 00FED0 0040FED0 8FA70034 */  lw          $a3, 0x34($sp)
/* 00FED4 0040FED4 24840020 */  addiu       $a0, $a0, 0x20
/* 00FED8 0040FED8 24A55B9C */  addiu       $a1, $a1, %lo(STR_10005B9C)
/* 00FEDC 0040FEDC 0320F809 */  jalr        $t9
/* 00FEE0 0040FEE0 8DE60004 */   lw         $a2, 0x4($t7)
/* 00FEE4 0040FEE4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FEE8 0040FEE8 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 00FEEC 0040FEEC 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FEF0 0040FEF0 0320F809 */  jalr        $t9
/* 00FEF4 0040FEF4 00000000 */   nop
/* 00FEF8 0040FEF8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FEFC 0040FEFC 1000000A */  b           .L0040FF28
/* 00FF00 0040FF00 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040FF04:
/* 00FF04 0040FF04 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 00FF08 0040FF08 8FA40034 */  lw          $a0, 0x34($sp)
/* 00FF0C 0040FF0C 0320F809 */  jalr        $t9
/* 00FF10 0040FF10 00000000 */   nop
/* 00FF14 0040FF14 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00FF18 0040FF18 10000003 */  b           .L0040FF28
/* 00FF1C 0040FF1C 00001025 */   move       $v0, $zero
/* 00FF20 0040FF20 10000001 */  b           .L0040FF28
/* 00FF24 0040FF24 00000000 */   nop
.L0040FF28:
/* 00FF28 0040FF28 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00FF2C 0040FF2C 8FB0001C */  lw          $s0, 0x1C($sp)
/* 00FF30 0040FF30 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00FF34 0040FF34 03E00008 */  jr          $ra
/* 00FF38 0040FF38 00000000 */   nop
