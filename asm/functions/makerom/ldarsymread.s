.section .rodata
glabel STR_10006C40
/* 046C40 10006C40 */ .asciz "__________E"
                      .balign 4

glabel STR_10006C4C
/* 046C4C 10006C4C */ .asciz "LPOBJ(ldptr)->o_praw = realloc(LPOBJ(ldptr)->o_praw,LPOBJ(ldptr)->o_statb.st_size)"
                      .balign 4

glabel STR_10006CA0
/* 046CA0 10006CA0 */ .asciz "ldfcn.c"
                      .balign 4
/* 046CA8 10006CA8 */ .asciz ""
                      .balign 4
/* 046CAC 10006CAC */ .asciz ""
                      .balign 4


.section .text
glabel ldarsymread # 236
/* 02ACC4 0042ACC4 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02ACC8 0042ACC8 279C809C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE809C
/* 02ACCC 0042ACCC 0399E021 */  addu        $gp, $gp, $t9
/* 02ACD0 0042ACD0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02ACD4 0042ACD4 AFBF0034 */  sw          $ra, 0x34($sp)
/* 02ACD8 0042ACD8 AFBC0030 */  sw          $gp, 0x30($sp)
/* 02ACDC 0042ACDC AFB5002C */  sw          $s5, 0x2C($sp)
/* 02ACE0 0042ACE0 AFB40028 */  sw          $s4, 0x28($sp)
/* 02ACE4 0042ACE4 AFB30024 */  sw          $s3, 0x24($sp)
/* 02ACE8 0042ACE8 AFB20020 */  sw          $s2, 0x20($sp)
/* 02ACEC 0042ACEC AFB1001C */  sw          $s1, 0x1C($sp)
/* 02ACF0 0042ACF0 AFB00018 */  sw          $s0, 0x18($sp)
/* 02ACF4 0042ACF4 948E0028 */  lhu         $t6, 0x28($a0)
/* 02ACF8 0042ACF8 3401FF65 */  ori         $at, $zero, 0xFF65
/* 02ACFC 0042ACFC 00A08025 */  move        $s0, $a1
/* 02AD00 0042AD00 11C10003 */  beq         $t6, $at, .L0042AD10
/* 02AD04 0042AD04 00809025 */   move       $s2, $a0
/* 02AD08 0042AD08 10000075 */  b           .L0042AEE0
/* 02AD0C 0042AD0C 00001025 */   move       $v0, $zero
.L0042AD10:
/* 02AD10 0042AD10 8F9980DC */  lw          $t9, %call16(lseek)($gp)
/* 02AD14 0042AD14 8E440030 */  lw          $a0, 0x30($s2)
/* 02AD18 0042AD18 24050008 */  addiu       $a1, $zero, 0x8
/* 02AD1C 0042AD1C 0320F809 */  jalr        $t9
/* 02AD20 0042AD20 00003025 */   move       $a2, $zero
/* 02AD24 0042AD24 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02AD28 0042AD28 00009825 */  move        $s3, $zero
/* 02AD2C 0042AD2C 2414003C */  addiu       $s4, $zero, 0x3C
/* 02AD30 0042AD30 8F95802C */  lw          $s5, %got(STR_10006C40)($gp)
/* 02AD34 0042AD34 26B56C40 */  addiu       $s5, $s5, %lo(STR_10006C40)
.L0042AD38:
/* 02AD38 0042AD38 8F9980C8 */  lw          $t9, %call16(read)($gp)
/* 02AD3C 0042AD3C 8E440030 */  lw          $a0, 0x30($s2)
/* 02AD40 0042AD40 02002825 */  move        $a1, $s0
/* 02AD44 0042AD44 0320F809 */  jalr        $t9
/* 02AD48 0042AD48 02803025 */   move       $a2, $s4
/* 02AD4C 0042AD4C 10540003 */  beq         $v0, $s4, .L0042AD5C
/* 02AD50 0042AD50 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02AD54 0042AD54 1000005F */  b           .L0042AED4
/* 02AD58 0042AD58 24130001 */   addiu      $s3, $zero, 0x1
.L0042AD5C:
/* 02AD5C 0042AD5C 8F99814C */  lw          $t9, %call16(strncmp)($gp)
/* 02AD60 0042AD60 02002025 */  move        $a0, $s0
/* 02AD64 0042AD64 02A02825 */  move        $a1, $s5
/* 02AD68 0042AD68 2406000B */  addiu       $a2, $zero, 0xB
/* 02AD6C 0042AD6C 0320F809 */  jalr        $t9
/* 02AD70 0042AD70 26110030 */   addiu      $s1, $s0, 0x30
/* 02AD74 0042AD74 1440004B */  bnez        $v0, .L0042AEA4
/* 02AD78 0042AD78 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02AD7C 0042AD7C 8F998150 */  lw          $t9, %call16(getpagesize)($gp)
/* 02AD80 0042AD80 0320F809 */  jalr        $t9
/* 02AD84 0042AD84 00000000 */   nop
/* 02AD88 0042AD88 8E43002C */  lw          $v1, 0x2C($s2)
/* 02AD8C 0042AD8C 244FFFFF */  addiu       $t7, $v0, -0x1
/* 02AD90 0042AD90 01E0C027 */  not         $t8, $t7
/* 02AD94 0042AD94 8C6600C4 */  lw          $a2, 0xC4($v1)
/* 02AD98 0042AD98 8C790034 */  lw          $t9, 0x34($v1)
/* 02AD9C 0042AD9C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02ADA0 0042ADA0 03062024 */  and         $a0, $t8, $a2
/* 02ADA4 0042ADA4 00C44023 */  subu        $t0, $a2, $a0
/* 02ADA8 0042ADA8 03282821 */  addu        $a1, $t9, $t0
/* 02ADAC 0042ADAC 8F998140 */  lw          $t9, %call16(munmap)($gp)
/* 02ADB0 0042ADB0 0320F809 */  jalr        $t9
/* 02ADB4 0042ADB4 00000000 */   nop
/* 02ADB8 0042ADB8 14400003 */  bnez        $v0, .L0042ADC8
/* 02ADBC 0042ADBC 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02ADC0 0042ADC0 8E49002C */  lw          $t1, 0x2C($s2)
/* 02ADC4 0042ADC4 AD2000C4 */  sw          $zero, 0xC4($t1)
.L0042ADC8:
/* 02ADC8 0042ADC8 8F998154 */  lw          $t9, %call16(atol)($gp)
/* 02ADCC 0042ADCC 02202025 */  move        $a0, $s1
/* 02ADD0 0042ADD0 0320F809 */  jalr        $t9
/* 02ADD4 0042ADD4 00000000 */   nop
/* 02ADD8 0042ADD8 8E4A002C */  lw          $t2, 0x2C($s2)
/* 02ADDC 0042ADDC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02ADE0 0042ADE0 AD420034 */  sw          $v0, 0x34($t2)
/* 02ADE4 0042ADE4 8E43002C */  lw          $v1, 0x2C($s2)
/* 02ADE8 0042ADE8 8F998110 */  lw          $t9, %call16(realloc)($gp)
/* 02ADEC 0042ADEC 8C6400C4 */  lw          $a0, 0xC4($v1)
/* 02ADF0 0042ADF0 0320F809 */  jalr        $t9
/* 02ADF4 0042ADF4 8C650034 */   lw         $a1, 0x34($v1)
/* 02ADF8 0042ADF8 8E4B002C */  lw          $t3, 0x2C($s2)
/* 02ADFC 0042ADFC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02AE00 0042AE00 14400009 */  bnez        $v0, .L0042AE28
/* 02AE04 0042AE04 AD6200C4 */   sw         $v0, 0xC4($t3)
/* 02AE08 0042AE08 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 02AE0C 0042AE0C 8F84802C */  lw          $a0, %got(STR_10006C4C)($gp)
/* 02AE10 0042AE10 8F85802C */  lw          $a1, %got(STR_10006CA0)($gp)
/* 02AE14 0042AE14 240602EF */  addiu       $a2, $zero, 0x2EF
/* 02AE18 0042AE18 24846C4C */  addiu       $a0, $a0, %lo(STR_10006C4C)
/* 02AE1C 0042AE1C 0320F809 */  jalr        $t9
/* 02AE20 0042AE20 24A56CA0 */   addiu      $a1, $a1, %lo(STR_10006CA0)
/* 02AE24 0042AE24 8FBC0030 */  lw          $gp, 0x30($sp)
.L0042AE28:
/* 02AE28 0042AE28 8E4C002C */  lw          $t4, 0x2C($s2)
/* 02AE2C 0042AE2C 8E4E0004 */  lw          $t6, 0x4($s2)
/* 02AE30 0042AE30 24080001 */  addiu       $t0, $zero, 0x1
/* 02AE34 0042AE34 8D8D0034 */  lw          $t5, 0x34($t4)
/* 02AE38 0042AE38 240A00FF */  addiu       $t2, $zero, 0xFF
/* 02AE3C 0042AE3C ADCD0000 */  sw          $t5, 0x0($t6)
/* 02AE40 0042AE40 8E4F002C */  lw          $t7, 0x2C($s2)
/* 02AE44 0042AE44 8E580004 */  lw          $t8, 0x4($s2)
/* 02AE48 0042AE48 8DE200C4 */  lw          $v0, 0xC4($t7)
/* 02AE4C 0042AE4C AF020004 */  sw          $v0, 0x4($t8)
/* 02AE50 0042AE50 8E590004 */  lw          $t9, 0x4($s2)
/* 02AE54 0042AE54 AF220008 */  sw          $v0, 0x8($t9)
/* 02AE58 0042AE58 8E490004 */  lw          $t1, 0x4($s2)
/* 02AE5C 0042AE5C A128000C */  sb          $t0, 0xC($t1)
/* 02AE60 0042AE60 8E4B0004 */  lw          $t3, 0x4($s2)
/* 02AE64 0042AE64 A16A000D */  sb          $t2, 0xD($t3)
/* 02AE68 0042AE68 8F9980C8 */  lw          $t9, %call16(read)($gp)
/* 02AE6C 0042AE6C 8E43002C */  lw          $v1, 0x2C($s2)
/* 02AE70 0042AE70 8E440030 */  lw          $a0, 0x30($s2)
/* 02AE74 0042AE74 8C6500C4 */  lw          $a1, 0xC4($v1)
/* 02AE78 0042AE78 0320F809 */  jalr        $t9
/* 02AE7C 0042AE7C 8C660034 */   lw         $a2, 0x34($v1)
/* 02AE80 0042AE80 8E4C002C */  lw          $t4, 0x2C($s2)
/* 02AE84 0042AE84 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02AE88 0042AE88 8D8D0034 */  lw          $t5, 0x34($t4)
/* 02AE8C 0042AE8C 104D0003 */  beq         $v0, $t5, .L0042AE9C
/* 02AE90 0042AE90 00000000 */   nop
/* 02AE94 0042AE94 10000012 */  b           .L0042AEE0
/* 02AE98 0042AE98 00001025 */   move       $v0, $zero
.L0042AE9C:
/* 02AE9C 0042AE9C 10000010 */  b           .L0042AEE0
/* 02AEA0 0042AEA0 24020001 */   addiu      $v0, $zero, 0x1
.L0042AEA4:
/* 02AEA4 0042AEA4 8F998154 */  lw          $t9, %call16(atol)($gp)
/* 02AEA8 0042AEA8 02202025 */  move        $a0, $s1
/* 02AEAC 0042AEAC 0320F809 */  jalr        $t9
/* 02AEB0 0042AEB0 00000000 */   nop
/* 02AEB4 0042AEB4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02AEB8 0042AEB8 8E440030 */  lw          $a0, 0x30($s2)
/* 02AEBC 0042AEBC 00402825 */  move        $a1, $v0
/* 02AEC0 0042AEC0 8F9980DC */  lw          $t9, %call16(lseek)($gp)
/* 02AEC4 0042AEC4 24060001 */  addiu       $a2, $zero, 0x1
/* 02AEC8 0042AEC8 0320F809 */  jalr        $t9
/* 02AECC 0042AECC 00000000 */   nop
/* 02AED0 0042AED0 8FBC0030 */  lw          $gp, 0x30($sp)
.L0042AED4:
/* 02AED4 0042AED4 1260FF98 */  beqz        $s3, .L0042AD38
/* 02AED8 0042AED8 00000000 */   nop
/* 02AEDC 0042AEDC 00001025 */  move        $v0, $zero
.L0042AEE0:
/* 02AEE0 0042AEE0 8FBF0034 */  lw          $ra, 0x34($sp)
/* 02AEE4 0042AEE4 8FB00018 */  lw          $s0, 0x18($sp)
/* 02AEE8 0042AEE8 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02AEEC 0042AEEC 8FB20020 */  lw          $s2, 0x20($sp)
/* 02AEF0 0042AEF0 8FB30024 */  lw          $s3, 0x24($sp)
/* 02AEF4 0042AEF4 8FB40028 */  lw          $s4, 0x28($sp)
/* 02AEF8 0042AEF8 8FB5002C */  lw          $s5, 0x2C($sp)
/* 02AEFC 0042AEFC 03E00008 */  jr          $ra
/* 02AF00 0042AF00 27BD0038 */   addiu      $sp, $sp, 0x38
