.section .rodata
glabel STR_10008580
/* 048580 10008580 */ .asciz "Bad contents for relocation at 0x%x\n"
                      .balign 4

glabel STR_100085A8
/* 0485A8 100085A8 */ .asciz "obj_map_dynamic: Don't know what to do with Elf relocation type %d\n"
                      .balign 4


.section .text
glabel obj_map_dynamic # 585
/* 03A4E8 0043A4E8 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 03A4EC 0043A4EC 279C8878 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD8878
/* 03A4F0 0043A4F0 0399E021 */  addu        $gp, $gp, $t9
/* 03A4F4 0043A4F4 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 03A4F8 0043A4F8 8F9982E4 */  lw          $t9, %call16(obj_dynsym)($gp)
/* 03A4FC 0043A4FC AFBF003C */  sw          $ra, 0x3C($sp)
/* 03A500 0043A500 AFBE0038 */  sw          $fp, 0x38($sp)
/* 03A504 0043A504 AFBC0034 */  sw          $gp, 0x34($sp)
/* 03A508 0043A508 AFB70030 */  sw          $s7, 0x30($sp)
/* 03A50C 0043A50C AFB6002C */  sw          $s6, 0x2C($sp)
/* 03A510 0043A510 AFB50028 */  sw          $s5, 0x28($sp)
/* 03A514 0043A514 AFB40024 */  sw          $s4, 0x24($sp)
/* 03A518 0043A518 AFB30020 */  sw          $s3, 0x20($sp)
/* 03A51C 0043A51C AFB2001C */  sw          $s2, 0x1C($sp)
/* 03A520 0043A520 AFB10018 */  sw          $s1, 0x18($sp)
/* 03A524 0043A524 AFB00014 */  sw          $s0, 0x14($sp)
/* 03A528 0043A528 AFA40060 */  sw          $a0, 0x60($sp)
/* 03A52C 0043A52C AFA50064 */  sw          $a1, 0x64($sp)
/* 03A530 0043A530 AFA60068 */  sw          $a2, 0x68($sp)
/* 03A534 0043A534 0320F809 */  jalr        $t9
/* 03A538 0043A538 AFA7006C */   sw         $a3, 0x6C($sp)
/* 03A53C 0043A53C 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A540 0043A540 00408025 */  move        $s0, $v0
/* 03A544 0043A544 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A548 0043A548 8F9982F0 */  lw          $t9, %call16(obj_got)($gp)
/* 03A54C 0043A54C 0320F809 */  jalr        $t9
/* 03A550 0043A550 00000000 */   nop
/* 03A554 0043A554 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A558 0043A558 AFA20048 */  sw          $v0, 0x48($sp)
/* 03A55C 0043A55C 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A560 0043A560 8F9982F8 */  lw          $t9, %call16(obj_dynrel)($gp)
/* 03A564 0043A564 0320F809 */  jalr        $t9
/* 03A568 0043A568 00000000 */   nop
/* 03A56C 0043A56C 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A570 0043A570 AFA20044 */  sw          $v0, 0x44($sp)
/* 03A574 0043A574 24010003 */  addiu       $at, $zero, 0x3
/* 03A578 0043A578 8C8E0180 */  lw          $t6, 0x180($a0)
/* 03A57C 0043A57C 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A580 0043A580 15C10025 */  bne         $t6, $at, .L0043A618
/* 03A584 0043A584 00000000 */   nop
/* 03A588 0043A588 8F9982E4 */  lw          $t9, %call16(obj_dynsym)($gp)
/* 03A58C 0043A58C 0320F809 */  jalr        $t9
/* 03A590 0043A590 00000000 */   nop
/* 03A594 0043A594 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A598 0043A598 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A59C 0043A59C 00402825 */  move        $a1, $v0
/* 03A5A0 0043A5A0 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 03A5A4 0043A5A4 0320F809 */  jalr        $t9
/* 03A5A8 0043A5A8 00000000 */   nop
/* 03A5AC 0043A5AC 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A5B0 0043A5B0 00408025 */  move        $s0, $v0
/* 03A5B4 0043A5B4 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A5B8 0043A5B8 8F9982F0 */  lw          $t9, %call16(obj_got)($gp)
/* 03A5BC 0043A5BC 0320F809 */  jalr        $t9
/* 03A5C0 0043A5C0 00000000 */   nop
/* 03A5C4 0043A5C4 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A5C8 0043A5C8 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A5CC 0043A5CC 00402825 */  move        $a1, $v0
/* 03A5D0 0043A5D0 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 03A5D4 0043A5D4 0320F809 */  jalr        $t9
/* 03A5D8 0043A5D8 00000000 */   nop
/* 03A5DC 0043A5DC 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A5E0 0043A5E0 AFA20048 */  sw          $v0, 0x48($sp)
/* 03A5E4 0043A5E4 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A5E8 0043A5E8 8F9982F8 */  lw          $t9, %call16(obj_dynrel)($gp)
/* 03A5EC 0043A5EC 0320F809 */  jalr        $t9
/* 03A5F0 0043A5F0 00000000 */   nop
/* 03A5F4 0043A5F4 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A5F8 0043A5F8 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A5FC 0043A5FC 00402825 */  move        $a1, $v0
/* 03A600 0043A600 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 03A604 0043A604 0320F809 */  jalr        $t9
/* 03A608 0043A608 00000000 */   nop
/* 03A60C 0043A60C 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A610 0043A610 AFA20044 */  sw          $v0, 0x44($sp)
/* 03A614 0043A614 8FA40060 */  lw          $a0, 0x60($sp)
.L0043A618:
/* 03A618 0043A618 8F998340 */  lw          $t9, %call16(obj_dynrelsz)($gp)
/* 03A61C 0043A61C 0320F809 */  jalr        $t9
/* 03A620 0043A620 00000000 */   nop
/* 03A624 0043A624 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A628 0043A628 1040000B */  beqz        $v0, .L0043A658
/* 03A62C 0043A62C 0040B025 */   move       $s6, $v0
/* 03A630 0043A630 8F998348 */  lw          $t9, %call16(obj_dynrelent)($gp)
/* 03A634 0043A634 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A638 0043A638 0320F809 */  jalr        $t9
/* 03A63C 0043A63C 00000000 */   nop
/* 03A640 0043A640 02C2001B */  divu        $zero, $s6, $v0
/* 03A644 0043A644 0000B012 */  mflo        $s6
/* 03A648 0043A648 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A64C 0043A64C 14400002 */  bnez        $v0, .L0043A658
/* 03A650 0043A650 00000000 */   nop
/* 03A654 0043A654 0007000D */  break       7
.L0043A658:
/* 03A658 0043A658 8F998350 */  lw          $t9, %call16(obj_dynsymcount)($gp)
/* 03A65C 0043A65C 0000B825 */  move        $s7, $zero
/* 03A660 0043A660 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A664 0043A664 0320F809 */  jalr        $t9
/* 03A668 0043A668 00000000 */   nop
/* 03A66C 0043A66C 18400050 */  blez        $v0, .L0043A7B0
/* 03A670 0043A670 8FBC0034 */   lw         $gp, 0x34($sp)
/* 03A674 0043A674 00177900 */  sll         $t7, $s7, 4
/* 03A678 0043A678 020FA821 */  addu        $s5, $s0, $t7
/* 03A67C 0043A67C 241E0002 */  addiu       $fp, $zero, 0x2
.L0043A680:
/* 03A680 0043A680 8EB30004 */  lw          $s3, 0x4($s5)
/* 03A684 0043A684 8FB80064 */  lw          $t8, 0x64($sp)
/* 03A688 0043A688 12600041 */  beqz        $s3, .L0043A790
/* 03A68C 0043A68C 0278082B */   sltu       $at, $s3, $t8
/* 03A690 0043A690 1420000C */  bnez        $at, .L0043A6C4
/* 03A694 0043A694 8FB90068 */   lw         $t9, 0x68($sp)
/* 03A698 0043A698 03194021 */  addu        $t0, $t8, $t9
/* 03A69C 0043A69C 0268082B */  sltu        $at, $s3, $t0
/* 03A6A0 0043A6A0 10200008 */  beqz        $at, .L0043A6C4
/* 03A6A4 0043A6A4 8FA9006C */   lw         $t1, 0x6C($sp)
/* 03A6A8 0043A6A8 02785023 */  subu        $t2, $s3, $t8
/* 03A6AC 0043A6AC 000A5882 */  srl         $t3, $t2, 2
/* 03A6B0 0043A6B0 000B6080 */  sll         $t4, $t3, 2
/* 03A6B4 0043A6B4 012C6821 */  addu        $t5, $t1, $t4
/* 03A6B8 0043A6B8 8DAE0000 */  lw          $t6, 0x0($t5)
/* 03A6BC 0043A6BC 10000034 */  b           .L0043A790
/* 03A6C0 0043A6C0 AEAE0004 */   sw         $t6, 0x4($s5)
.L0043A6C4:
/* 03A6C4 0043A6C4 8FAF0070 */  lw          $t7, 0x70($sp)
/* 03A6C8 0043A6C8 8FB90074 */  lw          $t9, 0x74($sp)
/* 03A6CC 0043A6CC 026F082B */  sltu        $at, $s3, $t7
/* 03A6D0 0043A6D0 1420002F */  bnez        $at, .L0043A790
/* 03A6D4 0043A6D4 01F94021 */   addu       $t0, $t7, $t9
/* 03A6D8 0043A6D8 0268082B */  sltu        $at, $s3, $t0
/* 03A6DC 0043A6DC 1020002C */  beqz        $at, .L0043A790
/* 03A6E0 0043A6E0 8FB80078 */   lw         $t8, 0x78($sp)
/* 03A6E4 0043A6E4 026F5023 */  subu        $t2, $s3, $t7
/* 03A6E8 0043A6E8 000A5882 */  srl         $t3, $t2, 2
/* 03A6EC 0043A6EC 000B4880 */  sll         $t1, $t3, 2
/* 03A6F0 0043A6F0 03096021 */  addu        $t4, $t8, $t1
/* 03A6F4 0043A6F4 8D8D0000 */  lw          $t5, 0x0($t4)
/* 03A6F8 0043A6F8 00009025 */  move        $s2, $zero
/* 03A6FC 0043A6FC 1AC00024 */  blez        $s6, .L0043A790
/* 03A700 0043A700 AEAD0004 */   sw         $t5, 0x4($s5)
/* 03A704 0043A704 8FB00044 */  lw          $s0, 0x44($sp)
/* 03A708 0043A708 0016A0C0 */  sll         $s4, $s6, 3
.L0043A70C:
/* 03A70C 0043A70C 8E020004 */  lw          $v0, 0x4($s0)
/* 03A710 0043A710 00027202 */  srl         $t6, $v0, 8
/* 03A714 0043A714 16EE001B */  bne         $s7, $t6, .L0043A784
/* 03A718 0043A718 304500FF */   andi       $a1, $v0, 0xFF
/* 03A71C 0043A71C 17C50014 */  bne         $fp, $a1, .L0043A770
/* 03A720 0043A720 00000000 */   nop
/* 03A724 0043A724 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 03A728 0043A728 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A72C 0043A72C 8E050000 */  lw          $a1, 0x0($s0)
/* 03A730 0043A730 0320F809 */  jalr        $t9
/* 03A734 0043A734 00000000 */   nop
/* 03A738 0043A738 8C590000 */  lw          $t9, 0x0($v0)
/* 03A73C 0043A73C 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A740 0043A740 00408825 */  move        $s1, $v0
/* 03A744 0043A744 52790008 */  beql        $s3, $t9, .L0043A768
/* 03A748 0043A748 8EA80004 */   lw         $t0, 0x4($s5)
/* 03A74C 0043A74C 8F998490 */  lw          $t9, %call16(warning)($gp)
/* 03A750 0043A750 8F848030 */  lw          $a0, %got(STR_10008580)($gp)
/* 03A754 0043A754 8E050000 */  lw          $a1, 0x0($s0)
/* 03A758 0043A758 0320F809 */  jalr        $t9
/* 03A75C 0043A75C 24848580 */   addiu      $a0, $a0, %lo(STR_10008580)
/* 03A760 0043A760 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A764 0043A764 8EA80004 */  lw          $t0, 0x4($s5)
.L0043A768:
/* 03A768 0043A768 10000006 */  b           .L0043A784
/* 03A76C 0043A76C AE280000 */   sw         $t0, 0x0($s1)
.L0043A770:
/* 03A770 0043A770 8F998490 */  lw          $t9, %call16(warning)($gp)
/* 03A774 0043A774 8F848030 */  lw          $a0, %got(STR_100085A8)($gp)
/* 03A778 0043A778 0320F809 */  jalr        $t9
/* 03A77C 0043A77C 248485A8 */   addiu      $a0, $a0, %lo(STR_100085A8)
/* 03A780 0043A780 8FBC0034 */  lw          $gp, 0x34($sp)
.L0043A784:
/* 03A784 0043A784 26520008 */  addiu       $s2, $s2, 0x8
/* 03A788 0043A788 1654FFE0 */  bne         $s2, $s4, .L0043A70C
/* 03A78C 0043A78C 26100008 */   addiu      $s0, $s0, 0x8
.L0043A790:
/* 03A790 0043A790 8F998350 */  lw          $t9, %call16(obj_dynsymcount)($gp)
/* 03A794 0043A794 26F70001 */  addiu       $s7, $s7, 0x1
/* 03A798 0043A798 26B50010 */  addiu       $s5, $s5, 0x10
/* 03A79C 0043A79C 0320F809 */  jalr        $t9
/* 03A7A0 0043A7A0 8FA40060 */   lw         $a0, 0x60($sp)
/* 03A7A4 0043A7A4 02E2082A */  slt         $at, $s7, $v0
/* 03A7A8 0043A7A8 1420FFB5 */  bnez        $at, .L0043A680
/* 03A7AC 0043A7AC 8FBC0034 */   lw         $gp, 0x34($sp)
.L0043A7B0:
/* 03A7B0 0043A7B0 8F99830C */  lw          $t9, %call16(obj_locgotcount)($gp)
/* 03A7B4 0043A7B4 00009025 */  move        $s2, $zero
/* 03A7B8 0043A7B8 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A7BC 0043A7BC 0320F809 */  jalr        $t9
/* 03A7C0 0043A7C0 00000000 */   nop
/* 03A7C4 0043A7C4 18400010 */  blez        $v0, .L0043A808
/* 03A7C8 0043A7C8 8FBC0034 */   lw         $gp, 0x34($sp)
/* 03A7CC 0043A7CC 8FAF0048 */  lw          $t7, 0x48($sp)
/* 03A7D0 0043A7D0 00125080 */  sll         $t2, $s2, 2
/* 03A7D4 0043A7D4 01EA8021 */  addu        $s0, $t7, $t2
.L0043A7D8:
/* 03A7D8 0043A7D8 8E0B0000 */  lw          $t3, 0x0($s0)
/* 03A7DC 0043A7DC 3178FFFF */  andi        $t8, $t3, 0xFFFF
/* 03A7E0 0043A7E0 17000009 */  bnez        $t8, .L0043A808
/* 03A7E4 0043A7E4 00000000 */   nop
/* 03A7E8 0043A7E8 8F99830C */  lw          $t9, %call16(obj_locgotcount)($gp)
/* 03A7EC 0043A7EC 26520001 */  addiu       $s2, $s2, 0x1
/* 03A7F0 0043A7F0 26100004 */  addiu       $s0, $s0, 0x4
/* 03A7F4 0043A7F4 0320F809 */  jalr        $t9
/* 03A7F8 0043A7F8 8FA40060 */   lw         $a0, 0x60($sp)
/* 03A7FC 0043A7FC 0242082A */  slt         $at, $s2, $v0
/* 03A800 0043A800 1420FFF5 */  bnez        $at, .L0043A7D8
/* 03A804 0043A804 8FBC0034 */   lw         $gp, 0x34($sp)
.L0043A808:
/* 03A808 0043A808 8F99830C */  lw          $t9, %call16(obj_locgotcount)($gp)
/* 03A80C 0043A80C 0240B825 */  move        $s7, $s2
/* 03A810 0043A810 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A814 0043A814 0320F809 */  jalr        $t9
/* 03A818 0043A818 00000000 */   nop
/* 03A81C 0043A81C 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A820 0043A820 00408825 */  move        $s1, $v0
/* 03A824 0043A824 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A828 0043A828 8F998350 */  lw          $t9, %call16(obj_dynsymcount)($gp)
/* 03A82C 0043A82C 0320F809 */  jalr        $t9
/* 03A830 0043A830 00000000 */   nop
/* 03A834 0043A834 00514821 */  addu        $t1, $v0, $s1
/* 03A838 0043A838 0249082A */  slt         $at, $s2, $t1
/* 03A83C 0043A83C 10200032 */  beqz        $at, .L0043A908
/* 03A840 0043A840 8FBC0034 */   lw         $gp, 0x34($sp)
/* 03A844 0043A844 8FAC0048 */  lw          $t4, 0x48($sp)
/* 03A848 0043A848 00176880 */  sll         $t5, $s7, 2
/* 03A84C 0043A84C 018D8021 */  addu        $s0, $t4, $t5
.L0043A850:
/* 03A850 0043A850 8E020000 */  lw          $v0, 0x0($s0)
/* 03A854 0043A854 8FAE0064 */  lw          $t6, 0x64($sp)
/* 03A858 0043A858 1040001C */  beqz        $v0, .L0043A8CC
/* 03A85C 0043A85C 004E082B */   sltu       $at, $v0, $t6
/* 03A860 0043A860 1420000C */  bnez        $at, .L0043A894
/* 03A864 0043A864 8FB90068 */   lw         $t9, 0x68($sp)
/* 03A868 0043A868 01D94021 */  addu        $t0, $t6, $t9
/* 03A86C 0043A86C 0048082B */  sltu        $at, $v0, $t0
/* 03A870 0043A870 10200008 */  beqz        $at, .L0043A894
/* 03A874 0043A874 8FAF006C */   lw         $t7, 0x6C($sp)
/* 03A878 0043A878 004E5023 */  subu        $t2, $v0, $t6
/* 03A87C 0043A87C 000A5882 */  srl         $t3, $t2, 2
/* 03A880 0043A880 000BC080 */  sll         $t8, $t3, 2
/* 03A884 0043A884 01F84821 */  addu        $t1, $t7, $t8
/* 03A888 0043A888 8D2C0000 */  lw          $t4, 0x0($t1)
/* 03A88C 0043A88C 1000000F */  b           .L0043A8CC
/* 03A890 0043A890 AE0C0000 */   sw         $t4, 0x0($s0)
.L0043A894:
/* 03A894 0043A894 8FA30070 */  lw          $v1, 0x70($sp)
/* 03A898 0043A898 8FAD0074 */  lw          $t5, 0x74($sp)
/* 03A89C 0043A89C 0043082B */  sltu        $at, $v0, $v1
/* 03A8A0 0043A8A0 1420000A */  bnez        $at, .L0043A8CC
/* 03A8A4 0043A8A4 006DC821 */   addu       $t9, $v1, $t5
/* 03A8A8 0043A8A8 0059082B */  sltu        $at, $v0, $t9
/* 03A8AC 0043A8AC 10200007 */  beqz        $at, .L0043A8CC
/* 03A8B0 0043A8B0 8FA80078 */   lw         $t0, 0x78($sp)
/* 03A8B4 0043A8B4 00437023 */  subu        $t6, $v0, $v1
/* 03A8B8 0043A8B8 000E5082 */  srl         $t2, $t6, 2
/* 03A8BC 0043A8BC 000A5880 */  sll         $t3, $t2, 2
/* 03A8C0 0043A8C0 010B7821 */  addu        $t7, $t0, $t3
/* 03A8C4 0043A8C4 8DF80000 */  lw          $t8, 0x0($t7)
/* 03A8C8 0043A8C8 AE180000 */  sw          $t8, 0x0($s0)
.L0043A8CC:
/* 03A8CC 0043A8CC 8F99830C */  lw          $t9, %call16(obj_locgotcount)($gp)
/* 03A8D0 0043A8D0 26F70001 */  addiu       $s7, $s7, 0x1
/* 03A8D4 0043A8D4 26100004 */  addiu       $s0, $s0, 0x4
/* 03A8D8 0043A8D8 0320F809 */  jalr        $t9
/* 03A8DC 0043A8DC 8FA40060 */   lw         $a0, 0x60($sp)
/* 03A8E0 0043A8E0 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03A8E4 0043A8E4 00408825 */  move        $s1, $v0
/* 03A8E8 0043A8E8 8FA40060 */  lw          $a0, 0x60($sp)
/* 03A8EC 0043A8EC 8F998350 */  lw          $t9, %call16(obj_dynsymcount)($gp)
/* 03A8F0 0043A8F0 0320F809 */  jalr        $t9
/* 03A8F4 0043A8F4 00000000 */   nop
/* 03A8F8 0043A8F8 00514821 */  addu        $t1, $v0, $s1
/* 03A8FC 0043A8FC 02E9082A */  slt         $at, $s7, $t1
/* 03A900 0043A900 1420FFD3 */  bnez        $at, .L0043A850
/* 03A904 0043A904 8FBC0034 */   lw         $gp, 0x34($sp)
.L0043A908:
/* 03A908 0043A908 8FBF003C */  lw          $ra, 0x3C($sp)
/* 03A90C 0043A90C 8FB00014 */  lw          $s0, 0x14($sp)
/* 03A910 0043A910 8FB10018 */  lw          $s1, 0x18($sp)
/* 03A914 0043A914 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03A918 0043A918 8FB30020 */  lw          $s3, 0x20($sp)
/* 03A91C 0043A91C 8FB40024 */  lw          $s4, 0x24($sp)
/* 03A920 0043A920 8FB50028 */  lw          $s5, 0x28($sp)
/* 03A924 0043A924 8FB6002C */  lw          $s6, 0x2C($sp)
/* 03A928 0043A928 8FB70030 */  lw          $s7, 0x30($sp)
/* 03A92C 0043A92C 8FBE0038 */  lw          $fp, 0x38($sp)
/* 03A930 0043A930 03E00008 */  jr          $ra
/* 03A934 0043A934 27BD0060 */   addiu      $sp, $sp, 0x60
