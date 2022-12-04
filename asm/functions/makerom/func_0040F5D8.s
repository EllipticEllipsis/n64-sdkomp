.section .rodata
glabel STR_100058D4
/* 0458D4 100058D4 */ .asciz "makerom: %s: can't get section index %d\n"
                      .balign 4

glabel STR_10005900
/* 045900 10005900 */ .asciz "makerom: %s: can't get section index %d\n"
                      .balign 4

glabel STR_1000592C
/* 04592C 1000592C */ .asciz "makerom: %s: cannot find %s section\n"
                      .balign 4


.section .text
glabel func_0040F5D8 # 28
/* 00F5D8 0040F5D8 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00F5DC 0040F5DC 279C3788 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC03788
/* 00F5E0 0040F5E0 0399E021 */  addu        $gp, $gp, $t9
/* 00F5E4 0040F5E4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00F5E8 0040F5E8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00F5EC 0040F5EC AFBC0018 */  sw          $gp, 0x18($sp)
/* 00F5F0 0040F5F0 AFA40030 */  sw          $a0, 0x30($sp)
/* 00F5F4 0040F5F4 AFA50034 */  sw          $a1, 0x34($sp)
/* 00F5F8 0040F5F8 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00F5FC 0040F5FC 8DCF0118 */  lw          $t7, 0x118($t6)
/* 00F600 0040F600 AFAF0024 */  sw          $t7, 0x24($sp)
/* 00F604 0040F604 8DD80010 */  lw          $t8, 0x10($t6)
/* 00F608 0040F608 97190030 */  lhu         $t9, 0x30($t8)
/* 00F60C 0040F60C 01F9082B */  sltu        $at, $t7, $t9
/* 00F610 0040F610 1020003C */  beqz        $at, .L0040F704
/* 00F614 0040F614 00000000 */   nop
.L0040F618:
/* 00F618 0040F618 8F998224 */  lw          $t9, %call16(_elf_getscn)($gp)
/* 00F61C 0040F61C 8FA80030 */  lw          $t0, 0x30($sp)
/* 00F620 0040F620 8FA50024 */  lw          $a1, 0x24($sp)
/* 00F624 0040F624 0320F809 */  jalr        $t9
/* 00F628 0040F628 8D04000C */   lw         $a0, 0xC($t0)
/* 00F62C 0040F62C AFA2002C */  sw          $v0, 0x2C($sp)
/* 00F630 0040F630 8FA9002C */  lw          $t1, 0x2C($sp)
/* 00F634 0040F634 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F638 0040F638 1120000A */  beqz        $t1, .L0040F664
/* 00F63C 0040F63C 00000000 */   nop
/* 00F640 0040F640 8F998210 */  lw          $t9, %call16(elf32_getshdr)($gp)
/* 00F644 0040F644 01202025 */  move        $a0, $t1
/* 00F648 0040F648 0320F809 */  jalr        $t9
/* 00F64C 0040F64C 00000000 */   nop
/* 00F650 0040F650 AFA20028 */  sw          $v0, 0x28($sp)
/* 00F654 0040F654 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00F658 0040F658 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F65C 0040F65C 1540000D */  bnez        $t2, .L0040F694
/* 00F660 0040F660 00000000 */   nop
.L0040F664:
/* 00F664 0040F664 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00F668 0040F668 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00F66C 0040F66C 8F85802C */  lw          $a1, %got(STR_100058D4)($gp)
/* 00F670 0040F670 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00F674 0040F674 8FA70024 */  lw          $a3, 0x24($sp)
/* 00F678 0040F678 24840020 */  addiu       $a0, $a0, 0x20
/* 00F67C 0040F67C 24A558D4 */  addiu       $a1, $a1, %lo(STR_100058D4)
/* 00F680 0040F680 0320F809 */  jalr        $t9
/* 00F684 0040F684 8D660004 */   lw         $a2, 0x4($t3)
/* 00F688 0040F688 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F68C 0040F68C 10000085 */  b           .L0040F8A4
/* 00F690 0040F690 00001025 */   move       $v0, $zero
.L0040F694:
/* 00F694 0040F694 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00F698 0040F698 8F9981E8 */  lw          $t9, %call16(elf_strptr)($gp)
/* 00F69C 0040F69C 8FAE0028 */  lw          $t6, 0x28($sp)
/* 00F6A0 0040F6A0 8D8D0010 */  lw          $t5, 0x10($t4)
/* 00F6A4 0040F6A4 8D84000C */  lw          $a0, 0xC($t4)
/* 00F6A8 0040F6A8 8DC60000 */  lw          $a2, 0x0($t6)
/* 00F6AC 0040F6AC 0320F809 */  jalr        $t9
/* 00F6B0 0040F6B0 95A50032 */   lhu        $a1, 0x32($t5)
/* 00F6B4 0040F6B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F6B8 0040F6B8 AFA20020 */  sw          $v0, 0x20($sp)
/* 00F6BC 0040F6BC 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 00F6C0 0040F6C0 8FA40020 */  lw          $a0, 0x20($sp)
/* 00F6C4 0040F6C4 8FA50034 */  lw          $a1, 0x34($sp)
/* 00F6C8 0040F6C8 0320F809 */  jalr        $t9
/* 00F6CC 0040F6CC 00000000 */   nop
/* 00F6D0 0040F6D0 14400003 */  bnez        $v0, .L0040F6E0
/* 00F6D4 0040F6D4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00F6D8 0040F6D8 1000000A */  b           .L0040F704
/* 00F6DC 0040F6DC 00000000 */   nop
.L0040F6E0:
/* 00F6E0 0040F6E0 8FB80024 */  lw          $t8, 0x24($sp)
/* 00F6E4 0040F6E4 8FB90030 */  lw          $t9, 0x30($sp)
/* 00F6E8 0040F6E8 270F0001 */  addiu       $t7, $t8, 0x1
/* 00F6EC 0040F6EC AFAF0024 */  sw          $t7, 0x24($sp)
/* 00F6F0 0040F6F0 8F280010 */  lw          $t0, 0x10($t9)
/* 00F6F4 0040F6F4 95090030 */  lhu         $t1, 0x30($t0)
/* 00F6F8 0040F6F8 01E9082B */  sltu        $at, $t7, $t1
/* 00F6FC 0040F6FC 1420FFC6 */  bnez        $at, .L0040F618
/* 00F700 0040F700 00000000 */   nop
.L0040F704:
/* 00F704 0040F704 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00F708 0040F708 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00F70C 0040F70C 8D6C0010 */  lw          $t4, 0x10($t3)
/* 00F710 0040F710 958D0030 */  lhu         $t5, 0x30($t4)
/* 00F714 0040F714 014D082B */  sltu        $at, $t2, $t5
/* 00F718 0040F718 10200007 */  beqz        $at, .L0040F738
/* 00F71C 0040F71C 00000000 */   nop
/* 00F720 0040F720 8FAE0024 */  lw          $t6, 0x24($sp)
/* 00F724 0040F724 8FB90030 */  lw          $t9, 0x30($sp)
/* 00F728 0040F728 25D80001 */  addiu       $t8, $t6, 0x1
/* 00F72C 0040F72C AF380118 */  sw          $t8, 0x118($t9)
/* 00F730 0040F730 1000005C */  b           .L0040F8A4
/* 00F734 0040F734 8FA20028 */   lw         $v0, 0x28($sp)
.L0040F738:
/* 00F738 0040F738 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00F73C 0040F73C 24080001 */  addiu       $t0, $zero, 0x1
/* 00F740 0040F740 AFA80024 */  sw          $t0, 0x24($sp)
/* 00F744 0040F744 8DE90118 */  lw          $t1, 0x118($t7)
/* 00F748 0040F748 2D210002 */  sltiu       $at, $t1, 0x2
/* 00F74C 0040F74C 1420003B */  bnez        $at, .L0040F83C
/* 00F750 0040F750 00000000 */   nop
.L0040F754:
/* 00F754 0040F754 8F998224 */  lw          $t9, %call16(_elf_getscn)($gp)
/* 00F758 0040F758 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00F75C 0040F75C 8FA50024 */  lw          $a1, 0x24($sp)
/* 00F760 0040F760 0320F809 */  jalr        $t9
/* 00F764 0040F764 8D64000C */   lw         $a0, 0xC($t3)
/* 00F768 0040F768 AFA2002C */  sw          $v0, 0x2C($sp)
/* 00F76C 0040F76C 8FAC002C */  lw          $t4, 0x2C($sp)
/* 00F770 0040F770 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F774 0040F774 1180000A */  beqz        $t4, .L0040F7A0
/* 00F778 0040F778 00000000 */   nop
/* 00F77C 0040F77C 8F998210 */  lw          $t9, %call16(elf32_getshdr)($gp)
/* 00F780 0040F780 01802025 */  move        $a0, $t4
/* 00F784 0040F784 0320F809 */  jalr        $t9
/* 00F788 0040F788 00000000 */   nop
/* 00F78C 0040F78C AFA20028 */  sw          $v0, 0x28($sp)
/* 00F790 0040F790 8FAA0028 */  lw          $t2, 0x28($sp)
/* 00F794 0040F794 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F798 0040F798 1540000D */  bnez        $t2, .L0040F7D0
/* 00F79C 0040F79C 00000000 */   nop
.L0040F7A0:
/* 00F7A0 0040F7A0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00F7A4 0040F7A4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00F7A8 0040F7A8 8F85802C */  lw          $a1, %got(STR_10005900)($gp)
/* 00F7AC 0040F7AC 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00F7B0 0040F7B0 8FA70024 */  lw          $a3, 0x24($sp)
/* 00F7B4 0040F7B4 24840020 */  addiu       $a0, $a0, 0x20
/* 00F7B8 0040F7B8 24A55900 */  addiu       $a1, $a1, %lo(STR_10005900)
/* 00F7BC 0040F7BC 0320F809 */  jalr        $t9
/* 00F7C0 0040F7C0 8DA60004 */   lw         $a2, 0x4($t5)
/* 00F7C4 0040F7C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F7C8 0040F7C8 10000036 */  b           .L0040F8A4
/* 00F7CC 0040F7CC 00001025 */   move       $v0, $zero
.L0040F7D0:
/* 00F7D0 0040F7D0 8FB90028 */  lw          $t9, 0x28($sp)
/* 00F7D4 0040F7D4 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00F7D8 0040F7D8 8F260000 */  lw          $a2, 0x0($t9)
/* 00F7DC 0040F7DC 8F9981E8 */  lw          $t9, %call16(elf_strptr)($gp)
/* 00F7E0 0040F7E0 8DD80010 */  lw          $t8, 0x10($t6)
/* 00F7E4 0040F7E4 8DC4000C */  lw          $a0, 0xC($t6)
/* 00F7E8 0040F7E8 0320F809 */  jalr        $t9
/* 00F7EC 0040F7EC 97050032 */   lhu        $a1, 0x32($t8)
/* 00F7F0 0040F7F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F7F4 0040F7F4 AFA20020 */  sw          $v0, 0x20($sp)
/* 00F7F8 0040F7F8 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 00F7FC 0040F7FC 8FA40020 */  lw          $a0, 0x20($sp)
/* 00F800 0040F800 8FA50034 */  lw          $a1, 0x34($sp)
/* 00F804 0040F804 0320F809 */  jalr        $t9
/* 00F808 0040F808 00000000 */   nop
/* 00F80C 0040F80C 14400003 */  bnez        $v0, .L0040F81C
/* 00F810 0040F810 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00F814 0040F814 10000009 */  b           .L0040F83C
/* 00F818 0040F818 00000000 */   nop
.L0040F81C:
/* 00F81C 0040F81C 8FA80024 */  lw          $t0, 0x24($sp)
/* 00F820 0040F820 8FA90030 */  lw          $t1, 0x30($sp)
/* 00F824 0040F824 250F0001 */  addiu       $t7, $t0, 0x1
/* 00F828 0040F828 AFAF0024 */  sw          $t7, 0x24($sp)
/* 00F82C 0040F82C 8D2B0118 */  lw          $t3, 0x118($t1)
/* 00F830 0040F830 01EB082B */  sltu        $at, $t7, $t3
/* 00F834 0040F834 1420FFC7 */  bnez        $at, .L0040F754
/* 00F838 0040F838 00000000 */   nop
.L0040F83C:
/* 00F83C 0040F83C 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00F840 0040F840 8FAC0024 */  lw          $t4, 0x24($sp)
/* 00F844 0040F844 8D4D0118 */  lw          $t5, 0x118($t2)
/* 00F848 0040F848 018D082B */  sltu        $at, $t4, $t5
/* 00F84C 0040F84C 1420000D */  bnez        $at, .L0040F884
/* 00F850 0040F850 00000000 */   nop
/* 00F854 0040F854 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00F858 0040F858 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00F85C 0040F85C 8F85802C */  lw          $a1, %got(STR_1000592C)($gp)
/* 00F860 0040F860 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00F864 0040F864 8FA70034 */  lw          $a3, 0x34($sp)
/* 00F868 0040F868 24840020 */  addiu       $a0, $a0, 0x20
/* 00F86C 0040F86C 24A5592C */  addiu       $a1, $a1, %lo(STR_1000592C)
/* 00F870 0040F870 0320F809 */  jalr        $t9
/* 00F874 0040F874 8DC60004 */   lw         $a2, 0x4($t6)
/* 00F878 0040F878 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F87C 0040F87C 10000009 */  b           .L0040F8A4
/* 00F880 0040F880 00001025 */   move       $v0, $zero
.L0040F884:
/* 00F884 0040F884 8FB80024 */  lw          $t8, 0x24($sp)
/* 00F888 0040F888 8FA80030 */  lw          $t0, 0x30($sp)
/* 00F88C 0040F88C 27190001 */  addiu       $t9, $t8, 0x1
/* 00F890 0040F890 AD190118 */  sw          $t9, 0x118($t0)
/* 00F894 0040F894 10000003 */  b           .L0040F8A4
/* 00F898 0040F898 8FA20028 */   lw         $v0, 0x28($sp)
/* 00F89C 0040F89C 10000001 */  b           .L0040F8A4
/* 00F8A0 0040F8A0 00000000 */   nop
.L0040F8A4:
/* 00F8A4 0040F8A4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00F8A8 0040F8A8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00F8AC 0040F8AC 03E00008 */  jr          $ra
/* 00F8B0 0040F8B0 00000000 */   nop
