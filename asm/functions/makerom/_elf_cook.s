glabel _elf_cook # 177
/* 0263E0 004263E0 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0263E4 004263E4 279CC980 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEC980
/* 0263E8 004263E8 0399E021 */  addu        $gp, $gp, $t9
/* 0263EC 004263EC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0263F0 004263F0 AFA40030 */  sw          $a0, 0x30($sp)
/* 0263F4 004263F4 8FAE0030 */  lw          $t6, 0x30($sp)
/* 0263F8 004263F8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0263FC 004263FC AFBC0020 */  sw          $gp, 0x20($sp)
/* 026400 00426400 AFB1001C */  sw          $s1, 0x1C($sp)
/* 026404 00426404 AFB00018 */  sw          $s0, 0x18($sp)
/* 026408 00426408 8DCF000C */  lw          $t7, 0xC($t6)
/* 02640C 0042640C 24010001 */  addiu       $at, $zero, 0x1
/* 026410 00426410 24100001 */  addiu       $s0, $zero, 0x1
/* 026414 00426414 11E10009 */  beq         $t7, $at, .L0042643C
/* 026418 00426418 00000000 */   nop
/* 02641C 0042641C 8DD80088 */  lw          $t8, 0x88($t6)
/* 026420 00426420 33190040 */  andi        $t9, $t8, 0x40
/* 026424 00426424 13200005 */  beqz        $t9, .L0042643C
/* 026428 00426428 00000000 */   nop
/* 02642C 0042642C 8DC8004C */  lw          $t0, 0x4C($t6)
/* 026430 00426430 24010003 */  addiu       $at, $zero, 0x3
/* 026434 00426434 11010003 */  beq         $t0, $at, .L00426444
/* 026438 00426438 00000000 */   nop
.L0042643C:
/* 02643C 0042643C 1000007F */  b           .L0042663C
/* 026440 00426440 00001025 */   move       $v0, $zero
.L00426444:
/* 026444 00426444 8FA90030 */  lw          $t1, 0x30($sp)
/* 026448 00426448 24010002 */  addiu       $at, $zero, 0x2
/* 02644C 0042644C 8D2A0048 */  lw          $t2, 0x48($t1)
/* 026450 00426450 15410003 */  bne         $t2, $at, .L00426460
/* 026454 00426454 00000000 */   nop
/* 026458 00426458 1000000D */  b           .L00426490
/* 02645C 0042645C 24110001 */   addiu      $s1, $zero, 0x1
.L00426460:
/* 026460 00426460 8FAB0030 */  lw          $t3, 0x30($sp)
/* 026464 00426464 24010001 */  addiu       $at, $zero, 0x1
/* 026468 00426468 8D6C0048 */  lw          $t4, 0x48($t3)
/* 02646C 0042646C 15810003 */  bne         $t4, $at, .L0042647C
/* 026470 00426470 00000000 */   nop
/* 026474 00426474 10000006 */  b           .L00426490
/* 026478 00426478 00008825 */   move       $s1, $zero
.L0042647C:
/* 02647C 0042647C 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 026480 00426480 240D0505 */  addiu       $t5, $zero, 0x505
/* 026484 00426484 2402FFFF */  addiu       $v0, $zero, -0x1
/* 026488 00426488 1000006C */  b           .L0042663C
/* 02648C 0042648C AC2D0000 */   sw         $t5, 0x0($at)
.L00426490:
/* 026490 00426490 8FAF0030 */  lw          $t7, 0x30($sp)
/* 026494 00426494 8DF8000C */  lw          $t8, 0xC($t7)
/* 026498 00426498 1700000B */  bnez        $t8, .L004264C8
/* 02649C 0042649C 00000000 */   nop
/* 0264A0 004264A0 8F99801C */  lw          $t9, %got(slide)($gp)
/* 0264A4 004264A4 01E02025 */  move        $a0, $t7
/* 0264A8 004264A8 02202825 */  move        $a1, $s1
/* 0264AC 004264AC 27397A00 */  addiu       $t9, $t9, %lo(slide)
/* 0264B0 004264B0 0320F809 */  jalr        $t9
/* 0264B4 004264B4 00000000 */   nop
/* 0264B8 004264B8 10400003 */  beqz        $v0, .L004264C8
/* 0264BC 004264BC 8FBC0020 */   lw         $gp, 0x20($sp)
/* 0264C0 004264C0 1000005E */  b           .L0042663C
/* 0264C4 004264C4 2402FFFF */   addiu      $v0, $zero, -0x1
.L004264C8:
/* 0264C8 004264C8 8FB90030 */  lw          $t9, 0x30($sp)
/* 0264CC 004264CC 24010002 */  addiu       $at, $zero, 0x2
/* 0264D0 004264D0 8F2E000C */  lw          $t6, 0xC($t9)
/* 0264D4 004264D4 15C10002 */  bne         $t6, $at, .L004264E0
/* 0264D8 004264D8 00000000 */   nop
/* 0264DC 004264DC 00008025 */  move        $s0, $zero
.L004264E0:
/* 0264E0 004264E0 1220001D */  beqz        $s1, .L00426558
/* 0264E4 004264E4 00000000 */   nop
/* 0264E8 004264E8 8F99801C */  lw          $t9, %got(ehdr64)($gp)
/* 0264EC 004264EC 8FA40030 */  lw          $a0, 0x30($sp)
/* 0264F0 004264F0 02002825 */  move        $a1, $s0
/* 0264F4 004264F4 27396D48 */  addiu       $t9, $t9, %lo(ehdr64)
/* 0264F8 004264F8 0320F809 */  jalr        $t9
/* 0264FC 004264FC 00000000 */   nop
/* 026500 00426500 10400003 */  beqz        $v0, .L00426510
/* 026504 00426504 8FBC0020 */   lw         $gp, 0x20($sp)
/* 026508 00426508 1000004C */  b           .L0042663C
/* 02650C 0042650C 2402FFFF */   addiu      $v0, $zero, -0x1
.L00426510:
/* 026510 00426510 8F99801C */  lw          $t9, %got(phdr64)($gp)
/* 026514 00426514 8FA40030 */  lw          $a0, 0x30($sp)
/* 026518 00426518 02002825 */  move        $a1, $s0
/* 02651C 0042651C 27397194 */  addiu       $t9, $t9, %lo(phdr64)
/* 026520 00426520 0320F809 */  jalr        $t9
/* 026524 00426524 00000000 */   nop
/* 026528 00426528 14400035 */  bnez        $v0, .L00426600
/* 02652C 0042652C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 026530 00426530 8F99801C */  lw          $t9, %got(shdr64)($gp)
/* 026534 00426534 8FA40030 */  lw          $a0, 0x30($sp)
/* 026538 00426538 02002825 */  move        $a1, $s0
/* 02653C 0042653C 27397710 */  addiu       $t9, $t9, %lo(shdr64)
/* 026540 00426540 0320F809 */  jalr        $t9
/* 026544 00426544 00000000 */   nop
/* 026548 00426548 1040001D */  beqz        $v0, .L004265C0
/* 02654C 0042654C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 026550 00426550 1000001D */  b           .L004265C8
/* 026554 00426554 00000000 */   nop
.L00426558:
/* 026558 00426558 8F99801C */  lw          $t9, %got(ehdr32)($gp)
/* 02655C 0042655C 8FA40030 */  lw          $a0, 0x30($sp)
/* 026560 00426560 02002825 */  move        $a1, $s0
/* 026564 00426564 27396B74 */  addiu       $t9, $t9, %lo(ehdr32)
/* 026568 00426568 0320F809 */  jalr        $t9
/* 02656C 0042656C 00000000 */   nop
/* 026570 00426570 10400003 */  beqz        $v0, .L00426580
/* 026574 00426574 8FBC0020 */   lw         $gp, 0x20($sp)
/* 026578 00426578 10000030 */  b           .L0042663C
/* 02657C 0042657C 2402FFFF */   addiu      $v0, $zero, -0x1
.L00426580:
/* 026580 00426580 8F99801C */  lw          $t9, %got(phdr32)($gp)
/* 026584 00426584 8FA40030 */  lw          $a0, 0x30($sp)
/* 026588 00426588 02002825 */  move        $a1, $s0
/* 02658C 0042658C 27396F1C */  addiu       $t9, $t9, %lo(phdr32)
/* 026590 00426590 0320F809 */  jalr        $t9
/* 026594 00426594 00000000 */   nop
/* 026598 00426598 14400019 */  bnez        $v0, .L00426600
/* 02659C 0042659C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 0265A0 004265A0 8F99801C */  lw          $t9, %got(shdr32)($gp)
/* 0265A4 004265A4 8FA40030 */  lw          $a0, 0x30($sp)
/* 0265A8 004265A8 02002825 */  move        $a1, $s0
/* 0265AC 004265AC 27397498 */  addiu       $t9, $t9, %lo(shdr32)
/* 0265B0 004265B0 0320F809 */  jalr        $t9
/* 0265B4 004265B4 00000000 */   nop
/* 0265B8 004265B8 14400003 */  bnez        $v0, .L004265C8
/* 0265BC 004265BC 8FBC0020 */   lw         $gp, 0x20($sp)
.L004265C0:
/* 0265C0 004265C0 1000001E */  b           .L0042663C
/* 0265C4 004265C4 00001025 */   move       $v0, $zero
.L004265C8:
/* 0265C8 004265C8 8FA80030 */  lw          $t0, 0x30($sp)
/* 0265CC 004265CC 8D090088 */  lw          $t1, 0x88($t0)
/* 0265D0 004265D0 312A0004 */  andi        $t2, $t1, 0x4
/* 0265D4 004265D4 11400008 */  beqz        $t2, .L004265F8
/* 0265D8 004265D8 2401FFFB */   addiu      $at, $zero, -0x5
/* 0265DC 004265DC 01215824 */  and         $t3, $t1, $at
/* 0265E0 004265E0 AD0B0088 */  sw          $t3, 0x88($t0)
/* 0265E4 004265E4 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 0265E8 004265E8 8FAC0030 */  lw          $t4, 0x30($sp)
/* 0265EC 004265EC 0320F809 */  jalr        $t9
/* 0265F0 004265F0 8D840054 */   lw         $a0, 0x54($t4)
/* 0265F4 004265F4 8FBC0020 */  lw          $gp, 0x20($sp)
.L004265F8:
/* 0265F8 004265F8 8FAD0030 */  lw          $t5, 0x30($sp)
/* 0265FC 004265FC ADA00054 */  sw          $zero, 0x54($t5)
.L00426600:
/* 026600 00426600 8FB80030 */  lw          $t8, 0x30($sp)
/* 026604 00426604 8F0F0088 */  lw          $t7, 0x88($t8)
/* 026608 00426608 31F90002 */  andi        $t9, $t7, 0x2
/* 02660C 0042660C 13200008 */  beqz        $t9, .L00426630
/* 026610 00426610 2401FFFD */   addiu      $at, $zero, -0x3
/* 026614 00426614 01E17024 */  and         $t6, $t7, $at
/* 026618 00426618 AF0E0088 */  sw          $t6, 0x88($t8)
/* 02661C 0042661C 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 026620 00426620 8FAA0030 */  lw          $t2, 0x30($sp)
/* 026624 00426624 0320F809 */  jalr        $t9
/* 026628 00426628 8D440050 */   lw         $a0, 0x50($t2)
/* 02662C 0042662C 8FBC0020 */  lw          $gp, 0x20($sp)
.L00426630:
/* 026630 00426630 8FA90030 */  lw          $t1, 0x30($sp)
/* 026634 00426634 2402FFFF */  addiu       $v0, $zero, -0x1
/* 026638 00426638 AD200050 */  sw          $zero, 0x50($t1)
.L0042663C:
/* 02663C 0042663C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 026640 00426640 8FB00018 */  lw          $s0, 0x18($sp)
/* 026644 00426644 8FB1001C */  lw          $s1, 0x1C($sp)
/* 026648 00426648 03E00008 */  jr          $ra
/* 02664C 0042664C 27BD0030 */   addiu      $sp, $sp, 0x30