.section .late_rodata
glabel jtbl_1000679C
/* 04679C 1000679C F040F804 */ .gpword .L00422564
/* 0467A0 100067A0 F040F948 */ .gpword .L004226A8
/* 0467A4 100067A4 F040F8A8 */ .gpword .L00422608
/* 0467A8 100067A8 F040F7F0 */ .gpword .L00422550
/* 0467AC 100067AC F040F7F0 */ .gpword .L00422550
/* 0467B0 100067B0 F040F7F0 */ .gpword .L00422550
/* 0467B4 100067B4 F040F7F0 */ .gpword .L00422550
/* 0467B8 100067B8 F040F938 */ .gpword .L00422698
/* 0467BC 100067BC F040F958 */ .gpword .L004226B8
/* 0467C0 100067C0 F040F80C */ .gpword .L0042256C
/* 0467C4 100067C4 00000000 */ .word 0x00000000
/* 0467C8 100067C8 00000000 */ .word 0x00000000
/* 0467CC 100067CC 00000000 */ .word 0x00000000


.section .text
glabel elf_begin # 115
/* 0224D4 004224D4 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0224D8 004224D8 279C088C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF088C
/* 0224DC 004224DC 0399E021 */  addu        $gp, $gp, $t9
/* 0224E0 004224E0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 0224E4 004224E4 8F8E86F4 */  lw          $t6, %got(_elf_work)($gp)
/* 0224E8 004224E8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0224EC 004224EC AFBC0020 */  sw          $gp, 0x20($sp)
/* 0224F0 004224F0 8DCE0000 */  lw          $t6, 0x0($t6)
/* 0224F4 004224F4 AFA40040 */  sw          $a0, 0x40($sp)
/* 0224F8 004224F8 AFA50044 */  sw          $a1, 0x44($sp)
/* 0224FC 004224FC AFA60048 */  sw          $a2, 0x48($sp)
/* 022500 00422500 AFB2001C */  sw          $s2, 0x1C($sp)
/* 022504 00422504 AFB10018 */  sw          $s1, 0x18($sp)
/* 022508 00422508 AFB00014 */  sw          $s0, 0x14($sp)
/* 02250C 0042250C 15C00006 */  bnez        $t6, .L00422528
/* 022510 00422510 AFA00030 */   sw         $zero, 0x30($sp)
/* 022514 00422514 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 022518 00422518 240F0602 */  addiu       $t7, $zero, 0x602
/* 02251C 0042251C 00001025 */  move        $v0, $zero
/* 022520 00422520 10000114 */  b           .L00422974
/* 022524 00422524 AC2F0000 */   sw         $t7, 0x0($at)
.L00422528:
/* 022528 00422528 8FB80044 */  lw          $t8, 0x44($sp)
/* 02252C 0042252C 2F01000A */  sltiu       $at, $t8, 0xA
/* 022530 00422530 10200007 */  beqz        $at, .L00422550
/* 022534 00422534 8F81802C */   lw         $at, %got(jtbl_1000679C)($gp)
/* 022538 00422538 0018C080 */  sll         $t8, $t8, 2
/* 02253C 0042253C 00380821 */  addu        $at, $at, $t8
/* 022540 00422540 8C38679C */  lw          $t8, %lo(jtbl_1000679C)($at)
/* 022544 00422544 031CC021 */  addu        $t8, $t8, $gp
/* 022548 00422548 03000008 */  jr          $t8
/* 02254C 0042254C 00000000 */   nop
.L00422550:
/* 022550 00422550 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 022554 00422554 24190504 */  addiu       $t9, $zero, 0x504
/* 022558 00422558 00001025 */  move        $v0, $zero
/* 02255C 0042255C 10000105 */  b           .L00422974
/* 022560 00422560 AC390000 */   sw         $t9, 0x0($at)
.L00422564:
/* 022564 00422564 10000103 */  b           .L00422974
/* 022568 00422568 00001025 */   move       $v0, $zero
.L0042256C:
/* 02256C 0042256C 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 022570 00422570 2404009C */  addiu       $a0, $zero, 0x9C
/* 022574 00422574 0320F809 */  jalr        $t9
/* 022578 00422578 00000000 */   nop
/* 02257C 0042257C 00408025 */  move        $s0, $v0
/* 022580 00422580 16000006 */  bnez        $s0, .L0042259C
/* 022584 00422584 8FBC0020 */   lw         $gp, 0x20($sp)
/* 022588 00422588 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 02258C 0042258C 2408040D */  addiu       $t0, $zero, 0x40D
/* 022590 00422590 00001025 */  move        $v0, $zero
/* 022594 00422594 100000F7 */  b           .L00422974
/* 022598 00422598 AC280000 */   sw         $t0, 0x0($at)
.L0042259C:
/* 02259C 0042259C 8F898030 */  lw          $t1, %got(D_1000A8D0)($gp)
/* 0225A0 004225A0 02006025 */  move        $t4, $s0
/* 0225A4 004225A4 2529A8D0 */  addiu       $t1, $t1, %lo(D_1000A8D0)
/* 0225A8 004225A8 252D009C */  addiu       $t5, $t1, 0x9C
.L004225AC:
/* 0225AC 004225AC 8D2B0000 */  lw          $t3, 0x0($t1)
/* 0225B0 004225B0 2529000C */  addiu       $t1, $t1, 0xC
/* 0225B4 004225B4 258C000C */  addiu       $t4, $t4, 0xC
/* 0225B8 004225B8 AD8BFFF4 */  sw          $t3, -0xC($t4)
/* 0225BC 004225BC 8D2AFFF8 */  lw          $t2, -0x8($t1)
/* 0225C0 004225C0 AD8AFFF8 */  sw          $t2, -0x8($t4)
/* 0225C4 004225C4 8D2BFFFC */  lw          $t3, -0x4($t1)
/* 0225C8 004225C8 152DFFF8 */  bne         $t1, $t5, .L004225AC
/* 0225CC 004225CC AD8BFFFC */   sw         $t3, -0x4($t4)
/* 0225D0 004225D0 8E190088 */  lw          $t9, 0x88($s0)
/* 0225D4 004225D4 240EFFFF */  addiu       $t6, $zero, -0x1
/* 0225D8 004225D8 AE0E0098 */  sw          $t6, 0x98($s0)
/* 0225DC 004225DC 8FAF0040 */  lw          $t7, 0x40($sp)
/* 0225E0 004225E0 37280080 */  ori         $t0, $t9, 0x80
/* 0225E4 004225E4 AE080088 */  sw          $t0, 0x88($s0)
/* 0225E8 004225E8 8E0D0088 */  lw          $t5, 0x88($s0)
/* 0225EC 004225EC 24180001 */  addiu       $t8, $zero, 0x1
/* 0225F0 004225F0 AE180004 */  sw          $t8, 0x4($s0)
/* 0225F4 004225F4 35A90200 */  ori         $t1, $t5, 0x200
/* 0225F8 004225F8 AE090088 */  sw          $t1, 0x88($s0)
/* 0225FC 004225FC 02001025 */  move        $v0, $s0
/* 022600 00422600 100000DC */  b           .L00422974
/* 022604 00422604 AE0F0008 */   sw         $t7, 0x8($s0)
.L00422608:
/* 022608 00422608 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 02260C 0042260C 2404009C */  addiu       $a0, $zero, 0x9C
/* 022610 00422610 0320F809 */  jalr        $t9
/* 022614 00422614 00000000 */   nop
/* 022618 00422618 00408025 */  move        $s0, $v0
/* 02261C 0042261C 16000006 */  bnez        $s0, .L00422638
/* 022620 00422620 8FBC0020 */   lw         $gp, 0x20($sp)
/* 022624 00422624 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 022628 00422628 240C040D */  addiu       $t4, $zero, 0x40D
/* 02262C 0042262C 00001025 */  move        $v0, $zero
/* 022630 00422630 100000D0 */  b           .L00422974
/* 022634 00422634 AC2C0000 */   sw         $t4, 0x0($at)
.L00422638:
/* 022638 00422638 8F8A8030 */  lw          $t2, %got(D_1000A8D0)($gp)
/* 02263C 0042263C 02007825 */  move        $t7, $s0
/* 022640 00422640 254AA8D0 */  addiu       $t2, $t2, %lo(D_1000A8D0)
/* 022644 00422644 2558009C */  addiu       $t8, $t2, 0x9C
.L00422648:
/* 022648 00422648 8D4E0000 */  lw          $t6, 0x0($t2)
/* 02264C 0042264C 254A000C */  addiu       $t2, $t2, 0xC
/* 022650 00422650 25EF000C */  addiu       $t7, $t7, 0xC
/* 022654 00422654 ADEEFFF4 */  sw          $t6, -0xC($t7)
/* 022658 00422658 8D4BFFF8 */  lw          $t3, -0x8($t2)
/* 02265C 0042265C ADEBFFF8 */  sw          $t3, -0x8($t7)
/* 022660 00422660 8D4EFFFC */  lw          $t6, -0x4($t2)
/* 022664 00422664 1558FFF8 */  bne         $t2, $t8, .L00422648
/* 022668 00422668 ADEEFFFC */   sw         $t6, -0x4($t7)
/* 02266C 0042266C 8E090088 */  lw          $t1, 0x88($s0)
/* 022670 00422670 2419FFFF */  addiu       $t9, $zero, -0x1
/* 022674 00422674 AE190098 */  sw          $t9, 0x98($s0)
/* 022678 00422678 8FA80040 */  lw          $t0, 0x40($sp)
/* 02267C 0042267C 240D0001 */  addiu       $t5, $zero, 0x1
/* 022680 00422680 352C0080 */  ori         $t4, $t1, 0x80
/* 022684 00422684 AE0D0004 */  sw          $t5, 0x4($s0)
/* 022688 00422688 AE0C0088 */  sw          $t4, 0x88($s0)
/* 02268C 0042268C 02001025 */  move        $v0, $s0
/* 022690 00422690 100000B8 */  b           .L00422974
/* 022694 00422694 AE080008 */   sw         $t0, 0x8($s0)
.L00422698:
/* 022698 00422698 8FB80030 */  lw          $t8, 0x30($sp)
/* 02269C 0042269C 370A00C0 */  ori         $t2, $t8, 0xC0
/* 0226A0 004226A0 10000013 */  b           .L004226F0
/* 0226A4 004226A4 AFAA0030 */   sw         $t2, 0x30($sp)
.L004226A8:
/* 0226A8 004226A8 8FAF0030 */  lw          $t7, 0x30($sp)
/* 0226AC 004226AC 35EB0040 */  ori         $t3, $t7, 0x40
/* 0226B0 004226B0 1000000F */  b           .L004226F0
/* 0226B4 004226B4 AFAB0030 */   sw         $t3, 0x30($sp)
.L004226B8:
/* 0226B8 004226B8 8F99801C */  lw          $t9, %got(disallow_mmap_read)($gp)
/* 0226BC 004226BC 8FA40048 */  lw          $a0, 0x48($sp)
/* 0226C0 004226C0 8FA50040 */  lw          $a1, 0x40($sp)
/* 0226C4 004226C4 273923C0 */  addiu       $t9, $t9, %lo(disallow_mmap_read)
/* 0226C8 004226C8 0320F809 */  jalr        $t9
/* 0226CC 004226CC 00000000 */   nop
/* 0226D0 004226D0 10400004 */  beqz        $v0, .L004226E4
/* 0226D4 004226D4 8FBC0020 */   lw         $gp, 0x20($sp)
/* 0226D8 004226D8 240E0001 */  addiu       $t6, $zero, 0x1
/* 0226DC 004226DC 1000FFF2 */  b           .L004226A8
/* 0226E0 004226E0 AFAE0044 */   sw         $t6, 0x44($sp)
.L004226E4:
/* 0226E4 004226E4 8FB90030 */  lw          $t9, 0x30($sp)
/* 0226E8 004226E8 37280140 */  ori         $t0, $t9, 0x140
/* 0226EC 004226EC AFA80030 */  sw          $t0, 0x30($sp)
.L004226F0:
/* 0226F0 004226F0 8FAD0048 */  lw          $t5, 0x48($sp)
/* 0226F4 004226F4 15A0000C */  bnez        $t5, .L00422728
/* 0226F8 004226F8 00000000 */   nop
/* 0226FC 004226FC 8F99801C */  lw          $t9, %got(regular)($gp)
/* 022700 00422700 8FA40040 */  lw          $a0, 0x40($sp)
/* 022704 00422704 8FA50030 */  lw          $a1, 0x30($sp)
/* 022708 00422708 27392C3C */  addiu       $t9, $t9, %lo(regular)
/* 02270C 0042270C 0320F809 */  jalr        $t9
/* 022710 00422710 00000000 */   nop
/* 022714 00422714 00408025 */  move        $s0, $v0
/* 022718 00422718 16000022 */  bnez        $s0, .L004227A4
/* 02271C 0042271C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 022720 00422720 10000094 */  b           .L00422974
/* 022724 00422724 00001025 */   move       $v0, $zero
.L00422728:
/* 022728 00422728 8FA90048 */  lw          $t1, 0x48($sp)
/* 02272C 0042272C 8FB80030 */  lw          $t8, 0x30($sp)
/* 022730 00422730 8D2C0088 */  lw          $t4, 0x88($t1)
/* 022734 00422734 01985024 */  and         $t2, $t4, $t8
/* 022738 00422738 11580005 */  beq         $t2, $t8, .L00422750
/* 02273C 0042273C 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 022740 00422740 240F0510 */  addiu       $t7, $zero, 0x510
/* 022744 00422744 00001025 */  move        $v0, $zero
/* 022748 00422748 1000008A */  b           .L00422974
/* 02274C 0042274C AC2F0000 */   sw         $t7, 0x0($at)
.L00422750:
/* 022750 00422750 8FAB0048 */  lw          $t3, 0x48($sp)
/* 022754 00422754 24010001 */  addiu       $at, $zero, 0x1
/* 022758 00422758 8D6E004C */  lw          $t6, 0x4C($t3)
/* 02275C 0042275C 11C10006 */  beq         $t6, $at, .L00422778
/* 022760 00422760 00000000 */   nop
/* 022764 00422764 8D790004 */  lw          $t9, 0x4($t3)
/* 022768 00422768 27280001 */  addiu       $t0, $t9, 0x1
/* 02276C 0042276C AD680004 */  sw          $t0, 0x4($t3)
/* 022770 00422770 10000080 */  b           .L00422974
/* 022774 00422774 8FA20048 */   lw         $v0, 0x48($sp)
.L00422778:
/* 022778 00422778 8F99801C */  lw          $t9, %got(member)($gp)
/* 02277C 0042277C 8FA40040 */  lw          $a0, 0x40($sp)
/* 022780 00422780 8FA50048 */  lw          $a1, 0x48($sp)
/* 022784 00422784 2739298C */  addiu       $t9, $t9, %lo(member)
/* 022788 00422788 0320F809 */  jalr        $t9
/* 02278C 0042278C 8FA60030 */   lw         $a2, 0x30($sp)
/* 022790 00422790 00408025 */  move        $s0, $v0
/* 022794 00422794 16000003 */  bnez        $s0, .L004227A4
/* 022798 00422798 8FBC0020 */   lw         $gp, 0x20($sp)
/* 02279C 0042279C 10000075 */  b           .L00422974
/* 0227A0 004227A0 00001025 */   move       $v0, $zero
.L004227A4:
/* 0227A4 004227A4 8E090034 */  lw          $t1, 0x34($s0)
/* 0227A8 004227A8 240D0001 */  addiu       $t5, $zero, 0x1
/* 0227AC 004227AC AE0D0004 */  sw          $t5, 0x4($s0)
/* 0227B0 004227B0 2D210010 */  sltiu       $at, $t1, 0x10
/* 0227B4 004227B4 14200027 */  bnez        $at, .L00422854
/* 0227B8 004227B8 8E110028 */   lw         $s1, 0x28($s0)
/* 0227BC 004227BC 8F998218 */  lw          $t9, %call16(_elf_vm)($gp)
/* 0227C0 004227C0 02002025 */  move        $a0, $s0
/* 0227C4 004227C4 00002825 */  move        $a1, $zero
/* 0227C8 004227C8 0320F809 */  jalr        $t9
/* 0227CC 004227CC 24060010 */   addiu      $a2, $zero, 0x10
/* 0227D0 004227D0 14400020 */  bnez        $v0, .L00422854
/* 0227D4 004227D4 8FBC0020 */   lw         $gp, 0x20($sp)
/* 0227D8 004227D8 822C0000 */  lb          $t4, 0x0($s1)
/* 0227DC 004227DC 2401007F */  addiu       $at, $zero, 0x7F
/* 0227E0 004227E0 1581001C */  bne         $t4, $at, .L00422854
/* 0227E4 004227E4 00000000 */   nop
/* 0227E8 004227E8 822A0001 */  lb          $t2, 0x1($s1)
/* 0227EC 004227EC 24010045 */  addiu       $at, $zero, 0x45
/* 0227F0 004227F0 15410018 */  bne         $t2, $at, .L00422854
/* 0227F4 004227F4 00000000 */   nop
/* 0227F8 004227F8 82380002 */  lb          $t8, 0x2($s1)
/* 0227FC 004227FC 2401004C */  addiu       $at, $zero, 0x4C
/* 022800 00422800 17010014 */  bne         $t8, $at, .L00422854
/* 022804 00422804 00000000 */   nop
/* 022808 00422808 822F0003 */  lb          $t7, 0x3($s1)
/* 02280C 0042280C 24010046 */  addiu       $at, $zero, 0x46
/* 022810 00422810 15E10010 */  bne         $t7, $at, .L00422854
/* 022814 00422814 00000000 */   nop
/* 022818 00422818 240E0003 */  addiu       $t6, $zero, 0x3
/* 02281C 0042281C AE0E004C */  sw          $t6, 0x4C($s0)
/* 022820 00422820 82390004 */  lb          $t9, 0x4($s1)
/* 022824 00422824 AE190048 */  sw          $t9, 0x48($s0)
/* 022828 00422828 82280005 */  lb          $t0, 0x5($s1)
/* 02282C 0042282C AE080040 */  sw          $t0, 0x40($s0)
/* 022830 00422830 82320006 */  lb          $s2, 0x6($s1)
/* 022834 00422834 16400003 */  bnez        $s2, .L00422844
/* 022838 00422838 AE120044 */   sw         $s2, 0x44($s0)
/* 02283C 0042283C 240B0001 */  addiu       $t3, $zero, 0x1
/* 022840 00422840 AE0B0044 */  sw          $t3, 0x44($s0)
.L00422844:
/* 022844 00422844 240D0010 */  addiu       $t5, $zero, 0x10
/* 022848 00422848 AE0D002C */  sw          $t5, 0x2C($s0)
/* 02284C 0042284C 10000049 */  b           .L00422974
/* 022850 00422850 02001025 */   move       $v0, $s0
.L00422854:
/* 022854 00422854 8E090034 */  lw          $t1, 0x34($s0)
/* 022858 00422858 2D210008 */  sltiu       $at, $t1, 0x8
/* 02285C 0042285C 1420001B */  bnez        $at, .L004228CC
/* 022860 00422860 00000000 */   nop
/* 022864 00422864 8F998218 */  lw          $t9, %call16(_elf_vm)($gp)
/* 022868 00422868 02002025 */  move        $a0, $s0
/* 02286C 0042286C 00002825 */  move        $a1, $zero
/* 022870 00422870 0320F809 */  jalr        $t9
/* 022874 00422874 24060008 */   addiu      $a2, $zero, 0x8
/* 022878 00422878 14400014 */  bnez        $v0, .L004228CC
/* 02287C 0042287C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 022880 00422880 8F998124 */  lw          $t9, %call16(memcmp)($gp)
/* 022884 00422884 8F85802C */  lw          $a1, %got(STR_10006790)($gp)
/* 022888 00422888 02202025 */  move        $a0, $s1
/* 02288C 0042288C 24060008 */  addiu       $a2, $zero, 0x8
/* 022890 00422890 0320F809 */  jalr        $t9
/* 022894 00422894 24A56790 */   addiu      $a1, $a1, %lo(STR_10006790)
/* 022898 00422898 1440000C */  bnez        $v0, .L004228CC
/* 02289C 0042289C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 0228A0 004228A0 8F998230 */  lw          $t9, %call16(_elf_arinit)($gp)
/* 0228A4 004228A4 02002025 */  move        $a0, $s0
/* 0228A8 004228A8 0320F809 */  jalr        $t9
/* 0228AC 004228AC 00000000 */   nop
/* 0228B0 004228B0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0228B4 004228B4 240C0001 */  addiu       $t4, $zero, 0x1
/* 0228B8 004228B8 240A0008 */  addiu       $t2, $zero, 0x8
/* 0228BC 004228BC AE0C004C */  sw          $t4, 0x4C($s0)
/* 0228C0 004228C0 AE0A002C */  sw          $t2, 0x2C($s0)
/* 0228C4 004228C4 1000002B */  b           .L00422974
/* 0228C8 004228C8 02001025 */   move       $v0, $s0
.L004228CC:
/* 0228CC 004228CC 8F9886F8 */  lw          $t8, %got(_elf_foreign)($gp)
/* 0228D0 004228D0 AFB80034 */  sw          $t8, 0x34($sp)
/* 0228D4 004228D4 8F0F0000 */  lw          $t7, 0x0($t8)
/* 0228D8 004228D8 11E0001E */  beqz        $t7, .L00422954
/* 0228DC 004228DC 00000000 */   nop
.L004228E0:
/* 0228E0 004228E0 8FAE0034 */  lw          $t6, 0x34($sp)
/* 0228E4 004228E4 02002025 */  move        $a0, $s0
/* 0228E8 004228E8 8DD90000 */  lw          $t9, 0x0($t6)
/* 0228EC 004228EC 0320F809 */  jalr        $t9
/* 0228F0 004228F0 00000000 */   nop
/* 0228F4 004228F4 AFA2002C */  sw          $v0, 0x2C($sp)
/* 0228F8 004228F8 8FA8002C */  lw          $t0, 0x2C($sp)
/* 0228FC 004228FC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 022900 00422900 19000004 */  blez        $t0, .L00422914
/* 022904 00422904 00000000 */   nop
/* 022908 00422908 AE08004C */  sw          $t0, 0x4C($s0)
/* 02290C 0042290C 10000019 */  b           .L00422974
/* 022910 00422910 02001025 */   move       $v0, $s0
.L00422914:
/* 022914 00422914 8FAB002C */  lw          $t3, 0x2C($sp)
/* 022918 00422918 11600008 */  beqz        $t3, .L0042293C
/* 02291C 0042291C 00000000 */   nop
/* 022920 00422920 8F9981F0 */  lw          $t9, %call16(_elf_end)($gp)
/* 022924 00422924 02002025 */  move        $a0, $s0
/* 022928 00422928 0320F809 */  jalr        $t9
/* 02292C 0042292C 00000000 */   nop
/* 022930 00422930 8FBC0020 */  lw          $gp, 0x20($sp)
/* 022934 00422934 1000000F */  b           .L00422974
/* 022938 00422938 00001025 */   move       $v0, $zero
.L0042293C:
/* 02293C 0042293C 8FAD0034 */  lw          $t5, 0x34($sp)
/* 022940 00422940 25A90004 */  addiu       $t1, $t5, 0x4
/* 022944 00422944 AFA90034 */  sw          $t1, 0x34($sp)
/* 022948 00422948 8D2C0000 */  lw          $t4, 0x0($t1)
/* 02294C 0042294C 1580FFE4 */  bnez        $t4, .L004228E0
/* 022950 00422950 00000000 */   nop
.L00422954:
/* 022954 00422954 8E120034 */  lw          $s2, 0x34($s0)
/* 022958 00422958 AE00004C */  sw          $zero, 0x4C($s0)
/* 02295C 0042295C 2E410201 */  sltiu       $at, $s2, 0x201
/* 022960 00422960 14200003 */  bnez        $at, .L00422970
/* 022964 00422964 AE12002C */   sw         $s2, 0x2C($s0)
/* 022968 00422968 240A0200 */  addiu       $t2, $zero, 0x200
/* 02296C 0042296C AE0A002C */  sw          $t2, 0x2C($s0)
.L00422970:
/* 022970 00422970 02001025 */  move        $v0, $s0
.L00422974:
/* 022974 00422974 8FBF0024 */  lw          $ra, 0x24($sp)
/* 022978 00422978 8FB00014 */  lw          $s0, 0x14($sp)
/* 02297C 0042297C 8FB10018 */  lw          $s1, 0x18($sp)
/* 022980 00422980 8FB2001C */  lw          $s2, 0x1C($sp)
/* 022984 00422984 03E00008 */  jr          $ra
/* 022988 00422988 27BD0040 */   addiu      $sp, $sp, 0x40
