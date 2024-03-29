.section .rodata
glabel STR_10006930
/* 046930 10006930 */ .asciz "ldptr = allocldptr()"
                      .balign 4

glabel STR_10006948
/* 046948 10006948 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10006950
/* 046950 10006950 */ .asciz "LIOPTR(ldptr) = (FILE *)calloc(1,sizeof(FILE))"
                      .balign 4

glabel STR_10006980
/* 046980 10006980 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10006988
/* 046988 10006988 */ .asciz "LPOBJ(ldptr) = (pOBJ)calloc(1,cbOBJ)"
                      .balign 4

glabel STR_100069B0
/* 0469B0 100069B0 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_100069B8
/* 0469B8 100069B8 */ .asciz "!<arch>\n"
                      .balign 4


.section .text
glabel ldopen # 205
/* 029314 00429314 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 029318 00429318 279C9A4C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE9A4C
/* 02931C 0042931C 0399E021 */  addu        $gp, $gp, $t9
/* 029320 00429320 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 029324 00429324 8F99824C */  lw          $t9, %call16(vldldptr)($gp)
/* 029328 00429328 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02932C 0042932C AFB00014 */  sw          $s0, 0x14($sp)
/* 029330 00429330 AFA40040 */  sw          $a0, 0x40($sp)
/* 029334 00429334 00A08025 */  move        $s0, $a1
/* 029338 00429338 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02933C 0042933C 0320F809 */  jalr        $t9
/* 029340 00429340 00A02025 */   move       $a0, $a1
/* 029344 00429344 14400030 */  bnez        $v0, .L00429408
/* 029348 00429348 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02934C 0042934C 8F99823C */  lw          $t9, %call16(allocldptr)($gp)
/* 029350 00429350 0320F809 */  jalr        $t9
/* 029354 00429354 00000000 */   nop
/* 029358 00429358 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02935C 0042935C 14400009 */  bnez        $v0, .L00429384
/* 029360 00429360 00408025 */   move       $s0, $v0
/* 029364 00429364 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 029368 00429368 8F84802C */  lw          $a0, %got(STR_10006930)($gp)
/* 02936C 0042936C 8F85802C */  lw          $a1, %got(STR_10006948)($gp)
/* 029370 00429370 24060083 */  addiu       $a2, $zero, 0x83
/* 029374 00429374 24846930 */  addiu       $a0, $a0, %lo(STR_10006930)
/* 029378 00429378 0320F809 */  jalr        $t9
/* 02937C 0042937C 24A56948 */   addiu      $a1, $a1, %lo(STR_10006948)
/* 029380 00429380 8FBC0018 */  lw          $gp, 0x18($sp)
.L00429384:
/* 029384 00429384 8F9980D8 */  lw          $t9, %call16(calloc)($gp)
/* 029388 00429388 24040001 */  addiu       $a0, $zero, 0x1
/* 02938C 0042938C 24050010 */  addiu       $a1, $zero, 0x10
/* 029390 00429390 0320F809 */  jalr        $t9
/* 029394 00429394 00000000 */   nop
/* 029398 00429398 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02939C 0042939C 14400009 */  bnez        $v0, .L004293C4
/* 0293A0 004293A0 AE020004 */   sw         $v0, 0x4($s0)
/* 0293A4 004293A4 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 0293A8 004293A8 8F84802C */  lw          $a0, %got(STR_10006950)($gp)
/* 0293AC 004293AC 8F85802C */  lw          $a1, %got(STR_10006980)($gp)
/* 0293B0 004293B0 24060084 */  addiu       $a2, $zero, 0x84
/* 0293B4 004293B4 24846950 */  addiu       $a0, $a0, %lo(STR_10006950)
/* 0293B8 004293B8 0320F809 */  jalr        $t9
/* 0293BC 004293BC 24A56980 */   addiu      $a1, $a1, %lo(STR_10006980)
/* 0293C0 004293C0 8FBC0018 */  lw          $gp, 0x18($sp)
.L004293C4:
/* 0293C4 004293C4 8F9980D8 */  lw          $t9, %call16(calloc)($gp)
/* 0293C8 004293C8 24040001 */  addiu       $a0, $zero, 0x1
/* 0293CC 004293CC 240501DC */  addiu       $a1, $zero, 0x1DC
/* 0293D0 004293D0 0320F809 */  jalr        $t9
/* 0293D4 004293D4 00000000 */   nop
/* 0293D8 004293D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0293DC 004293DC 14400012 */  bnez        $v0, .L00429428
/* 0293E0 004293E0 AE02002C */   sw         $v0, 0x2C($s0)
/* 0293E4 004293E4 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 0293E8 004293E8 8F84802C */  lw          $a0, %got(STR_10006988)($gp)
/* 0293EC 004293EC 8F85802C */  lw          $a1, %got(STR_100069B0)($gp)
/* 0293F0 004293F0 24060085 */  addiu       $a2, $zero, 0x85
/* 0293F4 004293F4 24846988 */  addiu       $a0, $a0, %lo(STR_10006988)
/* 0293F8 004293F8 0320F809 */  jalr        $t9
/* 0293FC 004293FC 24A569B0 */   addiu      $a1, $a1, %lo(STR_100069B0)
/* 029400 00429400 10000009 */  b           .L00429428
/* 029404 00429404 8FBC0018 */   lw         $gp, 0x18($sp)
.L00429408:
/* 029408 00429408 8F998254 */  lw          $t9, %call16(ldfseek)($gp)
/* 02940C 0042940C 02002025 */  move        $a0, $s0
/* 029410 00429410 00002825 */  move        $a1, $zero
/* 029414 00429414 0320F809 */  jalr        $t9
/* 029418 00429418 00003025 */   move       $a2, $zero
/* 02941C 0042941C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029420 00429420 1000005D */  b           .L00429598
/* 029424 00429424 02001025 */   move       $v0, $s0
.L00429428:
/* 029428 00429428 8F9980B8 */  lw          $t9, %call16(open)($gp)
/* 02942C 0042942C 8FA40040 */  lw          $a0, 0x40($sp)
/* 029430 00429430 00002825 */  move        $a1, $zero
/* 029434 00429434 0320F809 */  jalr        $t9
/* 029438 00429438 00000000 */   nop
/* 02943C 0042943C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029440 00429440 04410003 */  bgez        $v0, .L00429450
/* 029444 00429444 00403825 */   move       $a3, $v0
/* 029448 00429448 10000053 */  b           .L00429598
/* 02944C 0042944C 00001025 */   move       $v0, $zero
.L00429450:
/* 029450 00429450 8F9980C8 */  lw          $t9, %call16(read)($gp)
/* 029454 00429454 00E02025 */  move        $a0, $a3
/* 029458 00429458 27A50030 */  addiu       $a1, $sp, 0x30
/* 02945C 0042945C 24060008 */  addiu       $a2, $zero, 0x8
/* 029460 00429460 0320F809 */  jalr        $t9
/* 029464 00429464 AFA70038 */   sw         $a3, 0x38($sp)
/* 029468 00429468 24010008 */  addiu       $at, $zero, 0x8
/* 02946C 0042946C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029470 00429470 10410008 */  beq         $v0, $at, .L00429494
/* 029474 00429474 8FA70038 */   lw         $a3, 0x38($sp)
/* 029478 00429478 8F9980C4 */  lw          $t9, %call16(close)($gp)
/* 02947C 0042947C 00E02025 */  move        $a0, $a3
/* 029480 00429480 0320F809 */  jalr        $t9
/* 029484 00429484 00000000 */   nop
/* 029488 00429488 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02948C 0042948C 10000042 */  b           .L00429598
/* 029490 00429490 00001025 */   move       $v0, $zero
.L00429494:
/* 029494 00429494 8F99814C */  lw          $t9, %call16(strncmp)($gp)
/* 029498 00429498 8F85802C */  lw          $a1, %got(STR_100069B8)($gp)
/* 02949C 0042949C 27A40030 */  addiu       $a0, $sp, 0x30
/* 0294A0 004294A0 24060008 */  addiu       $a2, $zero, 0x8
/* 0294A4 004294A4 AFA70038 */  sw          $a3, 0x38($sp)
/* 0294A8 004294A8 0320F809 */  jalr        $t9
/* 0294AC 004294AC 24A569B8 */   addiu      $a1, $a1, %lo(STR_100069B8)
/* 0294B0 004294B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0294B4 004294B4 1440000C */  bnez        $v0, .L004294E8
/* 0294B8 004294B8 8FA70038 */   lw         $a3, 0x38($sp)
/* 0294BC 004294BC 8F998020 */  lw          $t9, %got(nextfile)($gp)
/* 0294C0 004294C0 340EFF65 */  ori         $t6, $zero, 0xFF65
/* 0294C4 004294C4 240F0008 */  addiu       $t7, $zero, 0x8
/* 0294C8 004294C8 273995E4 */  addiu       $t9, $t9, %lo(nextfile)
/* 0294CC 004294CC A60E0028 */  sh          $t6, 0x28($s0)
/* 0294D0 004294D0 AE070030 */  sw          $a3, 0x30($s0)
/* 0294D4 004294D4 AE0F0034 */  sw          $t7, 0x34($s0)
/* 0294D8 004294D8 0320F809 */  jalr        $t9
/* 0294DC 004294DC 02002025 */   move       $a0, $s0
/* 0294E0 004294E0 1000002D */  b           .L00429598
/* 0294E4 004294E4 8FBC0018 */   lw         $gp, 0x18($sp)
.L004294E8:
/* 0294E8 004294E8 8F9980C4 */  lw          $t9, %call16(close)($gp)
/* 0294EC 004294EC 00E02025 */  move        $a0, $a3
/* 0294F0 004294F0 0320F809 */  jalr        $t9
/* 0294F4 004294F4 00000000 */   nop
/* 0294F8 004294F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0294FC 004294FC 2418FFFF */  addiu       $t8, $zero, -0x1
/* 029500 00429500 AE180030 */  sw          $t8, 0x30($s0)
/* 029504 00429504 8F998270 */  lw          $t9, %call16(obj_open)($gp)
/* 029508 00429508 8FA50040 */  lw          $a1, 0x40($sp)
/* 02950C 0042950C 8E04002C */  lw          $a0, 0x2C($s0)
/* 029510 00429510 0320F809 */  jalr        $t9
/* 029514 00429514 24060001 */   addiu      $a2, $zero, 0x1
/* 029518 00429518 8E04002C */  lw          $a0, 0x2C($s0)
/* 02951C 0042951C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029520 00429520 10440017 */  beq         $v0, $a0, .L00429580
/* 029524 00429524 00000000 */   nop
/* 029528 00429528 8E050004 */  lw          $a1, 0x4($s0)
/* 02952C 0042952C 10A00007 */  beqz        $a1, .L0042954C
/* 029530 00429530 00000000 */   nop
/* 029534 00429534 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 029538 00429538 00A02025 */  move        $a0, $a1
/* 02953C 0042953C 0320F809 */  jalr        $t9
/* 029540 00429540 00000000 */   nop
/* 029544 00429544 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029548 00429548 8E04002C */  lw          $a0, 0x2C($s0)
.L0042954C:
/* 02954C 0042954C 10800005 */  beqz        $a0, .L00429564
/* 029550 00429550 00000000 */   nop
/* 029554 00429554 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 029558 00429558 0320F809 */  jalr        $t9
/* 02955C 0042955C 00000000 */   nop
/* 029560 00429560 8FBC0018 */  lw          $gp, 0x18($sp)
.L00429564:
/* 029564 00429564 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 029568 00429568 02002025 */  move        $a0, $s0
/* 02956C 0042956C 0320F809 */  jalr        $t9
/* 029570 00429570 00000000 */   nop
/* 029574 00429574 8FBC0018 */  lw          $gp, 0x18($sp)
/* 029578 00429578 10000007 */  b           .L00429598
/* 02957C 0042957C 00001025 */   move       $v0, $zero
.L00429580:
/* 029580 00429580 8F998020 */  lw          $t9, %got(init_ldfile)($gp)
/* 029584 00429584 02002025 */  move        $a0, $s0
/* 029588 00429588 273998BC */  addiu       $t9, $t9, %lo(init_ldfile)
/* 02958C 0042958C 0320F809 */  jalr        $t9
/* 029590 00429590 00000000 */   nop
/* 029594 00429594 8FBC0018 */  lw          $gp, 0x18($sp)
.L00429598:
/* 029598 00429598 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02959C 0042959C 8FB00014 */  lw          $s0, 0x14($sp)
/* 0295A0 004295A0 27BD0040 */  addiu       $sp, $sp, 0x40
/* 0295A4 004295A4 03E00008 */  jr          $ra
/* 0295A8 004295A8 00000000 */   nop
