.section .rodata
glabel STR_10005C38
/* 045C38 10005C38 */ .asciz "__osFinalrom"
                      .balign 4

glabel STR_10005C48
/* 045C48 10005C48 */ .asciz "w"
                      .balign 4

glabel STR_10005C4C
/* 045C4C 10005C4C */ .asciz "makerom: %s: cannot create\n"
                      .balign 4

glabel STR_10005C68
/* 045C68 10005C68 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10005C7C
/* 045C7C 10005C7C */ .asciz "makerom: %s: not a valid ELF object file\n"
                      .balign 4

glabel STR_10005CA8
/* 045CA8 10005CA8 */ .asciz "makerom: use libultra_rom.a to build real game cassette\n"
                      .balign 4

glabel STR_10005CE4
/* 045CE4 10005CE4 */ .asciz "makerom: %s: cannot find entry symbol %s\n"
                      .balign 4

glabel STR_10005D10
/* 045D10 10005D10 */ .asciz "makerom: %s: cannot find stack symbol %s\n"
                      .balign 4

glabel STR_10005D3C
/* 045D3C 10005D3C */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10005D4C
/* 045D4C 10005D4C */ .asciz "_%sSegmentBssStart"
                      .balign 4

glabel STR_10005D60
/* 045D60 10005D60 */ .asciz " la\t$8 0x%x\n"
                      .balign 4

glabel STR_10005D70
/* 045D70 10005D70 */ .asciz " li\t$9 0x%x\n"
                      .balign 4

glabel STR_10005D80
/* 045D80 10005D80 */ .asciz "1:\n"
                      .balign 4

glabel STR_10005D84
/* 045D84 10005D84 */ .asciz " sw $0, 0($8)\n"
                      .balign 4

glabel STR_10005D94
/* 045D94 10005D94 */ .asciz " sw $0, 4($8)\n"
                      .balign 4

glabel STR_10005DA4
/* 045DA4 10005DA4 */ .asciz " addi $8, 8\n"
                      .balign 4

glabel STR_10005DB4
/* 045DB4 10005DB4 */ .asciz " addi $9, 0xfff8\n"
                      .balign 4

glabel STR_10005DC8
/* 045DC8 10005DC8 */ .asciz " bne  $9, $0, 1b\n"
                      .balign 4

glabel STR_10005DDC
/* 045DDC 10005DDC */ .asciz " la\t$29 0x%x\n"
                      .balign 4

glabel STR_10005DEC
/* 045DEC 10005DEC */ .asciz " la $10  0x%x\n"
                      .balign 4

glabel STR_10005DFC
/* 045DFC 10005DFC */ .asciz " j $10\n"
                      .balign 4

glabel STR_10005E04
/* 045E04 10005E04 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10005E14
/* 045E14 10005E14 */ .asciz "$TOOLROOT/usr/bin/cc -c -non_shared -o "
                      .balign 4

glabel STR_10005E3C
/* 045E3C 10005E3C */ .asciz " "
                      .balign 4

glabel STR_10005E40
/* 045E40 10005E40 */ .asciz "Compiling entry source file\n"
                      .balign 4

glabel STR_10005E60
/* 045E60 10005E60 */ .asciz "  %s\n"
                      .balign 4


.section .text
glabel createEntryFile # 31
/* 010170 00410170 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 010174 00410174 279C2BF0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC02BF0
/* 010178 00410178 0399E021 */  addu        $gp, $gp, $t9
/* 01017C 0041017C 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 010180 00410180 AFBF001C */  sw          $ra, 0x1C($sp)
/* 010184 00410184 AFBC0018 */  sw          $gp, 0x18($sp)
/* 010188 00410188 AFA40058 */  sw          $a0, 0x58($sp)
/* 01018C 0041018C AFA5005C */  sw          $a1, 0x5C($sp)
/* 010190 00410190 AFB00014 */  sw          $s0, 0x14($sp)
/* 010194 00410194 AFA0003C */  sw          $zero, 0x3C($sp)
/* 010198 00410198 AFA00038 */  sw          $zero, 0x38($sp)
/* 01019C 0041019C 8F8F802C */  lw          $t7, %got(STR_10005C38)($gp)
/* 0101A0 004101A0 27AE0028 */  addiu       $t6, $sp, 0x28
/* 0101A4 004101A4 25EF5C38 */  addiu       $t7, $t7, %lo(STR_10005C38)
/* 0101A8 004101A8 8DF90000 */  lw          $t9, 0x0($t7)
/* 0101AC 004101AC 8DF80004 */  lw          $t8, 0x4($t7)
/* 0101B0 004101B0 ADD90000 */  sw          $t9, 0x0($t6)
/* 0101B4 004101B4 8DF90008 */  lw          $t9, 0x8($t7)
/* 0101B8 004101B8 ADD80004 */  sw          $t8, 0x4($t6)
/* 0101BC 004101BC ADD90008 */  sw          $t9, 0x8($t6)
/* 0101C0 004101C0 95F9000C */  lhu         $t9, 0xC($t7)
/* 0101C4 004101C4 A5D9000C */  sh          $t9, 0xC($t6)
/* 0101C8 004101C8 8F998080 */  lw          $t9, %call16(fopen)($gp)
/* 0101CC 004101CC 8F85802C */  lw          $a1, %got(STR_10005C48)($gp)
/* 0101D0 004101D0 8FA40058 */  lw          $a0, 0x58($sp)
/* 0101D4 004101D4 0320F809 */  jalr        $t9
/* 0101D8 004101D8 24A55C48 */   addiu      $a1, $a1, %lo(STR_10005C48)
/* 0101DC 004101DC AFA20050 */  sw          $v0, 0x50($sp)
/* 0101E0 004101E0 8FA80050 */  lw          $t0, 0x50($sp)
/* 0101E4 004101E4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0101E8 004101E8 1500000B */  bnez        $t0, .L00410218
/* 0101EC 004101EC 00000000 */   nop
/* 0101F0 004101F0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 0101F4 004101F4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 0101F8 004101F8 8F85802C */  lw          $a1, %got(STR_10005C4C)($gp)
/* 0101FC 004101FC 8FA60058 */  lw          $a2, 0x58($sp)
/* 010200 00410200 24840020 */  addiu       $a0, $a0, 0x20
/* 010204 00410204 0320F809 */  jalr        $t9
/* 010208 00410208 24A55C4C */   addiu      $a1, $a1, %lo(STR_10005C4C)
/* 01020C 0041020C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010210 00410210 1000018A */  b           .L0041083C
/* 010214 00410214 2402FFFF */   addiu      $v0, $zero, -0x1
.L00410218:
/* 010218 00410218 8F898658 */  lw          $t1, %got(segmentList)($gp)
/* 01021C 0041021C 8D290000 */  lw          $t1, 0x0($t1)
/* 010220 00410220 11200124 */  beqz        $t1, .L004106B4
/* 010224 00410224 AFA90054 */   sw         $t1, 0x54($sp)
.L00410228:
/* 010228 00410228 8FAA0054 */  lw          $t2, 0x54($sp)
/* 01022C 0041022C 8D4B0028 */  lw          $t3, 0x28($t2)
/* 010230 00410230 316C0001 */  andi        $t4, $t3, 0x1
/* 010234 00410234 1180011B */  beqz        $t4, .L004106A4
/* 010238 00410238 00000000 */   nop
/* 01023C 0041023C 8FAD0054 */  lw          $t5, 0x54($sp)
/* 010240 00410240 8DAE000C */  lw          $t6, 0xC($t5)
/* 010244 00410244 AFAE0040 */  sw          $t6, 0x40($sp)
/* 010248 00410248 8F9980B8 */  lw          $t9, %call16(open)($gp)
/* 01024C 0041024C 8FAF0040 */  lw          $t7, 0x40($sp)
/* 010250 00410250 00002825 */  move        $a1, $zero
/* 010254 00410254 0320F809 */  jalr        $t9
/* 010258 00410258 8DE40004 */   lw         $a0, 0x4($t7)
/* 01025C 0041025C 8FB80040 */  lw          $t8, 0x40($sp)
/* 010260 00410260 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010264 00410264 00408025 */  move        $s0, $v0
/* 010268 00410268 2401FFFF */  addiu       $at, $zero, -0x1
/* 01026C 0041026C 16010012 */  bne         $s0, $at, .L004102B8
/* 010270 00410270 AF100114 */   sw         $s0, 0x114($t8)
/* 010274 00410274 8F888050 */  lw          $t0, %got(errno)($gp)
/* 010278 00410278 8FB90040 */  lw          $t9, 0x40($sp)
/* 01027C 0041027C 8F8A8054 */  lw          $t2, %got(sys_errlist)($gp)
/* 010280 00410280 8D080000 */  lw          $t0, 0x0($t0)
/* 010284 00410284 8F260004 */  lw          $a2, 0x4($t9)
/* 010288 00410288 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 01028C 0041028C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 010290 00410290 8F85802C */  lw          $a1, %got(STR_10005C68)($gp)
/* 010294 00410294 00084880 */  sll         $t1, $t0, 2
/* 010298 00410298 012A5821 */  addu        $t3, $t1, $t2
/* 01029C 0041029C 8D670000 */  lw          $a3, 0x0($t3)
/* 0102A0 004102A0 24840020 */  addiu       $a0, $a0, 0x20
/* 0102A4 004102A4 0320F809 */  jalr        $t9
/* 0102A8 004102A8 24A55C68 */   addiu      $a1, $a1, %lo(STR_10005C68)
/* 0102AC 004102AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0102B0 004102B0 10000162 */  b           .L0041083C
/* 0102B4 004102B4 2402FFFF */   addiu      $v0, $zero, -0x1
.L004102B8:
/* 0102B8 004102B8 8F9981EC */  lw          $t9, %call16(elf_begin)($gp)
/* 0102BC 004102BC 8FAC0040 */  lw          $t4, 0x40($sp)
/* 0102C0 004102C0 24050001 */  addiu       $a1, $zero, 0x1
/* 0102C4 004102C4 00003025 */  move        $a2, $zero
/* 0102C8 004102C8 0320F809 */  jalr        $t9
/* 0102CC 004102CC 8D840114 */   lw         $a0, 0x114($t4)
/* 0102D0 004102D0 8FAD0040 */  lw          $t5, 0x40($sp)
/* 0102D4 004102D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0102D8 004102D8 ADA2000C */  sw          $v0, 0xC($t5)
/* 0102DC 004102DC 8F998214 */  lw          $t9, %call16(elf_kind)($gp)
/* 0102E0 004102E0 8FAE0040 */  lw          $t6, 0x40($sp)
/* 0102E4 004102E4 0320F809 */  jalr        $t9
/* 0102E8 004102E8 8DC4000C */   lw         $a0, 0xC($t6)
/* 0102EC 004102EC 24010003 */  addiu       $at, $zero, 0x3
/* 0102F0 004102F0 1441000A */  bne         $v0, $at, .L0041031C
/* 0102F4 004102F4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0102F8 004102F8 8F998204 */  lw          $t9, %call16(elf32_getehdr)($gp)
/* 0102FC 004102FC 8FAF0040 */  lw          $t7, 0x40($sp)
/* 010300 00410300 0320F809 */  jalr        $t9
/* 010304 00410304 8DE4000C */   lw         $a0, 0xC($t7)
/* 010308 00410308 8FB80040 */  lw          $t8, 0x40($sp)
/* 01030C 0041030C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010310 00410310 00408025 */  move        $s0, $v0
/* 010314 00410314 1600000D */  bnez        $s0, .L0041034C
/* 010318 00410318 AF100010 */   sw         $s0, 0x10($t8)
.L0041031C:
/* 01031C 0041031C 8FB90040 */  lw          $t9, 0x40($sp)
/* 010320 00410320 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 010324 00410324 8F85802C */  lw          $a1, %got(STR_10005C7C)($gp)
/* 010328 00410328 8F260004 */  lw          $a2, 0x4($t9)
/* 01032C 0041032C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 010330 00410330 24840020 */  addiu       $a0, $a0, 0x20
/* 010334 00410334 24A55C7C */  addiu       $a1, $a1, %lo(STR_10005C7C)
/* 010338 00410338 0320F809 */  jalr        $t9
/* 01033C 0041033C 00000000 */   nop
/* 010340 00410340 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010344 00410344 1000013D */  b           .L0041083C
/* 010348 00410348 2402FFFF */   addiu      $v0, $zero, -0x1
.L0041034C:
/* 01034C 0041034C 8F888670 */  lw          $t0, %got(finalromSize)($gp)
/* 010350 00410350 8D080000 */  lw          $t0, 0x0($t0)
/* 010354 00410354 11000012 */  beqz        $t0, .L004103A0
/* 010358 00410358 00000000 */   nop
/* 01035C 0041035C 8F998018 */  lw          $t9, %got(lookupSymbol)($gp)
/* 010360 00410360 8FA90054 */  lw          $t1, 0x54($sp)
/* 010364 00410364 27A50028 */  addiu       $a1, $sp, 0x28
/* 010368 00410368 2739F3F4 */  addiu       $t9, $t9, %lo(lookupSymbol)
/* 01036C 0041036C 0320F809 */  jalr        $t9
/* 010370 00410370 8D24000C */   lw         $a0, 0xC($t1)
/* 010374 00410374 1440000A */  bnez        $v0, .L004103A0
/* 010378 00410378 8FBC0018 */   lw         $gp, 0x18($sp)
/* 01037C 0041037C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 010380 00410380 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 010384 00410384 8F85802C */  lw          $a1, %got(STR_10005CA8)($gp)
/* 010388 00410388 24840020 */  addiu       $a0, $a0, 0x20
/* 01038C 0041038C 0320F809 */  jalr        $t9
/* 010390 00410390 24A55CA8 */   addiu      $a1, $a1, %lo(STR_10005CA8)
/* 010394 00410394 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010398 00410398 10000128 */  b           .L0041083C
/* 01039C 0041039C 2402FFFF */   addiu      $v0, $zero, -0x1
.L004103A0:
/* 0103A0 004103A0 8F8A8710 */  lw          $t2, %got(bootEntryName)($gp)
/* 0103A4 004103A4 8D4A0000 */  lw          $t2, 0x0($t2)
/* 0103A8 004103A8 1140001B */  beqz        $t2, .L00410418
/* 0103AC 004103AC 00000000 */   nop
/* 0103B0 004103B0 8F998018 */  lw          $t9, %got(lookupSymbol)($gp)
/* 0103B4 004103B4 8FAB0054 */  lw          $t3, 0x54($sp)
/* 0103B8 004103B8 8F858710 */  lw          $a1, %got(bootEntryName)($gp)
/* 0103BC 004103BC 2739F3F4 */  addiu       $t9, $t9, %lo(lookupSymbol)
/* 0103C0 004103C0 8D64000C */  lw          $a0, 0xC($t3)
/* 0103C4 004103C4 0320F809 */  jalr        $t9
/* 0103C8 004103C8 8CA50000 */   lw         $a1, 0x0($a1)
/* 0103CC 004103CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0103D0 004103D0 AFA2003C */  sw          $v0, 0x3C($sp)
/* 0103D4 004103D4 8FAC003C */  lw          $t4, 0x3C($sp)
/* 0103D8 004103D8 1580000F */  bnez        $t4, .L00410418
/* 0103DC 004103DC 00000000 */   nop
/* 0103E0 004103E0 8FAD0054 */  lw          $t5, 0x54($sp)
/* 0103E4 004103E4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 0103E8 004103E8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 0103EC 004103EC 8F85802C */  lw          $a1, %got(STR_10005CE4)($gp)
/* 0103F0 004103F0 8F878710 */  lw          $a3, %got(bootEntryName)($gp)
/* 0103F4 004103F4 8DAE000C */  lw          $t6, 0xC($t5)
/* 0103F8 004103F8 24840020 */  addiu       $a0, $a0, 0x20
/* 0103FC 004103FC 24A55CE4 */  addiu       $a1, $a1, %lo(STR_10005CE4)
/* 010400 00410400 8CE70000 */  lw          $a3, 0x0($a3)
/* 010404 00410404 0320F809 */  jalr        $t9
/* 010408 00410408 8DC60004 */   lw         $a2, 0x4($t6)
/* 01040C 0041040C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010410 00410410 1000010A */  b           .L0041083C
/* 010414 00410414 2402FFFF */   addiu      $v0, $zero, -0x1
.L00410418:
/* 010418 00410418 8F8F8714 */  lw          $t7, %got(bootStackName)($gp)
/* 01041C 0041041C 8DEF0000 */  lw          $t7, 0x0($t7)
/* 010420 00410420 11E0001D */  beqz        $t7, .L00410498
/* 010424 00410424 00000000 */   nop
/* 010428 00410428 8F998018 */  lw          $t9, %got(lookupSymbol)($gp)
/* 01042C 0041042C 8FB80054 */  lw          $t8, 0x54($sp)
/* 010430 00410430 8F858714 */  lw          $a1, %got(bootStackName)($gp)
/* 010434 00410434 2739F3F4 */  addiu       $t9, $t9, %lo(lookupSymbol)
/* 010438 00410438 8F04000C */  lw          $a0, 0xC($t8)
/* 01043C 0041043C 0320F809 */  jalr        $t9
/* 010440 00410440 8CA50000 */   lw         $a1, 0x0($a1)
/* 010444 00410444 AFA20038 */  sw          $v0, 0x38($sp)
/* 010448 00410448 8FB90038 */  lw          $t9, 0x38($sp)
/* 01044C 0041044C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010450 00410450 1720000F */  bnez        $t9, .L00410490
/* 010454 00410454 00000000 */   nop
/* 010458 00410458 8FA80054 */  lw          $t0, 0x54($sp)
/* 01045C 0041045C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 010460 00410460 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 010464 00410464 8F85802C */  lw          $a1, %got(STR_10005D10)($gp)
/* 010468 00410468 8F878714 */  lw          $a3, %got(bootStackName)($gp)
/* 01046C 0041046C 8D09000C */  lw          $t1, 0xC($t0)
/* 010470 00410470 24840020 */  addiu       $a0, $a0, 0x20
/* 010474 00410474 24A55D10 */  addiu       $a1, $a1, %lo(STR_10005D10)
/* 010478 00410478 8CE70000 */  lw          $a3, 0x0($a3)
/* 01047C 0041047C 0320F809 */  jalr        $t9
/* 010480 00410480 8D260004 */   lw         $a2, 0x4($t1)
/* 010484 00410484 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010488 00410488 100000EC */  b           .L0041083C
/* 01048C 0041048C 2402FFFF */   addiu      $v0, $zero, -0x1
.L00410490:
/* 010490 00410490 10000002 */  b           .L0041049C
/* 010494 00410494 00000000 */   nop
.L00410498:
/* 010498 00410498 AFA00038 */  sw          $zero, 0x38($sp)
.L0041049C:
/* 01049C 0041049C 8F8B8718 */  lw          $t3, %got(bootStackOffset)($gp)
/* 0104A0 004104A0 8FAA0038 */  lw          $t2, 0x38($sp)
/* 0104A4 004104A4 8D6B0000 */  lw          $t3, 0x0($t3)
/* 0104A8 004104A8 014B6021 */  addu        $t4, $t2, $t3
/* 0104AC 004104AC AFAC0038 */  sw          $t4, 0x38($sp)
/* 0104B0 004104B0 8FAD0054 */  lw          $t5, 0x54($sp)
/* 0104B4 004104B4 8DAE003C */  lw          $t6, 0x3C($t5)
/* 0104B8 004104B8 11C00060 */  beqz        $t6, .L0041063C
/* 0104BC 004104BC 00000000 */   nop
/* 0104C0 004104C0 8F8F8664 */  lw          $t7, %got(cosim)($gp)
/* 0104C4 004104C4 8DEF0000 */  lw          $t7, 0x0($t7)
/* 0104C8 004104C8 15E0005C */  bnez        $t7, .L0041063C
/* 0104CC 004104CC 00000000 */   nop
/* 0104D0 004104D0 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 0104D4 004104D4 8FB80054 */  lw          $t8, 0x54($sp)
/* 0104D8 004104D8 0320F809 */  jalr        $t9
/* 0104DC 004104DC 8F040004 */   lw         $a0, 0x4($t8)
/* 0104E0 004104E0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0104E4 004104E4 00408025 */  move        $s0, $v0
/* 0104E8 004104E8 26040010 */  addiu       $a0, $s0, 0x10
/* 0104EC 004104EC 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 0104F0 004104F0 0320F809 */  jalr        $t9
/* 0104F4 004104F4 00000000 */   nop
/* 0104F8 004104F8 AFA20048 */  sw          $v0, 0x48($sp)
/* 0104FC 004104FC 8FB90048 */  lw          $t9, 0x48($sp)
/* 010500 00410500 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010504 00410504 1720000A */  bnez        $t9, .L00410530
/* 010508 00410508 00000000 */   nop
/* 01050C 0041050C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 010510 00410510 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 010514 00410514 8F85802C */  lw          $a1, %got(STR_10005D3C)($gp)
/* 010518 00410518 24840020 */  addiu       $a0, $a0, 0x20
/* 01051C 0041051C 0320F809 */  jalr        $t9
/* 010520 00410520 24A55D3C */   addiu      $a1, $a1, %lo(STR_10005D3C)
/* 010524 00410524 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010528 00410528 100000C4 */  b           .L0041083C
/* 01052C 0041052C 2402FFFF */   addiu      $v0, $zero, -0x1
.L00410530:
/* 010530 00410530 8F99806C */  lw          $t9, %call16(sprintf)($gp)
/* 010534 00410534 8F85802C */  lw          $a1, %got(STR_10005D4C)($gp)
/* 010538 00410538 8FA80054 */  lw          $t0, 0x54($sp)
/* 01053C 0041053C 8FA40048 */  lw          $a0, 0x48($sp)
/* 010540 00410540 24A55D4C */  addiu       $a1, $a1, %lo(STR_10005D4C)
/* 010544 00410544 0320F809 */  jalr        $t9
/* 010548 00410548 8D060004 */   lw         $a2, 0x4($t0)
/* 01054C 0041054C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010550 00410550 8F998018 */  lw          $t9, %got(lookupSymbol)($gp)
/* 010554 00410554 8FA90054 */  lw          $t1, 0x54($sp)
/* 010558 00410558 8FA50048 */  lw          $a1, 0x48($sp)
/* 01055C 0041055C 2739F3F4 */  addiu       $t9, $t9, %lo(lookupSymbol)
/* 010560 00410560 0320F809 */  jalr        $t9
/* 010564 00410564 8D24000C */   lw         $a0, 0xC($t1)
/* 010568 00410568 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01056C 0041056C AFA20044 */  sw          $v0, 0x44($sp)
/* 010570 00410570 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 010574 00410574 8F85802C */  lw          $a1, %got(STR_10005D60)($gp)
/* 010578 00410578 8FA40050 */  lw          $a0, 0x50($sp)
/* 01057C 0041057C 8FA60044 */  lw          $a2, 0x44($sp)
/* 010580 00410580 0320F809 */  jalr        $t9
/* 010584 00410584 24A55D60 */   addiu      $a1, $a1, %lo(STR_10005D60)
/* 010588 00410588 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01058C 0041058C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 010590 00410590 8F85802C */  lw          $a1, %got(STR_10005D70)($gp)
/* 010594 00410594 8FAA0054 */  lw          $t2, 0x54($sp)
/* 010598 00410598 8FA40050 */  lw          $a0, 0x50($sp)
/* 01059C 0041059C 24A55D70 */  addiu       $a1, $a1, %lo(STR_10005D70)
/* 0105A0 004105A0 0320F809 */  jalr        $t9
/* 0105A4 004105A4 8D46003C */   lw         $a2, 0x3C($t2)
/* 0105A8 004105A8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0105AC 004105AC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 0105B0 004105B0 8F85802C */  lw          $a1, %got(STR_10005D80)($gp)
/* 0105B4 004105B4 8FA40050 */  lw          $a0, 0x50($sp)
/* 0105B8 004105B8 0320F809 */  jalr        $t9
/* 0105BC 004105BC 24A55D80 */   addiu      $a1, $a1, %lo(STR_10005D80)
/* 0105C0 004105C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0105C4 004105C4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 0105C8 004105C8 8F85802C */  lw          $a1, %got(STR_10005D84)($gp)
/* 0105CC 004105CC 8FA40050 */  lw          $a0, 0x50($sp)
/* 0105D0 004105D0 0320F809 */  jalr        $t9
/* 0105D4 004105D4 24A55D84 */   addiu      $a1, $a1, %lo(STR_10005D84)
/* 0105D8 004105D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0105DC 004105DC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 0105E0 004105E0 8F85802C */  lw          $a1, %got(STR_10005D94)($gp)
/* 0105E4 004105E4 8FA40050 */  lw          $a0, 0x50($sp)
/* 0105E8 004105E8 0320F809 */  jalr        $t9
/* 0105EC 004105EC 24A55D94 */   addiu      $a1, $a1, %lo(STR_10005D94)
/* 0105F0 004105F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0105F4 004105F4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 0105F8 004105F8 8F85802C */  lw          $a1, %got(STR_10005DA4)($gp)
/* 0105FC 004105FC 8FA40050 */  lw          $a0, 0x50($sp)
/* 010600 00410600 0320F809 */  jalr        $t9
/* 010604 00410604 24A55DA4 */   addiu      $a1, $a1, %lo(STR_10005DA4)
/* 010608 00410608 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01060C 0041060C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 010610 00410610 8F85802C */  lw          $a1, %got(STR_10005DB4)($gp)
/* 010614 00410614 8FA40050 */  lw          $a0, 0x50($sp)
/* 010618 00410618 0320F809 */  jalr        $t9
/* 01061C 0041061C 24A55DB4 */   addiu      $a1, $a1, %lo(STR_10005DB4)
/* 010620 00410620 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010624 00410624 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 010628 00410628 8F85802C */  lw          $a1, %got(STR_10005DC8)($gp)
/* 01062C 0041062C 8FA40050 */  lw          $a0, 0x50($sp)
/* 010630 00410630 0320F809 */  jalr        $t9
/* 010634 00410634 24A55DC8 */   addiu      $a1, $a1, %lo(STR_10005DC8)
/* 010638 00410638 8FBC0018 */  lw          $gp, 0x18($sp)
.L0041063C:
/* 01063C 0041063C 8FAB0038 */  lw          $t3, 0x38($sp)
/* 010640 00410640 11600008 */  beqz        $t3, .L00410664
/* 010644 00410644 00000000 */   nop
/* 010648 00410648 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 01064C 0041064C 8F85802C */  lw          $a1, %got(STR_10005DDC)($gp)
/* 010650 00410650 8FA40050 */  lw          $a0, 0x50($sp)
/* 010654 00410654 8FA60038 */  lw          $a2, 0x38($sp)
/* 010658 00410658 0320F809 */  jalr        $t9
/* 01065C 0041065C 24A55DDC */   addiu      $a1, $a1, %lo(STR_10005DDC)
/* 010660 00410660 8FBC0018 */  lw          $gp, 0x18($sp)
.L00410664:
/* 010664 00410664 8FAC003C */  lw          $t4, 0x3C($sp)
/* 010668 00410668 1180000E */  beqz        $t4, .L004106A4
/* 01066C 0041066C 00000000 */   nop
/* 010670 00410670 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 010674 00410674 8F85802C */  lw          $a1, %got(STR_10005DEC)($gp)
/* 010678 00410678 8FA40050 */  lw          $a0, 0x50($sp)
/* 01067C 0041067C 8FA6003C */  lw          $a2, 0x3C($sp)
/* 010680 00410680 0320F809 */  jalr        $t9
/* 010684 00410684 24A55DEC */   addiu      $a1, $a1, %lo(STR_10005DEC)
/* 010688 00410688 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01068C 0041068C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 010690 00410690 8F85802C */  lw          $a1, %got(STR_10005DFC)($gp)
/* 010694 00410694 8FA40050 */  lw          $a0, 0x50($sp)
/* 010698 00410698 0320F809 */  jalr        $t9
/* 01069C 0041069C 24A55DFC */   addiu      $a1, $a1, %lo(STR_10005DFC)
/* 0106A0 004106A0 8FBC0018 */  lw          $gp, 0x18($sp)
.L004106A4:
/* 0106A4 004106A4 8FAD0054 */  lw          $t5, 0x54($sp)
/* 0106A8 004106A8 8DAE0000 */  lw          $t6, 0x0($t5)
/* 0106AC 004106AC 15C0FEDE */  bnez        $t6, .L00410228
/* 0106B0 004106B0 AFAE0054 */   sw         $t6, 0x54($sp)
.L004106B4:
/* 0106B4 004106B4 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 0106B8 004106B8 8FA40048 */  lw          $a0, 0x48($sp)
/* 0106BC 004106BC 0320F809 */  jalr        $t9
/* 0106C0 004106C0 00000000 */   nop
/* 0106C4 004106C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0106C8 004106C8 8F998084 */  lw          $t9, %call16(fclose)($gp)
/* 0106CC 004106CC 8FA40050 */  lw          $a0, 0x50($sp)
/* 0106D0 004106D0 0320F809 */  jalr        $t9
/* 0106D4 004106D4 00000000 */   nop
/* 0106D8 004106D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0106DC 004106DC 8F998060 */  lw          $t9, %call16(sysconf)($gp)
/* 0106E0 004106E0 24040001 */  addiu       $a0, $zero, 0x1
/* 0106E4 004106E4 0320F809 */  jalr        $t9
/* 0106E8 004106E8 00000000 */   nop
/* 0106EC 004106EC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0106F0 004106F0 00408025 */  move        $s0, $v0
/* 0106F4 004106F4 02002025 */  move        $a0, $s0
/* 0106F8 004106F8 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 0106FC 004106FC 0320F809 */  jalr        $t9
/* 010700 00410700 00000000 */   nop
/* 010704 00410704 AFA2004C */  sw          $v0, 0x4C($sp)
/* 010708 00410708 8FAF004C */  lw          $t7, 0x4C($sp)
/* 01070C 0041070C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010710 00410710 15E0000A */  bnez        $t7, .L0041073C
/* 010714 00410714 00000000 */   nop
/* 010718 00410718 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 01071C 0041071C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 010720 00410720 8F85802C */  lw          $a1, %got(STR_10005E04)($gp)
/* 010724 00410724 24840020 */  addiu       $a0, $a0, 0x20
/* 010728 00410728 0320F809 */  jalr        $t9
/* 01072C 0041072C 24A55E04 */   addiu      $a1, $a1, %lo(STR_10005E04)
/* 010730 00410730 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010734 00410734 10000041 */  b           .L0041083C
/* 010738 00410738 2402FFFF */   addiu      $v0, $zero, -0x1
.L0041073C:
/* 01073C 0041073C 8F99802C */  lw          $t9, %got(STR_10005E14)($gp)
/* 010740 00410740 8FB8004C */  lw          $t8, 0x4C($sp)
/* 010744 00410744 27395E14 */  addiu       $t9, $t9, %lo(STR_10005E14)
/* 010748 00410748 272A0024 */  addiu       $t2, $t9, 0x24
.L0041074C:
/* 01074C 0041074C 8B290000 */  lwl         $t1, 0x0($t9)
/* 010750 00410750 9B290003 */  lwr         $t1, 0x3($t9)
/* 010754 00410754 2739000C */  addiu       $t9, $t9, 0xC
/* 010758 00410758 2718000C */  addiu       $t8, $t8, 0xC
/* 01075C 0041075C AB09FFF4 */  swl         $t1, -0xC($t8)
/* 010760 00410760 BB09FFF7 */  swr         $t1, -0x9($t8)
/* 010764 00410764 8B28FFF8 */  lwl         $t0, -0x8($t9)
/* 010768 00410768 9B28FFFB */  lwr         $t0, -0x5($t9)
/* 01076C 0041076C AB08FFF8 */  swl         $t0, -0x8($t8)
/* 010770 00410770 BB08FFFB */  swr         $t0, -0x5($t8)
/* 010774 00410774 8B29FFFC */  lwl         $t1, -0x4($t9)
/* 010778 00410778 9B29FFFF */  lwr         $t1, -0x1($t9)
/* 01077C 0041077C AB09FFFC */  swl         $t1, -0x4($t8)
/* 010780 00410780 172AFFF2 */  bne         $t9, $t2, .L0041074C
/* 010784 00410784 BB09FFFF */   swr        $t1, -0x1($t8)
/* 010788 00410788 8B290000 */  lwl         $t1, 0x0($t9)
/* 01078C 0041078C 9B290003 */  lwr         $t1, 0x3($t9)
/* 010790 00410790 AB090000 */  swl         $t1, 0x0($t8)
/* 010794 00410794 BB090003 */  swr         $t1, 0x3($t8)
/* 010798 00410798 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 01079C 0041079C 8FA4004C */  lw          $a0, 0x4C($sp)
/* 0107A0 004107A0 8FA5005C */  lw          $a1, 0x5C($sp)
/* 0107A4 004107A4 0320F809 */  jalr        $t9
/* 0107A8 004107A8 00000000 */   nop
/* 0107AC 004107AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0107B0 004107B0 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 0107B4 004107B4 8F85802C */  lw          $a1, %got(STR_10005E3C)($gp)
/* 0107B8 004107B8 8FA4004C */  lw          $a0, 0x4C($sp)
/* 0107BC 004107BC 0320F809 */  jalr        $t9
/* 0107C0 004107C0 24A55E3C */   addiu      $a1, $a1, %lo(STR_10005E3C)
/* 0107C4 004107C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0107C8 004107C8 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 0107CC 004107CC 8FA4004C */  lw          $a0, 0x4C($sp)
/* 0107D0 004107D0 8FA50058 */  lw          $a1, 0x58($sp)
/* 0107D4 004107D4 0320F809 */  jalr        $t9
/* 0107D8 004107D8 00000000 */   nop
/* 0107DC 004107DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0107E0 004107E0 8F8B8660 */  lw          $t3, %got(debug)($gp)
/* 0107E4 004107E4 8D6B0000 */  lw          $t3, 0x0($t3)
/* 0107E8 004107E8 1160000C */  beqz        $t3, .L0041081C
/* 0107EC 004107EC 00000000 */   nop
/* 0107F0 004107F0 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 0107F4 004107F4 8F84802C */  lw          $a0, %got(STR_10005E40)($gp)
/* 0107F8 004107F8 0320F809 */  jalr        $t9
/* 0107FC 004107FC 24845E40 */   addiu      $a0, $a0, %lo(STR_10005E40)
/* 010800 00410800 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010804 00410804 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 010808 00410808 8F84802C */  lw          $a0, %got(STR_10005E60)($gp)
/* 01080C 0041080C 8FA5004C */  lw          $a1, 0x4C($sp)
/* 010810 00410810 0320F809 */  jalr        $t9
/* 010814 00410814 24845E60 */   addiu      $a0, $a0, %lo(STR_10005E60)
/* 010818 00410818 8FBC0018 */  lw          $gp, 0x18($sp)
.L0041081C:
/* 01081C 0041081C 8F99818C */  lw          $t9, %call16(execCommand)($gp)
/* 010820 00410820 8FA4004C */  lw          $a0, 0x4C($sp)
/* 010824 00410824 0320F809 */  jalr        $t9
/* 010828 00410828 00000000 */   nop
/* 01082C 0041082C 10000003 */  b           .L0041083C
/* 010830 00410830 8FBC0018 */   lw         $gp, 0x18($sp)
/* 010834 00410834 10000001 */  b           .L0041083C
/* 010838 00410838 00000000 */   nop
.L0041083C:
/* 01083C 0041083C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 010840 00410840 8FB00014 */  lw          $s0, 0x14($sp)
/* 010844 00410844 27BD0058 */  addiu       $sp, $sp, 0x58
/* 010848 00410848 03E00008 */  jr          $ra
/* 01084C 0041084C 00000000 */   nop