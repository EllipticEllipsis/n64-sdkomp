.section .rodata
glabel STR_10008C00
/* 048C00 10008C00 */ .asciz "st_fdadd: number of files (%d) exceeds max (%d)\n"
                      .balign 4

glabel STR_10008C34
/* 048C34 10008C34 */ .asciz "st_fdadd: allocation botch (%d fds and %d cfds) in %s\n"
                      .balign 4

glabel STR_10008C6C
/* 048C6C 10008C6C */ .asciz ""
                      .balign 4

glabel STR_10008C70
/* 048C70 10008C70 */ .asciz "</4Debug/>"
                      .balign 4

glabel STR_10008C7C
/* 048C7C 10008C7C */ .asciz ":"
                      .balign 4

glabel STR_10008C80
/* 048C80 10008C80 */ .asciz ":"
                      .balign 4

glabel STR_10008C84
/* 048C84 10008C84 */ .asciz "st_fdadd: could not malloc path name!! %d\n"
                      .balign 4

glabel STR_10008CB0
/* 048CB0 10008CB0 */ .asciz "PWD"
                      .balign 4

glabel STR_10008CB4
/* 048CB4 10008CB4 */ .asciz ""
                      .balign 4

glabel STR_10008CB8
/* 048CB8 10008CB8 */ .asciz "Cannot st_fdadd: cannot malloc %d bytes to hold file name\n"
                      .balign 4

glabel STR_10008CF4
/* 048CF4 10008CF4 */ .asciz "/"
                      .balign 4

glabel STR_10008CF8
/* 048CF8 10008CF8 */ .asciz "%lu"
                      .balign 4

glabel STR_10008CFC
/* 048CFC 10008CFC */ .asciz "-1"
                      .balign 4

glabel STR_10008D00
/* 048D00 10008D00 */ .asciz "%lu"
                      .balign 4


.section .text
glabel st_fdadd # 652
/* 03F43C 0043F43C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03F440 0043F440 279C3924 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3924
/* 03F444 0043F444 0399E021 */  addu        $gp, $gp, $t9
/* 03F448 0043F448 27BDFF10 */  addiu       $sp, $sp, -0xF0
/* 03F44C 0043F44C 8F8A87C8 */  lw          $t2, %got(st_pchdr)($gp)
/* 03F450 0043F450 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03F454 0043F454 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03F458 0043F458 8D480000 */  lw          $t0, 0x0($t2)
/* 03F45C 0043F45C AFA400F0 */  sw          $a0, 0xF0($sp)
/* 03F460 0043F460 AFA500F4 */  sw          $a1, 0xF4($sp)
/* 03F464 0043F464 AFA600F8 */  sw          $a2, 0xF8($sp)
/* 03F468 0043F468 AFA700FC */  sw          $a3, 0xFC($sp)
/* 03F46C 0043F46C 8D0E000C */  lw          $t6, 0xC($t0)
/* 03F470 0043F470 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 03F474 0043F474 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 03F478 0043F478 01C1082A */  slt         $at, $t6, $at
/* 03F47C 0043F47C 1420000D */  bnez        $at, .L0043F4B4
/* 03F480 0043F480 AFAE0024 */   sw         $t6, 0x24($sp)
/* 03F484 0043F484 8F99853C */  lw          $t9, %call16(st_error)($gp)
/* 03F488 0043F488 8F848030 */  lw          $a0, %got(STR_10008C00)($gp)
/* 03F48C 0043F48C 3C067FFF */  lui         $a2, (0x7FFFFFFF >> 16)
/* 03F490 0043F490 34C6FFFF */  ori         $a2, $a2, (0x7FFFFFFF & 0xFFFF)
/* 03F494 0043F494 01C02825 */  move        $a1, $t6
/* 03F498 0043F498 0320F809 */  jalr        $t9
/* 03F49C 0043F49C 24848C00 */   addiu      $a0, $a0, %lo(STR_10008C00)
/* 03F4A0 0043F4A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F4A4 0043F4A4 8F8A87C8 */  lw          $t2, %got(st_pchdr)($gp)
/* 03F4A8 0043F4A8 8D480000 */  lw          $t0, 0x0($t2)
/* 03F4AC 0043F4AC 8D18000C */  lw          $t8, 0xC($t0)
/* 03F4B0 0043F4B0 AFB80024 */  sw          $t8, 0x24($sp)
.L0043F4B4:
/* 03F4B4 0043F4B4 8D020010 */  lw          $v0, 0x10($t0)
/* 03F4B8 0043F4B8 8FB90024 */  lw          $t9, 0x24($sp)
/* 03F4BC 0043F4BC 25050010 */  addiu       $a1, $t0, 0x10
/* 03F4C0 0043F4C0 24060040 */  addiu       $a2, $zero, 0x40
/* 03F4C4 0043F4C4 0322082A */  slt         $at, $t9, $v0
/* 03F4C8 0043F4C8 14200037 */  bnez        $at, .L0043F5A8
/* 03F4CC 0043F4CC 24070019 */   addiu      $a3, $zero, 0x19
/* 03F4D0 0043F4D0 8F9985FC */  lw          $t9, %call16(st_malloc)($gp)
/* 03F4D4 0043F4D4 AFA200EC */  sw          $v0, 0xEC($sp)
/* 03F4D8 0043F4D8 8D040004 */  lw          $a0, 0x4($t0)
/* 03F4DC 0043F4DC 0320F809 */  jalr        $t9
/* 03F4E0 0043F4E0 AFA200E8 */   sw         $v0, 0xE8($sp)
/* 03F4E4 0043F4E4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F4E8 0043F4E8 27A500EC */  addiu       $a1, $sp, 0xEC
/* 03F4EC 0043F4EC 24060048 */  addiu       $a2, $zero, 0x48
/* 03F4F0 0043F4F0 8F8A87C8 */  lw          $t2, %got(st_pchdr)($gp)
/* 03F4F4 0043F4F4 24070019 */  addiu       $a3, $zero, 0x19
/* 03F4F8 0043F4F8 8D4B0000 */  lw          $t3, 0x0($t2)
/* 03F4FC 0043F4FC AD620004 */  sw          $v0, 0x4($t3)
/* 03F500 0043F500 8F9985FC */  lw          $t9, %call16(st_malloc)($gp)
/* 03F504 0043F504 8D4C0000 */  lw          $t4, 0x0($t2)
/* 03F508 0043F508 0320F809 */  jalr        $t9
/* 03F50C 0043F50C 8D840008 */   lw         $a0, 0x8($t4)
/* 03F510 0043F510 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F514 0043F514 8FA900E8 */  lw          $t1, 0xE8($sp)
/* 03F518 0043F518 8F8A87C8 */  lw          $t2, %got(st_pchdr)($gp)
/* 03F51C 0043F51C 8D4D0000 */  lw          $t5, 0x0($t2)
/* 03F520 0043F520 ADA20008 */  sw          $v0, 0x8($t5)
/* 03F524 0043F524 8D4E0000 */  lw          $t6, 0x0($t2)
/* 03F528 0043F528 8FAF00EC */  lw          $t7, 0xEC($sp)
/* 03F52C 0043F52C 8FA700F0 */  lw          $a3, 0xF0($sp)
/* 03F530 0043F530 8DC60010 */  lw          $a2, 0x10($t6)
/* 03F534 0043F534 01E02825 */  move        $a1, $t7
/* 03F538 0043F538 51E6000A */  beql        $t7, $a2, .L0043F564
/* 03F53C 0043F53C 01202025 */   move       $a0, $t1
/* 03F540 0043F540 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03F544 0043F544 8F848030 */  lw          $a0, %got(STR_10008C34)($gp)
/* 03F548 0043F548 AFA900E8 */  sw          $t1, 0xE8($sp)
/* 03F54C 0043F54C 0320F809 */  jalr        $t9
/* 03F550 0043F550 24848C34 */   addiu      $a0, $a0, %lo(STR_10008C34)
/* 03F554 0043F554 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F558 0043F558 8FA900E8 */  lw          $t1, 0xE8($sp)
/* 03F55C 0043F55C 8F8A87C8 */  lw          $t2, %got(st_pchdr)($gp)
/* 03F560 0043F560 01202025 */  move        $a0, $t1
.L0043F564:
/* 03F564 0043F564 11200010 */  beqz        $t1, .L0043F5A8
/* 03F568 0043F568 2529FFFF */   addiu      $t1, $t1, -0x1
/* 03F56C 0043F56C 000918C0 */  sll         $v1, $t1, 3
/* 03F570 0043F570 00691821 */  addu        $v1, $v1, $t1
/* 03F574 0043F574 000318C0 */  sll         $v1, $v1, 3
/* 03F578 0043F578 00091180 */  sll         $v0, $t1, 6
.L0043F57C:
/* 03F57C 0043F57C 8D480000 */  lw          $t0, 0x0($t2)
/* 03F580 0043F580 01202025 */  move        $a0, $t1
/* 03F584 0043F584 8D180008 */  lw          $t8, 0x8($t0)
/* 03F588 0043F588 8D0B0004 */  lw          $t3, 0x4($t0)
/* 03F58C 0043F58C 0303C821 */  addu        $t9, $t8, $v1
/* 03F590 0043F590 01626021 */  addu        $t4, $t3, $v0
/* 03F594 0043F594 2442FFC0 */  addiu       $v0, $v0, -0x40
/* 03F598 0043F598 2463FFB8 */  addiu       $v1, $v1, -0x48
/* 03F59C 0043F59C AD990000 */  sw          $t9, 0x0($t4)
/* 03F5A0 0043F5A0 1520FFF6 */  bnez        $t1, .L0043F57C
/* 03F5A4 0043F5A4 2529FFFF */   addiu      $t1, $t1, -0x1
.L0043F5A8:
/* 03F5A8 0043F5A8 8D480000 */  lw          $t0, 0x0($t2)
/* 03F5AC 0043F5AC 8F998030 */  lw          $t9, %got(B_10010728)($gp)
/* 03F5B0 0043F5B0 8F8587CC */  lw          $a1, %got(pcfdcur)($gp)
/* 03F5B4 0043F5B4 8D0E000C */  lw          $t6, 0xC($t0)
/* 03F5B8 0043F5B8 8D0D0004 */  lw          $t5, 0x4($t0)
/* 03F5BC 0043F5BC 27390728 */  addiu       $t9, $t9, %lo(B_10010728)
/* 03F5C0 0043F5C0 000E7980 */  sll         $t7, $t6, 6
/* 03F5C4 0043F5C4 01AF5821 */  addu        $t3, $t5, $t7
/* 03F5C8 0043F5C8 272D003C */  addiu       $t5, $t9, 0x3C
/* 03F5CC 0043F5CC ACAB0000 */  sw          $t3, 0x0($a1)
.L0043F5D0:
/* 03F5D0 0043F5D0 8F2E0000 */  lw          $t6, 0x0($t9)
/* 03F5D4 0043F5D4 2739000C */  addiu       $t9, $t9, 0xC
/* 03F5D8 0043F5D8 256B000C */  addiu       $t3, $t3, 0xC
/* 03F5DC 0043F5DC AD6EFFF4 */  sw          $t6, -0xC($t3)
/* 03F5E0 0043F5E0 8F2CFFF8 */  lw          $t4, -0x8($t9)
/* 03F5E4 0043F5E4 AD6CFFF8 */  sw          $t4, -0x8($t3)
/* 03F5E8 0043F5E8 8F2EFFFC */  lw          $t6, -0x4($t9)
/* 03F5EC 0043F5EC 172DFFF8 */  bne         $t9, $t5, .L0043F5D0
/* 03F5F0 0043F5F0 AD6EFFFC */   sw         $t6, -0x4($t3)
/* 03F5F4 0043F5F4 8F2E0000 */  lw          $t6, 0x0($t9)
/* 03F5F8 0043F5F8 AD6E0000 */  sw          $t6, 0x0($t3)
/* 03F5FC 0043F5FC 8D480000 */  lw          $t0, 0x0($t2)
/* 03F600 0043F600 8CAB0000 */  lw          $t3, 0x0($a1)
/* 03F604 0043F604 8D0F000C */  lw          $t7, 0xC($t0)
/* 03F608 0043F608 8D0D0008 */  lw          $t5, 0x8($t0)
/* 03F60C 0043F60C 000FC0C0 */  sll         $t8, $t7, 3
/* 03F610 0043F610 030FC021 */  addu        $t8, $t8, $t7
/* 03F614 0043F614 0018C0C0 */  sll         $t8, $t8, 3
/* 03F618 0043F618 030DC821 */  addu        $t9, $t8, $t5
/* 03F61C 0043F61C AD790000 */  sw          $t9, 0x0($t3)
/* 03F620 0043F620 8D480000 */  lw          $t0, 0x0($t2)
/* 03F624 0043F624 8F8D8030 */  lw          $t5, %got(B_100106E0)($gp)
/* 03F628 0043F628 8D0C000C */  lw          $t4, 0xC($t0)
/* 03F62C 0043F62C 25AD06E0 */  addiu       $t5, $t5, %lo(B_100106E0)
/* 03F630 0043F630 258E0001 */  addiu       $t6, $t4, 0x1
/* 03F634 0043F634 AD0E000C */  sw          $t6, 0xC($t0)
/* 03F638 0043F638 8CAF0000 */  lw          $t7, 0x0($a1)
/* 03F63C 0043F63C 25AC0048 */  addiu       $t4, $t5, 0x48
/* 03F640 0043F640 8DF80000 */  lw          $t8, 0x0($t7)
.L0043F644:
/* 03F644 0043F644 8DAB0000 */  lw          $t3, 0x0($t5)
/* 03F648 0043F648 25AD000C */  addiu       $t5, $t5, 0xC
/* 03F64C 0043F64C 2718000C */  addiu       $t8, $t8, 0xC
/* 03F650 0043F650 AF0BFFF4 */  sw          $t3, -0xC($t8)
/* 03F654 0043F654 8DB9FFF8 */  lw          $t9, -0x8($t5)
/* 03F658 0043F658 AF19FFF8 */  sw          $t9, -0x8($t8)
/* 03F65C 0043F65C 8DABFFFC */  lw          $t3, -0x4($t5)
/* 03F660 0043F660 15ACFFF8 */  bne         $t5, $t4, .L0043F644
/* 03F664 0043F664 AF0BFFFC */   sw         $t3, -0x4($t8)
/* 03F668 0043F668 8CAE0000 */  lw          $t6, 0x0($a1)
/* 03F66C 0043F66C 8FAC00F4 */  lw          $t4, 0xF4($sp)
/* 03F670 0043F670 8DC30000 */  lw          $v1, 0x0($t6)
/* 03F674 0043F674 000CC0C0 */  sll         $t8, $t4, 3
/* 03F678 0043F678 9079003C */  lbu         $t9, 0x3C($v1)
/* 03F67C 0043F67C 332BFF07 */  andi        $t3, $t9, 0xFF07
/* 03F680 0043F680 030B7025 */  or          $t6, $t8, $t3
/* 03F684 0043F684 A06E003C */  sb          $t6, 0x3C($v1)
/* 03F688 0043F688 8CAF0000 */  lw          $t7, 0x0($a1)
/* 03F68C 0043F68C 8FAD00F8 */  lw          $t5, 0xF8($sp)
/* 03F690 0043F690 8DE30000 */  lw          $v1, 0x0($t7)
/* 03F694 0043F694 000DC880 */  sll         $t9, $t5, 2
/* 03F698 0043F698 33380004 */  andi        $t8, $t9, 0x4
/* 03F69C 0043F69C 906B003C */  lbu         $t3, 0x3C($v1)
/* 03F6A0 0043F6A0 316EFFFB */  andi        $t6, $t3, 0xFFFB
/* 03F6A4 0043F6A4 030E7825 */  or          $t7, $t8, $t6
/* 03F6A8 0043F6A8 A06F003C */  sb          $t7, 0x3C($v1)
/* 03F6AC 0043F6AC 8CAC0000 */  lw          $t4, 0x0($a1)
/* 03F6B0 0043F6B0 8FB900FC */  lw          $t9, 0xFC($sp)
/* 03F6B4 0043F6B4 8D830000 */  lw          $v1, 0x0($t4)
/* 03F6B8 0043F6B8 0019C180 */  sll         $t8, $t9, 6
/* 03F6BC 0043F6BC 906E003D */  lbu         $t6, 0x3D($v1)
/* 03F6C0 0043F6C0 31CFFF3F */  andi        $t7, $t6, 0xFF3F
/* 03F6C4 0043F6C4 030F6025 */  or          $t4, $t8, $t7
/* 03F6C8 0043F6C8 A06C003D */  sb          $t4, 0x3D($v1)
/* 03F6CC 0043F6CC 8F998238 */  lw          $t9, %call16(gethostsex)($gp)
/* 03F6D0 0043F6D0 0320F809 */  jalr        $t9
/* 03F6D4 0043F6D4 00000000 */   nop
/* 03F6D8 0043F6D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F6DC 0043F6DC 2C4B0001 */  sltiu       $t3, $v0, 0x1
/* 03F6E0 0043F6E0 316E0001 */  andi        $t6, $t3, 0x1
/* 03F6E4 0043F6E4 8F8587CC */  lw          $a1, %got(pcfdcur)($gp)
/* 03F6E8 0043F6E8 8F848030 */  lw          $a0, %got(STR_10008C6C)($gp)
/* 03F6EC 0043F6EC 8CAD0000 */  lw          $t5, 0x0($a1)
/* 03F6F0 0043F6F0 24848C6C */  addiu       $a0, $a0, %lo(STR_10008C6C)
/* 03F6F4 0043F6F4 8DA30000 */  lw          $v1, 0x0($t5)
/* 03F6F8 0043F6F8 9078003C */  lbu         $t8, 0x3C($v1)
/* 03F6FC 0043F6FC 330FFFFE */  andi        $t7, $t8, 0xFFFE
/* 03F700 0043F700 01CF6025 */  or          $t4, $t6, $t7
/* 03F704 0043F704 A06C003C */  sb          $t4, 0x3C($v1)
/* 03F708 0043F708 8F9985F0 */  lw          $t9, %call16(st_stradd)($gp)
/* 03F70C 0043F70C 0320F809 */  jalr        $t9
/* 03F710 0043F710 00000000 */   nop
/* 03F714 0043F714 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F718 0043F718 8FA400F0 */  lw          $a0, 0xF0($sp)
/* 03F71C 0043F71C 8F9985F0 */  lw          $t9, %call16(st_stradd)($gp)
/* 03F720 0043F720 0320F809 */  jalr        $t9
/* 03F724 0043F724 00000000 */   nop
/* 03F728 0043F728 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F72C 0043F72C 8F8587CC */  lw          $a1, %got(pcfdcur)($gp)
/* 03F730 0043F730 8F8B8708 */  lw          $t3, %got(__sgi_common_dummy_file)($gp)
/* 03F734 0043F734 8CAD0000 */  lw          $t5, 0x0($a1)
/* 03F738 0043F738 8DB90000 */  lw          $t9, 0x0($t5)
/* 03F73C 0043F73C AF220004 */  sw          $v0, 0x4($t9)
/* 03F740 0043F740 8D6B0000 */  lw          $t3, 0x0($t3)
/* 03F744 0043F744 8FB800FC */  lw          $t8, 0xFC($sp)
/* 03F748 0043F748 556000E1 */  bnel        $t3, $zero, .L0043FAD0
/* 03F74C 0043F74C 8FBF001C */   lw         $ra, 0x1C($sp)
/* 03F750 0043F750 13000003 */  beqz        $t8, .L0043F760
/* 03F754 0043F754 2B010003 */   slti       $at, $t8, 0x3
/* 03F758 0043F758 542000DD */  bnel        $at, $zero, .L0043FAD0
/* 03F75C 0043F75C 8FBF001C */   lw         $ra, 0x1C($sp)
.L0043F760:
/* 03F760 0043F760 8F9985F0 */  lw          $t9, %call16(st_stradd)($gp)
/* 03F764 0043F764 8F848030 */  lw          $a0, %got(STR_10008C70)($gp)
/* 03F768 0043F768 0320F809 */  jalr        $t9
/* 03F76C 0043F76C 24848C70 */   addiu      $a0, $a0, %lo(STR_10008C70)
/* 03F770 0043F770 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F774 0043F774 240F0001 */  addiu       $t7, $zero, 0x1
/* 03F778 0043F778 8F8E8030 */  lw          $t6, %got(D_1000AC2C)($gp)
/* 03F77C 0043F77C 81CEAC2C */  lb          $t6, %lo(D_1000AC2C)($t6)
/* 03F780 0043F780 55C0006D */  bnel        $t6, $zero, .L0043F938
/* 03F784 0043F784 8FB800F0 */   lw         $t8, 0xF0($sp)
/* 03F788 0043F788 8F998178 */  lw          $t9, %call16(gethostname)($gp)
/* 03F78C 0043F78C 8F818030 */  lw          $at, %got(D_1000AC2C)($gp)
/* 03F790 0043F790 8F848030 */  lw          $a0, %got(B_10010768)($gp)
/* 03F794 0043F794 24050040 */  addiu       $a1, $zero, 0x40
/* 03F798 0043F798 A02FAC2C */  sb          $t7, %lo(D_1000AC2C)($at)
/* 03F79C 0043F79C 0320F809 */  jalr        $t9
/* 03F7A0 0043F7A0 24840768 */   addiu      $a0, $a0, %lo(B_10010768)
/* 03F7A4 0043F7A4 0441000A */  bgez        $v0, .L0043F7D0
/* 03F7A8 0043F7A8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03F7AC 0043F7AC 8F8D8030 */  lw          $t5, %got(STR_10008C7C)($gp)
/* 03F7B0 0043F7B0 8F8C8030 */  lw          $t4, %got(B_10010768)($gp)
/* 03F7B4 0043F7B4 25AD8C7C */  addiu       $t5, $t5, %lo(STR_10008C7C)
/* 03F7B8 0043F7B8 91AB0000 */  lbu         $t3, 0x0($t5)
/* 03F7BC 0043F7BC 91B90001 */  lbu         $t9, 0x1($t5)
/* 03F7C0 0043F7C0 258C0768 */  addiu       $t4, $t4, %lo(B_10010768)
/* 03F7C4 0043F7C4 A18B0000 */  sb          $t3, 0x0($t4)
/* 03F7C8 0043F7C8 10000008 */  b           .L0043F7EC
/* 03F7CC 0043F7CC A1990001 */   sb         $t9, 0x1($t4)
.L0043F7D0:
/* 03F7D0 0043F7D0 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 03F7D4 0043F7D4 8F848030 */  lw          $a0, %got(B_10010768)($gp)
/* 03F7D8 0043F7D8 8F858030 */  lw          $a1, %got(STR_10008C80)($gp)
/* 03F7DC 0043F7DC 24840768 */  addiu       $a0, $a0, %lo(B_10010768)
/* 03F7E0 0043F7E0 0320F809 */  jalr        $t9
/* 03F7E4 0043F7E4 24A58C80 */   addiu      $a1, $a1, %lo(STR_10008C80)
/* 03F7E8 0043F7E8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043F7EC:
/* 03F7EC 0043F7EC 8F99817C */  lw          $t9, %call16(pathconf)($gp)
/* 03F7F0 0043F7F0 8FA400F0 */  lw          $a0, 0xF0($sp)
/* 03F7F4 0043F7F4 24050005 */  addiu       $a1, $zero, 0x5
/* 03F7F8 0043F7F8 0320F809 */  jalr        $t9
/* 03F7FC 0043F7FC 00000000 */   nop
/* 03F800 0043F800 28410005 */  slti        $at, $v0, 0x5
/* 03F804 0043F804 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F808 0043F808 10200002 */  beqz        $at, .L0043F814
/* 03F80C 0043F80C 00401825 */   move       $v1, $v0
/* 03F810 0043F810 24030005 */  addiu       $v1, $zero, 0x5
.L0043F814:
/* 03F814 0043F814 00031880 */  sll         $v1, $v1, 2
/* 03F818 0043F818 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 03F81C 0043F81C 00031080 */  sll         $v0, $v1, 2
/* 03F820 0043F820 00431023 */  subu        $v0, $v0, $v1
/* 03F824 0043F824 2442000A */  addiu       $v0, $v0, 0xA
/* 03F828 0043F828 00402025 */  move        $a0, $v0
/* 03F82C 0043F82C AFA20028 */  sw          $v0, 0x28($sp)
/* 03F830 0043F830 0320F809 */  jalr        $t9
/* 03F834 0043F834 AFA300E4 */   sw         $v1, 0xE4($sp)
/* 03F838 0043F838 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F83C 0043F83C 8FA300E4 */  lw          $v1, 0xE4($sp)
/* 03F840 0043F840 8FA50028 */  lw          $a1, 0x28($sp)
/* 03F844 0043F844 8F818030 */  lw          $at, %got(B_100107B0)($gp)
/* 03F848 0043F848 14400008 */  bnez        $v0, .L0043F86C
/* 03F84C 0043F84C AC2207B0 */   sw         $v0, %lo(B_100107B0)($at)
/* 03F850 0043F850 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03F854 0043F854 8F848030 */  lw          $a0, %got(STR_10008C84)($gp)
/* 03F858 0043F858 AFA300E4 */  sw          $v1, 0xE4($sp)
/* 03F85C 0043F85C 0320F809 */  jalr        $t9
/* 03F860 0043F860 24848C84 */   addiu      $a0, $a0, %lo(STR_10008C84)
/* 03F864 0043F864 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F868 0043F868 8FA300E4 */  lw          $v1, 0xE4($sp)
.L0043F86C:
/* 03F86C 0043F86C 8F998180 */  lw          $t9, %call16(getcwd)($gp)
/* 03F870 0043F870 00002025 */  move        $a0, $zero
/* 03F874 0043F874 8FA50028 */  lw          $a1, 0x28($sp)
/* 03F878 0043F878 0320F809 */  jalr        $t9
/* 03F87C 0043F87C AFA300E4 */   sw         $v1, 0xE4($sp)
/* 03F880 0043F880 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F884 0043F884 8FA300E4 */  lw          $v1, 0xE4($sp)
/* 03F888 0043F888 8F818030 */  lw          $at, %got(B_100107B4)($gp)
/* 03F88C 0043F88C 14400019 */  bnez        $v0, .L0043F8F4
/* 03F890 0043F890 AC2207B4 */   sw         $v0, %lo(B_100107B4)($at)
/* 03F894 0043F894 8F998098 */  lw          $t9, %call16(getenv)($gp)
/* 03F898 0043F898 8F848030 */  lw          $a0, %got(STR_10008CB0)($gp)
/* 03F89C 0043F89C AFA300E4 */  sw          $v1, 0xE4($sp)
/* 03F8A0 0043F8A0 0320F809 */  jalr        $t9
/* 03F8A4 0043F8A4 24848CB0 */   addiu      $a0, $a0, %lo(STR_10008CB0)
/* 03F8A8 0043F8A8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F8AC 0043F8AC 8FA300E4 */  lw          $v1, 0xE4($sp)
/* 03F8B0 0043F8B0 14400003 */  bnez        $v0, .L0043F8C0
/* 03F8B4 0043F8B4 00402825 */   move       $a1, $v0
/* 03F8B8 0043F8B8 8F858030 */  lw          $a1, %got(STR_10008CB4)($gp)
/* 03F8BC 0043F8BC 24A58CB4 */  addiu       $a1, $a1, %lo(STR_10008CB4)
.L0043F8C0:
/* 03F8C0 0043F8C0 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 03F8C4 0043F8C4 8F818030 */  lw          $at, %got(B_100107B4)($gp)
/* 03F8C8 0043F8C8 00A02025 */  move        $a0, $a1
/* 03F8CC 0043F8CC AFA300E4 */  sw          $v1, 0xE4($sp)
/* 03F8D0 0043F8D0 0320F809 */  jalr        $t9
/* 03F8D4 0043F8D4 AC2507B4 */   sw         $a1, %lo(B_100107B4)($at)
/* 03F8D8 0043F8D8 8FA300E4 */  lw          $v1, 0xE4($sp)
/* 03F8DC 0043F8DC 24440001 */  addiu       $a0, $v0, 0x1
/* 03F8E0 0043F8E0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F8E4 0043F8E4 0064082A */  slt         $at, $v1, $a0
/* 03F8E8 0043F8E8 10200002 */  beqz        $at, .L0043F8F4
/* 03F8EC 0043F8EC 00000000 */   nop
/* 03F8F0 0043F8F0 00041840 */  sll         $v1, $a0, 1
.L0043F8F4:
/* 03F8F4 0043F8F4 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 03F8F8 0043F8F8 00032880 */  sll         $a1, $v1, 2
/* 03F8FC 0043F8FC 24A5000A */  addiu       $a1, $a1, 0xA
/* 03F900 0043F900 00A02025 */  move        $a0, $a1
/* 03F904 0043F904 0320F809 */  jalr        $t9
/* 03F908 0043F908 AFA50028 */   sw         $a1, 0x28($sp)
/* 03F90C 0043F90C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F910 0043F910 8FA50028 */  lw          $a1, 0x28($sp)
/* 03F914 0043F914 8F818030 */  lw          $at, %got(B_100107AC)($gp)
/* 03F918 0043F918 14400006 */  bnez        $v0, .L0043F934
/* 03F91C 0043F91C AC2207AC */   sw         $v0, %lo(B_100107AC)($at)
/* 03F920 0043F920 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03F924 0043F924 8F848030 */  lw          $a0, %got(STR_10008CB8)($gp)
/* 03F928 0043F928 0320F809 */  jalr        $t9
/* 03F92C 0043F92C 24848CB8 */   addiu      $a0, $a0, %lo(STR_10008CB8)
/* 03F930 0043F930 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043F934:
/* 03F934 0043F934 8FB800F0 */  lw          $t8, 0xF0($sp)
.L0043F938:
/* 03F938 0043F938 2401002F */  addiu       $at, $zero, 0x2F
/* 03F93C 0043F93C 830E0000 */  lb          $t6, 0x0($t8)
/* 03F940 0043F940 11C10016 */  beq         $t6, $at, .L0043F99C
/* 03F944 0043F944 00000000 */   nop
/* 03F948 0043F948 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 03F94C 0043F94C 8F858030 */  lw          $a1, %got(B_100107B4)($gp)
/* 03F950 0043F950 8F848030 */  lw          $a0, %got(B_100107B0)($gp)
/* 03F954 0043F954 8CA507B4 */  lw          $a1, %lo(B_100107B4)($a1)
/* 03F958 0043F958 0320F809 */  jalr        $t9
/* 03F95C 0043F95C 8C8407B0 */   lw         $a0, %lo(B_100107B0)($a0)
/* 03F960 0043F960 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F964 0043F964 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 03F968 0043F968 8F848030 */  lw          $a0, %got(B_100107B0)($gp)
/* 03F96C 0043F96C 8F858030 */  lw          $a1, %got(STR_10008CF4)($gp)
/* 03F970 0043F970 8C8407B0 */  lw          $a0, %lo(B_100107B0)($a0)
/* 03F974 0043F974 0320F809 */  jalr        $t9
/* 03F978 0043F978 24A58CF4 */   addiu      $a1, $a1, %lo(STR_10008CF4)
/* 03F97C 0043F97C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F980 0043F980 8FA500F0 */  lw          $a1, 0xF0($sp)
/* 03F984 0043F984 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 03F988 0043F988 8F848030 */  lw          $a0, %got(B_100107B0)($gp)
/* 03F98C 0043F98C 0320F809 */  jalr        $t9
/* 03F990 0043F990 8C8407B0 */   lw         $a0, %lo(B_100107B0)($a0)
/* 03F994 0043F994 10000007 */  b           .L0043F9B4
/* 03F998 0043F998 8FBC0018 */   lw         $gp, 0x18($sp)
.L0043F99C:
/* 03F99C 0043F99C 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 03F9A0 0043F9A0 8F848030 */  lw          $a0, %got(B_100107B0)($gp)
/* 03F9A4 0043F9A4 8FA500F0 */  lw          $a1, 0xF0($sp)
/* 03F9A8 0043F9A8 0320F809 */  jalr        $t9
/* 03F9AC 0043F9AC 8C8407B0 */   lw         $a0, %lo(B_100107B0)($a0)
/* 03F9B0 0043F9B0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043F9B4:
/* 03F9B4 0043F9B4 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 03F9B8 0043F9B8 8F848030 */  lw          $a0, %got(B_100107AC)($gp)
/* 03F9BC 0043F9BC 8F858030 */  lw          $a1, %got(B_10010768)($gp)
/* 03F9C0 0043F9C0 8C8407AC */  lw          $a0, %lo(B_100107AC)($a0)
/* 03F9C4 0043F9C4 0320F809 */  jalr        $t9
/* 03F9C8 0043F9C8 24A50768 */   addiu      $a1, $a1, %lo(B_10010768)
/* 03F9CC 0043F9CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F9D0 0043F9D0 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 03F9D4 0043F9D4 8F848030 */  lw          $a0, %got(B_100107AC)($gp)
/* 03F9D8 0043F9D8 8F858030 */  lw          $a1, %got(B_100107B0)($gp)
/* 03F9DC 0043F9DC 8C8407AC */  lw          $a0, %lo(B_100107AC)($a0)
/* 03F9E0 0043F9E0 0320F809 */  jalr        $t9
/* 03F9E4 0043F9E4 8CA507B0 */   lw         $a1, %lo(B_100107B0)($a1)
/* 03F9E8 0043F9E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F9EC 0043F9EC 8F9985F0 */  lw          $t9, %call16(st_stradd)($gp)
/* 03F9F0 0043F9F0 8F848030 */  lw          $a0, %got(B_100107AC)($gp)
/* 03F9F4 0043F9F4 0320F809 */  jalr        $t9
/* 03F9F8 0043F9F8 8C8407AC */   lw         $a0, %lo(B_100107AC)($a0)
/* 03F9FC 0043F9FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FA00 0043FA00 240C0001 */  addiu       $t4, $zero, 0x1
/* 03FA04 0043FA04 8F8F8030 */  lw          $t7, %got(D_1000AC30)($gp)
/* 03FA08 0043FA08 8DEFAC30 */  lw          $t7, %lo(D_1000AC30)($t7)
/* 03FA0C 0043FA0C 15E00011 */  bnez        $t7, .L0043FA54
/* 03FA10 0043FA10 00000000 */   nop
/* 03FA14 0043FA14 8F998184 */  lw          $t9, %call16(time)($gp)
/* 03FA18 0043FA18 8F818030 */  lw          $at, %got(D_1000AC30)($gp)
/* 03FA1C 0043FA1C 00002025 */  move        $a0, $zero
/* 03FA20 0043FA20 0320F809 */  jalr        $t9
/* 03FA24 0043FA24 AC2CAC30 */   sw         $t4, %lo(D_1000AC30)($at)
/* 03FA28 0043FA28 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FA2C 0043FA2C 00403025 */  move        $a2, $v0
/* 03FA30 0043FA30 8F99806C */  lw          $t9, %call16(sprintf)($gp)
/* 03FA34 0043FA34 8F818030 */  lw          $at, %got(B_100107D8)($gp)
/* 03FA38 0043FA38 8F848030 */  lw          $a0, %got(B_100107B8)($gp)
/* 03FA3C 0043FA3C 8F858030 */  lw          $a1, %got(STR_10008CF8)($gp)
/* 03FA40 0043FA40 AC2207D8 */  sw          $v0, %lo(B_100107D8)($at)
/* 03FA44 0043FA44 248407B8 */  addiu       $a0, $a0, %lo(B_100107B8)
/* 03FA48 0043FA48 0320F809 */  jalr        $t9
/* 03FA4C 0043FA4C 24A58CF8 */   addiu      $a1, $a1, %lo(STR_10008CF8)
/* 03FA50 0043FA50 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043FA54:
/* 03FA54 0043FA54 8F9985F0 */  lw          $t9, %call16(st_stradd)($gp)
/* 03FA58 0043FA58 8F848030 */  lw          $a0, %got(B_100107B8)($gp)
/* 03FA5C 0043FA5C 0320F809 */  jalr        $t9
/* 03FA60 0043FA60 248407B8 */   addiu      $a0, $a0, %lo(B_100107B8)
/* 03FA64 0043FA64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FA68 0043FA68 8FA400F0 */  lw          $a0, 0xF0($sp)
/* 03FA6C 0043FA6C 27A50034 */  addiu       $a1, $sp, 0x34
/* 03FA70 0043FA70 8F9980B0 */  lw          $t9, %call16(stat)($gp)
/* 03FA74 0043FA74 0320F809 */  jalr        $t9
/* 03FA78 0043FA78 00000000 */   nop
/* 03FA7C 0043FA7C 04410007 */  bgez        $v0, .L0043FA9C
/* 03FA80 0043FA80 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03FA84 0043FA84 8F9985F0 */  lw          $t9, %call16(st_stradd)($gp)
/* 03FA88 0043FA88 8F848030 */  lw          $a0, %got(STR_10008CFC)($gp)
/* 03FA8C 0043FA8C 0320F809 */  jalr        $t9
/* 03FA90 0043FA90 24848CFC */   addiu      $a0, $a0, %lo(STR_10008CFC)
/* 03FA94 0043FA94 1000000D */  b           .L0043FACC
/* 03FA98 0043FA98 8FBC0018 */   lw         $gp, 0x18($sp)
.L0043FA9C:
/* 03FA9C 0043FA9C 8F99806C */  lw          $t9, %call16(sprintf)($gp)
/* 03FAA0 0043FAA0 8F858030 */  lw          $a1, %got(STR_10008D00)($gp)
/* 03FAA4 0043FAA4 27A400BC */  addiu       $a0, $sp, 0xBC
/* 03FAA8 0043FAA8 8FA60064 */  lw          $a2, 0x64($sp)
/* 03FAAC 0043FAAC 0320F809 */  jalr        $t9
/* 03FAB0 0043FAB0 24A58D00 */   addiu      $a1, $a1, %lo(STR_10008D00)
/* 03FAB4 0043FAB4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03FAB8 0043FAB8 27A400BC */  addiu       $a0, $sp, 0xBC
/* 03FABC 0043FABC 8F9985F0 */  lw          $t9, %call16(st_stradd)($gp)
/* 03FAC0 0043FAC0 0320F809 */  jalr        $t9
/* 03FAC4 0043FAC4 00000000 */   nop
/* 03FAC8 0043FAC8 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043FACC:
/* 03FACC 0043FACC 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043FAD0:
/* 03FAD0 0043FAD0 27BD00F0 */  addiu       $sp, $sp, 0xF0
/* 03FAD4 0043FAD4 03E00008 */  jr          $ra
/* 03FAD8 0043FAD8 00000000 */   nop
