.section .rodata
glabel STR_10008FFC
/* 048FFC 10008FFC */ .asciz "st_extadd: you didn't initialize with cuinit or readst\n"
                      .balign 4


.section .text
glabel st_extadd # 680
/* 0410D4 004410D4 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 0410D8 004410D8 279C1C8C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD1C8C
/* 0410DC 004410DC 0399E021 */  addu        $gp, $gp, $t9
/* 0410E0 004410E0 8F8887C8 */  lw          $t0, %got(st_pchdr)($gp)
/* 0410E4 004410E4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0410E8 004410E8 AFB00014 */  sw          $s0, 0x14($sp)
/* 0410EC 004410EC 8D080000 */  lw          $t0, 0x0($t0)
/* 0410F0 004410F0 00E08025 */  move        $s0, $a3
/* 0410F4 004410F4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0410F8 004410F8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0410FC 004410FC AFA40028 */  sw          $a0, 0x28($sp)
/* 041100 00441100 AFA5002C */  sw          $a1, 0x2C($sp)
/* 041104 00441104 15000008 */  bnez        $t0, .L00441128
/* 041108 00441108 AFA60030 */   sw         $a2, 0x30($sp)
/* 04110C 0044110C 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 041110 00441110 8F848030 */  lw          $a0, %got(STR_10008FFC)($gp)
/* 041114 00441114 0320F809 */  jalr        $t9
/* 041118 00441118 24848FFC */   addiu      $a0, $a0, %lo(STR_10008FFC)
/* 04111C 0044111C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 041120 00441120 8F8887C8 */  lw          $t0, %got(st_pchdr)($gp)
/* 041124 00441124 8D080000 */  lw          $t0, 0x0($t0)
.L00441128:
/* 041128 00441128 8D04001C */  lw          $a0, 0x1C($t0)
/* 04112C 0044112C 8D0E0020 */  lw          $t6, 0x20($t0)
/* 041130 00441130 25050020 */  addiu       $a1, $t0, 0x20
/* 041134 00441134 008E082A */  slt         $at, $a0, $t6
/* 041138 00441138 5420000E */  bnel        $at, $zero, .L00441174
/* 04113C 0044113C 8D180018 */   lw         $t8, 0x18($t0)
/* 041140 00441140 8F998628 */  lw          $t9, %call16(_md_st_malloc)($gp)
/* 041144 00441144 8D040018 */  lw          $a0, 0x18($t0)
/* 041148 00441148 24060010 */  addiu       $a2, $zero, 0x10
/* 04114C 0044114C 0320F809 */  jalr        $t9
/* 041150 00441150 24070020 */   addiu      $a3, $zero, 0x20
/* 041154 00441154 8FBC0018 */  lw          $gp, 0x18($sp)
/* 041158 00441158 8F8F87C8 */  lw          $t7, %got(st_pchdr)($gp)
/* 04115C 0044115C 8F8887C8 */  lw          $t0, %got(st_pchdr)($gp)
/* 041160 00441160 8DEF0000 */  lw          $t7, 0x0($t7)
/* 041164 00441164 ADE20018 */  sw          $v0, 0x18($t7)
/* 041168 00441168 8D080000 */  lw          $t0, 0x0($t0)
/* 04116C 0044116C 8D04001C */  lw          $a0, 0x1C($t0)
/* 041170 00441170 8D180018 */  lw          $t8, 0x18($t0)
.L00441174:
/* 041174 00441174 0004C900 */  sll         $t9, $a0, 4
/* 041178 00441178 03191821 */  addu        $v1, $t8, $t9
/* 04117C 0044117C 8F998624 */  lw          $t9, %call16(_md_st_currentifd)($gp)
/* 041180 00441180 AFA30024 */  sw          $v1, 0x24($sp)
/* 041184 00441184 0320F809 */  jalr        $t9
/* 041188 00441188 00000000 */   nop
/* 04118C 0044118C 8FA30024 */  lw          $v1, 0x24($sp)
/* 041190 00441190 8FBC0018 */  lw          $gp, 0x18($sp)
/* 041194 00441194 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 041198 00441198 90690000 */  lbu         $t1, 0x0($v1)
/* 04119C 0044119C A4620002 */  sh          $v0, 0x2($v1)
/* 0411A0 004411A0 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 0411A4 004411A4 312BFF7F */  andi        $t3, $t1, 0xFF7F
/* 0411A8 004411A8 316D00BF */  andi        $t5, $t3, 0xBF
/* 0411AC 004411AC 31AF00DF */  andi        $t7, $t5, 0xDF
/* 0411B0 004411B0 A06B0000 */  sb          $t3, 0x0($v1)
/* 0411B4 004411B4 31F900EF */  andi        $t9, $t7, 0xEF
/* 0411B8 004411B8 A06D0000 */  sb          $t5, 0x0($v1)
/* 0411BC 004411BC A06F0000 */  sb          $t7, 0x0($v1)
/* 0411C0 004411C0 332900F7 */  andi        $t1, $t9, 0xF7
/* 0411C4 004411C4 A0790000 */  sb          $t9, 0x0($v1)
/* 0411C8 004411C8 A0690000 */  sb          $t1, 0x0($v1)
/* 0411CC 004411CC 946A0000 */  lhu         $t2, 0x0($v1)
/* 0411D0 004411D0 9069000C */  lbu         $t1, 0xC($v1)
/* 0411D4 004411D4 314BF800 */  andi        $t3, $t2, 0xF800
/* 0411D8 004411D8 A46B0000 */  sh          $t3, 0x0($v1)
/* 0411DC 004411DC 8FAC0028 */  lw          $t4, 0x28($sp)
/* 0411E0 004411E0 312AFF03 */  andi        $t2, $t1, 0xFF03
/* 0411E4 004411E4 AC6C0004 */  sw          $t4, 0x4($v1)
/* 0411E8 004411E8 8FAD002C */  lw          $t5, 0x2C($sp)
/* 0411EC 004411EC AC6D0008 */  sw          $t5, 0x8($v1)
/* 0411F0 004411F0 8FAF0030 */  lw          $t7, 0x30($sp)
/* 0411F4 004411F4 00106940 */  sll         $t5, $s0, 5
/* 0411F8 004411F8 31AE03E0 */  andi        $t6, $t5, 0x3E0
/* 0411FC 004411FC 000FC880 */  sll         $t9, $t7, 2
/* 041200 00441200 032A5825 */  or          $t3, $t9, $t2
/* 041204 00441204 A06B000C */  sb          $t3, 0xC($v1)
/* 041208 00441208 946F000C */  lhu         $t7, 0xC($v1)
/* 04120C 0044120C 31F8FC1F */  andi        $t8, $t7, 0xFC1F
/* 041210 00441210 01D84825 */  or          $t1, $t6, $t8
/* 041214 00441214 A469000C */  sh          $t1, 0xC($v1)
/* 041218 00441218 9079000D */  lbu         $t9, 0xD($v1)
/* 04121C 0044121C 332AFFEF */  andi        $t2, $t9, 0xFFEF
/* 041220 00441220 A06A000D */  sb          $t2, 0xD($v1)
/* 041224 00441224 8FAB0038 */  lw          $t3, 0x38($sp)
/* 041228 00441228 8C62000C */  lw          $v0, 0xC($v1)
/* 04122C 0044122C 01616024 */  and         $t4, $t3, $at
/* 041230 00441230 01826826 */  xor         $t5, $t4, $v0
/* 041234 00441234 000D7B00 */  sll         $t7, $t5, 12
/* 041238 00441238 000F7302 */  srl         $t6, $t7, 12
/* 04123C 0044123C 24010012 */  addiu       $at, $zero, 0x12
/* 041240 00441240 01C2C026 */  xor         $t8, $t6, $v0
/* 041244 00441244 12010013 */  beq         $s0, $at, .L00441294
/* 041248 00441248 AC78000C */   sw         $t8, 0xC($v1)
/* 04124C 0044124C 24010011 */  addiu       $at, $zero, 0x11
/* 041250 00441250 12010010 */  beq         $s0, $at, .L00441294
/* 041254 00441254 00000000 */   nop
/* 041258 00441258 1200000E */  beqz        $s0, .L00441294
/* 04125C 0044125C 24010006 */   addiu      $at, $zero, 0x6
/* 041260 00441260 1201000C */  beq         $s0, $at, .L00441294
/* 041264 00441264 24010015 */   addiu      $at, $zero, 0x15
/* 041268 00441268 1201000A */  beq         $s0, $at, .L00441294
/* 04126C 0044126C 00000000 */   nop
/* 041270 00441270 8F998608 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 041274 00441274 94640002 */  lhu         $a0, 0x2($v1)
/* 041278 00441278 0320F809 */  jalr        $t9
/* 04127C 0044127C 00000000 */   nop
/* 041280 00441280 8C430000 */  lw          $v1, 0x0($v0)
/* 041284 00441284 8FBC0018 */  lw          $gp, 0x18($sp)
/* 041288 00441288 9069003C */  lbu         $t1, 0x3C($v1)
/* 04128C 0044128C 3139FFFB */  andi        $t9, $t1, 0xFFFB
/* 041290 00441290 A079003C */  sb          $t9, 0x3C($v1)
.L00441294:
/* 041294 00441294 8F8887C8 */  lw          $t0, %got(st_pchdr)($gp)
/* 041298 00441298 8D080000 */  lw          $t0, 0x0($t0)
/* 04129C 0044129C 8D02001C */  lw          $v0, 0x1C($t0)
/* 0412A0 004412A0 244A0001 */  addiu       $t2, $v0, 0x1
/* 0412A4 004412A4 AD0A001C */  sw          $t2, 0x1C($t0)
/* 0412A8 004412A8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0412AC 004412AC 8FB00014 */  lw          $s0, 0x14($sp)
/* 0412B0 004412B0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0412B4 004412B4 03E00008 */  jr          $ra
/* 0412B8 004412B8 00000000 */   nop
