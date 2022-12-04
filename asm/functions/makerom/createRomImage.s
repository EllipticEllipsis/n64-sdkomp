.section .rodata
glabel STR_100055EC
/* 0455EC 100055EC */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10005600
/* 045600 10005600 */ .asciz ".text"
                      .balign 4

glabel STR_10005608
/* 045608 10005608 */ .asciz "makerom: entr size %d is larger than %d\n"
                      .balign 4

glabel STR_10005634
/* 045634 10005634 */ .asciz "makerom: lseek of entry section failed\n"
                      .balign 4

glabel STR_1000565C
/* 04565C 1000565C */ .asciz "makerom: read of entry section failed\n"
                      .balign 4

glabel STR_10005684
/* 045684 10005684 */ .asciz "w+"
                      .balign 4

glabel STR_10005688
/* 045688 10005688 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_1000569C
/* 04569C 1000569C */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100056BC
/* 0456BC 100056BC */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_100056D8
/* 0456D8 100056D8 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100056F8
/* 0456F8 100056F8 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_10005714
/* 045714 10005714 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_10005734
/* 045734 10005734 */ .asciz "makerom: %s: read error \n"
                      .balign 4

glabel STR_10005750
/* 045750 10005750 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_10005770
/* 045770 10005770 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_1000578C
/* 04578C 1000578C */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100057AC
/* 0457AC 100057AC */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_100057C8
/* 0457C8 100057C8 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100057E8
/* 0457E8 100057E8 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_10005804
/* 045804 10005804 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_10005824
/* 045824 10005824 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_10005840
/* 045840 10005840 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10005850
/* 045850 10005850 */ .asciz "makerom: %s: write error %x\n"
                      .balign 4

glabel STR_10005870
/* 045870 10005870 */ .asciz "makerom: %s: write error\n"
                      .balign 4


.section .text
glabel createRomImage # 25
/* 00E748 0040E748 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00E74C 0040E74C 279C4618 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC04618
/* 00E750 0040E750 0399E021 */  addu        $gp, $gp, $t9
/* 00E754 0040E754 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 00E758 0040E758 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00E75C 0040E75C AFBC0018 */  sw          $gp, 0x18($sp)
/* 00E760 0040E760 AFA40060 */  sw          $a0, 0x60($sp)
/* 00E764 0040E764 AFA50064 */  sw          $a1, 0x64($sp)
/* 00E768 0040E768 8F9980B8 */  lw          $t9, %call16(open)($gp)
/* 00E76C 0040E76C 8FA40064 */  lw          $a0, 0x64($sp)
/* 00E770 0040E770 00002825 */  move        $a1, $zero
/* 00E774 0040E774 0320F809 */  jalr        $t9
/* 00E778 0040E778 00000000 */   nop
/* 00E77C 0040E77C AFA20048 */  sw          $v0, 0x48($sp)
/* 00E780 0040E780 8FAE0048 */  lw          $t6, 0x48($sp)
/* 00E784 0040E784 2401FFFF */  addiu       $at, $zero, -0x1
/* 00E788 0040E788 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E78C 0040E78C 15C10011 */  bne         $t6, $at, .L0040E7D4
/* 00E790 0040E790 00000000 */   nop
/* 00E794 0040E794 8F8F8050 */  lw          $t7, %got(errno)($gp)
/* 00E798 0040E798 8F998054 */  lw          $t9, %got(sys_errlist)($gp)
/* 00E79C 0040E79C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00E7A0 0040E7A0 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00E7A4 0040E7A4 8F85802C */  lw          $a1, %got(STR_100055EC)($gp)
/* 00E7A8 0040E7A8 8FA60064 */  lw          $a2, 0x64($sp)
/* 00E7AC 0040E7AC 000FC080 */  sll         $t8, $t7, 2
/* 00E7B0 0040E7B0 03194021 */  addu        $t0, $t8, $t9
/* 00E7B4 0040E7B4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E7B8 0040E7B8 8D070000 */  lw          $a3, 0x0($t0)
/* 00E7BC 0040E7BC 24840020 */  addiu       $a0, $a0, 0x20
/* 00E7C0 0040E7C0 0320F809 */  jalr        $t9
/* 00E7C4 0040E7C4 24A555EC */   addiu      $a1, $a1, %lo(STR_100055EC)
/* 00E7C8 0040E7C8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E7CC 0040E7CC 10000293 */  b           .L0040F21C
/* 00E7D0 0040E7D0 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E7D4:
/* 00E7D4 0040E7D4 8F9981EC */  lw          $t9, %call16(elf_begin)($gp)
/* 00E7D8 0040E7D8 8FA40048 */  lw          $a0, 0x48($sp)
/* 00E7DC 0040E7DC 24050001 */  addiu       $a1, $zero, 0x1
/* 00E7E0 0040E7E0 0320F809 */  jalr        $t9
/* 00E7E4 0040E7E4 00003025 */   move       $a2, $zero
/* 00E7E8 0040E7E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E7EC 0040E7EC AFA20044 */  sw          $v0, 0x44($sp)
/* 00E7F0 0040E7F0 8F998204 */  lw          $t9, %call16(elf32_getehdr)($gp)
/* 00E7F4 0040E7F4 8FA40044 */  lw          $a0, 0x44($sp)
/* 00E7F8 0040E7F8 0320F809 */  jalr        $t9
/* 00E7FC 0040E7FC 00000000 */   nop
/* 00E800 0040E800 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E804 0040E804 AFA20040 */  sw          $v0, 0x40($sp)
/* 00E808 0040E808 8FAA0040 */  lw          $t2, 0x40($sp)
/* 00E80C 0040E80C 24090001 */  addiu       $t1, $zero, 0x1
/* 00E810 0040E810 AFA90034 */  sw          $t1, 0x34($sp)
/* 00E814 0040E814 954B0030 */  lhu         $t3, 0x30($t2)
/* 00E818 0040E818 29610002 */  slti        $at, $t3, 0x2
/* 00E81C 0040E81C 14200028 */  bnez        $at, .L0040E8C0
/* 00E820 0040E820 00000000 */   nop
.L0040E824:
/* 00E824 0040E824 8F998224 */  lw          $t9, %call16(_elf_getscn)($gp)
/* 00E828 0040E828 8FA40044 */  lw          $a0, 0x44($sp)
/* 00E82C 0040E82C 8FA50034 */  lw          $a1, 0x34($sp)
/* 00E830 0040E830 0320F809 */  jalr        $t9
/* 00E834 0040E834 00000000 */   nop
/* 00E838 0040E838 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E83C 0040E83C AFA2003C */  sw          $v0, 0x3C($sp)
/* 00E840 0040E840 8F998210 */  lw          $t9, %call16(elf32_getshdr)($gp)
/* 00E844 0040E844 8FA4003C */  lw          $a0, 0x3C($sp)
/* 00E848 0040E848 0320F809 */  jalr        $t9
/* 00E84C 0040E84C 00000000 */   nop
/* 00E850 0040E850 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E854 0040E854 AFA20038 */  sw          $v0, 0x38($sp)
/* 00E858 0040E858 8F9981E8 */  lw          $t9, %call16(elf_strptr)($gp)
/* 00E85C 0040E85C 8FAC0040 */  lw          $t4, 0x40($sp)
/* 00E860 0040E860 8FAD0038 */  lw          $t5, 0x38($sp)
/* 00E864 0040E864 8FA40044 */  lw          $a0, 0x44($sp)
/* 00E868 0040E868 95850032 */  lhu         $a1, 0x32($t4)
/* 00E86C 0040E86C 0320F809 */  jalr        $t9
/* 00E870 0040E870 8DA60000 */   lw         $a2, 0x0($t5)
/* 00E874 0040E874 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E878 0040E878 AFA20050 */  sw          $v0, 0x50($sp)
/* 00E87C 0040E87C 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 00E880 0040E880 8F85802C */  lw          $a1, %got(STR_10005600)($gp)
/* 00E884 0040E884 8FA40050 */  lw          $a0, 0x50($sp)
/* 00E888 0040E888 0320F809 */  jalr        $t9
/* 00E88C 0040E88C 24A55600 */   addiu      $a1, $a1, %lo(STR_10005600)
/* 00E890 0040E890 14400003 */  bnez        $v0, .L0040E8A0
/* 00E894 0040E894 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00E898 0040E898 10000009 */  b           .L0040E8C0
/* 00E89C 0040E89C 00000000 */   nop
.L0040E8A0:
/* 00E8A0 0040E8A0 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00E8A4 0040E8A4 8FB80040 */  lw          $t8, 0x40($sp)
/* 00E8A8 0040E8A8 25CF0001 */  addiu       $t7, $t6, 0x1
/* 00E8AC 0040E8AC AFAF0034 */  sw          $t7, 0x34($sp)
/* 00E8B0 0040E8B0 97190030 */  lhu         $t9, 0x30($t8)
/* 00E8B4 0040E8B4 01F9082A */  slt         $at, $t7, $t9
/* 00E8B8 0040E8B8 1420FFDA */  bnez        $at, .L0040E824
/* 00E8BC 0040E8BC 00000000 */   nop
.L0040E8C0:
/* 00E8C0 0040E8C0 8FA80038 */  lw          $t0, 0x38($sp)
/* 00E8C4 0040E8C4 8D090014 */  lw          $t1, 0x14($t0)
/* 00E8C8 0040E8C8 2D210051 */  sltiu       $at, $t1, 0x51
/* 00E8CC 0040E8CC 1420000D */  bnez        $at, .L0040E904
/* 00E8D0 0040E8D0 00000000 */   nop
/* 00E8D4 0040E8D4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E8D8 0040E8D8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00E8DC 0040E8DC 8F85802C */  lw          $a1, %got(STR_10005608)($gp)
/* 00E8E0 0040E8E0 8FAA0038 */  lw          $t2, 0x38($sp)
/* 00E8E4 0040E8E4 24070050 */  addiu       $a3, $zero, 0x50
/* 00E8E8 0040E8E8 24840020 */  addiu       $a0, $a0, 0x20
/* 00E8EC 0040E8EC 24A55608 */  addiu       $a1, $a1, %lo(STR_10005608)
/* 00E8F0 0040E8F0 0320F809 */  jalr        $t9
/* 00E8F4 0040E8F4 8D460014 */   lw         $a2, 0x14($t2)
/* 00E8F8 0040E8F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E8FC 0040E8FC 10000247 */  b           .L0040F21C
/* 00E900 0040E900 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E904:
/* 00E904 0040E904 8F9980DC */  lw          $t9, %call16(lseek)($gp)
/* 00E908 0040E908 8FAB0038 */  lw          $t3, 0x38($sp)
/* 00E90C 0040E90C 8FA40048 */  lw          $a0, 0x48($sp)
/* 00E910 0040E910 00003025 */  move        $a2, $zero
/* 00E914 0040E914 0320F809 */  jalr        $t9
/* 00E918 0040E918 8D650010 */   lw         $a1, 0x10($t3)
/* 00E91C 0040E91C 2401FFFF */  addiu       $at, $zero, -0x1
/* 00E920 0040E920 1441000A */  bne         $v0, $at, .L0040E94C
/* 00E924 0040E924 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00E928 0040E928 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E92C 0040E92C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00E930 0040E930 8F85802C */  lw          $a1, %got(STR_10005634)($gp)
/* 00E934 0040E934 24840020 */  addiu       $a0, $a0, 0x20
/* 00E938 0040E938 0320F809 */  jalr        $t9
/* 00E93C 0040E93C 24A55634 */   addiu      $a1, $a1, %lo(STR_10005634)
/* 00E940 0040E940 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E944 0040E944 10000235 */  b           .L0040F21C
/* 00E948 0040E948 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E94C:
/* 00E94C 0040E94C 8F9980C8 */  lw          $t9, %call16(read)($gp)
/* 00E950 0040E950 8F858030 */  lw          $a1, %got(B_1000BA80)($gp)
/* 00E954 0040E954 8FAC0038 */  lw          $t4, 0x38($sp)
/* 00E958 0040E958 8FA40048 */  lw          $a0, 0x48($sp)
/* 00E95C 0040E95C 8CA5BA80 */  lw          $a1, %lo(B_1000BA80)($a1)
/* 00E960 0040E960 0320F809 */  jalr        $t9
/* 00E964 0040E964 8D860014 */   lw         $a2, 0x14($t4)
/* 00E968 0040E968 8FAD0038 */  lw          $t5, 0x38($sp)
/* 00E96C 0040E96C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E970 0040E970 8DAE0014 */  lw          $t6, 0x14($t5)
/* 00E974 0040E974 104E000A */  beq         $v0, $t6, .L0040E9A0
/* 00E978 0040E978 00000000 */   nop
/* 00E97C 0040E97C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00E980 0040E980 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00E984 0040E984 8F85802C */  lw          $a1, %got(STR_1000565C)($gp)
/* 00E988 0040E988 24840020 */  addiu       $a0, $a0, 0x20
/* 00E98C 0040E98C 0320F809 */  jalr        $t9
/* 00E990 0040E990 24A5565C */   addiu      $a1, $a1, %lo(STR_1000565C)
/* 00E994 0040E994 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E998 0040E998 10000220 */  b           .L0040F21C
/* 00E99C 0040E99C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E9A0:
/* 00E9A0 0040E9A0 8F998018 */  lw          $t9, %got(func_0040F22C)($gp)
/* 00E9A4 0040E9A4 2739F22C */  addiu       $t9, $t9, %lo(func_0040F22C)
/* 00E9A8 0040E9A8 0320F809 */  jalr        $t9
/* 00E9AC 0040E9AC 00000000 */   nop
/* 00E9B0 0040E9B0 10400003 */  beqz        $v0, .L0040E9C0
/* 00E9B4 0040E9B4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00E9B8 0040E9B8 10000218 */  b           .L0040F21C
/* 00E9BC 0040E9BC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040E9C0:
/* 00E9C0 0040E9C0 8F988658 */  lw          $t8, %got(segmentList)($gp)
/* 00E9C4 0040E9C4 8F180000 */  lw          $t8, 0x0($t8)
/* 00E9C8 0040E9C8 13000025 */  beqz        $t8, .L0040EA60
/* 00E9CC 0040E9CC AFB80058 */   sw         $t8, 0x58($sp)
.L0040E9D0:
/* 00E9D0 0040E9D0 8FAF0058 */  lw          $t7, 0x58($sp)
/* 00E9D4 0040E9D4 8DF90028 */  lw          $t9, 0x28($t7)
/* 00E9D8 0040E9D8 33280002 */  andi        $t0, $t9, 0x2
/* 00E9DC 0040E9DC 11000008 */  beqz        $t0, .L0040EA00
/* 00E9E0 0040E9E0 00000000 */   nop
/* 00E9E4 0040E9E4 8F998018 */  lw          $t9, %got(func_0040F8B4)($gp)
/* 00E9E8 0040E9E8 8FA40058 */  lw          $a0, 0x58($sp)
/* 00E9EC 0040E9EC 2739F8B4 */  addiu       $t9, $t9, %lo(func_0040F8B4)
/* 00E9F0 0040E9F0 0320F809 */  jalr        $t9
/* 00E9F4 0040E9F4 00000000 */   nop
/* 00E9F8 0040E9F8 1000000C */  b           .L0040EA2C
/* 00E9FC 0040E9FC 8FBC0018 */   lw         $gp, 0x18($sp)
.L0040EA00:
/* 00EA00 0040EA00 8FA90058 */  lw          $t1, 0x58($sp)
/* 00EA04 0040EA04 8D2A0028 */  lw          $t2, 0x28($t1)
/* 00EA08 0040EA08 314B0004 */  andi        $t3, $t2, 0x4
/* 00EA0C 0040EA0C 11600007 */  beqz        $t3, .L0040EA2C
/* 00EA10 0040EA10 00000000 */   nop
/* 00EA14 0040EA14 8F998018 */  lw          $t9, %got(func_0040FF3C)($gp)
/* 00EA18 0040EA18 8FA40058 */  lw          $a0, 0x58($sp)
/* 00EA1C 0040EA1C 2739FF3C */  addiu       $t9, $t9, %lo(func_0040FF3C)
/* 00EA20 0040EA20 0320F809 */  jalr        $t9
/* 00EA24 0040EA24 00000000 */   nop
/* 00EA28 0040EA28 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040EA2C:
/* 00EA2C 0040EA2C 8FAC0058 */  lw          $t4, 0x58($sp)
/* 00EA30 0040EA30 8D8D0024 */  lw          $t5, 0x24($t4)
/* 00EA34 0040EA34 8D8E002C */  lw          $t6, 0x2C($t4)
/* 00EA38 0040EA38 8D8F0030 */  lw          $t7, 0x30($t4)
/* 00EA3C 0040EA3C 8D880034 */  lw          $t0, 0x34($t4)
/* 00EA40 0040EA40 01AEC021 */  addu        $t8, $t5, $t6
/* 00EA44 0040EA44 030FC821 */  addu        $t9, $t8, $t7
/* 00EA48 0040EA48 03284821 */  addu        $t1, $t9, $t0
/* 00EA4C 0040EA4C AFA9004C */  sw          $t1, 0x4C($sp)
/* 00EA50 0040EA50 8FAA0058 */  lw          $t2, 0x58($sp)
/* 00EA54 0040EA54 8D4B0000 */  lw          $t3, 0x0($t2)
/* 00EA58 0040EA58 1560FFDD */  bnez        $t3, .L0040E9D0
/* 00EA5C 0040EA5C AFAB0058 */   sw         $t3, 0x58($sp)
.L0040EA60:
/* 00EA60 0040EA60 8F998080 */  lw          $t9, %call16(fopen)($gp)
/* 00EA64 0040EA64 8F85802C */  lw          $a1, %got(STR_10005684)($gp)
/* 00EA68 0040EA68 8FA40060 */  lw          $a0, 0x60($sp)
/* 00EA6C 0040EA6C 0320F809 */  jalr        $t9
/* 00EA70 0040EA70 24A55684 */   addiu      $a1, $a1, %lo(STR_10005684)
/* 00EA74 0040EA74 AFA2005C */  sw          $v0, 0x5C($sp)
/* 00EA78 0040EA78 8FAD005C */  lw          $t5, 0x5C($sp)
/* 00EA7C 0040EA7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EA80 0040EA80 15A00011 */  bnez        $t5, .L0040EAC8
/* 00EA84 0040EA84 00000000 */   nop
/* 00EA88 0040EA88 8F8E8050 */  lw          $t6, %got(errno)($gp)
/* 00EA8C 0040EA8C 8F8F8054 */  lw          $t7, %got(sys_errlist)($gp)
/* 00EA90 0040EA90 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EA94 0040EA94 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00EA98 0040EA98 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EA9C 0040EA9C 8F85802C */  lw          $a1, %got(STR_10005688)($gp)
/* 00EAA0 0040EAA0 000EC080 */  sll         $t8, $t6, 2
/* 00EAA4 0040EAA4 030F6021 */  addu        $t4, $t8, $t7
/* 00EAA8 0040EAA8 8D870000 */  lw          $a3, 0x0($t4)
/* 00EAAC 0040EAAC 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EAB0 0040EAB0 24840020 */  addiu       $a0, $a0, 0x20
/* 00EAB4 0040EAB4 0320F809 */  jalr        $t9
/* 00EAB8 0040EAB8 24A55688 */   addiu      $a1, $a1, %lo(STR_10005688)
/* 00EABC 0040EABC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EAC0 0040EAC0 100001D6 */  b           .L0040F21C
/* 00EAC4 0040EAC4 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EAC8:
/* 00EAC8 0040EAC8 8F998678 */  lw          $t9, %got(offset)($gp)
/* 00EACC 0040EACC 8F390000 */  lw          $t9, 0x0($t9)
/* 00EAD0 0040EAD0 13200019 */  beqz        $t9, .L0040EB38
/* 00EAD4 0040EAD4 00000000 */   nop
/* 00EAD8 0040EAD8 8F9980E0 */  lw          $t9, %call16(fseek)($gp)
/* 00EADC 0040EADC 8F858678 */  lw          $a1, %got(offset)($gp)
/* 00EAE0 0040EAE0 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00EAE4 0040EAE4 00003025 */  move        $a2, $zero
/* 00EAE8 0040EAE8 0320F809 */  jalr        $t9
/* 00EAEC 0040EAEC 8CA50000 */   lw         $a1, 0x0($a1)
/* 00EAF0 0040EAF0 10400011 */  beqz        $v0, .L0040EB38
/* 00EAF4 0040EAF4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EAF8 0040EAF8 8F888050 */  lw          $t0, %got(errno)($gp)
/* 00EAFC 0040EAFC 8F8A8054 */  lw          $t2, %got(sys_errlist)($gp)
/* 00EB00 0040EB00 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EB04 0040EB04 8D080000 */  lw          $t0, 0x0($t0)
/* 00EB08 0040EB08 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EB0C 0040EB0C 8F85802C */  lw          $a1, %got(STR_1000569C)($gp)
/* 00EB10 0040EB10 00084880 */  sll         $t1, $t0, 2
/* 00EB14 0040EB14 012A5821 */  addu        $t3, $t1, $t2
/* 00EB18 0040EB18 8D670000 */  lw          $a3, 0x0($t3)
/* 00EB1C 0040EB1C 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EB20 0040EB20 24840020 */  addiu       $a0, $a0, 0x20
/* 00EB24 0040EB24 0320F809 */  jalr        $t9
/* 00EB28 0040EB28 24A5569C */   addiu      $a1, $a1, %lo(STR_1000569C)
/* 00EB2C 0040EB2C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EB30 0040EB30 100001BA */  b           .L0040F21C
/* 00EB34 0040EB34 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EB38:
/* 00EB38 0040EB38 8F9980E4 */  lw          $t9, %call16(fwrite)($gp)
/* 00EB3C 0040EB3C 8F848728 */  lw          $a0, %got(headerBuf)($gp)
/* 00EB40 0040EB40 8F86873C */  lw          $a2, %got(headerWordAlignedByteSize)($gp)
/* 00EB44 0040EB44 24050001 */  addiu       $a1, $zero, 0x1
/* 00EB48 0040EB48 8FA7005C */  lw          $a3, 0x5C($sp)
/* 00EB4C 0040EB4C 8C840000 */  lw          $a0, 0x0($a0)
/* 00EB50 0040EB50 0320F809 */  jalr        $t9
/* 00EB54 0040EB54 8CC60000 */   lw         $a2, 0x0($a2)
/* 00EB58 0040EB58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EB5C 0040EB5C 8F8D873C */  lw          $t5, %got(headerWordAlignedByteSize)($gp)
/* 00EB60 0040EB60 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00EB64 0040EB64 104D000B */  beq         $v0, $t5, .L0040EB94
/* 00EB68 0040EB68 00000000 */   nop
/* 00EB6C 0040EB6C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EB70 0040EB70 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EB74 0040EB74 8F85802C */  lw          $a1, %got(STR_100056BC)($gp)
/* 00EB78 0040EB78 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EB7C 0040EB7C 24840020 */  addiu       $a0, $a0, 0x20
/* 00EB80 0040EB80 0320F809 */  jalr        $t9
/* 00EB84 0040EB84 24A556BC */   addiu      $a1, $a1, %lo(STR_100056BC)
/* 00EB88 0040EB88 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EB8C 0040EB8C 100001A3 */  b           .L0040F21C
/* 00EB90 0040EB90 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EB94:
/* 00EB94 0040EB94 8F858678 */  lw          $a1, %got(offset)($gp)
/* 00EB98 0040EB98 8F9980E0 */  lw          $t9, %call16(fseek)($gp)
/* 00EB9C 0040EB9C 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00EBA0 0040EBA0 8CA50000 */  lw          $a1, 0x0($a1)
/* 00EBA4 0040EBA4 00003025 */  move        $a2, $zero
/* 00EBA8 0040EBA8 0320F809 */  jalr        $t9
/* 00EBAC 0040EBAC 24A50008 */   addiu      $a1, $a1, 0x8
/* 00EBB0 0040EBB0 10400011 */  beqz        $v0, .L0040EBF8
/* 00EBB4 0040EBB4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EBB8 0040EBB8 8F8E8050 */  lw          $t6, %got(errno)($gp)
/* 00EBBC 0040EBBC 8F8F8054 */  lw          $t7, %got(sys_errlist)($gp)
/* 00EBC0 0040EBC0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EBC4 0040EBC4 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00EBC8 0040EBC8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EBCC 0040EBCC 8F85802C */  lw          $a1, %got(STR_100056D8)($gp)
/* 00EBD0 0040EBD0 000EC080 */  sll         $t8, $t6, 2
/* 00EBD4 0040EBD4 030F6021 */  addu        $t4, $t8, $t7
/* 00EBD8 0040EBD8 8D870000 */  lw          $a3, 0x0($t4)
/* 00EBDC 0040EBDC 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EBE0 0040EBE0 24840020 */  addiu       $a0, $a0, 0x20
/* 00EBE4 0040EBE4 0320F809 */  jalr        $t9
/* 00EBE8 0040EBE8 24A556D8 */   addiu      $a1, $a1, %lo(STR_100056D8)
/* 00EBEC 0040EBEC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EBF0 0040EBF0 1000018A */  b           .L0040F21C
/* 00EBF4 0040EBF4 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EBF8:
/* 00EBF8 0040EBF8 8F9980E4 */  lw          $t9, %call16(fwrite)($gp)
/* 00EBFC 0040EBFC 8F8487B8 */  lw          $a0, %got(bootAddress)($gp)
/* 00EC00 0040EC00 24050004 */  addiu       $a1, $zero, 0x4
/* 00EC04 0040EC04 24060001 */  addiu       $a2, $zero, 0x1
/* 00EC08 0040EC08 0320F809 */  jalr        $t9
/* 00EC0C 0040EC0C 8FA7005C */   lw         $a3, 0x5C($sp)
/* 00EC10 0040EC10 24010001 */  addiu       $at, $zero, 0x1
/* 00EC14 0040EC14 1041000B */  beq         $v0, $at, .L0040EC44
/* 00EC18 0040EC18 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EC1C 0040EC1C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EC20 0040EC20 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EC24 0040EC24 8F85802C */  lw          $a1, %got(STR_100056F8)($gp)
/* 00EC28 0040EC28 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EC2C 0040EC2C 24840020 */  addiu       $a0, $a0, 0x20
/* 00EC30 0040EC30 0320F809 */  jalr        $t9
/* 00EC34 0040EC34 24A556F8 */   addiu      $a1, $a1, %lo(STR_100056F8)
/* 00EC38 0040EC38 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EC3C 0040EC3C 10000177 */  b           .L0040F21C
/* 00EC40 0040EC40 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EC44:
/* 00EC44 0040EC44 8F99867C */  lw          $t9, %got(changeclock)($gp)
/* 00EC48 0040EC48 8F390000 */  lw          $t9, 0x0($t9)
/* 00EC4C 0040EC4C 13200060 */  beqz        $t9, .L0040EDD0
/* 00EC50 0040EC50 00000000 */   nop
/* 00EC54 0040EC54 AFA00024 */  sw          $zero, 0x24($sp)
/* 00EC58 0040EC58 8F858678 */  lw          $a1, %got(offset)($gp)
/* 00EC5C 0040EC5C 8F9980E0 */  lw          $t9, %call16(fseek)($gp)
/* 00EC60 0040EC60 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00EC64 0040EC64 8CA50000 */  lw          $a1, 0x0($a1)
/* 00EC68 0040EC68 00003025 */  move        $a2, $zero
/* 00EC6C 0040EC6C 0320F809 */  jalr        $t9
/* 00EC70 0040EC70 24A50004 */   addiu      $a1, $a1, 0x4
/* 00EC74 0040EC74 10400011 */  beqz        $v0, .L0040ECBC
/* 00EC78 0040EC78 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EC7C 0040EC7C 8F888050 */  lw          $t0, %got(errno)($gp)
/* 00EC80 0040EC80 8F8A8054 */  lw          $t2, %got(sys_errlist)($gp)
/* 00EC84 0040EC84 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EC88 0040EC88 8D080000 */  lw          $t0, 0x0($t0)
/* 00EC8C 0040EC8C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EC90 0040EC90 8F85802C */  lw          $a1, %got(STR_10005714)($gp)
/* 00EC94 0040EC94 00084880 */  sll         $t1, $t0, 2
/* 00EC98 0040EC98 012A5821 */  addu        $t3, $t1, $t2
/* 00EC9C 0040EC9C 8D670000 */  lw          $a3, 0x0($t3)
/* 00ECA0 0040ECA0 8FA60060 */  lw          $a2, 0x60($sp)
/* 00ECA4 0040ECA4 24840020 */  addiu       $a0, $a0, 0x20
/* 00ECA8 0040ECA8 0320F809 */  jalr        $t9
/* 00ECAC 0040ECAC 24A55714 */   addiu      $a1, $a1, %lo(STR_10005714)
/* 00ECB0 0040ECB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00ECB4 0040ECB4 10000159 */  b           .L0040F21C
/* 00ECB8 0040ECB8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040ECBC:
/* 00ECBC 0040ECBC 8F9980E8 */  lw          $t9, %call16(fread)($gp)
/* 00ECC0 0040ECC0 27A40024 */  addiu       $a0, $sp, 0x24
/* 00ECC4 0040ECC4 24050004 */  addiu       $a1, $zero, 0x4
/* 00ECC8 0040ECC8 24060001 */  addiu       $a2, $zero, 0x1
/* 00ECCC 0040ECCC 0320F809 */  jalr        $t9
/* 00ECD0 0040ECD0 8FA7005C */   lw         $a3, 0x5C($sp)
/* 00ECD4 0040ECD4 24010001 */  addiu       $at, $zero, 0x1
/* 00ECD8 0040ECD8 1041000B */  beq         $v0, $at, .L0040ED08
/* 00ECDC 0040ECDC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00ECE0 0040ECE0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00ECE4 0040ECE4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00ECE8 0040ECE8 8F85802C */  lw          $a1, %got(STR_10005734)($gp)
/* 00ECEC 0040ECEC 8FA60060 */  lw          $a2, 0x60($sp)
/* 00ECF0 0040ECF0 24840020 */  addiu       $a0, $a0, 0x20
/* 00ECF4 0040ECF4 0320F809 */  jalr        $t9
/* 00ECF8 0040ECF8 24A55734 */   addiu      $a1, $a1, %lo(STR_10005734)
/* 00ECFC 0040ECFC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00ED00 0040ED00 10000146 */  b           .L0040F21C
/* 00ED04 0040ED04 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040ED08:
/* 00ED08 0040ED08 8F8D8680 */  lw          $t5, %got(clockrate)($gp)
/* 00ED0C 0040ED0C 8FAE0024 */  lw          $t6, 0x24($sp)
/* 00ED10 0040ED10 8F818680 */  lw          $at, %got(clockrate)($gp)
/* 00ED14 0040ED14 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00ED18 0040ED18 01AEC025 */  or          $t8, $t5, $t6
/* 00ED1C 0040ED1C AC380000 */  sw          $t8, 0x0($at)
/* 00ED20 0040ED20 8F858678 */  lw          $a1, %got(offset)($gp)
/* 00ED24 0040ED24 8F9980E0 */  lw          $t9, %call16(fseek)($gp)
/* 00ED28 0040ED28 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00ED2C 0040ED2C 8CA50000 */  lw          $a1, 0x0($a1)
/* 00ED30 0040ED30 00003025 */  move        $a2, $zero
/* 00ED34 0040ED34 0320F809 */  jalr        $t9
/* 00ED38 0040ED38 24A50004 */   addiu      $a1, $a1, 0x4
/* 00ED3C 0040ED3C 10400011 */  beqz        $v0, .L0040ED84
/* 00ED40 0040ED40 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00ED44 0040ED44 8F8F8050 */  lw          $t7, %got(errno)($gp)
/* 00ED48 0040ED48 8F998054 */  lw          $t9, %got(sys_errlist)($gp)
/* 00ED4C 0040ED4C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00ED50 0040ED50 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00ED54 0040ED54 8F85802C */  lw          $a1, %got(STR_10005750)($gp)
/* 00ED58 0040ED58 8FA60060 */  lw          $a2, 0x60($sp)
/* 00ED5C 0040ED5C 000F6080 */  sll         $t4, $t7, 2
/* 00ED60 0040ED60 01994021 */  addu        $t0, $t4, $t9
/* 00ED64 0040ED64 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00ED68 0040ED68 8D070000 */  lw          $a3, 0x0($t0)
/* 00ED6C 0040ED6C 24840020 */  addiu       $a0, $a0, 0x20
/* 00ED70 0040ED70 0320F809 */  jalr        $t9
/* 00ED74 0040ED74 24A55750 */   addiu      $a1, $a1, %lo(STR_10005750)
/* 00ED78 0040ED78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00ED7C 0040ED7C 10000127 */  b           .L0040F21C
/* 00ED80 0040ED80 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040ED84:
/* 00ED84 0040ED84 8F9980E4 */  lw          $t9, %call16(fwrite)($gp)
/* 00ED88 0040ED88 8F848680 */  lw          $a0, %got(clockrate)($gp)
/* 00ED8C 0040ED8C 24050004 */  addiu       $a1, $zero, 0x4
/* 00ED90 0040ED90 24060001 */  addiu       $a2, $zero, 0x1
/* 00ED94 0040ED94 0320F809 */  jalr        $t9
/* 00ED98 0040ED98 8FA7005C */   lw         $a3, 0x5C($sp)
/* 00ED9C 0040ED9C 24010001 */  addiu       $at, $zero, 0x1
/* 00EDA0 0040EDA0 1041000B */  beq         $v0, $at, .L0040EDD0
/* 00EDA4 0040EDA4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EDA8 0040EDA8 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EDAC 0040EDAC 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EDB0 0040EDB0 8F85802C */  lw          $a1, %got(STR_10005770)($gp)
/* 00EDB4 0040EDB4 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EDB8 0040EDB8 24840020 */  addiu       $a0, $a0, 0x20
/* 00EDBC 0040EDBC 0320F809 */  jalr        $t9
/* 00EDC0 0040EDC0 24A55770 */   addiu      $a1, $a1, %lo(STR_10005770)
/* 00EDC4 0040EDC4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EDC8 0040EDC8 10000114 */  b           .L0040F21C
/* 00EDCC 0040EDCC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EDD0:
/* 00EDD0 0040EDD0 8F858678 */  lw          $a1, %got(offset)($gp)
/* 00EDD4 0040EDD4 8F9980E0 */  lw          $t9, %call16(fseek)($gp)
/* 00EDD8 0040EDD8 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00EDDC 0040EDDC 8CA50000 */  lw          $a1, 0x0($a1)
/* 00EDE0 0040EDE0 00003025 */  move        $a2, $zero
/* 00EDE4 0040EDE4 0320F809 */  jalr        $t9
/* 00EDE8 0040EDE8 24A50040 */   addiu      $a1, $a1, 0x40
/* 00EDEC 0040EDEC 10400011 */  beqz        $v0, .L0040EE34
/* 00EDF0 0040EDF0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EDF4 0040EDF4 8F898050 */  lw          $t1, %got(errno)($gp)
/* 00EDF8 0040EDF8 8F8B8054 */  lw          $t3, %got(sys_errlist)($gp)
/* 00EDFC 0040EDFC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EE00 0040EE00 8D290000 */  lw          $t1, 0x0($t1)
/* 00EE04 0040EE04 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EE08 0040EE08 8F85802C */  lw          $a1, %got(STR_1000578C)($gp)
/* 00EE0C 0040EE0C 00095080 */  sll         $t2, $t1, 2
/* 00EE10 0040EE10 014B6821 */  addu        $t5, $t2, $t3
/* 00EE14 0040EE14 8DA70000 */  lw          $a3, 0x0($t5)
/* 00EE18 0040EE18 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EE1C 0040EE1C 24840020 */  addiu       $a0, $a0, 0x20
/* 00EE20 0040EE20 0320F809 */  jalr        $t9
/* 00EE24 0040EE24 24A5578C */   addiu      $a1, $a1, %lo(STR_1000578C)
/* 00EE28 0040EE28 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EE2C 0040EE2C 100000FB */  b           .L0040F21C
/* 00EE30 0040EE30 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EE34:
/* 00EE34 0040EE34 8F9980E4 */  lw          $t9, %call16(fwrite)($gp)
/* 00EE38 0040EE38 8F848724 */  lw          $a0, %got(bootBuf)($gp)
/* 00EE3C 0040EE3C 8F868734 */  lw          $a2, %got(bootWordAlignedByteSize)($gp)
/* 00EE40 0040EE40 24050001 */  addiu       $a1, $zero, 0x1
/* 00EE44 0040EE44 8FA7005C */  lw          $a3, 0x5C($sp)
/* 00EE48 0040EE48 8C840000 */  lw          $a0, 0x0($a0)
/* 00EE4C 0040EE4C 0320F809 */  jalr        $t9
/* 00EE50 0040EE50 8CC60000 */   lw         $a2, 0x0($a2)
/* 00EE54 0040EE54 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EE58 0040EE58 8F8E8734 */  lw          $t6, %got(bootWordAlignedByteSize)($gp)
/* 00EE5C 0040EE5C 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00EE60 0040EE60 104E000B */  beq         $v0, $t6, .L0040EE90
/* 00EE64 0040EE64 00000000 */   nop
/* 00EE68 0040EE68 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EE6C 0040EE6C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EE70 0040EE70 8F85802C */  lw          $a1, %got(STR_100057AC)($gp)
/* 00EE74 0040EE74 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EE78 0040EE78 24840020 */  addiu       $a0, $a0, 0x20
/* 00EE7C 0040EE7C 0320F809 */  jalr        $t9
/* 00EE80 0040EE80 24A557AC */   addiu      $a1, $a1, %lo(STR_100057AC)
/* 00EE84 0040EE84 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EE88 0040EE88 100000E4 */  b           .L0040F21C
/* 00EE8C 0040EE8C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EE90:
/* 00EE90 0040EE90 8F98866C */  lw          $t8, %got(nofont)($gp)
/* 00EE94 0040EE94 8F180000 */  lw          $t8, 0x0($t8)
/* 00EE98 0040EE98 17000031 */  bnez        $t8, .L0040EF60
/* 00EE9C 0040EE9C 00000000 */   nop
/* 00EEA0 0040EEA0 8F858678 */  lw          $a1, %got(offset)($gp)
/* 00EEA4 0040EEA4 8F9980E0 */  lw          $t9, %call16(fseek)($gp)
/* 00EEA8 0040EEA8 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00EEAC 0040EEAC 8CA50000 */  lw          $a1, 0x0($a1)
/* 00EEB0 0040EEB0 00003025 */  move        $a2, $zero
/* 00EEB4 0040EEB4 0320F809 */  jalr        $t9
/* 00EEB8 0040EEB8 24A50B70 */   addiu      $a1, $a1, 0xB70
/* 00EEBC 0040EEBC 10400011 */  beqz        $v0, .L0040EF04
/* 00EEC0 0040EEC0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EEC4 0040EEC4 8F8F8050 */  lw          $t7, %got(errno)($gp)
/* 00EEC8 0040EEC8 8F998054 */  lw          $t9, %got(sys_errlist)($gp)
/* 00EECC 0040EECC 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EED0 0040EED0 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00EED4 0040EED4 8F85802C */  lw          $a1, %got(STR_100057C8)($gp)
/* 00EED8 0040EED8 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EEDC 0040EEDC 000F6080 */  sll         $t4, $t7, 2
/* 00EEE0 0040EEE0 01994021 */  addu        $t0, $t4, $t9
/* 00EEE4 0040EEE4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EEE8 0040EEE8 8D070000 */  lw          $a3, 0x0($t0)
/* 00EEEC 0040EEEC 24840020 */  addiu       $a0, $a0, 0x20
/* 00EEF0 0040EEF0 0320F809 */  jalr        $t9
/* 00EEF4 0040EEF4 24A557C8 */   addiu      $a1, $a1, %lo(STR_100057C8)
/* 00EEF8 0040EEF8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EEFC 0040EEFC 100000C7 */  b           .L0040F21C
/* 00EF00 0040EF00 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EF04:
/* 00EF04 0040EF04 8F9980E4 */  lw          $t9, %call16(fwrite)($gp)
/* 00EF08 0040EF08 8F848730 */  lw          $a0, %got(fontBuf)($gp)
/* 00EF0C 0040EF0C 8F868740 */  lw          $a2, %got(fontdataWordAlignedByteSize)($gp)
/* 00EF10 0040EF10 24050001 */  addiu       $a1, $zero, 0x1
/* 00EF14 0040EF14 8FA7005C */  lw          $a3, 0x5C($sp)
/* 00EF18 0040EF18 8C840000 */  lw          $a0, 0x0($a0)
/* 00EF1C 0040EF1C 0320F809 */  jalr        $t9
/* 00EF20 0040EF20 8CC60000 */   lw         $a2, 0x0($a2)
/* 00EF24 0040EF24 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EF28 0040EF28 8F898740 */  lw          $t1, %got(fontdataWordAlignedByteSize)($gp)
/* 00EF2C 0040EF2C 8D290000 */  lw          $t1, 0x0($t1)
/* 00EF30 0040EF30 1049000B */  beq         $v0, $t1, .L0040EF60
/* 00EF34 0040EF34 00000000 */   nop
/* 00EF38 0040EF38 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EF3C 0040EF3C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EF40 0040EF40 8F85802C */  lw          $a1, %got(STR_100057E8)($gp)
/* 00EF44 0040EF44 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EF48 0040EF48 24840020 */  addiu       $a0, $a0, 0x20
/* 00EF4C 0040EF4C 0320F809 */  jalr        $t9
/* 00EF50 0040EF50 24A557E8 */   addiu      $a1, $a1, %lo(STR_100057E8)
/* 00EF54 0040EF54 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EF58 0040EF58 100000B0 */  b           .L0040F21C
/* 00EF5C 0040EF5C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EF60:
/* 00EF60 0040EF60 8F858678 */  lw          $a1, %got(offset)($gp)
/* 00EF64 0040EF64 8F9980E0 */  lw          $t9, %call16(fseek)($gp)
/* 00EF68 0040EF68 8FA4005C */  lw          $a0, 0x5C($sp)
/* 00EF6C 0040EF6C 8CA50000 */  lw          $a1, 0x0($a1)
/* 00EF70 0040EF70 00003025 */  move        $a2, $zero
/* 00EF74 0040EF74 0320F809 */  jalr        $t9
/* 00EF78 0040EF78 24A51000 */   addiu      $a1, $a1, 0x1000
/* 00EF7C 0040EF7C 10400011 */  beqz        $v0, .L0040EFC4
/* 00EF80 0040EF80 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00EF84 0040EF84 8F8A8050 */  lw          $t2, %got(errno)($gp)
/* 00EF88 0040EF88 8F8D8054 */  lw          $t5, %got(sys_errlist)($gp)
/* 00EF8C 0040EF8C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EF90 0040EF90 8D4A0000 */  lw          $t2, 0x0($t2)
/* 00EF94 0040EF94 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EF98 0040EF98 8F85802C */  lw          $a1, %got(STR_10005804)($gp)
/* 00EF9C 0040EF9C 000A5880 */  sll         $t3, $t2, 2
/* 00EFA0 0040EFA0 016D7021 */  addu        $t6, $t3, $t5
/* 00EFA4 0040EFA4 8DC70000 */  lw          $a3, 0x0($t6)
/* 00EFA8 0040EFA8 8FA60060 */  lw          $a2, 0x60($sp)
/* 00EFAC 0040EFAC 24840020 */  addiu       $a0, $a0, 0x20
/* 00EFB0 0040EFB0 0320F809 */  jalr        $t9
/* 00EFB4 0040EFB4 24A55804 */   addiu      $a1, $a1, %lo(STR_10005804)
/* 00EFB8 0040EFB8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EFBC 0040EFBC 10000097 */  b           .L0040F21C
/* 00EFC0 0040EFC0 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040EFC4:
/* 00EFC4 0040EFC4 8F9980E4 */  lw          $t9, %call16(fwrite)($gp)
/* 00EFC8 0040EFC8 8F848030 */  lw          $a0, %got(B_1000BA80)($gp)
/* 00EFCC 0040EFCC 24050001 */  addiu       $a1, $zero, 0x1
/* 00EFD0 0040EFD0 8FA6004C */  lw          $a2, 0x4C($sp)
/* 00EFD4 0040EFD4 8FA7005C */  lw          $a3, 0x5C($sp)
/* 00EFD8 0040EFD8 0320F809 */  jalr        $t9
/* 00EFDC 0040EFDC 8C84BA80 */   lw         $a0, %lo(B_1000BA80)($a0)
/* 00EFE0 0040EFE0 8FB8004C */  lw          $t8, 0x4C($sp)
/* 00EFE4 0040EFE4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EFE8 0040EFE8 1058000B */  beq         $v0, $t8, .L0040F018
/* 00EFEC 0040EFEC 00000000 */   nop
/* 00EFF0 0040EFF0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00EFF4 0040EFF4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00EFF8 0040EFF8 8F85802C */  lw          $a1, %got(STR_10005824)($gp)
/* 00EFFC 0040EFFC 8FA60060 */  lw          $a2, 0x60($sp)
/* 00F000 0040F000 24840020 */  addiu       $a0, $a0, 0x20
/* 00F004 0040F004 0320F809 */  jalr        $t9
/* 00F008 0040F008 24A55824 */   addiu      $a1, $a1, %lo(STR_10005824)
/* 00F00C 0040F00C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F010 0040F010 10000082 */  b           .L0040F21C
/* 00F014 0040F014 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F018:
/* 00F018 0040F018 8F8C8678 */  lw          $t4, %got(offset)($gp)
/* 00F01C 0040F01C 8FAF004C */  lw          $t7, 0x4C($sp)
/* 00F020 0040F020 8D8C0000 */  lw          $t4, 0x0($t4)
/* 00F024 0040F024 01ECC821 */  addu        $t9, $t7, $t4
/* 00F028 0040F028 27281000 */  addiu       $t0, $t9, 0x1000
/* 00F02C 0040F02C AFA80030 */  sw          $t0, 0x30($sp)
/* 00F030 0040F030 8F898670 */  lw          $t1, %got(finalromSize)($gp)
/* 00F034 0040F034 8F818670 */  lw          $at, %got(finalromSize)($gp)
/* 00F038 0040F038 8D290000 */  lw          $t1, 0x0($t1)
/* 00F03C 0040F03C 00095440 */  sll         $t2, $t1, 17
/* 00F040 0040F040 AC2A0000 */  sw          $t2, 0x0($at)
/* 00F044 0040F044 8F8B8670 */  lw          $t3, %got(finalromSize)($gp)
/* 00F048 0040F048 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00F04C 0040F04C 1160006F */  beqz        $t3, .L0040F20C
/* 00F050 0040F050 00000000 */   nop
/* 00F054 0040F054 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00F058 0040F058 01AB082A */  slt         $at, $t5, $t3
/* 00F05C 0040F05C 1020006B */  beqz        $at, .L0040F20C
/* 00F060 0040F060 00000000 */   nop
/* 00F064 0040F064 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 00F068 0040F068 24042000 */  addiu       $a0, $zero, 0x2000
/* 00F06C 0040F06C 0320F809 */  jalr        $t9
/* 00F070 0040F070 00000000 */   nop
/* 00F074 0040F074 AFA20028 */  sw          $v0, 0x28($sp)
/* 00F078 0040F078 8FAE0028 */  lw          $t6, 0x28($sp)
/* 00F07C 0040F07C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F080 0040F080 15C0000A */  bnez        $t6, .L0040F0AC
/* 00F084 0040F084 00000000 */   nop
/* 00F088 0040F088 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00F08C 0040F08C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00F090 0040F090 8F85802C */  lw          $a1, %got(STR_10005840)($gp)
/* 00F094 0040F094 24840020 */  addiu       $a0, $a0, 0x20
/* 00F098 0040F098 0320F809 */  jalr        $t9
/* 00F09C 0040F09C 24A55840 */   addiu      $a1, $a1, %lo(STR_10005840)
/* 00F0A0 0040F0A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F0A4 0040F0A4 1000005D */  b           .L0040F21C
/* 00F0A8 0040F0A8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F0AC:
/* 00F0AC 0040F0AC AFA0002C */  sw          $zero, 0x2C($sp)
.L0040F0B0:
/* 00F0B0 0040F0B0 8F988674 */  lw          $t8, %got(fillData)($gp)
/* 00F0B4 0040F0B4 8FAF0028 */  lw          $t7, 0x28($sp)
/* 00F0B8 0040F0B8 8FAC002C */  lw          $t4, 0x2C($sp)
/* 00F0BC 0040F0BC 93180000 */  lbu         $t8, 0x0($t8)
/* 00F0C0 0040F0C0 01ECC821 */  addu        $t9, $t7, $t4
/* 00F0C4 0040F0C4 A3380000 */  sb          $t8, 0x0($t9)
/* 00F0C8 0040F0C8 8FA8002C */  lw          $t0, 0x2C($sp)
/* 00F0CC 0040F0CC 25090001 */  addiu       $t1, $t0, 0x1
/* 00F0D0 0040F0D0 29212000 */  slti        $at, $t1, 0x2000
/* 00F0D4 0040F0D4 1420FFF6 */  bnez        $at, .L0040F0B0
/* 00F0D8 0040F0D8 AFA9002C */   sw         $t1, 0x2C($sp)
/* 00F0DC 0040F0DC 8F8B8670 */  lw          $t3, %got(finalromSize)($gp)
/* 00F0E0 0040F0E0 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00F0E4 0040F0E4 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00F0E8 0040F0E8 014B082A */  slt         $at, $t2, $t3
/* 00F0EC 0040F0EC 10200047 */  beqz        $at, .L0040F20C
/* 00F0F0 0040F0F0 00000000 */   nop
.L0040F0F4:
/* 00F0F4 0040F0F4 8F8D8670 */  lw          $t5, %got(finalromSize)($gp)
/* 00F0F8 0040F0F8 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00F0FC 0040F0FC 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00F100 0040F100 01AE7823 */  subu        $t7, $t5, $t6
/* 00F104 0040F104 29E12001 */  slti        $at, $t7, 0x2001
/* 00F108 0040F108 14200019 */  bnez        $at, .L0040F170
/* 00F10C 0040F10C 00000000 */   nop
/* 00F110 0040F110 8F9980E4 */  lw          $t9, %call16(fwrite)($gp)
/* 00F114 0040F114 8FA40028 */  lw          $a0, 0x28($sp)
/* 00F118 0040F118 24050001 */  addiu       $a1, $zero, 0x1
/* 00F11C 0040F11C 24062000 */  addiu       $a2, $zero, 0x2000
/* 00F120 0040F120 0320F809 */  jalr        $t9
/* 00F124 0040F124 8FA7005C */   lw         $a3, 0x5C($sp)
/* 00F128 0040F128 24012000 */  addiu       $at, $zero, 0x2000
/* 00F12C 0040F12C 1041000C */  beq         $v0, $at, .L0040F160
/* 00F130 0040F130 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00F134 0040F134 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00F138 0040F138 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00F13C 0040F13C 8F85802C */  lw          $a1, %got(STR_10005850)($gp)
/* 00F140 0040F140 8FA60060 */  lw          $a2, 0x60($sp)
/* 00F144 0040F144 8FA70030 */  lw          $a3, 0x30($sp)
/* 00F148 0040F148 24840020 */  addiu       $a0, $a0, 0x20
/* 00F14C 0040F14C 0320F809 */  jalr        $t9
/* 00F150 0040F150 24A55850 */   addiu      $a1, $a1, %lo(STR_10005850)
/* 00F154 0040F154 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F158 0040F158 10000030 */  b           .L0040F21C
/* 00F15C 0040F15C 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F160:
/* 00F160 0040F160 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00F164 0040F164 25982000 */  addiu       $t8, $t4, 0x2000
/* 00F168 0040F168 10000022 */  b           .L0040F1F4
/* 00F16C 0040F16C AFB80030 */   sw         $t8, 0x30($sp)
.L0040F170:
/* 00F170 0040F170 8F998670 */  lw          $t9, %got(finalromSize)($gp)
/* 00F174 0040F174 8FA80030 */  lw          $t0, 0x30($sp)
/* 00F178 0040F178 8FA40028 */  lw          $a0, 0x28($sp)
/* 00F17C 0040F17C 8F390000 */  lw          $t9, 0x0($t9)
/* 00F180 0040F180 24050001 */  addiu       $a1, $zero, 0x1
/* 00F184 0040F184 8FA7005C */  lw          $a3, 0x5C($sp)
/* 00F188 0040F188 03283023 */  subu        $a2, $t9, $t0
/* 00F18C 0040F18C 8F9980E4 */  lw          $t9, %call16(fwrite)($gp)
/* 00F190 0040F190 0320F809 */  jalr        $t9
/* 00F194 0040F194 00000000 */   nop
/* 00F198 0040F198 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F19C 0040F19C 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00F1A0 0040F1A0 8F898670 */  lw          $t1, %got(finalromSize)($gp)
/* 00F1A4 0040F1A4 8D290000 */  lw          $t1, 0x0($t1)
/* 00F1A8 0040F1A8 012A5823 */  subu        $t3, $t1, $t2
/* 00F1AC 0040F1AC 104B000B */  beq         $v0, $t3, .L0040F1DC
/* 00F1B0 0040F1B0 00000000 */   nop
/* 00F1B4 0040F1B4 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00F1B8 0040F1B8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00F1BC 0040F1BC 8F85802C */  lw          $a1, %got(STR_10005870)($gp)
/* 00F1C0 0040F1C0 8FA60060 */  lw          $a2, 0x60($sp)
/* 00F1C4 0040F1C4 24840020 */  addiu       $a0, $a0, 0x20
/* 00F1C8 0040F1C8 0320F809 */  jalr        $t9
/* 00F1CC 0040F1CC 24A55870 */   addiu      $a1, $a1, %lo(STR_10005870)
/* 00F1D0 0040F1D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F1D4 0040F1D4 10000011 */  b           .L0040F21C
/* 00F1D8 0040F1D8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040F1DC:
/* 00F1DC 0040F1DC 8F8D8670 */  lw          $t5, %got(finalromSize)($gp)
/* 00F1E0 0040F1E0 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00F1E4 0040F1E4 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00F1E8 0040F1E8 01AE7823 */  subu        $t7, $t5, $t6
/* 00F1EC 0040F1EC 01CF6021 */  addu        $t4, $t6, $t7
/* 00F1F0 0040F1F0 AFAC0030 */  sw          $t4, 0x30($sp)
.L0040F1F4:
/* 00F1F4 0040F1F4 8F998670 */  lw          $t9, %got(finalromSize)($gp)
/* 00F1F8 0040F1F8 8FB80030 */  lw          $t8, 0x30($sp)
/* 00F1FC 0040F1FC 8F390000 */  lw          $t9, 0x0($t9)
/* 00F200 0040F200 0319082A */  slt         $at, $t8, $t9
/* 00F204 0040F204 1420FFBB */  bnez        $at, .L0040F0F4
/* 00F208 0040F208 00000000 */   nop
.L0040F20C:
/* 00F20C 0040F20C 10000003 */  b           .L0040F21C
/* 00F210 0040F210 00001025 */   move       $v0, $zero
/* 00F214 0040F214 10000001 */  b           .L0040F21C
/* 00F218 0040F218 00000000 */   nop
.L0040F21C:
/* 00F21C 0040F21C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00F220 0040F220 27BD0060 */  addiu       $sp, $sp, 0x60
/* 00F224 0040F224 03E00008 */  jr          $ra
/* 00F228 0040F228 00000000 */   nop
