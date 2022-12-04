.section .rodata
glabel STR_1000863C
/* 04863C 1000863C */ .asciz "end"
                      .balign 4


.section .text
glabel obj_end # 588
/* 03AC38 0043AC38 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 03AC3C 0043AC3C 279C8128 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD8128
/* 03AC40 0043AC40 0399E021 */  addu        $gp, $gp, $t9
/* 03AC44 0043AC44 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03AC48 0043AC48 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 03AC4C 0043AC4C AFB00014 */  sw          $s0, 0x14($sp)
/* 03AC50 0043AC50 00808025 */  move        $s0, $a0
/* 03AC54 0043AC54 AFBF0034 */  sw          $ra, 0x34($sp)
/* 03AC58 0043AC58 AFBC0030 */  sw          $gp, 0x30($sp)
/* 03AC5C 0043AC5C AFB6002C */  sw          $s6, 0x2C($sp)
/* 03AC60 0043AC60 AFB50028 */  sw          $s5, 0x28($sp)
/* 03AC64 0043AC64 AFB40024 */  sw          $s4, 0x24($sp)
/* 03AC68 0043AC68 AFB30020 */  sw          $s3, 0x20($sp)
/* 03AC6C 0043AC6C AFB2001C */  sw          $s2, 0x1C($sp)
/* 03AC70 0043AC70 AFB10018 */  sw          $s1, 0x18($sp)
/* 03AC74 0043AC74 0000B025 */  move        $s6, $zero
/* 03AC78 0043AC78 0320F809 */  jalr        $t9
/* 03AC7C 0043AC7C 8E050118 */   lw         $a1, 0x118($s0)
/* 03AC80 0043AC80 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03AC84 0043AC84 00409025 */  move        $s2, $v0
/* 03AC88 0043AC88 02002025 */  move        $a0, $s0
/* 03AC8C 0043AC8C 8F9982E4 */  lw          $t9, %call16(obj_dynsym)($gp)
/* 03AC90 0043AC90 0320F809 */  jalr        $t9
/* 03AC94 0043AC94 00000000 */   nop
/* 03AC98 0043AC98 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03AC9C 0043AC9C 02002025 */  move        $a0, $s0
/* 03ACA0 0043ACA0 00402825 */  move        $a1, $v0
/* 03ACA4 0043ACA4 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 03ACA8 0043ACA8 0320F809 */  jalr        $t9
/* 03ACAC 0043ACAC 00000000 */   nop
/* 03ACB0 0043ACB0 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03ACB4 0043ACB4 00409825 */  move        $s3, $v0
/* 03ACB8 0043ACB8 02002025 */  move        $a0, $s0
/* 03ACBC 0043ACBC 8F9982DC */  lw          $t9, %call16(obj_dynstr)($gp)
/* 03ACC0 0043ACC0 0320F809 */  jalr        $t9
/* 03ACC4 0043ACC4 00000000 */   nop
/* 03ACC8 0043ACC8 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03ACCC 0043ACCC 02002025 */  move        $a0, $s0
/* 03ACD0 0043ACD0 00402825 */  move        $a1, $v0
/* 03ACD4 0043ACD4 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 03ACD8 0043ACD8 0320F809 */  jalr        $t9
/* 03ACDC 0043ACDC 00000000 */   nop
/* 03ACE0 0043ACE0 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03ACE4 0043ACE4 0040A025 */  move        $s4, $v0
/* 03ACE8 0043ACE8 8F958030 */  lw          $s5, %got(STR_1000863C)($gp)
/* 03ACEC 0043ACEC 8F998288 */  lw          $t9, %call16(elfhash)($gp)
/* 03ACF0 0043ACF0 26B5863C */  addiu       $s5, $s5, %lo(STR_1000863C)
/* 03ACF4 0043ACF4 0320F809 */  jalr        $t9
/* 03ACF8 0043ACF8 02A02025 */   move       $a0, $s5
/* 03ACFC 0043ACFC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 03AD00 0043AD00 00408825 */  move        $s1, $v0
/* 03AD04 0043AD04 02002025 */  move        $a0, $s0
/* 03AD08 0043AD08 8F998338 */  lw          $t9, %call16(obj_dynflags)($gp)
/* 03AD0C 0043AD0C 0320F809 */  jalr        $t9
/* 03AD10 0043AD10 00000000 */   nop
/* 03AD14 0043AD14 304E0002 */  andi        $t6, $v0, 0x2
/* 03AD18 0043AD18 15C00008 */  bnez        $t6, .L0043AD3C
/* 03AD1C 0043AD1C 8FBC0030 */   lw         $gp, 0x30($sp)
/* 03AD20 0043AD20 8E4F0000 */  lw          $t7, 0x0($s2)
/* 03AD24 0043AD24 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 03AD28 0043AD28 0311C824 */  and         $t9, $t8, $s1
/* 03AD2C 0043AD2C 00194080 */  sll         $t0, $t9, 2
/* 03AD30 0043AD30 02484821 */  addu        $t1, $s2, $t0
/* 03AD34 0043AD34 1000000A */  b           .L0043AD60
/* 03AD38 0043AD38 8D300008 */   lw         $s0, 0x8($t1)
.L0043AD3C:
/* 03AD3C 0043AD3C 8E4A0000 */  lw          $t2, 0x0($s2)
/* 03AD40 0043AD40 022A001B */  divu        $zero, $s1, $t2
/* 03AD44 0043AD44 00005810 */  mfhi        $t3
/* 03AD48 0043AD48 000B6080 */  sll         $t4, $t3, 2
/* 03AD4C 0043AD4C 024C6821 */  addu        $t5, $s2, $t4
/* 03AD50 0043AD50 8DB00008 */  lw          $s0, 0x8($t5)
/* 03AD54 0043AD54 15400002 */  bnez        $t2, .L0043AD60
/* 03AD58 0043AD58 00000000 */   nop
/* 03AD5C 0043AD5C 0007000D */  break       7
.L0043AD60:
/* 03AD60 0043AD60 00107100 */  sll         $t6, $s0, 4
/* 03AD64 0043AD64 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 03AD68 0043AD68 026E8821 */  addu        $s1, $s3, $t6
/* 03AD6C 0043AD6C 8E2F0000 */  lw          $t7, 0x0($s1)
/* 03AD70 0043AD70 02A02825 */  move        $a1, $s5
/* 03AD74 0043AD74 0320F809 */  jalr        $t9
/* 03AD78 0043AD78 01F42021 */   addu       $a0, $t7, $s4
/* 03AD7C 0043AD7C 14400002 */  bnez        $v0, .L0043AD88
/* 03AD80 0043AD80 8FBC0030 */   lw         $gp, 0x30($sp)
/* 03AD84 0043AD84 8E360004 */  lw          $s6, 0x4($s1)
.L0043AD88:
/* 03AD88 0043AD88 56C0001B */  bnel        $s6, $zero, .L0043ADF8
/* 03AD8C 0043AD8C 8FBF0034 */   lw         $ra, 0x34($sp)
/* 03AD90 0043AD90 8E580000 */  lw          $t8, 0x0($s2)
/* 03AD94 0043AD94 00104880 */  sll         $t1, $s0, 2
/* 03AD98 0043AD98 0018C880 */  sll         $t9, $t8, 2
/* 03AD9C 0043AD9C 02594021 */  addu        $t0, $s2, $t9
/* 03ADA0 0043ADA0 01095021 */  addu        $t2, $t0, $t1
/* 03ADA4 0043ADA4 8D500008 */  lw          $s0, 0x8($t2)
/* 03ADA8 0043ADA8 12000012 */  beqz        $s0, .L0043ADF4
/* 03ADAC 0043ADAC 00105900 */   sll        $t3, $s0, 4
.L0043ADB0:
/* 03ADB0 0043ADB0 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 03ADB4 0043ADB4 026B8821 */  addu        $s1, $s3, $t3
/* 03ADB8 0043ADB8 8E2C0000 */  lw          $t4, 0x0($s1)
/* 03ADBC 0043ADBC 02A02825 */  move        $a1, $s5
/* 03ADC0 0043ADC0 0320F809 */  jalr        $t9
/* 03ADC4 0043ADC4 01942021 */   addu       $a0, $t4, $s4
/* 03ADC8 0043ADC8 14400002 */  bnez        $v0, .L0043ADD4
/* 03ADCC 0043ADCC 8FBC0030 */   lw         $gp, 0x30($sp)
/* 03ADD0 0043ADD0 8E360004 */  lw          $s6, 0x4($s1)
.L0043ADD4:
/* 03ADD4 0043ADD4 8E4D0000 */  lw          $t5, 0x0($s2)
/* 03ADD8 0043ADD8 0010C080 */  sll         $t8, $s0, 2
/* 03ADDC 0043ADDC 000D7080 */  sll         $t6, $t5, 2
/* 03ADE0 0043ADE0 024E7821 */  addu        $t7, $s2, $t6
/* 03ADE4 0043ADE4 01F8C821 */  addu        $t9, $t7, $t8
/* 03ADE8 0043ADE8 8F300008 */  lw          $s0, 0x8($t9)
/* 03ADEC 0043ADEC 5600FFF0 */  bnel        $s0, $zero, .L0043ADB0
/* 03ADF0 0043ADF0 00105900 */   sll        $t3, $s0, 4
.L0043ADF4:
/* 03ADF4 0043ADF4 8FBF0034 */  lw          $ra, 0x34($sp)
.L0043ADF8:
/* 03ADF8 0043ADF8 02C01025 */  move        $v0, $s6
/* 03ADFC 0043ADFC 8FB6002C */  lw          $s6, 0x2C($sp)
/* 03AE00 0043AE00 8FB00014 */  lw          $s0, 0x14($sp)
/* 03AE04 0043AE04 8FB10018 */  lw          $s1, 0x18($sp)
/* 03AE08 0043AE08 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03AE0C 0043AE0C 8FB30020 */  lw          $s3, 0x20($sp)
/* 03AE10 0043AE10 8FB40024 */  lw          $s4, 0x24($sp)
/* 03AE14 0043AE14 8FB50028 */  lw          $s5, 0x28($sp)
/* 03AE18 0043AE18 03E00008 */  jr          $ra
/* 03AE1C 0043AE1C 27BD0038 */   addiu      $sp, $sp, 0x38
