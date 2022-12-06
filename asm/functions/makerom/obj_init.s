.section .rodata
glabel STR_10006D48
/* 046D48 10006D48 */ .asciz "Error: cbLineOffset greater than file size.\n"
                      .balign 4

glabel STR_10006D78
/* 046D78 10006D78 */ .asciz "Error: cbAuxOffset greater than file size.\n"
                      .balign 4

glabel STR_10006DA4
/* 046DA4 10006DA4 */ .asciz "Error: cbRfdOffset greater than file size.\n"
                      .balign 4

glabel STR_10006DD0
/* 046DD0 10006DD0 */ .asciz "Error: cbPdOffset greater than file size.\n"
                      .balign 4

glabel STR_10006DFC
/* 046DFC 10006DFC */ .asciz "Error: cbFdOffset greater than file size.\n"
                      .balign 4

glabel STR_10006E28
/* 046E28 10006E28 */ .asciz "Error: cbSymOffset greater than file size.\n"
                      .balign 4

glabel STR_10006E54
/* 046E54 10006E54 */ .asciz "Error: cbExtOffset greater than file size.\n"
                      .balign 4

glabel STR_10006E80
/* 046E80 10006E80 */ .asciz "Error: cbSsExtOffset greater than file size.\n"
                      .balign 4

glabel STR_10006EB0
/* 046EB0 10006EB0 */ .asciz "Error: cbSsOffset greater than file size.\n"
                      .balign 4

glabel STR_10006EDC
/* 046EDC 10006EDC */ .asciz "Symbol table header magic is 0x%x\n"
                      .balign 4

glabel STR_10006F00
/* 046F00 10006F00 */ .asciz "obj_get_dynamic_info failed\n"
                      .balign 4

.section .late_rodata
glabel jtbl_10007BC4
/* 047BC4 10007BC4 F0419074 */ .gpword .L0042BDD4
/* 047BC8 10007BC8 F0418FF4 */ .gpword .L0042BD54
/* 047BCC 10007BCC F041906C */ .gpword .L0042BDCC
/* 047BD0 10007BD0 F0419074 */ .gpword .L0042BDD4
/* 047BD4 10007BD4 F0419074 */ .gpword .L0042BDD4
/* 047BD8 10007BD8 F0419074 */ .gpword .L0042BDD4
/* 047BDC 10007BDC F0419074 */ .gpword .L0042BDD4


.section .text
glabel obj_init # 248
/* 02B86C 0042B86C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02B870 0042B870 279C74F4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE74F4
/* 02B874 0042B874 0399E021 */  addu        $gp, $gp, $t9
/* 02B878 0042B878 27BDFF60 */  addiu       $sp, $sp, -0xA0
/* 02B87C 0042B87C AFBF0034 */  sw          $ra, 0x34($sp)
/* 02B880 0042B880 AFBC0030 */  sw          $gp, 0x30($sp)
/* 02B884 0042B884 AFB5002C */  sw          $s5, 0x2C($sp)
/* 02B888 0042B888 AFB40028 */  sw          $s4, 0x28($sp)
/* 02B88C 0042B88C AFB30024 */  sw          $s3, 0x24($sp)
/* 02B890 0042B890 AFB20020 */  sw          $s2, 0x20($sp)
/* 02B894 0042B894 AFB1001C */  sw          $s1, 0x1C($sp)
/* 02B898 0042B898 AFB00018 */  sw          $s0, 0x18($sp)
/* 02B89C 0042B89C AFA00080 */  sw          $zero, 0x80($sp)
/* 02B8A0 0042B8A0 240E0001 */  addiu       $t6, $zero, 0x1
/* 02B8A4 0042B8A4 AC8E01D8 */  sw          $t6, 0x1D8($a0)
/* 02B8A8 0042B8A8 8F998238 */  lw          $t9, %call16(gethostsex)($gp)
/* 02B8AC 0042B8AC 00A08025 */  move        $s0, $a1
/* 02B8B0 0042B8B0 0080A025 */  move        $s4, $a0
/* 02B8B4 0042B8B4 0320F809 */  jalr        $t9
/* 02B8B8 0042B8B8 00000000 */   nop
/* 02B8BC 0042B8BC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02B8C0 0042B8C0 AE900180 */  sw          $s0, 0x180($s4)
/* 02B8C4 0042B8C4 00409825 */  move        $s3, $v0
/* 02B8C8 0042B8C8 8F99829C */  lw          $t9, %call16(dumpobj_struct)($gp)
/* 02B8CC 0042B8CC 02802025 */  move        $a0, $s4
/* 02B8D0 0042B8D0 0320F809 */  jalr        $t9
/* 02B8D4 0042B8D4 00000000 */   nop
/* 02B8D8 0042B8D8 8E9200C4 */  lw          $s2, 0xC4($s4)
/* 02B8DC 0042B8DC 2401007F */  addiu       $at, $zero, 0x7F
/* 02B8E0 0042B8E0 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02B8E4 0042B8E4 924F0000 */  lbu         $t7, 0x0($s2)
/* 02B8E8 0042B8E8 55E1014E */  bnel        $t7, $at, .L0042BE24
/* 02B8EC 0042B8EC 24090002 */   addiu      $t1, $zero, 0x2
/* 02B8F0 0042B8F0 92580001 */  lbu         $t8, 0x1($s2)
/* 02B8F4 0042B8F4 24010045 */  addiu       $at, $zero, 0x45
/* 02B8F8 0042B8F8 5701014A */  bnel        $t8, $at, .L0042BE24
/* 02B8FC 0042B8FC 24090002 */   addiu      $t1, $zero, 0x2
/* 02B900 0042B900 92590002 */  lbu         $t9, 0x2($s2)
/* 02B904 0042B904 2401004C */  addiu       $at, $zero, 0x4C
/* 02B908 0042B908 57210146 */  bnel        $t9, $at, .L0042BE24
/* 02B90C 0042B90C 24090002 */   addiu      $t1, $zero, 0x2
/* 02B910 0042B910 92490003 */  lbu         $t1, 0x3($s2)
/* 02B914 0042B914 24010046 */  addiu       $at, $zero, 0x46
/* 02B918 0042B918 240A0003 */  addiu       $t2, $zero, 0x3
/* 02B91C 0042B91C 55210141 */  bnel        $t1, $at, .L0042BE24
/* 02B920 0042B920 24090002 */   addiu      $t1, $zero, 0x2
/* 02B924 0042B924 AE8A008C */  sw          $t2, 0x8C($s4)
/* 02B928 0042B928 16600005 */  bnez        $s3, .L0042B940
/* 02B92C 0042B92C 82440005 */   lb         $a0, 0x5($s2)
/* 02B930 0042B930 38820002 */  xori        $v0, $a0, 0x2
/* 02B934 0042B934 2C420001 */  sltiu       $v0, $v0, 0x1
/* 02B938 0042B938 2C430001 */  sltiu       $v1, $v0, 0x1
/* 02B93C 0042B93C 10600008 */  beqz        $v1, .L0042B960
.L0042B940:
/* 02B940 0042B940 3A620001 */   xori       $v0, $s3, 0x1
/* 02B944 0042B944 2C420001 */  sltiu       $v0, $v0, 0x1
/* 02B948 0042B948 2C430001 */  sltiu       $v1, $v0, 0x1
/* 02B94C 0042B94C 14600004 */  bnez        $v1, .L0042B960
/* 02B950 0042B950 00000000 */   nop
/* 02B954 0042B954 38830001 */  xori        $v1, $a0, 0x1
/* 02B958 0042B958 2C630001 */  sltiu       $v1, $v1, 0x1
/* 02B95C 0042B95C 2C630001 */  sltiu       $v1, $v1, 0x1
.L0042B960:
/* 02B960 0042B960 10600007 */  beqz        $v1, .L0042B980
/* 02B964 0042B964 00608025 */   move       $s0, $v1
/* 02B968 0042B968 8F9984D8 */  lw          $t9, %call16(swap_ehdr)($gp)
/* 02B96C 0042B96C 02402025 */  move        $a0, $s2
/* 02B970 0042B970 0320F809 */  jalr        $t9
/* 02B974 0042B974 00000000 */   nop
/* 02B978 0042B978 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02B97C 0042B97C 8E9200C4 */  lw          $s2, 0xC4($s4)
.L0042B980:
/* 02B980 0042B980 AE9200E0 */  sw          $s2, 0xE0($s4)
/* 02B984 0042B984 924B0004 */  lbu         $t3, 0x4($s2)
/* 02B988 0042B988 24010001 */  addiu       $at, $zero, 0x1
/* 02B98C 0042B98C 02401825 */  move        $v1, $s2
/* 02B990 0042B990 11610003 */  beq         $t3, $at, .L0042B9A0
/* 02B994 0042B994 02403825 */   move       $a3, $s2
/* 02B998 0042B998 100002C2 */  b           .L0042C4A4
/* 02B99C 0042B99C 00001025 */   move       $v0, $zero
.L0042B9A0:
/* 02B9A0 0042B9A0 1200000C */  beqz        $s0, .L0042B9D4
/* 02B9A4 0042B9A4 AFA70050 */   sw         $a3, 0x50($sp)
/* 02B9A8 0042B9A8 AFA70050 */  sw          $a3, 0x50($sp)
/* 02B9AC 0042B9AC 8C6C001C */  lw          $t4, 0x1C($v1)
/* 02B9B0 0042B9B0 51800009 */  beql        $t4, $zero, .L0042B9D8
/* 02B9B4 0042B9B4 8E4E001C */   lw         $t6, 0x1C($s2)
/* 02B9B8 0042B9B8 8F9984DC */  lw          $t9, %call16(swap_phdr)($gp)
/* 02B9BC 0042B9BC 8E4D001C */  lw          $t5, 0x1C($s2)
/* 02B9C0 0042B9C0 AFA70050 */  sw          $a3, 0x50($sp)
/* 02B9C4 0042B9C4 0320F809 */  jalr        $t9
/* 02B9C8 0042B9C8 01B22021 */   addu       $a0, $t5, $s2
/* 02B9CC 0042B9CC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02B9D0 0042B9D0 8E9200C4 */  lw          $s2, 0xC4($s4)
.L0042B9D4:
/* 02B9D4 0042B9D4 8E4E001C */  lw          $t6, 0x1C($s2)
.L0042B9D8:
/* 02B9D8 0042B9D8 8FA70050 */  lw          $a3, 0x50($sp)
/* 02B9DC 0042B9DC 01D21821 */  addu        $v1, $t6, $s2
/* 02B9E0 0042B9E0 AE8300E4 */  sw          $v1, 0xE4($s4)
/* 02B9E4 0042B9E4 120000A4 */  beqz        $s0, .L0042BC78
/* 02B9E8 0042B9E8 AFA30054 */   sw         $v1, 0x54($sp)
/* 02B9EC 0042B9EC AFA70050 */  sw          $a3, 0x50($sp)
/* 02B9F0 0042B9F0 8CEF0020 */  lw          $t7, 0x20($a3)
/* 02B9F4 0042B9F4 51E000A1 */  beql        $t7, $zero, .L0042BC7C
/* 02B9F8 0042B9F8 8E890180 */   lw         $t1, 0x180($s4)
/* 02B9FC 0042B9FC AFA70050 */  sw          $a3, 0x50($sp)
/* 02BA00 0042BA00 94F80030 */  lhu         $t8, 0x30($a3)
/* 02BA04 0042BA04 0000A825 */  move        $s5, $zero
/* 02BA08 0042BA08 5300009C */  beql        $t8, $zero, .L0042BC7C
/* 02BA0C 0042BA0C 8E890180 */   lw         $t1, 0x180($s4)
/* 02BA10 0042BA10 AFA0003C */  sw          $zero, 0x3C($sp)
/* 02BA14 0042BA14 AFA70050 */  sw          $a3, 0x50($sp)
/* 02BA18 0042BA18 8FA70050 */  lw          $a3, 0x50($sp)
.L0042BA1C:
/* 02BA1C 0042BA1C 8E9900C4 */  lw          $t9, 0xC4($s4)
/* 02BA20 0042BA20 8FA2003C */  lw          $v0, 0x3C($sp)
/* 02BA24 0042BA24 8CE90020 */  lw          $t1, 0x20($a3)
/* 02BA28 0042BA28 03295021 */  addu        $t2, $t9, $t1
/* 02BA2C 0042BA2C 8F9984E0 */  lw          $t9, %call16(swap_shdr)($gp)
/* 02BA30 0042BA30 01422021 */  addu        $a0, $t2, $v0
/* 02BA34 0042BA34 AFA40070 */  sw          $a0, 0x70($sp)
/* 02BA38 0042BA38 0320F809 */  jalr        $t9
/* 02BA3C 0042BA3C 00000000 */   nop
/* 02BA40 0042BA40 8FA40070 */  lw          $a0, 0x70($sp)
/* 02BA44 0042BA44 24010009 */  addiu       $at, $zero, 0x9
/* 02BA48 0042BA48 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02BA4C 0042BA4C 8C830004 */  lw          $v1, 0x4($a0)
/* 02BA50 0042BA50 00008025 */  move        $s0, $zero
/* 02BA54 0042BA54 54610013 */  bnel        $v1, $at, .L0042BAA4
/* 02BA58 0042BA58 24010002 */   addiu      $at, $zero, 0x2
/* 02BA5C 0042BA5C 8C920014 */  lw          $s2, 0x14($a0)
/* 02BA60 0042BA60 8E8B00C4 */  lw          $t3, 0xC4($s4)
/* 02BA64 0042BA64 8C8C0010 */  lw          $t4, 0x10($a0)
/* 02BA68 0042BA68 001290C2 */  srl         $s2, $s2, 3
/* 02BA6C 0042BA6C 1A400079 */  blez        $s2, .L0042BC54
/* 02BA70 0042BA70 016C8821 */   addu       $s1, $t3, $t4
.L0042BA74:
/* 02BA74 0042BA74 8F9984C4 */  lw          $t9, %call16(swap_rel_dyn)($gp)
/* 02BA78 0042BA78 02202025 */  move        $a0, $s1
/* 02BA7C 0042BA7C 02602825 */  move        $a1, $s3
/* 02BA80 0042BA80 0320F809 */  jalr        $t9
/* 02BA84 0042BA84 00000000 */   nop
/* 02BA88 0042BA88 26100001 */  addiu       $s0, $s0, 0x1
/* 02BA8C 0042BA8C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02BA90 0042BA90 1612FFF8 */  bne         $s0, $s2, .L0042BA74
/* 02BA94 0042BA94 26310008 */   addiu      $s1, $s1, 0x8
/* 02BA98 0042BA98 1000006F */  b           .L0042BC58
/* 02BA9C 0042BA9C 8FAE003C */   lw         $t6, 0x3C($sp)
/* 02BAA0 0042BAA0 24010002 */  addiu       $at, $zero, 0x2
.L0042BAA4:
/* 02BAA4 0042BAA4 10610004 */  beq         $v1, $at, .L0042BAB8
/* 02BAA8 0042BAA8 00008025 */   move       $s0, $zero
/* 02BAAC 0042BAAC 2401000B */  addiu       $at, $zero, 0xB
/* 02BAB0 0042BAB0 54610013 */  bnel        $v1, $at, .L0042BB00
/* 02BAB4 0042BAB4 3C017000 */   lui        $at, (0x70000006 >> 16)
.L0042BAB8:
/* 02BAB8 0042BAB8 8C920014 */  lw          $s2, 0x14($a0)
/* 02BABC 0042BABC 8E8D00C4 */  lw          $t5, 0xC4($s4)
/* 02BAC0 0042BAC0 8C8E0010 */  lw          $t6, 0x10($a0)
/* 02BAC4 0042BAC4 00129102 */  srl         $s2, $s2, 4
/* 02BAC8 0042BAC8 1A400062 */  blez        $s2, .L0042BC54
/* 02BACC 0042BACC 01AE8821 */   addu       $s1, $t5, $t6
.L0042BAD0:
/* 02BAD0 0042BAD0 8F9984CC */  lw          $t9, %call16(swap_dynsym)($gp)
/* 02BAD4 0042BAD4 02202025 */  move        $a0, $s1
/* 02BAD8 0042BAD8 02602825 */  move        $a1, $s3
/* 02BADC 0042BADC 0320F809 */  jalr        $t9
/* 02BAE0 0042BAE0 00000000 */   nop
/* 02BAE4 0042BAE4 26100001 */  addiu       $s0, $s0, 0x1
/* 02BAE8 0042BAE8 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02BAEC 0042BAEC 1612FFF8 */  bne         $s0, $s2, .L0042BAD0
/* 02BAF0 0042BAF0 26310010 */   addiu      $s1, $s1, 0x10
/* 02BAF4 0042BAF4 10000058 */  b           .L0042BC58
/* 02BAF8 0042BAF8 8FAE003C */   lw         $t6, 0x3C($sp)
/* 02BAFC 0042BAFC 3C017000 */  lui         $at, (0x70000006 >> 16)
.L0042BB00:
/* 02BB00 0042BB00 34210006 */  ori         $at, $at, (0x70000006 & 0xFFFF)
/* 02BB04 0042BB04 54610016 */  bnel        $v1, $at, .L0042BB60
/* 02BB08 0042BB08 24010006 */   addiu      $at, $zero, 0x6
/* 02BB0C 0042BB0C 8C920014 */  lw          $s2, 0x14($a0)
/* 02BB10 0042BB10 24010018 */  addiu       $at, $zero, 0x18
/* 02BB14 0042BB14 8E8F00C4 */  lw          $t7, 0xC4($s4)
/* 02BB18 0042BB18 0241001B */  divu        $zero, $s2, $at
/* 02BB1C 0042BB1C 8C980010 */  lw          $t8, 0x10($a0)
/* 02BB20 0042BB20 00009012 */  mflo        $s2
/* 02BB24 0042BB24 00008025 */  move        $s0, $zero
/* 02BB28 0042BB28 1A40004A */  blez        $s2, .L0042BC54
/* 02BB2C 0042BB2C 01F88821 */   addu       $s1, $t7, $t8
.L0042BB30:
/* 02BB30 0042BB30 8F9984C8 */  lw          $t9, %call16(swap_reginfo)($gp)
/* 02BB34 0042BB34 02202025 */  move        $a0, $s1
/* 02BB38 0042BB38 02602825 */  move        $a1, $s3
/* 02BB3C 0042BB3C 0320F809 */  jalr        $t9
/* 02BB40 0042BB40 00000000 */   nop
/* 02BB44 0042BB44 26100001 */  addiu       $s0, $s0, 0x1
/* 02BB48 0042BB48 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02BB4C 0042BB4C 1612FFF8 */  bne         $s0, $s2, .L0042BB30
/* 02BB50 0042BB50 26310018 */   addiu      $s1, $s1, 0x18
/* 02BB54 0042BB54 10000040 */  b           .L0042BC58
/* 02BB58 0042BB58 8FAE003C */   lw         $t6, 0x3C($sp)
/* 02BB5C 0042BB5C 24010006 */  addiu       $at, $zero, 0x6
.L0042BB60:
/* 02BB60 0042BB60 14610012 */  bne         $v1, $at, .L0042BBAC
/* 02BB64 0042BB64 00008025 */   move       $s0, $zero
/* 02BB68 0042BB68 8C920014 */  lw          $s2, 0x14($a0)
/* 02BB6C 0042BB6C 8E9900C4 */  lw          $t9, 0xC4($s4)
/* 02BB70 0042BB70 8C890010 */  lw          $t1, 0x10($a0)
/* 02BB74 0042BB74 001290C2 */  srl         $s2, $s2, 3
/* 02BB78 0042BB78 1A400036 */  blez        $s2, .L0042BC54
/* 02BB7C 0042BB7C 03298821 */   addu       $s1, $t9, $t1
.L0042BB80:
/* 02BB80 0042BB80 8F9984C0 */  lw          $t9, %call16(swap_dynamic)($gp)
/* 02BB84 0042BB84 02202025 */  move        $a0, $s1
/* 02BB88 0042BB88 02602825 */  move        $a1, $s3
/* 02BB8C 0042BB8C 0320F809 */  jalr        $t9
/* 02BB90 0042BB90 00000000 */   nop
/* 02BB94 0042BB94 26100001 */  addiu       $s0, $s0, 0x1
/* 02BB98 0042BB98 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02BB9C 0042BB9C 1612FFF8 */  bne         $s0, $s2, .L0042BB80
/* 02BBA0 0042BBA0 26310008 */   addiu      $s1, $s1, 0x8
/* 02BBA4 0042BBA4 1000002C */  b           .L0042BC58
/* 02BBA8 0042BBA8 8FAE003C */   lw         $t6, 0x3C($sp)
.L0042BBAC:
/* 02BBAC 0042BBAC 3C017000 */  lui         $at, (0x70000000 >> 16)
/* 02BBB0 0042BBB0 54610016 */  bnel        $v1, $at, .L0042BC0C
/* 02BBB4 0042BBB4 3C017000 */   lui        $at, (0x70000002 >> 16)
/* 02BBB8 0042BBB8 8C920014 */  lw          $s2, 0x14($a0)
/* 02BBBC 0042BBBC 24010014 */  addiu       $at, $zero, 0x14
/* 02BBC0 0042BBC0 8E8A00C4 */  lw          $t2, 0xC4($s4)
/* 02BBC4 0042BBC4 0241001B */  divu        $zero, $s2, $at
/* 02BBC8 0042BBC8 8C8B0010 */  lw          $t3, 0x10($a0)
/* 02BBCC 0042BBCC 00009012 */  mflo        $s2
/* 02BBD0 0042BBD0 00008025 */  move        $s0, $zero
/* 02BBD4 0042BBD4 1A40001F */  blez        $s2, .L0042BC54
/* 02BBD8 0042BBD8 014B8821 */   addu       $s1, $t2, $t3
.L0042BBDC:
/* 02BBDC 0042BBDC 8F9984D4 */  lw          $t9, %call16(swap_liblist)($gp)
/* 02BBE0 0042BBE0 02202025 */  move        $a0, $s1
/* 02BBE4 0042BBE4 02602825 */  move        $a1, $s3
/* 02BBE8 0042BBE8 0320F809 */  jalr        $t9
/* 02BBEC 0042BBEC 00000000 */   nop
/* 02BBF0 0042BBF0 26100001 */  addiu       $s0, $s0, 0x1
/* 02BBF4 0042BBF4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02BBF8 0042BBF8 1612FFF8 */  bne         $s0, $s2, .L0042BBDC
/* 02BBFC 0042BBFC 26310014 */   addiu      $s1, $s1, 0x14
/* 02BC00 0042BC00 10000015 */  b           .L0042BC58
/* 02BC04 0042BC04 8FAE003C */   lw         $t6, 0x3C($sp)
/* 02BC08 0042BC08 3C017000 */  lui         $at, (0x70000002 >> 16)
.L0042BC0C:
/* 02BC0C 0042BC0C 34210002 */  ori         $at, $at, (0x70000002 & 0xFFFF)
/* 02BC10 0042BC10 14610010 */  bne         $v1, $at, .L0042BC54
/* 02BC14 0042BC14 00008025 */   move       $s0, $zero
/* 02BC18 0042BC18 8C920014 */  lw          $s2, 0x14($a0)
/* 02BC1C 0042BC1C 8E8C00C4 */  lw          $t4, 0xC4($s4)
/* 02BC20 0042BC20 8C8D0010 */  lw          $t5, 0x10($a0)
/* 02BC24 0042BC24 00129082 */  srl         $s2, $s2, 2
/* 02BC28 0042BC28 1A40000A */  blez        $s2, .L0042BC54
/* 02BC2C 0042BC2C 018D8821 */   addu       $s1, $t4, $t5
.L0042BC30:
/* 02BC30 0042BC30 8F9984D0 */  lw          $t9, %call16(swap_conflict)($gp)
/* 02BC34 0042BC34 02202025 */  move        $a0, $s1
/* 02BC38 0042BC38 02602825 */  move        $a1, $s3
/* 02BC3C 0042BC3C 0320F809 */  jalr        $t9
/* 02BC40 0042BC40 00000000 */   nop
/* 02BC44 0042BC44 26100001 */  addiu       $s0, $s0, 0x1
/* 02BC48 0042BC48 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02BC4C 0042BC4C 1612FFF8 */  bne         $s0, $s2, .L0042BC30
/* 02BC50 0042BC50 26310004 */   addiu      $s1, $s1, 0x4
.L0042BC54:
/* 02BC54 0042BC54 8FAE003C */  lw          $t6, 0x3C($sp)
.L0042BC58:
/* 02BC58 0042BC58 8FB80050 */  lw          $t8, 0x50($sp)
/* 02BC5C 0042BC5C 26B50001 */  addiu       $s5, $s5, 0x1
/* 02BC60 0042BC60 25CF0028 */  addiu       $t7, $t6, 0x28
/* 02BC64 0042BC64 AFAF003C */  sw          $t7, 0x3C($sp)
/* 02BC68 0042BC68 97190030 */  lhu         $t9, 0x30($t8)
/* 02BC6C 0042BC6C 02B9082B */  sltu        $at, $s5, $t9
/* 02BC70 0042BC70 5420FF6A */  bnel        $at, $zero, .L0042BA1C
/* 02BC74 0042BC74 8FA70050 */   lw         $a3, 0x50($sp)
.L0042BC78:
/* 02BC78 0042BC78 8E890180 */  lw          $t1, 0x180($s4)
.L0042BC7C:
/* 02BC7C 0042BC7C 24010001 */  addiu       $at, $zero, 0x1
/* 02BC80 0042BC80 8FA70050 */  lw          $a3, 0x50($sp)
/* 02BC84 0042BC84 15210018 */  bne         $t1, $at, .L0042BCE8
/* 02BC88 0042BC88 0000A825 */   move       $s5, $zero
/* 02BC8C 0042BC8C 8E9200C4 */  lw          $s2, 0xC4($s4)
/* 02BC90 0042BC90 3C067000 */  lui         $a2, (0x70000005 >> 16)
/* 02BC94 0042BC94 34C60005 */  ori         $a2, $a2, (0x70000005 & 0xFFFF)
/* 02BC98 0042BC98 8E4A0020 */  lw          $t2, 0x20($s2)
/* 02BC9C 0042BC9C 02802025 */  move        $a0, $s4
/* 02BCA0 0042BCA0 8F858538 */  lw          $a1, %got(find_section_bytype)($gp)
/* 02BCA4 0042BCA4 01525821 */  addu        $t3, $t2, $s2
/* 02BCA8 0042BCA8 AE8B00E8 */  sw          $t3, 0xE8($s4)
/* 02BCAC 0042BCAC 8F998524 */  lw          $t9, %call16(foreach_section)($gp)
/* 02BCB0 0042BCB0 AFA70050 */  sw          $a3, 0x50($sp)
/* 02BCB4 0042BCB4 0320F809 */  jalr        $t9
/* 02BCB8 0042BCB8 00000000 */   nop
/* 02BCBC 0042BCBC 2401FFFF */  addiu       $at, $zero, -0x1
/* 02BCC0 0042BCC0 10410007 */  beq         $v0, $at, .L0042BCE0
/* 02BCC4 0042BCC4 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02BCC8 0042BCC8 8E8C00C4 */  lw          $t4, 0xC4($s4)
/* 02BCCC 0042BCCC 8C4D0010 */  lw          $t5, 0x10($v0)
/* 02BCD0 0042BCD0 018D7021 */  addu        $t6, $t4, $t5
/* 02BCD4 0042BCD4 AE8E009C */  sw          $t6, 0x9C($s4)
/* 02BCD8 0042BCD8 10000003 */  b           .L0042BCE8
/* 02BCDC 0042BCDC 8FA70050 */   lw         $a3, 0x50($sp)
.L0042BCE0:
/* 02BCE0 0042BCE0 AE80009C */  sw          $zero, 0x9C($s4)
/* 02BCE4 0042BCE4 8FA70050 */  lw          $a3, 0x50($sp)
.L0042BCE8:
/* 02BCE8 0042BCE8 8CEF0018 */  lw          $t7, 0x18($a3)
/* 02BCEC 0042BCEC 24080006 */  addiu       $t0, $zero, 0x6
/* 02BCF0 0042BCF0 3C067000 */  lui         $a2, (0x70000000 >> 16)
/* 02BCF4 0042BCF4 AE8F0110 */  sw          $t7, 0x110($s4)
/* 02BCF8 0042BCF8 94E4002C */  lhu         $a0, 0x2C($a3)
/* 02BCFC 0042BCFC 8FA20054 */  lw          $v0, 0x54($sp)
/* 02BD00 0042BD00 24050004 */  addiu       $a1, $zero, 0x4
/* 02BD04 0042BD04 50800038 */  beql        $a0, $zero, .L0042BDE8
/* 02BD08 0042BD08 8E8F00E0 */   lw         $t7, 0xE0($s4)
.L0042BD0C:
/* 02BD0C 0042BD0C 8C430000 */  lw          $v1, 0x0($v0)
/* 02BD10 0042BD10 2C610007 */  sltiu       $at, $v1, 0x7
/* 02BD14 0042BD14 54200006 */  bnel        $at, $zero, .L0042BD30
/* 02BD18 0042BD18 2C610007 */   sltiu      $at, $v1, 0x7
/* 02BD1C 0042BD1C 5066002E */  beql        $v1, $a2, .L0042BDD8
/* 02BD20 0042BD20 26B50001 */   addiu      $s5, $s5, 0x1
/* 02BD24 0042BD24 1000002C */  b           .L0042BDD8
/* 02BD28 0042BD28 26B50001 */   addiu      $s5, $s5, 0x1
/* 02BD2C 0042BD2C 2C610007 */  sltiu       $at, $v1, 0x7
.L0042BD30:
/* 02BD30 0042BD30 50200029 */  beql        $at, $zero, .L0042BDD8
/* 02BD34 0042BD34 26B50001 */   addiu      $s5, $s5, 0x1
/* 02BD38 0042BD38 8F81802C */  lw          $at, %got(jtbl_10007BC4)($gp)
/* 02BD3C 0042BD3C 0003C080 */  sll         $t8, $v1, 2
/* 02BD40 0042BD40 00380821 */  addu        $at, $at, $t8
/* 02BD44 0042BD44 8C387BC4 */  lw          $t8, %lo(jtbl_10007BC4)($at)
/* 02BD48 0042BD48 031CC021 */  addu        $t8, $t8, $gp
/* 02BD4C 0042BD4C 03000008 */  jr          $t8
/* 02BD50 0042BD50 00000000 */   nop
.L0042BD54:
/* 02BD54 0042BD54 8C430018 */  lw          $v1, 0x18($v0)
/* 02BD58 0042BD58 30630006 */  andi        $v1, $v1, 0x6
/* 02BD5C 0042BD5C 50650006 */  beql        $v1, $a1, .L0042BD78
/* 02BD60 0042BD60 8C590008 */   lw         $t9, 0x8($v0)
/* 02BD64 0042BD64 5068000F */  beql        $v1, $t0, .L0042BDA4
/* 02BD68 0042BD68 8C4F0008 */   lw         $t7, 0x8($v0)
/* 02BD6C 0042BD6C 1000001A */  b           .L0042BDD8
/* 02BD70 0042BD70 26B50001 */   addiu      $s5, $s5, 0x1
/* 02BD74 0042BD74 8C590008 */  lw          $t9, 0x8($v0)
.L0042BD78:
/* 02BD78 0042BD78 8C490004 */  lw          $t1, 0x4($v0)
/* 02BD7C 0042BD7C 03295023 */  subu        $t2, $t9, $t1
/* 02BD80 0042BD80 AE8A00FC */  sw          $t2, 0xFC($s4)
/* 02BD84 0042BD84 AE8A00F8 */  sw          $t2, 0xF8($s4)
/* 02BD88 0042BD88 8C4D0010 */  lw          $t5, 0x10($v0)
/* 02BD8C 0042BD8C 8C4C0004 */  lw          $t4, 0x4($v0)
/* 02BD90 0042BD90 018D7021 */  addu        $t6, $t4, $t5
/* 02BD94 0042BD94 AE8E0100 */  sw          $t6, 0x100($s4)
/* 02BD98 0042BD98 1000000E */  b           .L0042BDD4
/* 02BD9C 0042BD9C 94E4002C */   lhu        $a0, 0x2C($a3)
/* 02BDA0 0042BDA0 8C4F0008 */  lw          $t7, 0x8($v0)
.L0042BDA4:
/* 02BDA4 0042BDA4 AE8F0104 */  sw          $t7, 0x104($s4)
/* 02BDA8 0042BDA8 8C580010 */  lw          $t8, 0x10($v0)
/* 02BDAC 0042BDAC 030F4821 */  addu        $t1, $t8, $t7
/* 02BDB0 0042BDB0 AE890108 */  sw          $t1, 0x108($s4)
/* 02BDB4 0042BDB4 8C4B0010 */  lw          $t3, 0x10($v0)
/* 02BDB8 0042BDB8 8C4A0014 */  lw          $t2, 0x14($v0)
/* 02BDBC 0042BDBC 014B6023 */  subu        $t4, $t2, $t3
/* 02BDC0 0042BDC0 AE8C010C */  sw          $t4, 0x10C($s4)
/* 02BDC4 0042BDC4 10000003 */  b           .L0042BDD4
/* 02BDC8 0042BDC8 94E4002C */   lhu        $a0, 0x2C($a3)
.L0042BDCC:
/* 02BDCC 0042BDCC 8C4D0008 */  lw          $t5, 0x8($v0)
/* 02BDD0 0042BDD0 AFAD0080 */  sw          $t5, 0x80($sp)
.L0042BDD4:
/* 02BDD4 0042BDD4 26B50001 */  addiu       $s5, $s5, 0x1
.L0042BDD8:
/* 02BDD8 0042BDD8 02A4082B */  sltu        $at, $s5, $a0
/* 02BDDC 0042BDDC 1420FFCB */  bnez        $at, .L0042BD0C
/* 02BDE0 0042BDE0 24420020 */   addiu      $v0, $v0, 0x20
/* 02BDE4 0042BDE4 8E8F00E0 */  lw          $t7, 0xE0($s4)
.L0042BDE8:
/* 02BDE8 0042BDE8 240E0062 */  addiu       $t6, $zero, 0x62
/* 02BDEC 0042BDEC A28E0001 */  sb          $t6, 0x1($s4)
/* 02BDF0 0042BDF0 8DF50024 */  lw          $s5, 0x24($t7)
/* 02BDF4 0042BDF4 3C01F000 */  lui         $at, (0xF0000000 >> 16)
/* 02BDF8 0042BDF8 02A1A824 */  and         $s5, $s5, $at
/* 02BDFC 0042BDFC 12A000A4 */  beqz        $s5, .L0042C090
/* 02BE00 0042BE00 3C011000 */   lui        $at, (0x10000000 >> 16)
/* 02BE04 0042BE04 16A10004 */  bne         $s5, $at, .L0042BE18
/* 02BE08 0042BE08 24190042 */   addiu      $t9, $zero, 0x42
/* 02BE0C 0042BE0C 24180066 */  addiu       $t8, $zero, 0x66
/* 02BE10 0042BE10 1000009F */  b           .L0042C090
/* 02BE14 0042BE14 A2980001 */   sb         $t8, 0x1($s4)
.L0042BE18:
/* 02BE18 0042BE18 1000009D */  b           .L0042C090
/* 02BE1C 0042BE1C A2990001 */   sb         $t9, 0x1($s4)
/* 02BE20 0042BE20 24090002 */  addiu       $t1, $zero, 0x2
.L0042BE24:
/* 02BE24 0042BE24 AE89008C */  sw          $t1, 0x8C($s4)
/* 02BE28 0042BE28 96420000 */  lhu         $v0, 0x0($s2)
/* 02BE2C 0042BE2C 24010160 */  addiu       $at, $zero, 0x160
/* 02BE30 0042BE30 10410005 */  beq         $v0, $at, .L0042BE48
/* 02BE34 0042BE34 24010163 */   addiu      $at, $zero, 0x163
/* 02BE38 0042BE38 10410003 */  beq         $v0, $at, .L0042BE48
/* 02BE3C 0042BE3C 24010140 */   addiu      $at, $zero, 0x140
/* 02BE40 0042BE40 54410004 */  bnel        $v0, $at, .L0042BE54
/* 02BE44 0042BE44 24010162 */   addiu      $at, $zero, 0x162
.L0042BE48:
/* 02BE48 0042BE48 10000028 */  b           .L0042BEEC
/* 02BE4C 0042BE4C 304300FF */   andi       $v1, $v0, 0xFF
/* 02BE50 0042BE50 24010162 */  addiu       $at, $zero, 0x162
.L0042BE54:
/* 02BE54 0042BE54 10410005 */  beq         $v0, $at, .L0042BE6C
/* 02BE58 0042BE58 24010166 */   addiu      $at, $zero, 0x166
/* 02BE5C 0042BE5C 10410003 */  beq         $v0, $at, .L0042BE6C
/* 02BE60 0042BE60 24010142 */   addiu      $at, $zero, 0x142
/* 02BE64 0042BE64 54410004 */  bnel        $v0, $at, .L0042BE78
/* 02BE68 0042BE68 24016001 */   addiu      $at, $zero, 0x6001
.L0042BE6C:
/* 02BE6C 0042BE6C 1000001F */  b           .L0042BEEC
/* 02BE70 0042BE70 304300FF */   andi       $v1, $v0, 0xFF
/* 02BE74 0042BE74 24016001 */  addiu       $at, $zero, 0x6001
.L0042BE78:
/* 02BE78 0042BE78 10410005 */  beq         $v0, $at, .L0042BE90
/* 02BE7C 0042BE7C 3043FF00 */   andi       $v1, $v0, 0xFF00
/* 02BE80 0042BE80 24016301 */  addiu       $at, $zero, 0x6301
/* 02BE84 0042BE84 10410002 */  beq         $v0, $at, .L0042BE90
/* 02BE88 0042BE88 24014001 */   addiu      $at, $zero, 0x4001
/* 02BE8C 0042BE8C 14410007 */  bne         $v0, $at, .L0042BEAC
.L0042BE90:
/* 02BE90 0042BE90 24010001 */   addiu      $at, $zero, 0x1
/* 02BE94 0042BE94 16610015 */  bne         $s3, $at, .L0042BEEC
/* 02BE98 0042BE98 00031A02 */   srl        $v1, $v1, 8
/* 02BE9C 0042BE9C 828B0000 */  lb          $t3, 0x0($s4)
/* 02BEA0 0042BEA0 356C0080 */  ori         $t4, $t3, 0x80
/* 02BEA4 0042BEA4 10000011 */  b           .L0042BEEC
/* 02BEA8 0042BEA8 A28C0000 */   sb         $t4, 0x0($s4)
.L0042BEAC:
/* 02BEAC 0042BEAC 24016201 */  addiu       $at, $zero, 0x6201
/* 02BEB0 0042BEB0 10410006 */  beq         $v0, $at, .L0042BECC
/* 02BEB4 0042BEB4 3043FF00 */   andi       $v1, $v0, 0xFF00
/* 02BEB8 0042BEB8 24016601 */  addiu       $at, $zero, 0x6601
/* 02BEBC 0042BEBC 10410003 */  beq         $v0, $at, .L0042BECC
/* 02BEC0 0042BEC0 24014201 */   addiu      $at, $zero, 0x4201
/* 02BEC4 0042BEC4 14410007 */  bne         $v0, $at, .L0042BEE4
/* 02BEC8 0042BEC8 00000000 */   nop
.L0042BECC:
/* 02BECC 0042BECC 16600007 */  bnez        $s3, .L0042BEEC
/* 02BED0 0042BED0 00031A02 */   srl        $v1, $v1, 8
/* 02BED4 0042BED4 828E0000 */  lb          $t6, 0x0($s4)
/* 02BED8 0042BED8 35CF0080 */  ori         $t7, $t6, 0x80
/* 02BEDC 0042BEDC 10000003 */  b           .L0042BEEC
/* 02BEE0 0042BEE0 A28F0000 */   sb         $t7, 0x0($s4)
.L0042BEE4:
/* 02BEE4 0042BEE4 1000016F */  b           .L0042C4A4
/* 02BEE8 0042BEE8 00001025 */   move       $v0, $zero
.L0042BEEC:
/* 02BEEC 0042BEEC 28610063 */  slti        $at, $v1, 0x63
/* 02BEF0 0042BEF0 10200003 */  beqz        $at, .L0042BF00
/* 02BEF4 0042BEF4 24180062 */   addiu      $t8, $zero, 0x62
/* 02BEF8 0042BEF8 10000007 */  b           .L0042BF18
/* 02BEFC 0042BEFC A2980001 */   sb         $t8, 0x1($s4)
.L0042BF00:
/* 02BF00 0042BF00 28610067 */  slti        $at, $v1, 0x67
/* 02BF04 0042BF04 10200003 */  beqz        $at, .L0042BF14
/* 02BF08 0042BF08 24030042 */   addiu      $v1, $zero, 0x42
/* 02BF0C 0042BF0C 10000001 */  b           .L0042BF14
/* 02BF10 0042BF10 24030066 */   addiu      $v1, $zero, 0x66
.L0042BF14:
/* 02BF14 0042BF14 A2830001 */  sb          $v1, 0x1($s4)
.L0042BF18:
/* 02BF18 0042BF18 8E820000 */  lw          $v0, 0x0($s4)
/* 02BF1C 0042BF1C 000217C3 */  sra         $v0, $v0, 31
/* 02BF20 0042BF20 5040000A */  beql        $v0, $zero, .L0042BF4C
/* 02BF24 0042BF24 8E9200C4 */   lw         $s2, 0xC4($s4)
/* 02BF28 0042BF28 8F998494 */  lw          $t9, %call16(swap_filehdr)($gp)
/* 02BF2C 0042BF2C 8E8400C4 */  lw          $a0, 0xC4($s4)
/* 02BF30 0042BF30 02602825 */  move        $a1, $s3
/* 02BF34 0042BF34 0320F809 */  jalr        $t9
/* 02BF38 0042BF38 00000000 */   nop
/* 02BF3C 0042BF3C 8E820000 */  lw          $v0, 0x0($s4)
/* 02BF40 0042BF40 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02BF44 0042BF44 000217C3 */  sra         $v0, $v0, 31
/* 02BF48 0042BF48 8E9200C4 */  lw          $s2, 0xC4($s4)
.L0042BF4C:
/* 02BF4C 0042BF4C AE920090 */  sw          $s2, 0x90($s4)
/* 02BF50 0042BF50 AE9200F8 */  sw          $s2, 0xF8($s4)
/* 02BF54 0042BF54 96590010 */  lhu         $t9, 0x10($s2)
/* 02BF58 0042BF58 03324821 */  addu        $t1, $t9, $s2
/* 02BF5C 0042BF5C 252A0014 */  addiu       $t2, $t1, 0x14
/* 02BF60 0042BF60 10400014 */  beqz        $v0, .L0042BFB4
/* 02BF64 0042BF64 AE8A0098 */   sw         $t2, 0x98($s4)
/* 02BF68 0042BF68 964C0002 */  lhu         $t4, 0x2($s2)
/* 02BF6C 0042BF6C 00008025 */  move        $s0, $zero
/* 02BF70 0042BF70 01408825 */  move        $s1, $t2
/* 02BF74 0042BF74 51800010 */  beql        $t4, $zero, .L0042BFB8
/* 02BF78 0042BF78 964F0010 */   lhu        $t7, 0x10($s2)
.L0042BF7C:
/* 02BF7C 0042BF7C 8F99849C */  lw          $t9, %call16(swap_scnhdr)($gp)
/* 02BF80 0042BF80 02202025 */  move        $a0, $s1
/* 02BF84 0042BF84 02602825 */  move        $a1, $s3
/* 02BF88 0042BF88 0320F809 */  jalr        $t9
/* 02BF8C 0042BF8C 00000000 */   nop
/* 02BF90 0042BF90 8E8D0090 */  lw          $t5, 0x90($s4)
/* 02BF94 0042BF94 26100001 */  addiu       $s0, $s0, 0x1
/* 02BF98 0042BF98 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02BF9C 0042BF9C 95AE0002 */  lhu         $t6, 0x2($t5)
/* 02BFA0 0042BFA0 26310028 */  addiu       $s1, $s1, 0x28
/* 02BFA4 0042BFA4 020E082B */  sltu        $at, $s0, $t6
/* 02BFA8 0042BFA8 1420FFF4 */  bnez        $at, .L0042BF7C
/* 02BFAC 0042BFAC 00000000 */   nop
/* 02BFB0 0042BFB0 8E9200C4 */  lw          $s2, 0xC4($s4)
.L0042BFB4:
/* 02BFB4 0042BFB4 964F0010 */  lhu         $t7, 0x10($s2)
.L0042BFB8:
/* 02BFB8 0042BFB8 11E0001A */  beqz        $t7, .L0042C024
/* 02BFBC 0042BFBC 00000000 */   nop
/* 02BFC0 0042BFC0 8E980000 */  lw          $t8, 0x0($s4)
/* 02BFC4 0042BFC4 0018CFC3 */  sra         $t9, $t8, 31
/* 02BFC8 0042BFC8 53200009 */  beql        $t9, $zero, .L0042BFF0
/* 02BFCC 0042BFCC 26420014 */   addiu      $v0, $s2, 0x14
/* 02BFD0 0042BFD0 8F998498 */  lw          $t9, %call16(swap_aouthdr)($gp)
/* 02BFD4 0042BFD4 26440014 */  addiu       $a0, $s2, 0x14
/* 02BFD8 0042BFD8 02602825 */  move        $a1, $s3
/* 02BFDC 0042BFDC 0320F809 */  jalr        $t9
/* 02BFE0 0042BFE0 00000000 */   nop
/* 02BFE4 0042BFE4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02BFE8 0042BFE8 8E9200C4 */  lw          $s2, 0xC4($s4)
/* 02BFEC 0042BFEC 26420014 */  addiu       $v0, $s2, 0x14
.L0042BFF0:
/* 02BFF0 0042BFF0 AE820094 */  sw          $v0, 0x94($s4)
/* 02BFF4 0042BFF4 8C490014 */  lw          $t1, 0x14($v0)
/* 02BFF8 0042BFF8 AE8900FC */  sw          $t1, 0xFC($s4)
/* 02BFFC 0042BFFC 8C4A0004 */  lw          $t2, 0x4($v0)
/* 02C000 0042C000 AE8A0100 */  sw          $t2, 0x100($s4)
/* 02C004 0042C004 8C4B0018 */  lw          $t3, 0x18($v0)
/* 02C008 0042C008 AE8B0104 */  sw          $t3, 0x104($s4)
/* 02C00C 0042C00C 8C4C001C */  lw          $t4, 0x1C($v0)
/* 02C010 0042C010 AE8C0108 */  sw          $t4, 0x108($s4)
/* 02C014 0042C014 8C4D000C */  lw          $t5, 0xC($v0)
/* 02C018 0042C018 AE8D010C */  sw          $t5, 0x10C($s4)
/* 02C01C 0042C01C 8C4E0010 */  lw          $t6, 0x10($v0)
/* 02C020 0042C020 AE8E0110 */  sw          $t6, 0x110($s4)
.L0042C024:
/* 02C024 0042C024 8F9982D0 */  lw          $t9, %call16(obj_map_address)($gp)
/* 02C028 0042C028 02802025 */  move        $a0, $s4
/* 02C02C 0042C02C 0320F809 */  jalr        $t9
/* 02C030 0042C030 00000000 */   nop
/* 02C034 0042C034 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C038 0042C038 8E840090 */  lw          $a0, 0x90($s4)
/* 02C03C 0042C03C 00402825 */  move        $a1, $v0
/* 02C040 0042C040 8F998020 */  lw          $t9, %got(get_dynamic_offset)($gp)
/* 02C044 0042C044 2739D1EC */  addiu       $t9, $t9, %lo(get_dynamic_offset)
/* 02C048 0042C048 0320F809 */  jalr        $t9
/* 02C04C 0042C04C 00000000 */   nop
/* 02C050 0042C050 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C054 0042C054 AFA20080 */  sw          $v0, 0x80($sp)
/* 02C058 0042C058 02802025 */  move        $a0, $s4
/* 02C05C 0042C05C 8F99845C */  lw          $t9, %call16(hdr_symptr)($gp)
/* 02C060 0042C060 0320F809 */  jalr        $t9
/* 02C064 0042C064 00000000 */   nop
/* 02C068 0042C068 10400009 */  beqz        $v0, .L0042C090
/* 02C06C 0042C06C 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02C070 0042C070 8E8F0180 */  lw          $t7, 0x180($s4)
/* 02C074 0042C074 24010001 */  addiu       $at, $zero, 0x1
/* 02C078 0042C078 55E10006 */  bnel        $t7, $at, .L0042C094
/* 02C07C 0042C07C 8E90009C */   lw         $s0, 0x9C($s4)
/* 02C080 0042C080 8E9200C4 */  lw          $s2, 0xC4($s4)
/* 02C084 0042C084 8E580008 */  lw          $t8, 0x8($s2)
/* 02C088 0042C088 0312C821 */  addu        $t9, $t8, $s2
/* 02C08C 0042C08C AE99009C */  sw          $t9, 0x9C($s4)
.L0042C090:
/* 02C090 0042C090 8E90009C */  lw          $s0, 0x9C($s4)
.L0042C094:
/* 02C094 0042C094 120000CF */  beqz        $s0, .L0042C3D4
/* 02C098 0042C098 00000000 */   nop
/* 02C09C 0042C09C 8E890000 */  lw          $t1, 0x0($s4)
/* 02C0A0 0042C0A0 000957C3 */  sra         $t2, $t1, 31
/* 02C0A4 0042C0A4 51400009 */  beql        $t2, $zero, .L0042C0CC
/* 02C0A8 0042C0A8 86050000 */   lh         $a1, 0x0($s0)
/* 02C0AC 0042C0AC 8F9984A0 */  lw          $t9, %call16(swap_hdr)($gp)
/* 02C0B0 0042C0B0 02002025 */  move        $a0, $s0
/* 02C0B4 0042C0B4 02602825 */  move        $a1, $s3
/* 02C0B8 0042C0B8 0320F809 */  jalr        $t9
/* 02C0BC 0042C0BC 00000000 */   nop
/* 02C0C0 0042C0C0 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C0C4 0042C0C4 8E90009C */  lw          $s0, 0x9C($s4)
/* 02C0C8 0042C0C8 86050000 */  lh          $a1, 0x0($s0)
.L0042C0CC:
/* 02C0CC 0042C0CC 24017009 */  addiu       $at, $zero, 0x7009
/* 02C0D0 0042C0D0 14A100BB */  bne         $a1, $at, .L0042C3C0
/* 02C0D4 0042C0D4 00000000 */   nop
/* 02C0D8 0042C0D8 8E02000C */  lw          $v0, 0xC($s0)
/* 02C0DC 0042C0DC 8E8B0034 */  lw          $t3, 0x34($s4)
/* 02C0E0 0042C0E0 0162082A */  slt         $at, $t3, $v0
/* 02C0E4 0042C0E4 5020000B */  beql        $at, $zero, .L0042C114
/* 02C0E8 0042C0E8 8E9200C4 */   lw         $s2, 0xC4($s4)
/* 02C0EC 0042C0EC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02C0F0 0042C0F0 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02C0F4 0042C0F4 8F85802C */  lw          $a1, %got(STR_10006D48)($gp)
/* 02C0F8 0042C0F8 24840020 */  addiu       $a0, $a0, 0x20
/* 02C0FC 0042C0FC 0320F809 */  jalr        $t9
/* 02C100 0042C100 24A56D48 */   addiu      $a1, $a1, %lo(STR_10006D48)
/* 02C104 0042C104 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C108 0042C108 100000E6 */  b           .L0042C4A4
/* 02C10C 0042C10C 00001025 */   move       $v0, $zero
/* 02C110 0042C110 8E9200C4 */  lw          $s2, 0xC4($s4)
.L0042C114:
/* 02C114 0042C114 8E8D0034 */  lw          $t5, 0x34($s4)
/* 02C118 0042C118 02426021 */  addu        $t4, $s2, $v0
/* 02C11C 0042C11C AE8C00B8 */  sw          $t4, 0xB8($s4)
/* 02C120 0042C120 8E020034 */  lw          $v0, 0x34($s0)
/* 02C124 0042C124 01A2082A */  slt         $at, $t5, $v0
/* 02C128 0042C128 1020000A */  beqz        $at, .L0042C154
/* 02C12C 0042C12C 02427021 */   addu       $t6, $s2, $v0
/* 02C130 0042C130 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02C134 0042C134 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02C138 0042C138 8F85802C */  lw          $a1, %got(STR_10006D78)($gp)
/* 02C13C 0042C13C 24840020 */  addiu       $a0, $a0, 0x20
/* 02C140 0042C140 0320F809 */  jalr        $t9
/* 02C144 0042C144 24A56D78 */   addiu      $a1, $a1, %lo(STR_10006D78)
/* 02C148 0042C148 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C14C 0042C14C 100000D5 */  b           .L0042C4A4
/* 02C150 0042C150 00001025 */   move       $v0, $zero
.L0042C154:
/* 02C154 0042C154 AE8E00C0 */  sw          $t6, 0xC0($s4)
/* 02C158 0042C158 8E020054 */  lw          $v0, 0x54($s0)
/* 02C15C 0042C15C 8E8F0034 */  lw          $t7, 0x34($s4)
/* 02C160 0042C160 0242C021 */  addu        $t8, $s2, $v0
/* 02C164 0042C164 01E2082A */  slt         $at, $t7, $v0
/* 02C168 0042C168 5020000B */  beql        $at, $zero, .L0042C198
/* 02C16C 0042C16C AE9800BC */   sw         $t8, 0xBC($s4)
/* 02C170 0042C170 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02C174 0042C174 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02C178 0042C178 8F85802C */  lw          $a1, %got(STR_10006DA4)($gp)
/* 02C17C 0042C17C 24840020 */  addiu       $a0, $a0, 0x20
/* 02C180 0042C180 0320F809 */  jalr        $t9
/* 02C184 0042C184 24A56DA4 */   addiu      $a1, $a1, %lo(STR_10006DA4)
/* 02C188 0042C188 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C18C 0042C18C 100000C5 */  b           .L0042C4A4
/* 02C190 0042C190 00001025 */   move       $v0, $zero
/* 02C194 0042C194 AE9800BC */  sw          $t8, 0xBC($s4)
.L0042C198:
/* 02C198 0042C198 8E03001C */  lw          $v1, 0x1C($s0)
/* 02C19C 0042C19C 8E820034 */  lw          $v0, 0x34($s4)
/* 02C1A0 0042C1A0 0243C821 */  addu        $t9, $s2, $v1
/* 02C1A4 0042C1A4 0043082A */  slt         $at, $v0, $v1
/* 02C1A8 0042C1A8 5020000B */  beql        $at, $zero, .L0042C1D8
/* 02C1AC 0042C1AC AE9900A4 */   sw         $t9, 0xA4($s4)
/* 02C1B0 0042C1B0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02C1B4 0042C1B4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02C1B8 0042C1B8 8F85802C */  lw          $a1, %got(STR_10006DD0)($gp)
/* 02C1BC 0042C1BC 24840020 */  addiu       $a0, $a0, 0x20
/* 02C1C0 0042C1C0 0320F809 */  jalr        $t9
/* 02C1C4 0042C1C4 24A56DD0 */   addiu      $a1, $a1, %lo(STR_10006DD0)
/* 02C1C8 0042C1C8 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C1CC 0042C1CC 100000B5 */  b           .L0042C4A4
/* 02C1D0 0042C1D0 00001025 */   move       $v0, $zero
/* 02C1D4 0042C1D4 AE9900A4 */  sw          $t9, 0xA4($s4)
.L0042C1D8:
/* 02C1D8 0042C1D8 8E04004C */  lw          $a0, 0x4C($s0)
/* 02C1DC 0042C1DC 0044082A */  slt         $at, $v0, $a0
/* 02C1E0 0042C1E0 1020000A */  beqz        $at, .L0042C20C
/* 02C1E4 0042C1E4 02444821 */   addu       $t1, $s2, $a0
/* 02C1E8 0042C1E8 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02C1EC 0042C1EC 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02C1F0 0042C1F0 8F85802C */  lw          $a1, %got(STR_10006DFC)($gp)
/* 02C1F4 0042C1F4 24840020 */  addiu       $a0, $a0, 0x20
/* 02C1F8 0042C1F8 0320F809 */  jalr        $t9
/* 02C1FC 0042C1FC 24A56DFC */   addiu      $a1, $a1, %lo(STR_10006DFC)
/* 02C200 0042C200 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C204 0042C204 100000A7 */  b           .L0042C4A4
/* 02C208 0042C208 00001025 */   move       $v0, $zero
.L0042C20C:
/* 02C20C 0042C20C AE8900A0 */  sw          $t1, 0xA0($s4)
/* 02C210 0042C210 8E020024 */  lw          $v0, 0x24($s0)
/* 02C214 0042C214 8E8A0034 */  lw          $t2, 0x34($s4)
/* 02C218 0042C218 02425821 */  addu        $t3, $s2, $v0
/* 02C21C 0042C21C 0142082A */  slt         $at, $t2, $v0
/* 02C220 0042C220 5020000B */  beql        $at, $zero, .L0042C250
/* 02C224 0042C224 AE8B00A8 */   sw         $t3, 0xA8($s4)
/* 02C228 0042C228 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02C22C 0042C22C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02C230 0042C230 8F85802C */  lw          $a1, %got(STR_10006E28)($gp)
/* 02C234 0042C234 24840020 */  addiu       $a0, $a0, 0x20
/* 02C238 0042C238 0320F809 */  jalr        $t9
/* 02C23C 0042C23C 24A56E28 */   addiu      $a1, $a1, %lo(STR_10006E28)
/* 02C240 0042C240 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C244 0042C244 10000097 */  b           .L0042C4A4
/* 02C248 0042C248 00001025 */   move       $v0, $zero
/* 02C24C 0042C24C AE8B00A8 */  sw          $t3, 0xA8($s4)
.L0042C250:
/* 02C250 0042C250 8E02005C */  lw          $v0, 0x5C($s0)
/* 02C254 0042C254 8E8C0034 */  lw          $t4, 0x34($s4)
/* 02C258 0042C258 02426821 */  addu        $t5, $s2, $v0
/* 02C25C 0042C25C 0182082A */  slt         $at, $t4, $v0
/* 02C260 0042C260 5020000B */  beql        $at, $zero, .L0042C290
/* 02C264 0042C264 AE8D00AC */   sw         $t5, 0xAC($s4)
/* 02C268 0042C268 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02C26C 0042C26C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02C270 0042C270 8F85802C */  lw          $a1, %got(STR_10006E54)($gp)
/* 02C274 0042C274 24840020 */  addiu       $a0, $a0, 0x20
/* 02C278 0042C278 0320F809 */  jalr        $t9
/* 02C27C 0042C27C 24A56E54 */   addiu      $a1, $a1, %lo(STR_10006E54)
/* 02C280 0042C280 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C284 0042C284 10000087 */  b           .L0042C4A4
/* 02C288 0042C288 00001025 */   move       $v0, $zero
/* 02C28C 0042C28C AE8D00AC */  sw          $t5, 0xAC($s4)
.L0042C290:
/* 02C290 0042C290 8E020044 */  lw          $v0, 0x44($s0)
/* 02C294 0042C294 8E8E0034 */  lw          $t6, 0x34($s4)
/* 02C298 0042C298 02427821 */  addu        $t7, $s2, $v0
/* 02C29C 0042C29C 01C2082A */  slt         $at, $t6, $v0
/* 02C2A0 0042C2A0 5020000B */  beql        $at, $zero, .L0042C2D0
/* 02C2A4 0042C2A4 AE8F00B0 */   sw         $t7, 0xB0($s4)
/* 02C2A8 0042C2A8 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02C2AC 0042C2AC 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02C2B0 0042C2B0 8F85802C */  lw          $a1, %got(STR_10006E80)($gp)
/* 02C2B4 0042C2B4 24840020 */  addiu       $a0, $a0, 0x20
/* 02C2B8 0042C2B8 0320F809 */  jalr        $t9
/* 02C2BC 0042C2BC 24A56E80 */   addiu      $a1, $a1, %lo(STR_10006E80)
/* 02C2C0 0042C2C0 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C2C4 0042C2C4 10000077 */  b           .L0042C4A4
/* 02C2C8 0042C2C8 00001025 */   move       $v0, $zero
/* 02C2CC 0042C2CC AE8F00B0 */  sw          $t7, 0xB0($s4)
.L0042C2D0:
/* 02C2D0 0042C2D0 8E02003C */  lw          $v0, 0x3C($s0)
/* 02C2D4 0042C2D4 8E980034 */  lw          $t8, 0x34($s4)
/* 02C2D8 0042C2D8 0242C821 */  addu        $t9, $s2, $v0
/* 02C2DC 0042C2DC 0302082A */  slt         $at, $t8, $v0
/* 02C2E0 0042C2E0 5020000B */  beql        $at, $zero, .L0042C310
/* 02C2E4 0042C2E4 8E8A0000 */   lw         $t2, 0x0($s4)
/* 02C2E8 0042C2E8 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02C2EC 0042C2EC 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02C2F0 0042C2F0 8F85802C */  lw          $a1, %got(STR_10006EB0)($gp)
/* 02C2F4 0042C2F4 24840020 */  addiu       $a0, $a0, 0x20
/* 02C2F8 0042C2F8 0320F809 */  jalr        $t9
/* 02C2FC 0042C2FC 24A56EB0 */   addiu      $a1, $a1, %lo(STR_10006EB0)
/* 02C300 0042C300 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C304 0042C304 10000067 */  b           .L0042C4A4
/* 02C308 0042C308 00001025 */   move       $v0, $zero
/* 02C30C 0042C30C 8E8A0000 */  lw          $t2, 0x0($s4)
.L0042C310:
/* 02C310 0042C310 AE9900B4 */  sw          $t9, 0xB4($s4)
/* 02C314 0042C314 8E090020 */  lw          $t1, 0x20($s0)
/* 02C318 0042C318 000A5FC3 */  sra         $t3, $t2, 31
/* 02C31C 0042C31C 1160002D */  beqz        $t3, .L0042C3D4
/* 02C320 0042C320 AE8900D8 */   sw         $t1, 0xD8($s4)
/* 02C324 0042C324 8F9984A8 */  lw          $t9, %call16(swap_fi)($gp)
/* 02C328 0042C328 8E8400BC */  lw          $a0, 0xBC($s4)
/* 02C32C 0042C32C 8E050050 */  lw          $a1, 0x50($s0)
/* 02C330 0042C330 0320F809 */  jalr        $t9
/* 02C334 0042C334 02603025 */   move       $a2, $s3
/* 02C338 0042C338 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C33C 0042C33C 8E8C009C */  lw          $t4, 0x9C($s4)
/* 02C340 0042C340 8E8400A4 */  lw          $a0, 0xA4($s4)
/* 02C344 0042C344 8F9984B4 */  lw          $t9, %call16(swap_pd)($gp)
/* 02C348 0042C348 02603025 */  move        $a2, $s3
/* 02C34C 0042C34C 8D850018 */  lw          $a1, 0x18($t4)
/* 02C350 0042C350 0320F809 */  jalr        $t9
/* 02C354 0042C354 00000000 */   nop
/* 02C358 0042C358 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C35C 0042C35C 8E8D009C */  lw          $t5, 0x9C($s4)
/* 02C360 0042C360 8E8400A0 */  lw          $a0, 0xA0($s4)
/* 02C364 0042C364 8F9984A4 */  lw          $t9, %call16(swap_fd)($gp)
/* 02C368 0042C368 02603025 */  move        $a2, $s3
/* 02C36C 0042C36C 8DA50048 */  lw          $a1, 0x48($t5)
/* 02C370 0042C370 0320F809 */  jalr        $t9
/* 02C374 0042C374 00000000 */   nop
/* 02C378 0042C378 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C37C 0042C37C 8E8E009C */  lw          $t6, 0x9C($s4)
/* 02C380 0042C380 8E8400A8 */  lw          $a0, 0xA8($s4)
/* 02C384 0042C384 8F9984AC */  lw          $t9, %call16(swap_sym)($gp)
/* 02C388 0042C388 02603025 */  move        $a2, $s3
/* 02C38C 0042C38C 8DC50020 */  lw          $a1, 0x20($t6)
/* 02C390 0042C390 0320F809 */  jalr        $t9
/* 02C394 0042C394 00000000 */   nop
/* 02C398 0042C398 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C39C 0042C39C 8E8F009C */  lw          $t7, 0x9C($s4)
/* 02C3A0 0042C3A0 8E8400AC */  lw          $a0, 0xAC($s4)
/* 02C3A4 0042C3A4 8F9984B0 */  lw          $t9, %call16(swap_ext)($gp)
/* 02C3A8 0042C3A8 02603025 */  move        $a2, $s3
/* 02C3AC 0042C3AC 8DE50058 */  lw          $a1, 0x58($t7)
/* 02C3B0 0042C3B0 0320F809 */  jalr        $t9
/* 02C3B4 0042C3B4 00000000 */   nop
/* 02C3B8 0042C3B8 10000006 */  b           .L0042C3D4
/* 02C3BC 0042C3BC 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042C3C0:
/* 02C3C0 0042C3C0 8F998490 */  lw          $t9, %call16(warning)($gp)
/* 02C3C4 0042C3C4 8F84802C */  lw          $a0, %got(STR_10006EDC)($gp)
/* 02C3C8 0042C3C8 0320F809 */  jalr        $t9
/* 02C3CC 0042C3CC 24846EDC */   addiu      $a0, $a0, %lo(STR_10006EDC)
/* 02C3D0 0042C3D0 8FBC0030 */  lw          $gp, 0x30($sp)
.L0042C3D4:
/* 02C3D4 0042C3D4 8F9982CC */  lw          $t9, %call16(obj_set_base_address)($gp)
/* 02C3D8 0042C3D8 02802025 */  move        $a0, $s4
/* 02C3DC 0042C3DC 8E8500FC */  lw          $a1, 0xFC($s4)
/* 02C3E0 0042C3E0 0320F809 */  jalr        $t9
/* 02C3E4 0042C3E4 00000000 */   nop
/* 02C3E8 0042C3E8 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C3EC 0042C3EC 02802025 */  move        $a0, $s4
/* 02C3F0 0042C3F0 8F9982D4 */  lw          $t9, %call16(obj_map_diff)($gp)
/* 02C3F4 0042C3F4 0320F809 */  jalr        $t9
/* 02C3F8 0042C3F8 00000000 */   nop
/* 02C3FC 0042C3FC 8E980180 */  lw          $t8, 0x180($s4)
/* 02C400 0042C400 24010002 */  addiu       $at, $zero, 0x2
/* 02C404 0042C404 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02C408 0042C408 1701000F */  bne         $t8, $at, .L0042C448
/* 02C40C 0042C40C 00403025 */   move       $a2, $v0
/* 02C410 0042C410 8E9900FC */  lw          $t9, 0xFC($s4)
/* 02C414 0042C414 8E8A0104 */  lw          $t2, 0x104($s4)
/* 02C418 0042C418 8E8C0108 */  lw          $t4, 0x108($s4)
/* 02C41C 0042C41C 8E8E0110 */  lw          $t6, 0x110($s4)
/* 02C420 0042C420 03224823 */  subu        $t1, $t9, $v0
/* 02C424 0042C424 01425823 */  subu        $t3, $t2, $v0
/* 02C428 0042C428 01826823 */  subu        $t5, $t4, $v0
/* 02C42C 0042C42C 01C27823 */  subu        $t7, $t6, $v0
/* 02C430 0042C430 AE8900FC */  sw          $t1, 0xFC($s4)
/* 02C434 0042C434 AE8B0104 */  sw          $t3, 0x104($s4)
/* 02C438 0042C438 AE8D0108 */  sw          $t5, 0x108($s4)
/* 02C43C 0042C43C AE8F0110 */  sw          $t7, 0x110($s4)
/* 02C440 0042C440 10000007 */  b           .L0042C460
/* 02C444 0042C444 00403825 */   move       $a3, $v0
.L0042C448:
/* 02C448 0042C448 8E980104 */  lw          $t8, 0x104($s4)
/* 02C44C 0042C44C 8E9900FC */  lw          $t9, 0xFC($s4)
/* 02C450 0042C450 8E8A0100 */  lw          $t2, 0x100($s4)
/* 02C454 0042C454 03194823 */  subu        $t1, $t8, $t9
/* 02C458 0042C458 012A5823 */  subu        $t3, $t1, $t2
/* 02C45C 0042C45C 01623821 */  addu        $a3, $t3, $v0
.L0042C460:
/* 02C460 0042C460 AE800198 */  sw          $zero, 0x198($s4)
/* 02C464 0042C464 8FAC0080 */  lw          $t4, 0x80($sp)
/* 02C468 0042C468 5180000E */  beql        $t4, $zero, .L0042C4A4
/* 02C46C 0042C46C 02801025 */   move       $v0, $s4
/* 02C470 0042C470 8F998284 */  lw          $t9, %call16(obj_get_dynamic_info)($gp)
/* 02C474 0042C474 01862023 */  subu        $a0, $t4, $a2
/* 02C478 0042C478 AFA40080 */  sw          $a0, 0x80($sp)
/* 02C47C 0042C47C 0320F809 */  jalr        $t9
/* 02C480 0042C480 02802825 */   move       $a1, $s4
/* 02C484 0042C484 14400006 */  bnez        $v0, .L0042C4A0
/* 02C488 0042C488 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02C48C 0042C48C 8F998638 */  lw          $t9, %call16(fatal)($gp)
/* 02C490 0042C490 8F84802C */  lw          $a0, %got(STR_10006F00)($gp)
/* 02C494 0042C494 0320F809 */  jalr        $t9
/* 02C498 0042C498 24846F00 */   addiu      $a0, $a0, %lo(STR_10006F00)
/* 02C49C 0042C49C 8FBC0030 */  lw          $gp, 0x30($sp)
.L0042C4A0:
/* 02C4A0 0042C4A0 02801025 */  move        $v0, $s4
.L0042C4A4:
/* 02C4A4 0042C4A4 8FBF0034 */  lw          $ra, 0x34($sp)
/* 02C4A8 0042C4A8 8FB00018 */  lw          $s0, 0x18($sp)
/* 02C4AC 0042C4AC 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02C4B0 0042C4B0 8FB20020 */  lw          $s2, 0x20($sp)
/* 02C4B4 0042C4B4 8FB30024 */  lw          $s3, 0x24($sp)
/* 02C4B8 0042C4B8 8FB40028 */  lw          $s4, 0x28($sp)
/* 02C4BC 0042C4BC 8FB5002C */  lw          $s5, 0x2C($sp)
/* 02C4C0 0042C4C0 03E00008 */  jr          $ra
/* 02C4C4 0042C4C4 27BD00A0 */   addiu      $sp, $sp, 0xA0
