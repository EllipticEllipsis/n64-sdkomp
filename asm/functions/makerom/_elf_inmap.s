glabel _elf_inmap # 192
/* 0281BC 004281BC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0281C0 004281C0 279CABA4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEABA4
/* 0281C4 004281C4 0399E021 */  addu        $gp, $gp, $t9
/* 0281C8 004281C8 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 0281CC 004281CC AFA40050 */  sw          $a0, 0x50($sp)
/* 0281D0 004281D0 8FAE0050 */  lw          $t6, 0x50($sp)
/* 0281D4 004281D4 AFBF0034 */  sw          $ra, 0x34($sp)
/* 0281D8 004281D8 AFBC0030 */  sw          $gp, 0x30($sp)
/* 0281DC 004281DC AFB4002C */  sw          $s4, 0x2C($sp)
/* 0281E0 004281E0 AFB30028 */  sw          $s3, 0x28($sp)
/* 0281E4 004281E4 AFB20024 */  sw          $s2, 0x24($sp)
/* 0281E8 004281E8 AFB10020 */  sw          $s1, 0x20($sp)
/* 0281EC 004281EC AFB0001C */  sw          $s0, 0x1C($sp)
/* 0281F0 004281F0 8F9980DC */  lw          $t9, %call16(lseek)($gp)
/* 0281F4 004281F4 8DCF0008 */  lw          $t7, 0x8($t6)
/* 0281F8 004281F8 00002825 */  move        $a1, $zero
/* 0281FC 004281FC 24060002 */  addiu       $a2, $zero, 0x2
/* 028200 00428200 AFAF004C */  sw          $t7, 0x4C($sp)
/* 028204 00428204 0320F809 */  jalr        $t9
/* 028208 00428208 01E02025 */   move       $a0, $t7
/* 02820C 0042820C 00408825 */  move        $s1, $v0
/* 028210 00428210 16200003 */  bnez        $s1, .L00428220
/* 028214 00428214 8FBC0030 */   lw         $gp, 0x30($sp)
/* 028218 00428218 1000009D */  b           .L00428490
/* 02821C 0042821C 00001025 */   move       $v0, $zero
.L00428220:
/* 028220 00428220 2401FFFF */  addiu       $at, $zero, -0x1
/* 028224 00428224 16210005 */  bne         $s1, $at, .L0042823C
/* 028228 00428228 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 02822C 0042822C 24180302 */  addiu       $t8, $zero, 0x302
/* 028230 00428230 2402FFFF */  addiu       $v0, $zero, -0x1
/* 028234 00428234 10000096 */  b           .L00428490
/* 028238 00428238 AC380000 */   sw         $t8, 0x0($at)
.L0042823C:
/* 02823C 0042823C 02208025 */  move        $s0, $s1
/* 028240 00428240 12110005 */  beq         $s0, $s1, .L00428258
/* 028244 00428244 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 028248 00428248 24190301 */  addiu       $t9, $zero, 0x301
/* 02824C 0042824C 2402FFFF */  addiu       $v0, $zero, -0x1
/* 028250 00428250 1000008F */  b           .L00428490
/* 028254 00428254 AC390000 */   sw         $t9, 0x0($at)
.L00428258:
/* 028258 00428258 8F8887BC */  lw          $t0, %got(_elf_page_size)($gp)
/* 02825C 0042825C 8D080000 */  lw          $t0, 0x0($t0)
/* 028260 00428260 15000008 */  bnez        $t0, .L00428284
/* 028264 00428264 00000000 */   nop
/* 028268 00428268 8F998060 */  lw          $t9, %call16(sysconf)($gp)
/* 02826C 0042826C 2404000B */  addiu       $a0, $zero, 0xB
/* 028270 00428270 0320F809 */  jalr        $t9
/* 028274 00428274 00000000 */   nop
/* 028278 00428278 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02827C 0042827C 8F8187BC */  lw          $at, %got(_elf_page_size)($gp)
/* 028280 00428280 AC220000 */  sw          $v0, 0x0($at)
.L00428284:
/* 028284 00428284 8FA90050 */  lw          $t1, 0x50($sp)
/* 028288 00428288 8D2A0088 */  lw          $t2, 0x88($t1)
/* 02828C 0042828C 314B0080 */  andi        $t3, $t2, 0x80
/* 028290 00428290 15600025 */  bnez        $t3, .L00428328
/* 028294 00428294 00000000 */   nop
/* 028298 00428298 314C0100 */  andi        $t4, $t2, 0x100
/* 02829C 0042829C 11800022 */  beqz        $t4, .L00428328
/* 0282A0 004282A0 00000000 */   nop
/* 0282A4 004282A4 8F998138 */  lw          $t9, %call16(mmap)($gp)
/* 0282A8 004282A8 8FAD004C */  lw          $t5, 0x4C($sp)
/* 0282AC 004282AC 00002025 */  move        $a0, $zero
/* 0282B0 004282B0 02002825 */  move        $a1, $s0
/* 0282B4 004282B4 24060001 */  addiu       $a2, $zero, 0x1
/* 0282B8 004282B8 24070001 */  addiu       $a3, $zero, 0x1
/* 0282BC 004282BC AFA00014 */  sw          $zero, 0x14($sp)
/* 0282C0 004282C0 0320F809 */  jalr        $t9
/* 0282C4 004282C4 AFAD0010 */   sw         $t5, 0x10($sp)
/* 0282C8 004282C8 00409025 */  move        $s2, $v0
/* 0282CC 004282CC 2401FFFF */  addiu       $at, $zero, -0x1
/* 0282D0 004282D0 12410015 */  beq         $s2, $at, .L00428328
/* 0282D4 004282D4 8FBC0030 */   lw         $gp, 0x30($sp)
/* 0282D8 004282D8 8FAE0050 */  lw          $t6, 0x50($sp)
/* 0282DC 004282DC 3C018000 */  lui         $at, (0x80000000 >> 16)
/* 0282E0 004282E0 ADD20028 */  sw          $s2, 0x28($t6)
/* 0282E4 004282E4 8FAF0050 */  lw          $t7, 0x50($sp)
/* 0282E8 004282E8 8DF80028 */  lw          $t8, 0x28($t7)
/* 0282EC 004282EC ADF80020 */  sw          $t8, 0x20($t7)
/* 0282F0 004282F0 8FB90050 */  lw          $t9, 0x50($sp)
/* 0282F4 004282F4 AF30002C */  sw          $s0, 0x2C($t9)
/* 0282F8 004282F8 8FA80050 */  lw          $t0, 0x50($sp)
/* 0282FC 004282FC 8D14002C */  lw          $s4, 0x2C($t0)
/* 028300 00428300 AD140034 */  sw          $s4, 0x34($t0)
/* 028304 00428304 8FA90050 */  lw          $t1, 0x50($sp)
/* 028308 00428308 AD340024 */  sw          $s4, 0x24($t1)
/* 02830C 0042830C 8FAB0050 */  lw          $t3, 0x50($sp)
/* 028310 00428310 8D6A0088 */  lw          $t2, 0x88($t3)
/* 028314 00428314 01416024 */  and         $t4, $t2, $at
/* 028318 00428318 15800009 */  bnez        $t4, .L00428340
/* 02831C 0042831C 00000000 */   nop
/* 028320 00428320 1000005B */  b           .L00428490
/* 028324 00428324 00001025 */   move       $v0, $zero
.L00428328:
/* 028328 00428328 8FAD0050 */  lw          $t5, 0x50($sp)
/* 02832C 0042832C 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 028330 00428330 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 028334 00428334 8DAE0088 */  lw          $t6, 0x88($t5)
/* 028338 00428338 01C1C024 */  and         $t8, $t6, $at
/* 02833C 0042833C ADB80088 */  sw          $t8, 0x88($t5)
.L00428340:
/* 028340 00428340 8F8F87BC */  lw          $t7, %got(_elf_page_size)($gp)
/* 028344 00428344 8DEF0000 */  lw          $t7, 0x0($t7)
/* 028348 00428348 000FC940 */  sll         $t9, $t7, 5
/* 02834C 0042834C 0219001B */  divu        $zero, $s0, $t9
/* 028350 00428350 00009812 */  mflo        $s3
/* 028354 00428354 00139880 */  sll         $s3, $s3, 2
/* 028358 00428358 26730004 */  addiu       $s3, $s3, 0x4
/* 02835C 0042835C 17200002 */  bnez        $t9, .L00428368
/* 028360 00428360 00000000 */   nop
/* 028364 00428364 0007000D */  break       7
.L00428368:
/* 028368 00428368 32680007 */  andi        $t0, $s3, 0x7
/* 02836C 0042836C 11000004 */  beqz        $t0, .L00428380
/* 028370 00428370 00000000 */   nop
/* 028374 00428374 32690007 */  andi        $t1, $s3, 0x7
/* 028378 00428378 02699823 */  subu        $s3, $s3, $t1
/* 02837C 0042837C 26730008 */  addiu       $s3, $s3, 0x8
.L00428380:
/* 028380 00428380 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 028384 00428384 02602025 */  move        $a0, $s3
/* 028388 00428388 0320F809 */  jalr        $t9
/* 02838C 0042838C 00000000 */   nop
/* 028390 00428390 8FAB0050 */  lw          $t3, 0x50($sp)
/* 028394 00428394 8FBC0030 */  lw          $gp, 0x30($sp)
/* 028398 00428398 0040A025 */  move        $s4, $v0
/* 02839C 0042839C 16800006 */  bnez        $s4, .L004283B8
/* 0283A0 004283A0 AD740038 */   sw         $s4, 0x38($t3)
/* 0283A4 004283A4 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 0283A8 004283A8 240A0413 */  addiu       $t2, $zero, 0x413
/* 0283AC 004283AC 2402FFFF */  addiu       $v0, $zero, -0x1
/* 0283B0 004283B0 10000037 */  b           .L00428490
/* 0283B4 004283B4 AC2A0000 */   sw         $t2, 0x0($at)
.L004283B8:
/* 0283B8 004283B8 8F99813C */  lw          $t9, %call16(memset)($gp)
/* 0283BC 004283BC 8FAC0050 */  lw          $t4, 0x50($sp)
/* 0283C0 004283C0 00002825 */  move        $a1, $zero
/* 0283C4 004283C4 02603025 */  move        $a2, $s3
/* 0283C8 004283C8 0320F809 */  jalr        $t9
/* 0283CC 004283CC 8D840038 */   lw         $a0, 0x38($t4)
/* 0283D0 004283D0 8FB80050 */  lw          $t8, 0x50($sp)
/* 0283D4 004283D4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 0283D8 004283D8 00137082 */  srl         $t6, $s3, 2
/* 0283DC 004283DC AF0E003C */  sw          $t6, 0x3C($t8)
/* 0283E0 004283E0 8FAD0050 */  lw          $t5, 0x50($sp)
/* 0283E4 004283E4 3C018000 */  lui         $at, (0x80000000 >> 16)
/* 0283E8 004283E8 8DAF0088 */  lw          $t7, 0x88($t5)
/* 0283EC 004283EC 01E1C824 */  and         $t9, $t7, $at
/* 0283F0 004283F0 13200003 */  beqz        $t9, .L00428400
/* 0283F4 004283F4 00000000 */   nop
/* 0283F8 004283F8 10000025 */  b           .L00428490
/* 0283FC 004283FC 00001025 */   move       $v0, $zero
.L00428400:
/* 028400 00428400 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 028404 00428404 02002025 */  move        $a0, $s0
/* 028408 00428408 0320F809 */  jalr        $t9
/* 02840C 0042840C 00000000 */   nop
/* 028410 00428410 8FA80050 */  lw          $t0, 0x50($sp)
/* 028414 00428414 8FBC0030 */  lw          $gp, 0x30($sp)
/* 028418 00428418 0040A025 */  move        $s4, $v0
/* 02841C 0042841C 16800006 */  bnez        $s4, .L00428438
/* 028420 00428420 AD140028 */   sw         $s4, 0x28($t0)
/* 028424 00428424 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 028428 00428428 24090413 */  addiu       $t1, $zero, 0x413
/* 02842C 0042842C 2402FFFF */  addiu       $v0, $zero, -0x1
/* 028430 00428430 10000017 */  b           .L00428490
/* 028434 00428434 AC290000 */   sw         $t1, 0x0($at)
.L00428438:
/* 028438 00428438 8FAB0050 */  lw          $t3, 0x50($sp)
/* 02843C 0042843C 3C012000 */  lui         $at, (0x20000000 >> 16)
/* 028440 00428440 00002825 */  move        $a1, $zero
/* 028444 00428444 8D6A0028 */  lw          $t2, 0x28($t3)
/* 028448 00428448 24060001 */  addiu       $a2, $zero, 0x1
/* 02844C 0042844C AD6A0020 */  sw          $t2, 0x20($t3)
/* 028450 00428450 8FAC0050 */  lw          $t4, 0x50($sp)
/* 028454 00428454 AD90002C */  sw          $s0, 0x2C($t4)
/* 028458 00428458 8FAE0050 */  lw          $t6, 0x50($sp)
/* 02845C 0042845C 8DD4002C */  lw          $s4, 0x2C($t6)
/* 028460 00428460 ADD40034 */  sw          $s4, 0x34($t6)
/* 028464 00428464 8FB80050 */  lw          $t8, 0x50($sp)
/* 028468 00428468 AF140024 */  sw          $s4, 0x24($t8)
/* 02846C 0042846C 8FAD0050 */  lw          $t5, 0x50($sp)
/* 028470 00428470 8DAF0088 */  lw          $t7, 0x88($t5)
/* 028474 00428474 01E1C825 */  or          $t9, $t7, $at
/* 028478 00428478 ADB90088 */  sw          $t9, 0x88($t5)
/* 02847C 0042847C 8F998218 */  lw          $t9, %call16(_elf_vm)($gp)
/* 028480 00428480 8FA40050 */  lw          $a0, 0x50($sp)
/* 028484 00428484 0320F809 */  jalr        $t9
/* 028488 00428488 00000000 */   nop
/* 02848C 0042848C 8FBC0030 */  lw          $gp, 0x30($sp)
.L00428490:
/* 028490 00428490 8FBF0034 */  lw          $ra, 0x34($sp)
/* 028494 00428494 8FB0001C */  lw          $s0, 0x1C($sp)
/* 028498 00428498 8FB10020 */  lw          $s1, 0x20($sp)
/* 02849C 0042849C 8FB20024 */  lw          $s2, 0x24($sp)
/* 0284A0 004284A0 8FB30028 */  lw          $s3, 0x28($sp)
/* 0284A4 004284A4 8FB4002C */  lw          $s4, 0x2C($sp)
/* 0284A8 004284A8 03E00008 */  jr          $ra
/* 0284AC 004284AC 27BD0050 */   addiu      $sp, $sp, 0x50