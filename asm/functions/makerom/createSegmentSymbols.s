.section .rodata
glabel STR_10005348
/* 045348 10005348 */ .asciz "w"
                      .balign 4

glabel STR_1000534C
/* 04534C 1000534C */ .asciz "makerom: %s: cannot create\n"
                      .balign 4

glabel STR_10005368
/* 045368 10005368 */ .asciz ".globl _%sSegmentRomStart; "
                      .balign 4

glabel STR_10005384
/* 045384 10005384 */ .asciz "_%sSegmentRomStart = 0x%08x\n"
                      .balign 4

glabel STR_100053A4
/* 0453A4 100053A4 */ .asciz ".globl _%sSegmentRomEnd; "
                      .balign 4

glabel STR_100053C0
/* 0453C0 100053C0 */ .asciz "_%sSegmentRomEnd = 0x%08x\n"
                      .balign 4

glabel STR_100053DC
/* 0453DC 100053DC */ .asciz ".globl _%sSegmentStart; "
                      .balign 4

glabel STR_100053F8
/* 0453F8 100053F8 */ .asciz "_%sSegmentStart = 0x%08x\n"
                      .balign 4

glabel STR_10005414
/* 045414 10005414 */ .asciz ".globl _%sSegmentTextStart; "
                      .balign 4

glabel STR_10005434
/* 045434 10005434 */ .asciz "_%sSegmentTextStart = 0x%08x\n"
                      .balign 4

glabel STR_10005454
/* 045454 10005454 */ .asciz ".globl _%sSegmentTextEnd; "
                      .balign 4

glabel STR_10005470
/* 045470 10005470 */ .asciz "_%sSegmentTextEnd = 0x%08x\n"
                      .balign 4

glabel STR_1000548C
/* 04548C 1000548C */ .asciz ".globl _%sSegmentDataStart; "
                      .balign 4

glabel STR_100054AC
/* 0454AC 100054AC */ .asciz "_%sSegmentDataStart = 0x%08x\n"
                      .balign 4

glabel STR_100054CC
/* 0454CC 100054CC */ .asciz ".globl _%sSegmentDataEnd; "
                      .balign 4

glabel STR_100054E8
/* 0454E8 100054E8 */ .asciz "_%sSegmentDataEnd = 0x%08x\n"
                      .balign 4

glabel STR_10005504
/* 045504 10005504 */ .asciz ".globl _%sSegmentBssStart; "
                      .balign 4

glabel STR_10005520
/* 045520 10005520 */ .asciz "_%sSegmentBssStart = 0x%08x\n"
                      .balign 4

glabel STR_10005540
/* 045540 10005540 */ .asciz ".globl _%sSegmentBssEnd; "
                      .balign 4

glabel STR_1000555C
/* 04555C 1000555C */ .asciz "_%sSegmentBssEnd = 0x%08x\n"
                      .balign 4

glabel STR_10005578
/* 045578 10005578 */ .asciz ".globl _%sSegmentEnd; "
                      .balign 4

glabel STR_10005590
/* 045590 10005590 */ .asciz "_%sSegmentEnd = 0x%08x\n"
                      .balign 4

glabel STR_100055A8
/* 0455A8 100055A8 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_100055B8
/* 0455B8 100055B8 */ .asciz "$TOOLROOT/usr/bin/cc -c -non_shared -o "
                      .balign 4

glabel STR_100055E0
/* 0455E0 100055E0 */ .asciz " "
                      .balign 4

glabel STR_100055E4
/* 0455E4 100055E4 */ .asciz "  %s\n"
                      .balign 4


.section .text
glabel createSegmentSymbols # 24
/* 00E1D8 0040E1D8 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00E1DC 0040E1DC 279C4B88 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC04B88
/* 00E1E0 0040E1E0 0399E021 */  addu        $gp, $gp, $t9
/* 00E1E4 0040E1E4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00E1E8 0040E1E8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00E1EC 0040E1EC AFBC0018 */  sw          $gp, 0x18($sp)
/* 00E1F0 0040E1F0 AFA40030 */  sw          $a0, 0x30($sp)
/* 00E1F4 0040E1F4 AFA50034 */  sw          $a1, 0x34($sp)
/* 00E1F8 0040E1F8 AFB00014 */  sw          $s0, 0x14($sp)
/* 00E1FC 0040E1FC 8F998080 */  lw          $t9, %call16(fopen)($gp)
/* 00E200 0040E200 8F85802C */  lw          $a1, %got(STR_10005348)($gp)
/* 00E204 0040E204 8FA40030 */  lw          $a0, 0x30($sp)
/* 00E208 0040E208 0320F809 */  jalr        $t9
/* 00E20C 0040E20C 24A55348 */   addiu      $a1, $a1, %lo(STR_10005348)
/* 00E210 0040E210 AFA2002C */  sw          $v0, 0x2C($sp)
/* 00E214 0040E214 8FAE002C */  lw          $t6, 0x2C($sp)
/* 00E218 0040E218 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E21C 0040E21C 15C0000B */  bnez        $t6, .L0040E24C
/* 00E220 0040E220 00000000 */   nop
/* 00E224 0040E224 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E228 0040E228 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00E22C 0040E22C 8F85802C */  lw          $a1, %got(STR_1000534C)($gp)
/* 00E230 0040E230 8FA60030 */  lw          $a2, 0x30($sp)
/* 00E234 0040E234 24840020 */  addiu       $a0, $a0, 0x20
/* 00E238 0040E238 0320F809 */  jalr        $t9
/* 00E23C 0040E23C 24A5534C */   addiu      $a1, $a1, %lo(STR_1000534C)
/* 00E240 0040E240 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E244 0040E244 1000013B */  b           .L0040E734
/* 00E248 0040E248 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E24C:
/* 00E24C 0040E24C 8F8F8658 */  lw          $t7, %got(segmentList)($gp)
/* 00E250 0040E250 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00E254 0040E254 11E000DF */  beqz        $t7, .L0040E5D4
/* 00E258 0040E258 AFAF0028 */   sw         $t7, 0x28($sp)
.L0040E25C:
/* 00E25C 0040E25C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E260 0040E260 8F85802C */  lw          $a1, %got(STR_10005368)($gp)
/* 00E264 0040E264 8FB80028 */  lw          $t8, 0x28($sp)
/* 00E268 0040E268 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E26C 0040E26C 24A55368 */  addiu       $a1, $a1, %lo(STR_10005368)
/* 00E270 0040E270 0320F809 */  jalr        $t9
/* 00E274 0040E274 8F060004 */   lw         $a2, 0x4($t8)
/* 00E278 0040E278 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E27C 0040E27C 8FB90028 */  lw          $t9, 0x28($sp)
/* 00E280 0040E280 8F898678 */  lw          $t1, %got(offset)($gp)
/* 00E284 0040E284 8F85802C */  lw          $a1, %got(STR_10005384)($gp)
/* 00E288 0040E288 8F280024 */  lw          $t0, 0x24($t9)
/* 00E28C 0040E28C 8D290000 */  lw          $t1, 0x0($t1)
/* 00E290 0040E290 8F260004 */  lw          $a2, 0x4($t9)
/* 00E294 0040E294 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E298 0040E298 01093821 */  addu        $a3, $t0, $t1
/* 00E29C 0040E29C 24E71000 */  addiu       $a3, $a3, 0x1000
/* 00E2A0 0040E2A0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E2A4 0040E2A4 0320F809 */  jalr        $t9
/* 00E2A8 0040E2A8 24A55384 */   addiu      $a1, $a1, %lo(STR_10005384)
/* 00E2AC 0040E2AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E2B0 0040E2B0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E2B4 0040E2B4 8F85802C */  lw          $a1, %got(STR_100053A4)($gp)
/* 00E2B8 0040E2B8 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00E2BC 0040E2BC 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E2C0 0040E2C0 24A553A4 */  addiu       $a1, $a1, %lo(STR_100053A4)
/* 00E2C4 0040E2C4 0320F809 */  jalr        $t9
/* 00E2C8 0040E2C8 8D460004 */   lw         $a2, 0x4($t2)
/* 00E2CC 0040E2CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E2D0 0040E2D0 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00E2D4 0040E2D4 8F8D8678 */  lw          $t5, %got(offset)($gp)
/* 00E2D8 0040E2D8 8F85802C */  lw          $a1, %got(STR_100053C0)($gp)
/* 00E2DC 0040E2DC 8D6C0024 */  lw          $t4, 0x24($t3)
/* 00E2E0 0040E2E0 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00E2E4 0040E2E4 8D6F002C */  lw          $t7, 0x2C($t3)
/* 00E2E8 0040E2E8 8D790030 */  lw          $t9, 0x30($t3)
/* 00E2EC 0040E2EC 018D7021 */  addu        $t6, $t4, $t5
/* 00E2F0 0040E2F0 01CFC021 */  addu        $t8, $t6, $t7
/* 00E2F4 0040E2F4 8D690034 */  lw          $t1, 0x34($t3)
/* 00E2F8 0040E2F8 03194021 */  addu        $t0, $t8, $t9
/* 00E2FC 0040E2FC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E300 0040E300 01093821 */  addu        $a3, $t0, $t1
/* 00E304 0040E304 24E71000 */  addiu       $a3, $a3, 0x1000
/* 00E308 0040E308 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E30C 0040E30C 8D660004 */  lw          $a2, 0x4($t3)
/* 00E310 0040E310 0320F809 */  jalr        $t9
/* 00E314 0040E314 24A553C0 */   addiu      $a1, $a1, %lo(STR_100053C0)
/* 00E318 0040E318 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E31C 0040E31C 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00E320 0040E320 8D4C0028 */  lw          $t4, 0x28($t2)
/* 00E324 0040E324 318D0002 */  andi        $t5, $t4, 0x2
/* 00E328 0040E328 11A000A6 */  beqz        $t5, .L0040E5C4
/* 00E32C 0040E32C 00000000 */   nop
/* 00E330 0040E330 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E334 0040E334 8F85802C */  lw          $a1, %got(STR_100053DC)($gp)
/* 00E338 0040E338 8FAE0028 */  lw          $t6, 0x28($sp)
/* 00E33C 0040E33C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E340 0040E340 24A553DC */  addiu       $a1, $a1, %lo(STR_100053DC)
/* 00E344 0040E344 0320F809 */  jalr        $t9
/* 00E348 0040E348 8DC60004 */   lw         $a2, 0x4($t6)
/* 00E34C 0040E34C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E350 0040E350 8FAF0028 */  lw          $t7, 0x28($sp)
/* 00E354 0040E354 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E358 0040E358 8F85802C */  lw          $a1, %got(STR_100053F8)($gp)
/* 00E35C 0040E35C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E360 0040E360 8DE60004 */  lw          $a2, 0x4($t7)
/* 00E364 0040E364 8DE70010 */  lw          $a3, 0x10($t7)
/* 00E368 0040E368 0320F809 */  jalr        $t9
/* 00E36C 0040E36C 24A553F8 */   addiu      $a1, $a1, %lo(STR_100053F8)
/* 00E370 0040E370 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E374 0040E374 8FB80028 */  lw          $t8, 0x28($sp)
/* 00E378 0040E378 8F19002C */  lw          $t9, 0x2C($t8)
/* 00E37C 0040E37C 13200025 */  beqz        $t9, .L0040E414
/* 00E380 0040E380 00000000 */   nop
/* 00E384 0040E384 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E388 0040E388 8F85802C */  lw          $a1, %got(STR_10005414)($gp)
/* 00E38C 0040E38C 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00E390 0040E390 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E394 0040E394 24A55414 */  addiu       $a1, $a1, %lo(STR_10005414)
/* 00E398 0040E398 0320F809 */  jalr        $t9
/* 00E39C 0040E39C 8D660004 */   lw         $a2, 0x4($t3)
/* 00E3A0 0040E3A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E3A4 0040E3A4 8FA80028 */  lw          $t0, 0x28($sp)
/* 00E3A8 0040E3A8 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E3AC 0040E3AC 8F85802C */  lw          $a1, %got(STR_10005434)($gp)
/* 00E3B0 0040E3B0 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E3B4 0040E3B4 8D060004 */  lw          $a2, 0x4($t0)
/* 00E3B8 0040E3B8 8D070064 */  lw          $a3, 0x64($t0)
/* 00E3BC 0040E3BC 0320F809 */  jalr        $t9
/* 00E3C0 0040E3C0 24A55434 */   addiu      $a1, $a1, %lo(STR_10005434)
/* 00E3C4 0040E3C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E3C8 0040E3C8 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E3CC 0040E3CC 8F85802C */  lw          $a1, %got(STR_10005454)($gp)
/* 00E3D0 0040E3D0 8FA90028 */  lw          $t1, 0x28($sp)
/* 00E3D4 0040E3D4 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E3D8 0040E3D8 24A55454 */  addiu       $a1, $a1, %lo(STR_10005454)
/* 00E3DC 0040E3DC 0320F809 */  jalr        $t9
/* 00E3E0 0040E3E0 8D260004 */   lw         $a2, 0x4($t1)
/* 00E3E4 0040E3E4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E3E8 0040E3E8 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00E3EC 0040E3EC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E3F0 0040E3F0 8F85802C */  lw          $a1, %got(STR_10005470)($gp)
/* 00E3F4 0040E3F4 8D4C0064 */  lw          $t4, 0x64($t2)
/* 00E3F8 0040E3F8 8D4D002C */  lw          $t5, 0x2C($t2)
/* 00E3FC 0040E3FC 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E400 0040E400 8D460004 */  lw          $a2, 0x4($t2)
/* 00E404 0040E404 24A55470 */  addiu       $a1, $a1, %lo(STR_10005470)
/* 00E408 0040E408 0320F809 */  jalr        $t9
/* 00E40C 0040E40C 018D3821 */   addu       $a3, $t4, $t5
/* 00E410 0040E410 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040E414:
/* 00E414 0040E414 8FAE0028 */  lw          $t6, 0x28($sp)
/* 00E418 0040E418 8DCF0030 */  lw          $t7, 0x30($t6)
/* 00E41C 0040E41C 8DD80034 */  lw          $t8, 0x34($t6)
/* 00E420 0040E420 01F8C821 */  addu        $t9, $t7, $t8
/* 00E424 0040E424 13200027 */  beqz        $t9, .L0040E4C4
/* 00E428 0040E428 00000000 */   nop
/* 00E42C 0040E42C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E430 0040E430 8F85802C */  lw          $a1, %got(STR_1000548C)($gp)
/* 00E434 0040E434 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00E438 0040E438 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E43C 0040E43C 24A5548C */  addiu       $a1, $a1, %lo(STR_1000548C)
/* 00E440 0040E440 0320F809 */  jalr        $t9
/* 00E444 0040E444 8D660004 */   lw         $a2, 0x4($t3)
/* 00E448 0040E448 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E44C 0040E44C 8FA80028 */  lw          $t0, 0x28($sp)
/* 00E450 0040E450 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E454 0040E454 8F85802C */  lw          $a1, %got(STR_100054AC)($gp)
/* 00E458 0040E458 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E45C 0040E45C 8D060004 */  lw          $a2, 0x4($t0)
/* 00E460 0040E460 8D070068 */  lw          $a3, 0x68($t0)
/* 00E464 0040E464 0320F809 */  jalr        $t9
/* 00E468 0040E468 24A554AC */   addiu      $a1, $a1, %lo(STR_100054AC)
/* 00E46C 0040E46C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E470 0040E470 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E474 0040E474 8F85802C */  lw          $a1, %got(STR_100054CC)($gp)
/* 00E478 0040E478 8FA90028 */  lw          $t1, 0x28($sp)
/* 00E47C 0040E47C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E480 0040E480 24A554CC */  addiu       $a1, $a1, %lo(STR_100054CC)
/* 00E484 0040E484 0320F809 */  jalr        $t9
/* 00E488 0040E488 8D260004 */   lw         $a2, 0x4($t1)
/* 00E48C 0040E48C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E490 0040E490 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00E494 0040E494 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E498 0040E498 8F85802C */  lw          $a1, %got(STR_100054E8)($gp)
/* 00E49C 0040E49C 8D4C0068 */  lw          $t4, 0x68($t2)
/* 00E4A0 0040E4A0 8D4D0030 */  lw          $t5, 0x30($t2)
/* 00E4A4 0040E4A4 8D4F0034 */  lw          $t7, 0x34($t2)
/* 00E4A8 0040E4A8 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E4AC 0040E4AC 018D7021 */  addu        $t6, $t4, $t5
/* 00E4B0 0040E4B0 8D460004 */  lw          $a2, 0x4($t2)
/* 00E4B4 0040E4B4 24A554E8 */  addiu       $a1, $a1, %lo(STR_100054E8)
/* 00E4B8 0040E4B8 0320F809 */  jalr        $t9
/* 00E4BC 0040E4BC 01CF3821 */   addu       $a3, $t6, $t7
/* 00E4C0 0040E4C0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040E4C4:
/* 00E4C4 0040E4C4 8FB80028 */  lw          $t8, 0x28($sp)
/* 00E4C8 0040E4C8 8F19003C */  lw          $t9, 0x3C($t8)
/* 00E4CC 0040E4CC 8F0B0038 */  lw          $t3, 0x38($t8)
/* 00E4D0 0040E4D0 032B4021 */  addu        $t0, $t9, $t3
/* 00E4D4 0040E4D4 11000028 */  beqz        $t0, .L0040E578
/* 00E4D8 0040E4D8 00000000 */   nop
/* 00E4DC 0040E4DC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E4E0 0040E4E0 8F85802C */  lw          $a1, %got(STR_10005504)($gp)
/* 00E4E4 0040E4E4 8FA90028 */  lw          $t1, 0x28($sp)
/* 00E4E8 0040E4E8 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E4EC 0040E4EC 24A55504 */  addiu       $a1, $a1, %lo(STR_10005504)
/* 00E4F0 0040E4F0 0320F809 */  jalr        $t9
/* 00E4F4 0040E4F4 8D260004 */   lw         $a2, 0x4($t1)
/* 00E4F8 0040E4F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E4FC 0040E4FC 8FAC0028 */  lw          $t4, 0x28($sp)
/* 00E500 0040E500 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E504 0040E504 8F85802C */  lw          $a1, %got(STR_10005520)($gp)
/* 00E508 0040E508 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E50C 0040E50C 8D860004 */  lw          $a2, 0x4($t4)
/* 00E510 0040E510 8D870070 */  lw          $a3, 0x70($t4)
/* 00E514 0040E514 0320F809 */  jalr        $t9
/* 00E518 0040E518 24A55520 */   addiu      $a1, $a1, %lo(STR_10005520)
/* 00E51C 0040E51C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E520 0040E520 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E524 0040E524 8F85802C */  lw          $a1, %got(STR_10005540)($gp)
/* 00E528 0040E528 8FAD0028 */  lw          $t5, 0x28($sp)
/* 00E52C 0040E52C 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E530 0040E530 24A55540 */  addiu       $a1, $a1, %lo(STR_10005540)
/* 00E534 0040E534 0320F809 */  jalr        $t9
/* 00E538 0040E538 8DA60004 */   lw         $a2, 0x4($t5)
/* 00E53C 0040E53C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E540 0040E540 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00E544 0040E544 8F85802C */  lw          $a1, %got(STR_1000555C)($gp)
/* 00E548 0040E548 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E54C 0040E54C 8D4E0070 */  lw          $t6, 0x70($t2)
/* 00E550 0040E550 8D4F0038 */  lw          $t7, 0x38($t2)
/* 00E554 0040E554 8D59003C */  lw          $t9, 0x3C($t2)
/* 00E558 0040E558 8D460004 */  lw          $a2, 0x4($t2)
/* 00E55C 0040E55C 01CFC021 */  addu        $t8, $t6, $t7
/* 00E560 0040E560 03193821 */  addu        $a3, $t8, $t9
/* 00E564 0040E564 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E568 0040E568 24A5555C */  addiu       $a1, $a1, %lo(STR_1000555C)
/* 00E56C 0040E56C 0320F809 */  jalr        $t9
/* 00E570 0040E570 00000000 */   nop
/* 00E574 0040E574 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040E578:
/* 00E578 0040E578 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E57C 0040E57C 8F85802C */  lw          $a1, %got(STR_10005578)($gp)
/* 00E580 0040E580 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00E584 0040E584 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E588 0040E588 24A55578 */  addiu       $a1, $a1, %lo(STR_10005578)
/* 00E58C 0040E58C 0320F809 */  jalr        $t9
/* 00E590 0040E590 8D660004 */   lw         $a2, 0x4($t3)
/* 00E594 0040E594 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E598 0040E598 8FA80028 */  lw          $t0, 0x28($sp)
/* 00E59C 0040E59C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E5A0 0040E5A0 8F85802C */  lw          $a1, %got(STR_10005590)($gp)
/* 00E5A4 0040E5A4 8D090074 */  lw          $t1, 0x74($t0)
/* 00E5A8 0040E5A8 8D0C003C */  lw          $t4, 0x3C($t0)
/* 00E5AC 0040E5AC 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E5B0 0040E5B0 8D060004 */  lw          $a2, 0x4($t0)
/* 00E5B4 0040E5B4 24A55590 */  addiu       $a1, $a1, %lo(STR_10005590)
/* 00E5B8 0040E5B8 0320F809 */  jalr        $t9
/* 00E5BC 0040E5BC 012C3821 */   addu       $a3, $t1, $t4
/* 00E5C0 0040E5C0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040E5C4:
/* 00E5C4 0040E5C4 8FAD0028 */  lw          $t5, 0x28($sp)
/* 00E5C8 0040E5C8 8DAE0000 */  lw          $t6, 0x0($t5)
/* 00E5CC 0040E5CC 15C0FF23 */  bnez        $t6, .L0040E25C
/* 00E5D0 0040E5D0 AFAE0028 */   sw         $t6, 0x28($sp)
.L0040E5D4:
/* 00E5D4 0040E5D4 8F998084 */  lw          $t9, %call16(fclose)($gp)
/* 00E5D8 0040E5D8 8FA4002C */  lw          $a0, 0x2C($sp)
/* 00E5DC 0040E5DC 0320F809 */  jalr        $t9
/* 00E5E0 0040E5E0 00000000 */   nop
/* 00E5E4 0040E5E4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E5E8 0040E5E8 8F998060 */  lw          $t9, %call16(sysconf)($gp)
/* 00E5EC 0040E5EC 24040001 */  addiu       $a0, $zero, 0x1
/* 00E5F0 0040E5F0 0320F809 */  jalr        $t9
/* 00E5F4 0040E5F4 00000000 */   nop
/* 00E5F8 0040E5F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E5FC 0040E5FC 00408025 */  move        $s0, $v0
/* 00E600 0040E600 02002025 */  move        $a0, $s0
/* 00E604 0040E604 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 00E608 0040E608 0320F809 */  jalr        $t9
/* 00E60C 0040E60C 00000000 */   nop
/* 00E610 0040E610 AFA20024 */  sw          $v0, 0x24($sp)
/* 00E614 0040E614 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00E618 0040E618 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E61C 0040E61C 15E0000A */  bnez        $t7, .L0040E648
/* 00E620 0040E620 00000000 */   nop
/* 00E624 0040E624 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E628 0040E628 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00E62C 0040E62C 8F85802C */  lw          $a1, %got(STR_100055A8)($gp)
/* 00E630 0040E630 24840020 */  addiu       $a0, $a0, 0x20
/* 00E634 0040E634 0320F809 */  jalr        $t9
/* 00E638 0040E638 24A555A8 */   addiu      $a1, $a1, %lo(STR_100055A8)
/* 00E63C 0040E63C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E640 0040E640 1000003C */  b           .L0040E734
/* 00E644 0040E644 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E648:
/* 00E648 0040E648 8F98802C */  lw          $t8, %got(STR_100055B8)($gp)
/* 00E64C 0040E64C 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00E650 0040E650 271855B8 */  addiu       $t8, $t8, %lo(STR_100055B8)
/* 00E654 0040E654 27080024 */  addiu       $t0, $t8, 0x24
.L0040E658:
/* 00E658 0040E658 8B0B0000 */  lwl         $t3, 0x0($t8)
/* 00E65C 0040E65C 9B0B0003 */  lwr         $t3, 0x3($t8)
/* 00E660 0040E660 2718000C */  addiu       $t8, $t8, 0xC
/* 00E664 0040E664 254A000C */  addiu       $t2, $t2, 0xC
/* 00E668 0040E668 A94BFFF4 */  swl         $t3, -0xC($t2)
/* 00E66C 0040E66C B94BFFF7 */  swr         $t3, -0x9($t2)
/* 00E670 0040E670 8B19FFF8 */  lwl         $t9, -0x8($t8)
/* 00E674 0040E674 9B19FFFB */  lwr         $t9, -0x5($t8)
/* 00E678 0040E678 A959FFF8 */  swl         $t9, -0x8($t2)
/* 00E67C 0040E67C B959FFFB */  swr         $t9, -0x5($t2)
/* 00E680 0040E680 8B0BFFFC */  lwl         $t3, -0x4($t8)
/* 00E684 0040E684 9B0BFFFF */  lwr         $t3, -0x1($t8)
/* 00E688 0040E688 A94BFFFC */  swl         $t3, -0x4($t2)
/* 00E68C 0040E68C 1708FFF2 */  bne         $t8, $t0, .L0040E658
/* 00E690 0040E690 B94BFFFF */   swr        $t3, -0x1($t2)
/* 00E694 0040E694 8B0B0000 */  lwl         $t3, 0x0($t8)
/* 00E698 0040E698 9B0B0003 */  lwr         $t3, 0x3($t8)
/* 00E69C 0040E69C A94B0000 */  swl         $t3, 0x0($t2)
/* 00E6A0 0040E6A0 B94B0003 */  swr         $t3, 0x3($t2)
/* 00E6A4 0040E6A4 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00E6A8 0040E6A8 8FA40024 */  lw          $a0, 0x24($sp)
/* 00E6AC 0040E6AC 8FA50034 */  lw          $a1, 0x34($sp)
/* 00E6B0 0040E6B0 0320F809 */  jalr        $t9
/* 00E6B4 0040E6B4 00000000 */   nop
/* 00E6B8 0040E6B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E6BC 0040E6BC 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00E6C0 0040E6C0 8F85802C */  lw          $a1, %got(STR_100055E0)($gp)
/* 00E6C4 0040E6C4 8FA40024 */  lw          $a0, 0x24($sp)
/* 00E6C8 0040E6C8 0320F809 */  jalr        $t9
/* 00E6CC 0040E6CC 24A555E0 */   addiu      $a1, $a1, %lo(STR_100055E0)
/* 00E6D0 0040E6D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E6D4 0040E6D4 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00E6D8 0040E6D8 8FA40024 */  lw          $a0, 0x24($sp)
/* 00E6DC 0040E6DC 8FA50030 */  lw          $a1, 0x30($sp)
/* 00E6E0 0040E6E0 0320F809 */  jalr        $t9
/* 00E6E4 0040E6E4 00000000 */   nop
/* 00E6E8 0040E6E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E6EC 0040E6EC 8F898660 */  lw          $t1, %got(debug)($gp)
/* 00E6F0 0040E6F0 8D290000 */  lw          $t1, 0x0($t1)
/* 00E6F4 0040E6F4 11200007 */  beqz        $t1, .L0040E714
/* 00E6F8 0040E6F8 00000000 */   nop
/* 00E6FC 0040E6FC 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00E700 0040E700 8F84802C */  lw          $a0, %got(STR_100055E4)($gp)
/* 00E704 0040E704 8FA50024 */  lw          $a1, 0x24($sp)
/* 00E708 0040E708 0320F809 */  jalr        $t9
/* 00E70C 0040E70C 248455E4 */   addiu      $a0, $a0, %lo(STR_100055E4)
/* 00E710 0040E710 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040E714:
/* 00E714 0040E714 8F99818C */  lw          $t9, %call16(execCommand)($gp)
/* 00E718 0040E718 8FA40024 */  lw          $a0, 0x24($sp)
/* 00E71C 0040E71C 0320F809 */  jalr        $t9
/* 00E720 0040E720 00000000 */   nop
/* 00E724 0040E724 10000003 */  b           .L0040E734
/* 00E728 0040E728 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00E72C 0040E72C 10000001 */  b           .L0040E734
/* 00E730 0040E730 00000000 */   nop
.L0040E734:
/* 00E734 0040E734 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00E738 0040E738 8FB00014 */  lw          $s0, 0x14($sp)
/* 00E73C 0040E73C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00E740 0040E740 03E00008 */  jr          $ra
/* 00E744 0040E744 00000000 */   nop
