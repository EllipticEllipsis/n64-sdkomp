.section .rodata
glabel STR_10006060
/* 046060 10006060 */ .asciz "uxlibc:80"
                      .balign 4

glabel STR_1000606C
/* 04606C 1000606C */ .asciz "Yacc stack overflow"
                      .balign 4

glabel STR_10006080
/* 046080 10006080 */ .asciz "uxlibc:81"
                      .balign 4

glabel STR_1000608C
/* 04608C 1000608C */ .asciz "Syntax error"
                      .balign 4

glabel STR_1000609C
/* 04609C 1000609C */ .asciz "no segment name specified"
                      .balign 4

glabel STR_100060B8
/* 0460B8 100060B8 */ .asciz "no files included for segment"
                      .balign 4

glabel STR_100060D8
/* 0460D8 100060D8 */ .asciz "first segment must be BOOT segment"
                      .balign 4

glabel STR_100060FC
/* 0460FC 100060FC */ .asciz "entry point specified on non-BOOT segment \"%s\""
                      .balign 4

glabel STR_1000612C
/* 04612C 1000612C */ .asciz "stack specified on non-BOOT segment \"%s\""
                      .balign 4

glabel STR_10006158
/* 046158 10006158 */ .asciz "no address specified for OBJECT segment \"%s\""
                      .balign 4

glabel STR_10006188
/* 046188 10006188 */ .asciz "address specified for RAW segment \"%s\""
                      .balign 4

glabel STR_100061B0
/* 0461B0 100061B0 */ .asciz "\"align\" keyword is only valid with \"after\" keyword\n         for segment \"%s\""
                      .balign 4

glabel STR_10006200
/* 046200 10006200 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_10006218
/* 046218 10006218 */ .asciz "address (0x%x) not a multiple of 16"
                      .balign 4

glabel STR_1000623C
/* 04623C 1000623C */ .asciz "address (0x%x) must be at least\n         0x%x (or 0x%x)"
                      .balign 4

glabel STR_10006274
/* 046274 10006274 */ .asciz "multiple address/number/after statement"
                      .balign 4

glabel STR_1000629C
/* 04629C 1000629C */ .asciz "segment number (%d) not in range [0-15]"
                      .balign 4

glabel STR_100062C4
/* 0462C4 100062C4 */ .asciz "multiple address/number/after statement"
                      .balign 4

glabel STR_100062EC
/* 0462EC 100062EC */ .asciz "multiple address/number/after statement"
                      .balign 4

glabel STR_10006314
/* 046314 10006314 */ .asciz "rom alignment (%d or 0x%x) must be at least 16"
                      .balign 4

glabel STR_10006344
/* 046344 10006344 */ .asciz "rom alignment (%d or 0x%x) must be a power of 2"
                      .balign 4

glabel STR_10006374
/* 046374 10006374 */ .asciz "alignment (%d or 0x%x) must be at least 16"
                      .balign 4

glabel STR_100063A0
/* 0463A0 100063A0 */ .asciz "alignment (%d or 0x%x) must be a power of 2"
                      .balign 4

glabel STR_100063CC
/* 0463CC 100063CC */ .asciz "multiple segment name"
                      .balign 4

glabel STR_100063E4
/* 0463E4 100063E4 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_100063FC
/* 0463FC 100063FC */ .asciz "multiple entry point"
                      .balign 4

glabel STR_10006414
/* 046414 10006414 */ .asciz "multiple flags value specified"
                      .balign 4

glabel STR_10006434
/* 046434 10006434 */ .asciz "RAW segment cannot be a BOOT segment"
                      .balign 4

glabel STR_1000645C
/* 04645C 1000645C */ .asciz "RAW and OBJECT are mutually exclusive"
                      .balign 4

glabel STR_10006484
/* 046484 10006484 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_1000649C
/* 04649C 1000649C */ .asciz "multiple maximum segment size value"
                      .balign 4

glabel STR_100064C0
/* 0464C0 100064C0 */ .asciz "makerom: maxsize constant (%d) not a multiple of 16\n"
                      .balign 4

glabel STR_100064F8
/* 0464F8 100064F8 */ .asciz "multiple stack"
                      .balign 4

glabel STR_10006508
/* 046508 10006508 */ .asciz "segment \"%s\" not (yet) defined"
                      .balign 4

glabel STR_10006528
/* 046528 10006528 */ .asciz "segment \"%s\" not (yet) defined"
                      .balign 4

glabel STR_10006548
/* 046548 10006548 */ .asciz "segment \"%s\" not (yet) defined"
                      .balign 4

glabel STR_10006568
/* 046568 10006568 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_10006580
/* 046580 10006580 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_10006598
/* 046598 10006598 */ .asciz "unknown segment \"%s\""
                      .balign 4

glabel STR_100065B0
/* 0465B0 100065B0 */ .asciz "makerom: malloc failed\n"
                      .balign 4

.section .late_rodata
glabel jtbl_100065C8
/* 0465C8 100065C8 F0400688 */ .gpword .L004133E8
/* 0465CC 100065CC F04009D0 */ .gpword .L00413730
/* 0465D0 100065D0 F040172C */ .gpword .L0041448C
/* 0465D4 100065D4 F040172C */ .gpword .L0041448C
/* 0465D8 100065D8 F0400B7C */ .gpword .L004138DC
/* 0465DC 100065DC F0400C88 */ .gpword .L004139E8
/* 0465E0 100065E0 F0400D2C */ .gpword .L00413A8C
/* 0465E4 100065E4 F0400D7C */ .gpword .L00413ADC
/* 0465E8 100065E8 F0400E0C */ .gpword .L00413B6C
/* 0465EC 100065EC F0400E9C */ .gpword .L00413BFC
/* 0465F0 100065F0 F0400F30 */ .gpword .L00413C90
/* 0465F4 100065F4 F0400F80 */ .gpword .L00413CE0
/* 0465F8 100065F8 F0401038 */ .gpword .L00413D98
/* 0465FC 100065FC F0401128 */ .gpword .L00413E88
/* 046600 10006600 F04011B0 */ .gpword .L00413F10
/* 046604 10006604 F04011F4 */ .gpword .L00413F54
/* 046608 10006608 F04012A0 */ .gpword .L00414000
/* 04660C 1000660C F04013B0 */ .gpword .L00414110
/* 046610 10006610 F04013C8 */ .gpword .L00414128
/* 046614 10006614 F04013E0 */ .gpword .L00414140
/* 046618 10006618 F04013F4 */ .gpword .L00414154
/* 04661C 1000661C F0401410 */ .gpword .L00414170
/* 046620 10006620 F0401424 */ .gpword .L00414184
/* 046624 10006624 F0401438 */ .gpword .L00414198
/* 046628 10006628 F040144C */ .gpword .L004141AC
/* 04662C 1000662C F0401468 */ .gpword .L004141C8
/* 046630 10006630 F0401484 */ .gpword .L004141E4
/* 046634 10006634 F040172C */ .gpword .L0041448C
/* 046638 10006638 F040172C */ .gpword .L0041448C
/* 04663C 1000663C F04014A4 */ .gpword .L00414204
/* 046640 10006640 F04014BC */ .gpword .L0041421C
/* 046644 10006644 F040172C */ .gpword .L0041448C
/* 046648 10006648 F040172C */ .gpword .L0041448C
/* 04664C 1000664C F040158C */ .gpword .L004142EC
/* 046650 10006650 F04015EC */ .gpword .L0041434C
/* 046654 10006654 00000000 */ .word 0x00000000
/* 046658 10006658 00000000 */ .word 0x00000000
/* 04665C 1000665C 00000000 */ .word 0x00000000


.section .text
glabel yyparse # 46
/* 012B14 00412B14 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 012B18 00412B18 279C024C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC0024C
/* 012B1C 00412B1C 0399E021 */  addu        $gp, $gp, $t9
/* 012B20 00412B20 27BDFE58 */  addiu       $sp, $sp, -0x1A8
/* 012B24 00412B24 AFBF003C */  sw          $ra, 0x3C($sp)
/* 012B28 00412B28 AFBC0038 */  sw          $gp, 0x38($sp)
/* 012B2C 00412B2C AFB70034 */  sw          $s7, 0x34($sp)
/* 012B30 00412B30 AFB60030 */  sw          $s6, 0x30($sp)
/* 012B34 00412B34 AFB5002C */  sw          $s5, 0x2C($sp)
/* 012B38 00412B38 AFB40028 */  sw          $s4, 0x28($sp)
/* 012B3C 00412B3C AFB30024 */  sw          $s3, 0x24($sp)
/* 012B40 00412B40 AFB20020 */  sw          $s2, 0x20($sp)
/* 012B44 00412B44 AFB1001C */  sw          $s1, 0x1C($sp)
/* 012B48 00412B48 AFB00018 */  sw          $s0, 0x18($sp)
/* 012B4C 00412B4C 8F8E86C4 */  lw          $t6, %got(yyv)($gp)
/* 012B50 00412B50 8F8187A4 */  lw          $at, %got(yypv)($gp)
/* 012B54 00412B54 8DCE0000 */  lw          $t6, 0x0($t6)
/* 012B58 00412B58 25CFFFFC */  addiu       $t7, $t6, -0x4
/* 012B5C 00412B5C AC2F0000 */  sw          $t7, 0x0($at)
/* 012B60 00412B60 8F9886C0 */  lw          $t8, %got(yys)($gp)
/* 012B64 00412B64 8F8187A8 */  lw          $at, %got(yyps)($gp)
/* 012B68 00412B68 8F180000 */  lw          $t8, 0x0($t8)
/* 012B6C 00412B6C 2719FFFC */  addiu       $t9, $t8, -0x4
/* 012B70 00412B70 AC390000 */  sw          $t9, 0x0($at)
/* 012B74 00412B74 8F8187AC */  lw          $at, %got(yystate)($gp)
/* 012B78 00412B78 AC200000 */  sw          $zero, 0x0($at)
/* 012B7C 00412B7C 8F8187B0 */  lw          $at, %got(yytmp)($gp)
/* 012B80 00412B80 AC200000 */  sw          $zero, 0x0($at)
/* 012B84 00412B84 8F8187B4 */  lw          $at, %got(yynerrs)($gp)
/* 012B88 00412B88 AC200000 */  sw          $zero, 0x0($at)
/* 012B8C 00412B8C 8F818798 */  lw          $at, %got(yyerrflag)($gp)
/* 012B90 00412B90 AC200000 */  sw          $zero, 0x0($at)
/* 012B94 00412B94 8F818794 */  lw          $at, %got(yychar)($gp)
/* 012B98 00412B98 2408FFFF */  addiu       $t0, $zero, -0x1
/* 012B9C 00412B9C AC280000 */  sw          $t0, 0x0($at)
/* 012BA0 00412BA0 10000009 */  b           .L00412BC8
/* 012BA4 00412BA4 00000000 */   nop
/* 012BA8 00412BA8 8F9187A4 */  lw          $s1, %got(yypv)($gp)
/* 012BAC 00412BAC 8E310000 */  lw          $s1, 0x0($s1)
/* 012BB0 00412BB0 8F9287A8 */  lw          $s2, %got(yyps)($gp)
/* 012BB4 00412BB4 8E520000 */  lw          $s2, 0x0($s2)
/* 012BB8 00412BB8 8F9387AC */  lw          $s3, %got(yystate)($gp)
/* 012BBC 00412BBC 8E730000 */  lw          $s3, 0x0($s3)
/* 012BC0 00412BC0 100000B1 */  b           .L00412E88
/* 012BC4 00412BC4 00000000 */   nop
.L00412BC8:
/* 012BC8 00412BC8 8F9187A4 */  lw          $s1, %got(yypv)($gp)
/* 012BCC 00412BCC 8E310000 */  lw          $s1, 0x0($s1)
/* 012BD0 00412BD0 8F9287A8 */  lw          $s2, %got(yyps)($gp)
/* 012BD4 00412BD4 8E520000 */  lw          $s2, 0x0($s2)
/* 012BD8 00412BD8 8F9387AC */  lw          $s3, %got(yystate)($gp)
/* 012BDC 00412BDC 8E730000 */  lw          $s3, 0x0($s3)
.L00412BE0:
/* 012BE0 00412BE0 8F8A8030 */  lw          $t2, %got(D_1000A1B0)($gp)
/* 012BE4 00412BE4 8F8986C0 */  lw          $t1, %got(yys)($gp)
/* 012BE8 00412BE8 26520004 */  addiu       $s2, $s2, 0x4
/* 012BEC 00412BEC 8D4AA1B0 */  lw          $t2, %lo(D_1000A1B0)($t2)
/* 012BF0 00412BF0 8D290000 */  lw          $t1, 0x0($t1)
/* 012BF4 00412BF4 000A5880 */  sll         $t3, $t2, 2
/* 012BF8 00412BF8 012B6021 */  addu        $t4, $t1, $t3
/* 012BFC 00412BFC 024C082B */  sltu        $at, $s2, $t4
/* 012C00 00412C00 1420009C */  bnez        $at, .L00412E74
/* 012C04 00412C04 00000000 */   nop
/* 012C08 00412C08 8F8D86C4 */  lw          $t5, %got(yyv)($gp)
/* 012C0C 00412C0C 8DAD0000 */  lw          $t5, 0x0($t5)
/* 012C10 00412C10 020D7023 */  subu        $t6, $s0, $t5
/* 012C14 00412C14 000E7883 */  sra         $t7, $t6, 2
/* 012C18 00412C18 AFAF0188 */  sw          $t7, 0x188($sp)
/* 012C1C 00412C1C 8F9886C4 */  lw          $t8, %got(yyv)($gp)
/* 012C20 00412C20 8F180000 */  lw          $t8, 0x0($t8)
/* 012C24 00412C24 0238C823 */  subu        $t9, $s1, $t8
/* 012C28 00412C28 00194083 */  sra         $t0, $t9, 2
/* 012C2C 00412C2C AFA80184 */  sw          $t0, 0x184($sp)
/* 012C30 00412C30 8F8A87A4 */  lw          $t2, %got(yypv)($gp)
/* 012C34 00412C34 8F8986C4 */  lw          $t1, %got(yyv)($gp)
/* 012C38 00412C38 8D4A0000 */  lw          $t2, 0x0($t2)
/* 012C3C 00412C3C 8D290000 */  lw          $t1, 0x0($t1)
/* 012C40 00412C40 01495823 */  subu        $t3, $t2, $t1
/* 012C44 00412C44 000B6083 */  sra         $t4, $t3, 2
/* 012C48 00412C48 AFAC0180 */  sw          $t4, 0x180($sp)
/* 012C4C 00412C4C 8F8D86C0 */  lw          $t5, %got(yys)($gp)
/* 012C50 00412C50 8DAD0000 */  lw          $t5, 0x0($t5)
/* 012C54 00412C54 AFAD017C */  sw          $t5, 0x17C($sp)
/* 012C58 00412C58 8F8E8030 */  lw          $t6, %got(D_1000A1B0)($gp)
/* 012C5C 00412C5C 8DCEA1B0 */  lw          $t6, %lo(D_1000A1B0)($t6)
/* 012C60 00412C60 000E7840 */  sll         $t7, $t6, 1
/* 012C64 00412C64 AFAF0190 */  sw          $t7, 0x190($sp)
/* 012C68 00412C68 8F988030 */  lw          $t8, %got(D_1000A1B0)($gp)
/* 012C6C 00412C6C 24010096 */  addiu       $at, $zero, 0x96
/* 012C70 00412C70 8F18A1B0 */  lw          $t8, %lo(D_1000A1B0)($t8)
/* 012C74 00412C74 1701002B */  bne         $t8, $at, .L00412D24
/* 012C78 00412C78 00000000 */   nop
/* 012C7C 00412C7C 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 012C80 00412C80 8FA40190 */  lw          $a0, 0x190($sp)
/* 012C84 00412C84 0320F809 */  jalr        $t9
/* 012C88 00412C88 00042080 */   sll        $a0, $a0, 2
/* 012C8C 00412C8C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012C90 00412C90 AFA20178 */  sw          $v0, 0x178($sp)
/* 012C94 00412C94 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 012C98 00412C98 8FA40190 */  lw          $a0, 0x190($sp)
/* 012C9C 00412C9C 0320F809 */  jalr        $t9
/* 012CA0 00412CA0 00042080 */   sll        $a0, $a0, 2
/* 012CA4 00412CA4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012CA8 00412CA8 AFA20174 */  sw          $v0, 0x174($sp)
/* 012CAC 00412CAC 8FB90178 */  lw          $t9, 0x178($sp)
/* 012CB0 00412CB0 13200019 */  beqz        $t9, .L00412D18
/* 012CB4 00412CB4 00000000 */   nop
/* 012CB8 00412CB8 8FA80174 */  lw          $t0, 0x174($sp)
/* 012CBC 00412CBC 11000016 */  beqz        $t0, .L00412D18
/* 012CC0 00412CC0 00000000 */   nop
/* 012CC4 00412CC4 8F99810C */  lw          $t9, %call16(memcpy)($gp)
/* 012CC8 00412CC8 8F8586C0 */  lw          $a1, %got(yys)($gp)
/* 012CCC 00412CCC 8FA60190 */  lw          $a2, 0x190($sp)
/* 012CD0 00412CD0 8FA40178 */  lw          $a0, 0x178($sp)
/* 012CD4 00412CD4 8CA50000 */  lw          $a1, 0x0($a1)
/* 012CD8 00412CD8 0320F809 */  jalr        $t9
/* 012CDC 00412CDC 00063080 */   sll        $a2, $a2, 2
/* 012CE0 00412CE0 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012CE4 00412CE4 8F8186C0 */  lw          $at, %got(yys)($gp)
/* 012CE8 00412CE8 AC220000 */  sw          $v0, 0x0($at)
/* 012CEC 00412CEC 8F99810C */  lw          $t9, %call16(memcpy)($gp)
/* 012CF0 00412CF0 8F8586C4 */  lw          $a1, %got(yyv)($gp)
/* 012CF4 00412CF4 8FA60190 */  lw          $a2, 0x190($sp)
/* 012CF8 00412CF8 8FA40174 */  lw          $a0, 0x174($sp)
/* 012CFC 00412CFC 8CA50000 */  lw          $a1, 0x0($a1)
/* 012D00 00412D00 0320F809 */  jalr        $t9
/* 012D04 00412D04 00063080 */   sll        $a2, $a2, 2
/* 012D08 00412D08 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012D0C 00412D0C 8F8186C4 */  lw          $at, %got(yyv)($gp)
/* 012D10 00412D10 10000002 */  b           .L00412D1C
/* 012D14 00412D14 AC220000 */   sw         $v0, 0x0($at)
.L00412D18:
/* 012D18 00412D18 AFA00190 */  sw          $zero, 0x190($sp)
.L00412D1C:
/* 012D1C 00412D1C 1000001C */  b           .L00412D90
/* 012D20 00412D20 00000000 */   nop
.L00412D24:
/* 012D24 00412D24 8F998110 */  lw          $t9, %call16(realloc)($gp)
/* 012D28 00412D28 8F8486C0 */  lw          $a0, %got(yys)($gp)
/* 012D2C 00412D2C 8FA50190 */  lw          $a1, 0x190($sp)
/* 012D30 00412D30 8C840000 */  lw          $a0, 0x0($a0)
/* 012D34 00412D34 0320F809 */  jalr        $t9
/* 012D38 00412D38 00052880 */   sll        $a1, $a1, 2
/* 012D3C 00412D3C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012D40 00412D40 8F8186C0 */  lw          $at, %got(yys)($gp)
/* 012D44 00412D44 AC220000 */  sw          $v0, 0x0($at)
/* 012D48 00412D48 8F998110 */  lw          $t9, %call16(realloc)($gp)
/* 012D4C 00412D4C 8F8486C4 */  lw          $a0, %got(yyv)($gp)
/* 012D50 00412D50 8FA50190 */  lw          $a1, 0x190($sp)
/* 012D54 00412D54 8C840000 */  lw          $a0, 0x0($a0)
/* 012D58 00412D58 0320F809 */  jalr        $t9
/* 012D5C 00412D5C 00052880 */   sll        $a1, $a1, 2
/* 012D60 00412D60 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012D64 00412D64 8F8186C4 */  lw          $at, %got(yyv)($gp)
/* 012D68 00412D68 AC220000 */  sw          $v0, 0x0($at)
/* 012D6C 00412D6C 8F8A86C0 */  lw          $t2, %got(yys)($gp)
/* 012D70 00412D70 8D4A0000 */  lw          $t2, 0x0($t2)
/* 012D74 00412D74 11400005 */  beqz        $t2, .L00412D8C
/* 012D78 00412D78 00000000 */   nop
/* 012D7C 00412D7C 8F8986C4 */  lw          $t1, %got(yyv)($gp)
/* 012D80 00412D80 8D290000 */  lw          $t1, 0x0($t1)
/* 012D84 00412D84 15200002 */  bnez        $t1, .L00412D90
/* 012D88 00412D88 00000000 */   nop
.L00412D8C:
/* 012D8C 00412D8C AFA00190 */  sw          $zero, 0x190($sp)
.L00412D90:
/* 012D90 00412D90 8F8C8030 */  lw          $t4, %got(D_1000A1B0)($gp)
/* 012D94 00412D94 8FAB0190 */  lw          $t3, 0x190($sp)
/* 012D98 00412D98 8D8CA1B0 */  lw          $t4, %lo(D_1000A1B0)($t4)
/* 012D9C 00412D9C 018B082A */  slt         $at, $t4, $t3
/* 012DA0 00412DA0 14200010 */  bnez        $at, .L00412DE4
/* 012DA4 00412DA4 00000000 */   nop
/* 012DA8 00412DA8 8F998114 */  lw          $t9, %call16(gettxt)($gp)
/* 012DAC 00412DAC 8F84802C */  lw          $a0, %got(STR_10006060)($gp)
/* 012DB0 00412DB0 8F85802C */  lw          $a1, %got(STR_1000606C)($gp)
/* 012DB4 00412DB4 24846060 */  addiu       $a0, $a0, %lo(STR_10006060)
/* 012DB8 00412DB8 0320F809 */  jalr        $t9
/* 012DBC 00412DBC 24A5606C */   addiu      $a1, $a1, %lo(STR_1000606C)
/* 012DC0 00412DC0 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012DC4 00412DC4 0040B825 */  move        $s7, $v0
/* 012DC8 00412DC8 02E02025 */  move        $a0, $s7
/* 012DCC 00412DCC 8F9981C4 */  lw          $t9, %call16(yyerror)($gp)
/* 012DD0 00412DD0 0320F809 */  jalr        $t9
/* 012DD4 00412DD4 00000000 */   nop
/* 012DD8 00412DD8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012DDC 00412DDC 100005AF */  b           .L0041449C
/* 012DE0 00412DE0 24020001 */   addiu      $v0, $zero, 0x1
.L00412DE4:
/* 012DE4 00412DE4 8FAD0190 */  lw          $t5, 0x190($sp)
/* 012DE8 00412DE8 8F818030 */  lw          $at, %got(D_1000A1B0)($gp)
/* 012DEC 00412DEC AC2DA1B0 */  sw          $t5, %lo(D_1000A1B0)($at)
/* 012DF0 00412DF0 8F8E86C0 */  lw          $t6, %got(yys)($gp)
/* 012DF4 00412DF4 8FAF017C */  lw          $t7, 0x17C($sp)
/* 012DF8 00412DF8 8DCE0000 */  lw          $t6, 0x0($t6)
/* 012DFC 00412DFC 01CFC023 */  subu        $t8, $t6, $t7
/* 012E00 00412E00 0018C883 */  sra         $t9, $t8, 2
/* 012E04 00412E04 AFB9018C */  sw          $t9, 0x18C($sp)
/* 012E08 00412E08 8FA8018C */  lw          $t0, 0x18C($sp)
/* 012E0C 00412E0C 00085080 */  sll         $t2, $t0, 2
/* 012E10 00412E10 01529021 */  addu        $s2, $t2, $s2
/* 012E14 00412E14 8F8C87A8 */  lw          $t4, %got(yyps)($gp)
/* 012E18 00412E18 8FA9018C */  lw          $t1, 0x18C($sp)
/* 012E1C 00412E1C 8F8187A8 */  lw          $at, %got(yyps)($gp)
/* 012E20 00412E20 8D8C0000 */  lw          $t4, 0x0($t4)
/* 012E24 00412E24 00095880 */  sll         $t3, $t1, 2
/* 012E28 00412E28 016C6821 */  addu        $t5, $t3, $t4
/* 012E2C 00412E2C AC2D0000 */  sw          $t5, 0x0($at)
/* 012E30 00412E30 8F9886C4 */  lw          $t8, %got(yyv)($gp)
/* 012E34 00412E34 8FAE0188 */  lw          $t6, 0x188($sp)
/* 012E38 00412E38 8F180000 */  lw          $t8, 0x0($t8)
/* 012E3C 00412E3C 000E7880 */  sll         $t7, $t6, 2
/* 012E40 00412E40 01F88021 */  addu        $s0, $t7, $t8
/* 012E44 00412E44 8F8A86C4 */  lw          $t2, %got(yyv)($gp)
/* 012E48 00412E48 8FB90184 */  lw          $t9, 0x184($sp)
/* 012E4C 00412E4C 8D4A0000 */  lw          $t2, 0x0($t2)
/* 012E50 00412E50 00194080 */  sll         $t0, $t9, 2
/* 012E54 00412E54 010A8821 */  addu        $s1, $t0, $t2
/* 012E58 00412E58 8F8C86C4 */  lw          $t4, %got(yyv)($gp)
/* 012E5C 00412E5C 8FA90180 */  lw          $t1, 0x180($sp)
/* 012E60 00412E60 8F8187A4 */  lw          $at, %got(yypv)($gp)
/* 012E64 00412E64 8D8C0000 */  lw          $t4, 0x0($t4)
/* 012E68 00412E68 00095880 */  sll         $t3, $t1, 2
/* 012E6C 00412E6C 016C6821 */  addu        $t5, $t3, $t4
/* 012E70 00412E70 AC2D0000 */  sw          $t5, 0x0($at)
.L00412E74:
/* 012E74 00412E74 AE530000 */  sw          $s3, 0x0($s2)
/* 012E78 00412E78 8F8E87A0 */  lw          $t6, %got(yyval)($gp)
/* 012E7C 00412E7C 26310004 */  addiu       $s1, $s1, 0x4
/* 012E80 00412E80 8DD80000 */  lw          $t8, 0x0($t6)
/* 012E84 00412E84 AE380000 */  sw          $t8, 0x0($s1)
.L00412E88:
/* 012E88 00412E88 8F8886D0 */  lw          $t0, %got(yypact)($gp)
/* 012E8C 00412E8C 0013C880 */  sll         $t9, $s3, 2
/* 012E90 00412E90 3C01FF67 */  lui         $at, (0xFF676981 >> 16)
/* 012E94 00412E94 03285021 */  addu        $t2, $t9, $t0
/* 012E98 00412E98 8D540000 */  lw          $s4, 0x0($t2)
/* 012E9C 00412E9C 34216981 */  ori         $at, $at, (0xFF676981 & 0xFFFF)
/* 012EA0 00412EA0 0281082A */  slt         $at, $s4, $at
/* 012EA4 00412EA4 10200003 */  beqz        $at, .L00412EB4
/* 012EA8 00412EA8 00000000 */   nop
/* 012EAC 00412EAC 1000003A */  b           .L00412F98
/* 012EB0 00412EB0 00000000 */   nop
.L00412EB4:
/* 012EB4 00412EB4 8F898794 */  lw          $t1, %got(yychar)($gp)
/* 012EB8 00412EB8 8D290000 */  lw          $t1, 0x0($t1)
/* 012EBC 00412EBC 0521000D */  bgez        $t1, .L00412EF4
/* 012EC0 00412EC0 00000000 */   nop
/* 012EC4 00412EC4 8F9981B8 */  lw          $t9, %call16(yylex)($gp)
/* 012EC8 00412EC8 0320F809 */  jalr        $t9
/* 012ECC 00412ECC 00000000 */   nop
/* 012ED0 00412ED0 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012ED4 00412ED4 8F818794 */  lw          $at, %got(yychar)($gp)
/* 012ED8 00412ED8 8F8B8794 */  lw          $t3, %got(yychar)($gp)
/* 012EDC 00412EDC AC220000 */  sw          $v0, 0x0($at)
/* 012EE0 00412EE0 8D6B0000 */  lw          $t3, 0x0($t3)
/* 012EE4 00412EE4 05610003 */  bgez        $t3, .L00412EF4
/* 012EE8 00412EE8 00000000 */   nop
/* 012EEC 00412EEC 8F818794 */  lw          $at, %got(yychar)($gp)
/* 012EF0 00412EF0 AC200000 */  sw          $zero, 0x0($at)
.L00412EF4:
/* 012EF4 00412EF4 8F8C8794 */  lw          $t4, %got(yychar)($gp)
/* 012EF8 00412EF8 8D8C0000 */  lw          $t4, 0x0($t4)
/* 012EFC 00412EFC 028CA021 */  addu        $s4, $s4, $t4
/* 012F00 00412F00 06800004 */  bltz        $s4, .L00412F14
/* 012F04 00412F04 00000000 */   nop
/* 012F08 00412F08 2A810065 */  slti        $at, $s4, 0x65
/* 012F0C 00412F0C 14200003 */  bnez        $at, .L00412F1C
/* 012F10 00412F10 00000000 */   nop
.L00412F14:
/* 012F14 00412F14 10000020 */  b           .L00412F98
/* 012F18 00412F18 00000000 */   nop
.L00412F1C:
/* 012F1C 00412F1C 8F8E86CC */  lw          $t6, %got(yyact)($gp)
/* 012F20 00412F20 00146880 */  sll         $t5, $s4, 2
/* 012F24 00412F24 8F9986E0 */  lw          $t9, %got(yychk)($gp)
/* 012F28 00412F28 01AE7821 */  addu        $t7, $t5, $t6
/* 012F2C 00412F2C 8DF40000 */  lw          $s4, 0x0($t7)
/* 012F30 00412F30 8F898794 */  lw          $t1, %got(yychar)($gp)
/* 012F34 00412F34 0014C080 */  sll         $t8, $s4, 2
/* 012F38 00412F38 03194021 */  addu        $t0, $t8, $t9
/* 012F3C 00412F3C 8D0A0000 */  lw          $t2, 0x0($t0)
/* 012F40 00412F40 8D290000 */  lw          $t1, 0x0($t1)
/* 012F44 00412F44 15490014 */  bne         $t2, $t1, .L00412F98
/* 012F48 00412F48 00000000 */   nop
/* 012F4C 00412F4C 8F818794 */  lw          $at, %got(yychar)($gp)
/* 012F50 00412F50 240BFFFF */  addiu       $t3, $zero, -0x1
/* 012F54 00412F54 AC2B0000 */  sw          $t3, 0x0($at)
/* 012F58 00412F58 8F8C879C */  lw          $t4, %got(yylval)($gp)
/* 012F5C 00412F5C 8F8187A0 */  lw          $at, %got(yyval)($gp)
/* 012F60 00412F60 8D8C0000 */  lw          $t4, 0x0($t4)
/* 012F64 00412F64 AC2C0000 */  sw          $t4, 0x0($at)
/* 012F68 00412F68 02809825 */  move        $s3, $s4
/* 012F6C 00412F6C 8F8D8798 */  lw          $t5, %got(yyerrflag)($gp)
/* 012F70 00412F70 8DAD0000 */  lw          $t5, 0x0($t5)
/* 012F74 00412F74 19A00006 */  blez        $t5, .L00412F90
/* 012F78 00412F78 00000000 */   nop
/* 012F7C 00412F7C 8F8E8798 */  lw          $t6, %got(yyerrflag)($gp)
/* 012F80 00412F80 8F818798 */  lw          $at, %got(yyerrflag)($gp)
/* 012F84 00412F84 8DCE0000 */  lw          $t6, 0x0($t6)
/* 012F88 00412F88 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 012F8C 00412F8C AC2F0000 */  sw          $t7, 0x0($at)
.L00412F90:
/* 012F90 00412F90 1000FF13 */  b           .L00412BE0
/* 012F94 00412F94 00000000 */   nop
.L00412F98:
/* 012F98 00412F98 8F9986E4 */  lw          $t9, %got(yydef)($gp)
/* 012F9C 00412F9C 0013C080 */  sll         $t8, $s3, 2
/* 012FA0 00412FA0 2401FFFE */  addiu       $at, $zero, -0x2
/* 012FA4 00412FA4 03194021 */  addu        $t0, $t8, $t9
/* 012FA8 00412FA8 8D140000 */  lw          $s4, 0x0($t0)
/* 012FAC 00412FAC 16810038 */  bne         $s4, $at, .L00413090
/* 012FB0 00412FB0 00000000 */   nop
/* 012FB4 00412FB4 8F8A8794 */  lw          $t2, %got(yychar)($gp)
/* 012FB8 00412FB8 8D4A0000 */  lw          $t2, 0x0($t2)
/* 012FBC 00412FBC 0541000D */  bgez        $t2, .L00412FF4
/* 012FC0 00412FC0 00000000 */   nop
/* 012FC4 00412FC4 8F9981B8 */  lw          $t9, %call16(yylex)($gp)
/* 012FC8 00412FC8 0320F809 */  jalr        $t9
/* 012FCC 00412FCC 00000000 */   nop
/* 012FD0 00412FD0 8FBC0038 */  lw          $gp, 0x38($sp)
/* 012FD4 00412FD4 8F818794 */  lw          $at, %got(yychar)($gp)
/* 012FD8 00412FD8 8F898794 */  lw          $t1, %got(yychar)($gp)
/* 012FDC 00412FDC AC220000 */  sw          $v0, 0x0($at)
/* 012FE0 00412FE0 8D290000 */  lw          $t1, 0x0($t1)
/* 012FE4 00412FE4 05210003 */  bgez        $t1, .L00412FF4
/* 012FE8 00412FE8 00000000 */   nop
/* 012FEC 00412FEC 8F818794 */  lw          $at, %got(yychar)($gp)
/* 012FF0 00412FF0 AC200000 */  sw          $zero, 0x0($at)
.L00412FF4:
/* 012FF4 00412FF4 8F9586C8 */  lw          $s5, %got(yyexca)($gp)
/* 012FF8 00412FF8 8EAB0000 */  lw          $t3, 0x0($s5)
/* 012FFC 00412FFC 2401FFFF */  addiu       $at, $zero, -0x1
/* 013000 00413000 15610004 */  bne         $t3, $at, .L00413014
/* 013004 00413004 00000000 */   nop
/* 013008 00413008 8EAC0004 */  lw          $t4, 0x4($s5)
/* 01300C 0041300C 11930009 */  beq         $t4, $s3, .L00413034
/* 013010 00413010 00000000 */   nop
.L00413014:
/* 013014 00413014 26B50008 */  addiu       $s5, $s5, 0x8
/* 013018 00413018 8EAD0000 */  lw          $t5, 0x0($s5)
/* 01301C 0041301C 2401FFFF */  addiu       $at, $zero, -0x1
/* 013020 00413020 15A1FFFC */  bne         $t5, $at, .L00413014
/* 013024 00413024 00000000 */   nop
/* 013028 00413028 8EAE0004 */  lw          $t6, 0x4($s5)
/* 01302C 0041302C 15D3FFF9 */  bne         $t6, $s3, .L00413014
/* 013030 00413030 00000000 */   nop
.L00413034:
/* 013034 00413034 8EAF0008 */  lw          $t7, 0x8($s5)
/* 013038 00413038 26B50008 */  addiu       $s5, $s5, 0x8
/* 01303C 0041303C 05E0000F */  bltz        $t7, .L0041307C
/* 013040 00413040 00000000 */   nop
/* 013044 00413044 8F998794 */  lw          $t9, %got(yychar)($gp)
/* 013048 00413048 8EB80000 */  lw          $t8, 0x0($s5)
/* 01304C 0041304C 8F390000 */  lw          $t9, 0x0($t9)
/* 013050 00413050 1319000A */  beq         $t8, $t9, .L0041307C
/* 013054 00413054 00000000 */   nop
.L00413058:
/* 013058 00413058 8EA80008 */  lw          $t0, 0x8($s5)
/* 01305C 0041305C 26B50008 */  addiu       $s5, $s5, 0x8
/* 013060 00413060 05000006 */  bltz        $t0, .L0041307C
/* 013064 00413064 00000000 */   nop
/* 013068 00413068 8F898794 */  lw          $t1, %got(yychar)($gp)
/* 01306C 0041306C 8EAA0000 */  lw          $t2, 0x0($s5)
/* 013070 00413070 8D290000 */  lw          $t1, 0x0($t1)
/* 013074 00413074 1549FFF8 */  bne         $t2, $t1, .L00413058
/* 013078 00413078 00000000 */   nop
.L0041307C:
/* 01307C 0041307C 8EB40004 */  lw          $s4, 0x4($s5)
/* 013080 00413080 06810003 */  bgez        $s4, .L00413090
/* 013084 00413084 00000000 */   nop
/* 013088 00413088 10000504 */  b           .L0041449C
/* 01308C 0041308C 00001025 */   move       $v0, $zero
.L00413090:
/* 013090 00413090 16800062 */  bnez        $s4, .L0041321C
/* 013094 00413094 00000000 */   nop
/* 013098 00413098 8F978798 */  lw          $s7, %got(yyerrflag)($gp)
/* 01309C 0041309C 8EF70000 */  lw          $s7, 0x0($s7)
/* 0130A0 004130A0 12E0000C */  beqz        $s7, .L004130D4
/* 0130A4 004130A4 00000000 */   nop
/* 0130A8 004130A8 24010001 */  addiu       $at, $zero, 0x1
/* 0130AC 004130AC 12E10023 */  beq         $s7, $at, .L0041313C
/* 0130B0 004130B0 00000000 */   nop
/* 0130B4 004130B4 24010002 */  addiu       $at, $zero, 0x2
/* 0130B8 004130B8 12E10020 */  beq         $s7, $at, .L0041313C
/* 0130BC 004130BC 00000000 */   nop
/* 0130C0 004130C0 24010003 */  addiu       $at, $zero, 0x3
/* 0130C4 004130C4 12E1004A */  beq         $s7, $at, .L004131F0
/* 0130C8 004130C8 00000000 */   nop
/* 0130CC 004130CC 10000053 */  b           .L0041321C
/* 0130D0 004130D0 00000000 */   nop
.L004130D4:
/* 0130D4 004130D4 8F998114 */  lw          $t9, %call16(gettxt)($gp)
/* 0130D8 004130D8 8F84802C */  lw          $a0, %got(STR_10006080)($gp)
/* 0130DC 004130DC 8F85802C */  lw          $a1, %got(STR_1000608C)($gp)
/* 0130E0 004130E0 24846080 */  addiu       $a0, $a0, %lo(STR_10006080)
/* 0130E4 004130E4 0320F809 */  jalr        $t9
/* 0130E8 004130E8 24A5608C */   addiu      $a1, $a1, %lo(STR_1000608C)
/* 0130EC 004130EC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0130F0 004130F0 AFA20044 */  sw          $v0, 0x44($sp)
/* 0130F4 004130F4 8FA40044 */  lw          $a0, 0x44($sp)
/* 0130F8 004130F8 8F9981C4 */  lw          $t9, %call16(yyerror)($gp)
/* 0130FC 004130FC 0320F809 */  jalr        $t9
/* 013100 00413100 00000000 */   nop
/* 013104 00413104 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013108 00413108 1000000C */  b           .L0041313C
/* 01310C 0041310C 00000000 */   nop
/* 013110 00413110 8F9187A4 */  lw          $s1, %got(yypv)($gp)
/* 013114 00413114 8E310000 */  lw          $s1, 0x0($s1)
/* 013118 00413118 8F9287A8 */  lw          $s2, %got(yyps)($gp)
/* 01311C 0041311C 8E520000 */  lw          $s2, 0x0($s2)
/* 013120 00413120 8F9387AC */  lw          $s3, %got(yystate)($gp)
/* 013124 00413124 8E730000 */  lw          $s3, 0x0($s3)
/* 013128 00413128 8F8B87B4 */  lw          $t3, %got(yynerrs)($gp)
/* 01312C 0041312C 8F8187B4 */  lw          $at, %got(yynerrs)($gp)
/* 013130 00413130 8D6B0000 */  lw          $t3, 0x0($t3)
/* 013134 00413134 256C0001 */  addiu       $t4, $t3, 0x1
/* 013138 00413138 AC2C0000 */  sw          $t4, 0x0($at)
.L0041313C:
/* 01313C 0041313C 8F818798 */  lw          $at, %got(yyerrflag)($gp)
/* 013140 00413140 240D0003 */  addiu       $t5, $zero, 0x3
/* 013144 00413144 AC2D0000 */  sw          $t5, 0x0($at)
/* 013148 00413148 8F8E86C0 */  lw          $t6, %got(yys)($gp)
/* 01314C 0041314C 8DCE0000 */  lw          $t6, 0x0($t6)
/* 013150 00413150 024E082B */  sltu        $at, $s2, $t6
/* 013154 00413154 14200024 */  bnez        $at, .L004131E8
/* 013158 00413158 00000000 */   nop
.L0041315C:
/* 01315C 0041315C 8E4F0000 */  lw          $t7, 0x0($s2)
/* 013160 00413160 8F9986D0 */  lw          $t9, %got(yypact)($gp)
/* 013164 00413164 000FC080 */  sll         $t8, $t7, 2
/* 013168 00413168 03194021 */  addu        $t0, $t8, $t9
/* 01316C 0041316C 8D140000 */  lw          $s4, 0x0($t0)
/* 013170 00413170 26940100 */  addiu       $s4, $s4, 0x100
/* 013174 00413174 06800015 */  bltz        $s4, .L004131CC
/* 013178 00413178 00000000 */   nop
/* 01317C 0041317C 2A810065 */  slti        $at, $s4, 0x65
/* 013180 00413180 10200012 */  beqz        $at, .L004131CC
/* 013184 00413184 00000000 */   nop
/* 013188 00413188 8F8986CC */  lw          $t1, %got(yyact)($gp)
/* 01318C 0041318C 00145080 */  sll         $t2, $s4, 2
/* 013190 00413190 8F8E86E0 */  lw          $t6, %got(yychk)($gp)
/* 013194 00413194 01495821 */  addu        $t3, $t2, $t1
/* 013198 00413198 8D6C0000 */  lw          $t4, 0x0($t3)
/* 01319C 0041319C 24010100 */  addiu       $at, $zero, 0x100
/* 0131A0 004131A0 000C6880 */  sll         $t5, $t4, 2
/* 0131A4 004131A4 01AE7821 */  addu        $t7, $t5, $t6
/* 0131A8 004131A8 8DF80000 */  lw          $t8, 0x0($t7)
/* 0131AC 004131AC 17010007 */  bne         $t8, $at, .L004131CC
/* 0131B0 004131B0 00000000 */   nop
/* 0131B4 004131B4 8F8886CC */  lw          $t0, %got(yyact)($gp)
/* 0131B8 004131B8 0014C880 */  sll         $t9, $s4, 2
/* 0131BC 004131BC 03285021 */  addu        $t2, $t9, $t0
/* 0131C0 004131C0 8D530000 */  lw          $s3, 0x0($t2)
/* 0131C4 004131C4 1000FE86 */  b           .L00412BE0
/* 0131C8 004131C8 00000000 */   nop
.L004131CC:
/* 0131CC 004131CC 2652FFFC */  addiu       $s2, $s2, -0x4
/* 0131D0 004131D0 2631FFFC */  addiu       $s1, $s1, -0x4
/* 0131D4 004131D4 8F8986C0 */  lw          $t1, %got(yys)($gp)
/* 0131D8 004131D8 8D290000 */  lw          $t1, 0x0($t1)
/* 0131DC 004131DC 0249082B */  sltu        $at, $s2, $t1
/* 0131E0 004131E0 1020FFDE */  beqz        $at, .L0041315C
/* 0131E4 004131E4 00000000 */   nop
.L004131E8:
/* 0131E8 004131E8 100004AC */  b           .L0041449C
/* 0131EC 004131EC 24020001 */   addiu      $v0, $zero, 0x1
.L004131F0:
/* 0131F0 004131F0 8F8B8794 */  lw          $t3, %got(yychar)($gp)
/* 0131F4 004131F4 8D6B0000 */  lw          $t3, 0x0($t3)
/* 0131F8 004131F8 15600003 */  bnez        $t3, .L00413208
/* 0131FC 004131FC 00000000 */   nop
/* 013200 00413200 100004A6 */  b           .L0041449C
/* 013204 00413204 24020001 */   addiu      $v0, $zero, 0x1
.L00413208:
/* 013208 00413208 8F818794 */  lw          $at, %got(yychar)($gp)
/* 01320C 0041320C 240CFFFF */  addiu       $t4, $zero, -0x1
/* 013210 00413210 AC2C0000 */  sw          $t4, 0x0($at)
/* 013214 00413214 1000FF1C */  b           .L00412E88
/* 013218 00413218 00000000 */   nop
.L0041321C:
/* 01321C 0041321C 8F8187B0 */  lw          $at, %got(yytmp)($gp)
/* 013220 00413220 AC340000 */  sw          $s4, 0x0($at)
/* 013224 00413224 02208025 */  move        $s0, $s1
/* 013228 00413228 8F8E86DC */  lw          $t6, %got(yyr2)($gp)
/* 01322C 0041322C 00146880 */  sll         $t5, $s4, 2
/* 013230 00413230 01AE7821 */  addu        $t7, $t5, $t6
/* 013234 00413234 8DF60000 */  lw          $s6, 0x0($t7)
/* 013238 00413238 32D80001 */  andi        $t8, $s6, 0x1
/* 01323C 0041323C 1700002D */  bnez        $t8, .L004132F4
/* 013240 00413240 00000000 */   nop
/* 013244 00413244 0016B043 */  sra         $s6, $s6, 1
/* 013248 00413248 0016C880 */  sll         $t9, $s6, 2
/* 01324C 0041324C 02398823 */  subu        $s1, $s1, $t9
/* 013250 00413250 8E290004 */  lw          $t1, 0x4($s1)
/* 013254 00413254 8F8887A0 */  lw          $t0, %got(yyval)($gp)
/* 013258 00413258 AD090000 */  sw          $t1, 0x0($t0)
/* 01325C 0041325C 8F8C86D8 */  lw          $t4, %got(yyr1)($gp)
/* 013260 00413260 00145880 */  sll         $t3, $s4, 2
/* 013264 00413264 8F9986D4 */  lw          $t9, %got(yypgo)($gp)
/* 013268 00413268 016C6821 */  addu        $t5, $t3, $t4
/* 01326C 0041326C 8DB70000 */  lw          $s7, 0x0($t5)
/* 013270 00413270 00167080 */  sll         $t6, $s6, 2
/* 013274 00413274 024E9023 */  subu        $s2, $s2, $t6
/* 013278 00413278 0017C080 */  sll         $t8, $s7, 2
/* 01327C 0041327C 03194021 */  addu        $t0, $t8, $t9
/* 013280 00413280 8D0A0000 */  lw          $t2, 0x0($t0)
/* 013284 00413284 8E4F0000 */  lw          $t7, 0x0($s2)
/* 013288 00413288 02E0A025 */  move        $s4, $s7
/* 01328C 0041328C 01EA9821 */  addu        $s3, $t7, $t2
/* 013290 00413290 26730001 */  addiu       $s3, $s3, 0x1
/* 013294 00413294 2A610065 */  slti        $at, $s3, 0x65
/* 013298 00413298 1020000C */  beqz        $at, .L004132CC
/* 01329C 0041329C 00000000 */   nop
/* 0132A0 004132A0 8F8B86CC */  lw          $t3, %got(yyact)($gp)
/* 0132A4 004132A4 00134880 */  sll         $t1, $s3, 2
/* 0132A8 004132A8 8F8E86E0 */  lw          $t6, %got(yychk)($gp)
/* 0132AC 004132AC 012B6021 */  addu        $t4, $t1, $t3
/* 0132B0 004132B0 8D930000 */  lw          $s3, 0x0($t4)
/* 0132B4 004132B4 00144023 */  negu        $t0, $s4
/* 0132B8 004132B8 00136880 */  sll         $t5, $s3, 2
/* 0132BC 004132BC 01AEC021 */  addu        $t8, $t5, $t6
/* 0132C0 004132C0 8F190000 */  lw          $t9, 0x0($t8)
/* 0132C4 004132C4 13280009 */  beq         $t9, $t0, .L004132EC
/* 0132C8 004132C8 00000000 */   nop
.L004132CC:
/* 0132CC 004132CC 8F8A86D4 */  lw          $t2, %got(yypgo)($gp)
/* 0132D0 004132D0 00147880 */  sll         $t7, $s4, 2
/* 0132D4 004132D4 8F8D86CC */  lw          $t5, %got(yyact)($gp)
/* 0132D8 004132D8 01EA4821 */  addu        $t1, $t7, $t2
/* 0132DC 004132DC 8D2B0000 */  lw          $t3, 0x0($t1)
/* 0132E0 004132E0 000B6080 */  sll         $t4, $t3, 2
/* 0132E4 004132E4 018D7021 */  addu        $t6, $t4, $t5
/* 0132E8 004132E8 8DD30000 */  lw          $s3, 0x0($t6)
.L004132EC:
/* 0132EC 004132EC 1000FE3C */  b           .L00412BE0
/* 0132F0 004132F0 00000000 */   nop
.L004132F4:
/* 0132F4 004132F4 0016B043 */  sra         $s6, $s6, 1
/* 0132F8 004132F8 0016C080 */  sll         $t8, $s6, 2
/* 0132FC 004132FC 02388823 */  subu        $s1, $s1, $t8
/* 013300 00413300 8E2F0004 */  lw          $t7, 0x4($s1)
/* 013304 00413304 8F9987A0 */  lw          $t9, %got(yyval)($gp)
/* 013308 00413308 AF2F0000 */  sw          $t7, 0x0($t9)
/* 01330C 0041330C 8F8986D8 */  lw          $t1, %got(yyr1)($gp)
/* 013310 00413310 00145080 */  sll         $t2, $s4, 2
/* 013314 00413314 8F9886D4 */  lw          $t8, %got(yypgo)($gp)
/* 013318 00413318 01495821 */  addu        $t3, $t2, $t1
/* 01331C 0041331C 8D770000 */  lw          $s7, 0x0($t3)
/* 013320 00413320 00166080 */  sll         $t4, $s6, 2
/* 013324 00413324 024C9023 */  subu        $s2, $s2, $t4
/* 013328 00413328 00177080 */  sll         $t6, $s7, 2
/* 01332C 0041332C 01D8C821 */  addu        $t9, $t6, $t8
/* 013330 00413330 8F280000 */  lw          $t0, 0x0($t9)
/* 013334 00413334 8E4D0000 */  lw          $t5, 0x0($s2)
/* 013338 00413338 02E0A025 */  move        $s4, $s7
/* 01333C 0041333C 01A89821 */  addu        $s3, $t5, $t0
/* 013340 00413340 26730001 */  addiu       $s3, $s3, 0x1
/* 013344 00413344 2A610065 */  slti        $at, $s3, 0x65
/* 013348 00413348 1020000C */  beqz        $at, .L0041337C
/* 01334C 0041334C 00000000 */   nop
/* 013350 00413350 8F8A86CC */  lw          $t2, %got(yyact)($gp)
/* 013354 00413354 00137880 */  sll         $t7, $s3, 2
/* 013358 00413358 8F8C86E0 */  lw          $t4, %got(yychk)($gp)
/* 01335C 0041335C 01EA4821 */  addu        $t1, $t7, $t2
/* 013360 00413360 8D330000 */  lw          $s3, 0x0($t1)
/* 013364 00413364 0014C823 */  negu        $t9, $s4
/* 013368 00413368 00135880 */  sll         $t3, $s3, 2
/* 01336C 0041336C 016C7021 */  addu        $t6, $t3, $t4
/* 013370 00413370 8DD80000 */  lw          $t8, 0x0($t6)
/* 013374 00413374 13190009 */  beq         $t8, $t9, .L0041339C
/* 013378 00413378 00000000 */   nop
.L0041337C:
/* 01337C 0041337C 8F8886D4 */  lw          $t0, %got(yypgo)($gp)
/* 013380 00413380 00146880 */  sll         $t5, $s4, 2
/* 013384 00413384 8F8B86CC */  lw          $t3, %got(yyact)($gp)
/* 013388 00413388 01A87821 */  addu        $t7, $t5, $t0
/* 01338C 0041338C 8DEA0000 */  lw          $t2, 0x0($t7)
/* 013390 00413390 000A4880 */  sll         $t1, $t2, 2
/* 013394 00413394 012B6021 */  addu        $t4, $t1, $t3
/* 013398 00413398 8D930000 */  lw          $s3, 0x0($t4)
.L0041339C:
/* 01339C 0041339C 8F8187AC */  lw          $at, %got(yystate)($gp)
/* 0133A0 004133A0 AC330000 */  sw          $s3, 0x0($at)
/* 0133A4 004133A4 8F8187A8 */  lw          $at, %got(yyps)($gp)
/* 0133A8 004133A8 AC320000 */  sw          $s2, 0x0($at)
/* 0133AC 004133AC 8F8187A4 */  lw          $at, %got(yypv)($gp)
/* 0133B0 004133B0 AC310000 */  sw          $s1, 0x0($at)
/* 0133B4 004133B4 8F8E87B0 */  lw          $t6, %got(yytmp)($gp)
/* 0133B8 004133B8 8DCE0000 */  lw          $t6, 0x0($t6)
/* 0133BC 004133BC 25D8FFFC */  addiu       $t8, $t6, -0x4
/* 0133C0 004133C0 2F010023 */  sltiu       $at, $t8, 0x23
/* 0133C4 004133C4 10200431 */  beqz        $at, .L0041448C
/* 0133C8 004133C8 00000000 */   nop
/* 0133CC 004133CC 8F81802C */  lw          $at, %got(jtbl_100065C8)($gp)
/* 0133D0 004133D0 0018C080 */  sll         $t8, $t8, 2
/* 0133D4 004133D4 00380821 */  addu        $at, $at, $t8
/* 0133D8 004133D8 8C3865C8 */  lw          $t8, %lo(jtbl_100065C8)($at)
/* 0133DC 004133DC 031CC021 */  addu        $t8, $t8, $gp
/* 0133E0 004133E0 03000008 */  jr          $t8
/* 0133E4 004133E4 00000000 */   nop
.L004133E8:
/* 0133E8 004133E8 8F998030 */  lw          $t9, %got(B_1000EFF0)($gp)
/* 0133EC 004133EC 8F39EFF0 */  lw          $t9, %lo(B_1000EFF0)($t9)
/* 0133F0 004133F0 8F2D0004 */  lw          $t5, 0x4($t9)
/* 0133F4 004133F4 15A00009 */  bnez        $t5, .L0041341C
/* 0133F8 004133F8 00000000 */   nop
/* 0133FC 004133FC 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013400 00413400 8F84802C */  lw          $a0, %got(STR_1000609C)($gp)
/* 013404 00413404 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013408 00413408 0320F809 */  jalr        $t9
/* 01340C 0041340C 2484609C */   addiu      $a0, $a0, %lo(STR_1000609C)
/* 013410 00413410 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013414 00413414 10000421 */  b           .L0041449C
/* 013418 00413418 24020001 */   addiu      $v0, $zero, 0x1
.L0041341C:
/* 01341C 0041341C 8F888030 */  lw          $t0, %got(B_1000EFF0)($gp)
/* 013420 00413420 8D08EFF0 */  lw          $t0, %lo(B_1000EFF0)($t0)
/* 013424 00413424 8D0F0008 */  lw          $t7, 0x8($t0)
/* 013428 00413428 15E00009 */  bnez        $t7, .L00413450
/* 01342C 0041342C 00000000 */   nop
/* 013430 00413430 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013434 00413434 8F84802C */  lw          $a0, %got(STR_100060B8)($gp)
/* 013438 00413438 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 01343C 0041343C 0320F809 */  jalr        $t9
/* 013440 00413440 248460B8 */   addiu      $a0, $a0, %lo(STR_100060B8)
/* 013444 00413444 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013448 00413448 10000414 */  b           .L0041449C
/* 01344C 0041344C 24020001 */   addiu      $v0, $zero, 0x1
.L00413450:
/* 013450 00413450 8F8A8030 */  lw          $t2, %got(B_1000EFF0)($gp)
/* 013454 00413454 2401FFFF */  addiu       $at, $zero, -0x1
/* 013458 00413458 8D4AEFF0 */  lw          $t2, %lo(B_1000EFF0)($t2)
/* 01345C 0041345C 8D490028 */  lw          $t1, 0x28($t2)
/* 013460 00413460 15210005 */  bne         $t1, $at, .L00413478
/* 013464 00413464 00000000 */   nop
/* 013468 00413468 8F8C8030 */  lw          $t4, %got(B_1000EFF0)($gp)
/* 01346C 0041346C 240B0002 */  addiu       $t3, $zero, 0x2
/* 013470 00413470 8D8CEFF0 */  lw          $t4, %lo(B_1000EFF0)($t4)
/* 013474 00413474 AD8B0028 */  sw          $t3, 0x28($t4)
.L00413478:
/* 013478 00413478 8F8E8030 */  lw          $t6, %got(B_1000EFF0)($gp)
/* 01347C 0041347C 8DCEEFF0 */  lw          $t6, %lo(B_1000EFF0)($t6)
/* 013480 00413480 8DD80028 */  lw          $t8, 0x28($t6)
/* 013484 00413484 33190001 */  andi        $t9, $t8, 0x1
/* 013488 00413488 1320002D */  beqz        $t9, .L00413540
/* 01348C 0041348C 00000000 */   nop
/* 013490 00413490 8F8D8664 */  lw          $t5, %got(cosim)($gp)
/* 013494 00413494 8DAD0000 */  lw          $t5, 0x0($t5)
/* 013498 00413498 11A00005 */  beqz        $t5, .L004134B0
/* 01349C 0041349C 00000000 */   nop
/* 0134A0 004134A0 3C088000 */  lui         $t0, (0x80002000 >> 16)
/* 0134A4 004134A4 35082000 */  ori         $t0, $t0, (0x80002000 & 0xFFFF)
/* 0134A8 004134A8 1000000B */  b           .L004134D8
/* 0134AC 004134AC AFA80168 */   sw         $t0, 0x168($sp)
.L004134B0:
/* 0134B0 004134B0 8F8F8668 */  lw          $t7, %got(emulator)($gp)
/* 0134B4 004134B4 8DEF0000 */  lw          $t7, 0x0($t7)
/* 0134B8 004134B8 11E00004 */  beqz        $t7, .L004134CC
/* 0134BC 004134BC 00000000 */   nop
/* 0134C0 004134C0 3C0A2001 */  lui         $t2, (0x20010000 >> 16)
/* 0134C4 004134C4 10000004 */  b           .L004134D8
/* 0134C8 004134C8 AFAA0168 */   sw         $t2, 0x168($sp)
.L004134CC:
/* 0134CC 004134CC 3C098000 */  lui         $t1, (0x80000400 >> 16)
/* 0134D0 004134D0 35290400 */  ori         $t1, $t1, (0x80000400 & 0xFFFF)
/* 0134D4 004134D4 AFA90168 */  sw          $t1, 0x168($sp)
.L004134D8:
/* 0134D8 004134D8 8F8B8030 */  lw          $t3, %got(B_1000EFF0)($gp)
/* 0134DC 004134DC 2401FFFF */  addiu       $at, $zero, -0x1
/* 0134E0 004134E0 8D6BEFF0 */  lw          $t3, %lo(B_1000EFF0)($t3)
/* 0134E4 004134E4 8D6C0010 */  lw          $t4, 0x10($t3)
/* 0134E8 004134E8 15810009 */  bne         $t4, $at, .L00413510
/* 0134EC 004134EC 00000000 */   nop
/* 0134F0 004134F0 8F988030 */  lw          $t8, %got(B_1000EFF0)($gp)
/* 0134F4 004134F4 8FAE0168 */  lw          $t6, 0x168($sp)
/* 0134F8 004134F8 8F18EFF0 */  lw          $t8, %lo(B_1000EFF0)($t8)
/* 0134FC 004134FC AF0E0010 */  sw          $t6, 0x10($t8)
/* 013500 00413500 8F8D8030 */  lw          $t5, %got(B_1000EFF0)($gp)
/* 013504 00413504 24190004 */  addiu       $t9, $zero, 0x4
/* 013508 00413508 8DADEFF0 */  lw          $t5, %lo(B_1000EFF0)($t5)
/* 01350C 0041350C ADB90014 */  sw          $t9, 0x14($t5)
.L00413510:
/* 013510 00413510 8F888030 */  lw          $t0, %got(B_1000EFF0)($gp)
/* 013514 00413514 8F8187B8 */  lw          $at, %got(bootAddress)($gp)
/* 013518 00413518 8D08EFF0 */  lw          $t0, %lo(B_1000EFF0)($t0)
/* 01351C 0041351C 8D0F0010 */  lw          $t7, 0x10($t0)
/* 013520 00413520 AC2F0000 */  sw          $t7, 0x0($at)
/* 013524 00413524 8F8A8030 */  lw          $t2, %got(B_1000EFF0)($gp)
/* 013528 00413528 8D4AEFF0 */  lw          $t2, %lo(B_1000EFF0)($t2)
/* 01352C 0041352C 8D490010 */  lw          $t1, 0x10($t2)
/* 013530 00413530 252B0050 */  addiu       $t3, $t1, 0x50
/* 013534 00413534 AD4B0010 */  sw          $t3, 0x10($t2)
/* 013538 00413538 10000046 */  b           .L00413654
/* 01353C 0041353C 00000000 */   nop
.L00413540:
/* 013540 00413540 8F8C8658 */  lw          $t4, %got(segmentList)($gp)
/* 013544 00413544 8F8E8030 */  lw          $t6, %got(B_1000EFF0)($gp)
/* 013548 00413548 8D8C0000 */  lw          $t4, 0x0($t4)
/* 01354C 0041354C 8DCEEFF0 */  lw          $t6, %lo(B_1000EFF0)($t6)
/* 013550 00413550 158E0009 */  bne         $t4, $t6, .L00413578
/* 013554 00413554 00000000 */   nop
/* 013558 00413558 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 01355C 0041355C 8F84802C */  lw          $a0, %got(STR_100060D8)($gp)
/* 013560 00413560 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013564 00413564 0320F809 */  jalr        $t9
/* 013568 00413568 248460D8 */   addiu      $a0, $a0, %lo(STR_100060D8)
/* 01356C 0041356C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013570 00413570 100003CA */  b           .L0041449C
/* 013574 00413574 24020001 */   addiu      $v0, $zero, 0x1
.L00413578:
/* 013578 00413578 8F988030 */  lw          $t8, %got(D_1000A1A0)($gp)
/* 01357C 0041357C 8F18A1A0 */  lw          $t8, %lo(D_1000A1A0)($t8)
/* 013580 00413580 1300000D */  beqz        $t8, .L004135B8
/* 013584 00413584 00000000 */   nop
/* 013588 00413588 8F998030 */  lw          $t9, %got(B_1000EFF0)($gp)
/* 01358C 0041358C 8F84802C */  lw          $a0, %got(STR_100060FC)($gp)
/* 013590 00413590 8F39EFF0 */  lw          $t9, %lo(B_1000EFF0)($t9)
/* 013594 00413594 248460FC */  addiu       $a0, $a0, %lo(STR_100060FC)
/* 013598 00413598 8F250004 */  lw          $a1, 0x4($t9)
/* 01359C 0041359C 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 0135A0 004135A0 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 0135A4 004135A4 0320F809 */  jalr        $t9
/* 0135A8 004135A8 00000000 */   nop
/* 0135AC 004135AC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0135B0 004135B0 100003BA */  b           .L0041449C
/* 0135B4 004135B4 24020001 */   addiu      $v0, $zero, 0x1
.L004135B8:
/* 0135B8 004135B8 8F8D8030 */  lw          $t5, %got(D_1000A1A4)($gp)
/* 0135BC 004135BC 8DADA1A4 */  lw          $t5, %lo(D_1000A1A4)($t5)
/* 0135C0 004135C0 11A0000C */  beqz        $t5, .L004135F4
/* 0135C4 004135C4 00000000 */   nop
/* 0135C8 004135C8 8F888030 */  lw          $t0, %got(B_1000EFF0)($gp)
/* 0135CC 004135CC 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 0135D0 004135D0 8F84802C */  lw          $a0, %got(STR_1000612C)($gp)
/* 0135D4 004135D4 8D08EFF0 */  lw          $t0, %lo(B_1000EFF0)($t0)
/* 0135D8 004135D8 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 0135DC 004135DC 2484612C */  addiu       $a0, $a0, %lo(STR_1000612C)
/* 0135E0 004135E0 0320F809 */  jalr        $t9
/* 0135E4 004135E4 8D050004 */   lw         $a1, 0x4($t0)
/* 0135E8 004135E8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0135EC 004135EC 100003AB */  b           .L0041449C
/* 0135F0 004135F0 24020001 */   addiu      $v0, $zero, 0x1
.L004135F4:
/* 0135F4 004135F4 8F8F8030 */  lw          $t7, %got(B_1000EFF0)($gp)
/* 0135F8 004135F8 8DEFEFF0 */  lw          $t7, %lo(B_1000EFF0)($t7)
/* 0135FC 004135FC 8DE90028 */  lw          $t1, 0x28($t7)
/* 013600 00413600 312B0002 */  andi        $t3, $t1, 0x2
/* 013604 00413604 11600013 */  beqz        $t3, .L00413654
/* 013608 00413608 00000000 */   nop
/* 01360C 0041360C 8DEA0010 */  lw          $t2, 0x10($t7)
/* 013610 00413610 2401FFFF */  addiu       $at, $zero, -0x1
/* 013614 00413614 1541000F */  bne         $t2, $at, .L00413654
/* 013618 00413618 00000000 */   nop
/* 01361C 0041361C 8DEC0014 */  lw          $t4, 0x14($t7)
/* 013620 00413620 1580000C */  bnez        $t4, .L00413654
/* 013624 00413624 00000000 */   nop
/* 013628 00413628 8F8E8030 */  lw          $t6, %got(B_1000EFF0)($gp)
/* 01362C 0041362C 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013630 00413630 8F84802C */  lw          $a0, %got(STR_10006158)($gp)
/* 013634 00413634 8DCEEFF0 */  lw          $t6, %lo(B_1000EFF0)($t6)
/* 013638 00413638 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 01363C 0041363C 24846158 */  addiu       $a0, $a0, %lo(STR_10006158)
/* 013640 00413640 0320F809 */  jalr        $t9
/* 013644 00413644 8DC50004 */   lw         $a1, 0x4($t6)
/* 013648 00413648 8FBC0038 */  lw          $gp, 0x38($sp)
/* 01364C 0041364C 10000393 */  b           .L0041449C
/* 013650 00413650 24020001 */   addiu      $v0, $zero, 0x1
.L00413654:
/* 013654 00413654 8F988030 */  lw          $t8, %got(B_1000EFF0)($gp)
/* 013658 00413658 8F18EFF0 */  lw          $t8, %lo(B_1000EFF0)($t8)
/* 01365C 0041365C 8F190028 */  lw          $t9, 0x28($t8)
/* 013660 00413660 332D0004 */  andi        $t5, $t9, 0x4
/* 013664 00413664 11A00010 */  beqz        $t5, .L004136A8
/* 013668 00413668 00000000 */   nop
/* 01366C 0041366C 8F080010 */  lw          $t0, 0x10($t8)
/* 013670 00413670 2401FFFF */  addiu       $at, $zero, -0x1
/* 013674 00413674 1101000C */  beq         $t0, $at, .L004136A8
/* 013678 00413678 00000000 */   nop
/* 01367C 0041367C 8F898030 */  lw          $t1, %got(B_1000EFF0)($gp)
/* 013680 00413680 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013684 00413684 8F84802C */  lw          $a0, %got(STR_10006188)($gp)
/* 013688 00413688 8D29EFF0 */  lw          $t1, %lo(B_1000EFF0)($t1)
/* 01368C 0041368C 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013690 00413690 24846188 */  addiu       $a0, $a0, %lo(STR_10006188)
/* 013694 00413694 0320F809 */  jalr        $t9
/* 013698 00413698 8D250004 */   lw         $a1, 0x4($t1)
/* 01369C 0041369C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0136A0 004136A0 1000037E */  b           .L0041449C
/* 0136A4 004136A4 24020001 */   addiu      $v0, $zero, 0x1
.L004136A8:
/* 0136A8 004136A8 8F8B8030 */  lw          $t3, %got(B_1000EFF0)($gp)
/* 0136AC 004136AC 8D6BEFF0 */  lw          $t3, %lo(B_1000EFF0)($t3)
/* 0136B0 004136B0 8D6A0020 */  lw          $t2, 0x20($t3)
/* 0136B4 004136B4 1140000F */  beqz        $t2, .L004136F4
/* 0136B8 004136B8 00000000 */   nop
/* 0136BC 004136BC 8D6F0014 */  lw          $t7, 0x14($t3)
/* 0136C0 004136C0 15E0000C */  bnez        $t7, .L004136F4
/* 0136C4 004136C4 00000000 */   nop
/* 0136C8 004136C8 8F8C8030 */  lw          $t4, %got(B_1000EFF0)($gp)
/* 0136CC 004136CC 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 0136D0 004136D0 8F84802C */  lw          $a0, %got(STR_100061B0)($gp)
/* 0136D4 004136D4 8D8CEFF0 */  lw          $t4, %lo(B_1000EFF0)($t4)
/* 0136D8 004136D8 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 0136DC 004136DC 248461B0 */  addiu       $a0, $a0, %lo(STR_100061B0)
/* 0136E0 004136E0 0320F809 */  jalr        $t9
/* 0136E4 004136E4 8D850004 */   lw         $a1, 0x4($t4)
/* 0136E8 004136E8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0136EC 004136EC 1000036B */  b           .L0041449C
/* 0136F0 004136F0 24020001 */   addiu      $v0, $zero, 0x1
.L004136F4:
/* 0136F4 004136F4 8F8E8030 */  lw          $t6, %got(B_1000EFF0)($gp)
/* 0136F8 004136F8 8DCEEFF0 */  lw          $t6, %lo(B_1000EFF0)($t6)
/* 0136FC 004136FC 8DD90020 */  lw          $t9, 0x20($t6)
/* 013700 00413700 17200005 */  bnez        $t9, .L00413718
/* 013704 00413704 00000000 */   nop
/* 013708 00413708 8F988030 */  lw          $t8, %got(B_1000EFF0)($gp)
/* 01370C 0041370C 240D0010 */  addiu       $t5, $zero, 0x10
/* 013710 00413710 8F18EFF0 */  lw          $t8, %lo(B_1000EFF0)($t8)
/* 013714 00413714 AF0D0020 */  sw          $t5, 0x20($t8)
.L00413718:
/* 013718 00413718 8F888030 */  lw          $t0, %got(B_1000EFF0)($gp)
/* 01371C 0041371C 8F818030 */  lw          $at, %got(B_1000EFEC)($gp)
/* 013720 00413720 8D08EFF0 */  lw          $t0, %lo(B_1000EFF0)($t0)
/* 013724 00413724 AC28EFEC */  sw          $t0, %lo(B_1000EFEC)($at)
/* 013728 00413728 10000358 */  b           .L0041448C
/* 01372C 0041372C 00000000 */   nop
.L00413730:
/* 013730 00413730 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 013734 00413734 24040078 */  addiu       $a0, $zero, 0x78
/* 013738 00413738 0320F809 */  jalr        $t9
/* 01373C 0041373C 00000000 */   nop
/* 013740 00413740 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013744 00413744 8F818030 */  lw          $at, %got(B_1000EFF0)($gp)
/* 013748 00413748 8F898030 */  lw          $t1, %got(B_1000EFF0)($gp)
/* 01374C 0041374C AC22EFF0 */  sw          $v0, %lo(B_1000EFF0)($at)
/* 013750 00413750 8D29EFF0 */  lw          $t1, %lo(B_1000EFF0)($t1)
/* 013754 00413754 1520000A */  bnez        $t1, .L00413780
/* 013758 00413758 00000000 */   nop
/* 01375C 0041375C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 013760 00413760 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 013764 00413764 8F85802C */  lw          $a1, %got(STR_10006200)($gp)
/* 013768 00413768 24840020 */  addiu       $a0, $a0, 0x20
/* 01376C 0041376C 0320F809 */  jalr        $t9
/* 013770 00413770 24A56200 */   addiu      $a1, $a1, %lo(STR_10006200)
/* 013774 00413774 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013778 00413778 10000348 */  b           .L0041449C
/* 01377C 0041377C 24020001 */   addiu      $v0, $zero, 0x1
.L00413780:
/* 013780 00413780 8F8A8030 */  lw          $t2, %got(B_1000EFF0)($gp)
/* 013784 00413784 8D4AEFF0 */  lw          $t2, %lo(B_1000EFF0)($t2)
/* 013788 00413788 AD400000 */  sw          $zero, 0x0($t2)
/* 01378C 0041378C 8F8B8030 */  lw          $t3, %got(B_1000EFF0)($gp)
/* 013790 00413790 8D6BEFF0 */  lw          $t3, %lo(B_1000EFF0)($t3)
/* 013794 00413794 AD600004 */  sw          $zero, 0x4($t3)
/* 013798 00413798 8F8F8030 */  lw          $t7, %got(B_1000EFF0)($gp)
/* 01379C 0041379C 8DEFEFF0 */  lw          $t7, %lo(B_1000EFF0)($t7)
/* 0137A0 004137A0 ADE00008 */  sw          $zero, 0x8($t7)
/* 0137A4 004137A4 8F8C8030 */  lw          $t4, %got(B_1000EFF0)($gp)
/* 0137A8 004137A8 8D8CEFF0 */  lw          $t4, %lo(B_1000EFF0)($t4)
/* 0137AC 004137AC AD80000C */  sw          $zero, 0xC($t4)
/* 0137B0 004137B0 8F998030 */  lw          $t9, %got(B_1000EFF0)($gp)
/* 0137B4 004137B4 240EFFFF */  addiu       $t6, $zero, -0x1
/* 0137B8 004137B8 8F39EFF0 */  lw          $t9, %lo(B_1000EFF0)($t9)
/* 0137BC 004137BC AF2E0010 */  sw          $t6, 0x10($t9)
/* 0137C0 004137C0 8F8D8030 */  lw          $t5, %got(B_1000EFF0)($gp)
/* 0137C4 004137C4 8DADEFF0 */  lw          $t5, %lo(B_1000EFF0)($t5)
/* 0137C8 004137C8 ADA00014 */  sw          $zero, 0x14($t5)
/* 0137CC 004137CC 8F988030 */  lw          $t8, %got(B_1000EFF0)($gp)
/* 0137D0 004137D0 8F18EFF0 */  lw          $t8, %lo(B_1000EFF0)($t8)
/* 0137D4 004137D4 AF000048 */  sw          $zero, 0x48($t8)
/* 0137D8 004137D8 8F888030 */  lw          $t0, %got(B_1000EFF0)($gp)
/* 0137DC 004137DC 8D08EFF0 */  lw          $t0, %lo(B_1000EFF0)($t0)
/* 0137E0 004137E0 AD000020 */  sw          $zero, 0x20($t0)
/* 0137E4 004137E4 8F8A8030 */  lw          $t2, %got(B_1000EFF0)($gp)
/* 0137E8 004137E8 2409FFFF */  addiu       $t1, $zero, -0x1
/* 0137EC 004137EC 8D4AEFF0 */  lw          $t2, %lo(B_1000EFF0)($t2)
/* 0137F0 004137F0 AD490028 */  sw          $t1, 0x28($t2)
/* 0137F4 004137F4 8F8B8030 */  lw          $t3, %got(B_1000EFF0)($gp)
/* 0137F8 004137F8 8D6BEFF0 */  lw          $t3, %lo(B_1000EFF0)($t3)
/* 0137FC 004137FC AD60002C */  sw          $zero, 0x2C($t3)
/* 013800 00413800 8F8F8030 */  lw          $t7, %got(B_1000EFF0)($gp)
/* 013804 00413804 8DEFEFF0 */  lw          $t7, %lo(B_1000EFF0)($t7)
/* 013808 00413808 ADE00030 */  sw          $zero, 0x30($t7)
/* 01380C 0041380C 8F8C8030 */  lw          $t4, %got(B_1000EFF0)($gp)
/* 013810 00413810 8D8CEFF0 */  lw          $t4, %lo(B_1000EFF0)($t4)
/* 013814 00413814 AD800034 */  sw          $zero, 0x34($t4)
/* 013818 00413818 8F8E8030 */  lw          $t6, %got(B_1000EFF0)($gp)
/* 01381C 0041381C 8DCEEFF0 */  lw          $t6, %lo(B_1000EFF0)($t6)
/* 013820 00413820 ADC00038 */  sw          $zero, 0x38($t6)
/* 013824 00413824 8F998030 */  lw          $t9, %got(B_1000EFF0)($gp)
/* 013828 00413828 8F39EFF0 */  lw          $t9, %lo(B_1000EFF0)($t9)
/* 01382C 0041382C AF20003C */  sw          $zero, 0x3C($t9)
/* 013830 00413830 8F988030 */  lw          $t8, %got(B_1000EFF0)($gp)
/* 013834 00413834 3C0D7FFF */  lui         $t5, (0x7FFFFFFF >> 16)
/* 013838 00413838 35ADFFFF */  ori         $t5, $t5, (0x7FFFFFFF & 0xFFFF)
/* 01383C 0041383C 8F18EFF0 */  lw          $t8, %lo(B_1000EFF0)($t8)
/* 013840 00413840 AF0D0044 */  sw          $t5, 0x44($t8)
/* 013844 00413844 8F888030 */  lw          $t0, %got(B_1000EFF0)($gp)
/* 013848 00413848 8D08EFF0 */  lw          $t0, %lo(B_1000EFF0)($t0)
/* 01384C 0041384C AD00004C */  sw          $zero, 0x4C($t0)
/* 013850 00413850 8F898030 */  lw          $t1, %got(B_1000EFF0)($gp)
/* 013854 00413854 8D29EFF0 */  lw          $t1, %lo(B_1000EFF0)($t1)
/* 013858 00413858 AD200050 */  sw          $zero, 0x50($t1)
/* 01385C 0041385C 8F8A8030 */  lw          $t2, %got(B_1000EFF0)($gp)
/* 013860 00413860 8D4AEFF0 */  lw          $t2, %lo(B_1000EFF0)($t2)
/* 013864 00413864 AD400054 */  sw          $zero, 0x54($t2)
/* 013868 00413868 8F8B8030 */  lw          $t3, %got(B_1000EFF0)($gp)
/* 01386C 0041386C 8D6BEFF0 */  lw          $t3, %lo(B_1000EFF0)($t3)
/* 013870 00413870 AD600058 */  sw          $zero, 0x58($t3)
/* 013874 00413874 8F8F8030 */  lw          $t7, %got(B_1000EFF0)($gp)
/* 013878 00413878 8DEFEFF0 */  lw          $t7, %lo(B_1000EFF0)($t7)
/* 01387C 0041387C ADE0005C */  sw          $zero, 0x5C($t7)
/* 013880 00413880 8F8C8030 */  lw          $t4, %got(B_1000EFF0)($gp)
/* 013884 00413884 8D8CEFF0 */  lw          $t4, %lo(B_1000EFF0)($t4)
/* 013888 00413888 AD800060 */  sw          $zero, 0x60($t4)
/* 01388C 0041388C 8F8E8658 */  lw          $t6, %got(segmentList)($gp)
/* 013890 00413890 8DCE0000 */  lw          $t6, 0x0($t6)
/* 013894 00413894 15C00006 */  bnez        $t6, .L004138B0
/* 013898 00413898 00000000 */   nop
/* 01389C 0041389C 8F998030 */  lw          $t9, %got(B_1000EFF0)($gp)
/* 0138A0 004138A0 8F818658 */  lw          $at, %got(segmentList)($gp)
/* 0138A4 004138A4 8F39EFF0 */  lw          $t9, %lo(B_1000EFF0)($t9)
/* 0138A8 004138A8 10000006 */  b           .L004138C4
/* 0138AC 004138AC AC390000 */   sw         $t9, 0x0($at)
.L004138B0:
/* 0138B0 004138B0 8F8D8030 */  lw          $t5, %got(B_1000EFF0)($gp)
/* 0138B4 004138B4 8F988030 */  lw          $t8, %got(B_1000EFEC)($gp)
/* 0138B8 004138B8 8DADEFF0 */  lw          $t5, %lo(B_1000EFF0)($t5)
/* 0138BC 004138BC 8F18EFEC */  lw          $t8, %lo(B_1000EFEC)($t8)
/* 0138C0 004138C0 AF0D0000 */  sw          $t5, 0x0($t8)
.L004138C4:
/* 0138C4 004138C4 8F818030 */  lw          $at, %got(D_1000A1A0)($gp)
/* 0138C8 004138C8 AC20A1A0 */  sw          $zero, %lo(D_1000A1A0)($at)
/* 0138CC 004138CC 8F818030 */  lw          $at, %got(D_1000A1A4)($gp)
/* 0138D0 004138D0 AC20A1A4 */  sw          $zero, %lo(D_1000A1A4)($at)
/* 0138D4 004138D4 100002ED */  b           .L0041448C
/* 0138D8 004138D8 00000000 */   nop
.L004138DC:
/* 0138DC 004138DC 8E080000 */  lw          $t0, 0x0($s0)
/* 0138E0 004138E0 3109000F */  andi        $t1, $t0, 0xF
/* 0138E4 004138E4 1120000A */  beqz        $t1, .L00413910
/* 0138E8 004138E8 00000000 */   nop
/* 0138EC 004138EC 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 0138F0 004138F0 8F84802C */  lw          $a0, %got(STR_10006218)($gp)
/* 0138F4 004138F4 8E050000 */  lw          $a1, 0x0($s0)
/* 0138F8 004138F8 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 0138FC 004138FC 0320F809 */  jalr        $t9
/* 013900 00413900 24846218 */   addiu      $a0, $a0, %lo(STR_10006218)
/* 013904 00413904 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013908 00413908 100002E4 */  b           .L0041449C
/* 01390C 0041390C 24020001 */   addiu      $v0, $zero, 0x1
.L00413910:
/* 013910 00413910 8E0A0000 */  lw          $t2, 0x0($s0)
/* 013914 00413914 3C018000 */  lui         $at, (0x80000000 >> 16)
/* 013918 00413918 0141082B */  sltu        $at, $t2, $at
/* 01391C 0041391C 1420001A */  bnez        $at, .L00413988
/* 013920 00413920 00000000 */   nop
/* 013924 00413924 8E0B0000 */  lw          $t3, 0x0($s0)
/* 013928 00413928 3C01C000 */  lui         $at, (0xC0000000 >> 16)
/* 01392C 0041392C 0161082B */  sltu        $at, $t3, $at
/* 013930 00413930 10200015 */  beqz        $at, .L00413988
/* 013934 00413934 00000000 */   nop
/* 013938 00413938 8E0F0000 */  lw          $t7, 0x0($s0)
/* 01393C 0041393C 3C011FFF */  lui         $at, (0x1FFFFFFF >> 16)
/* 013940 00413940 3421FFFF */  ori         $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 013944 00413944 01E16024 */  and         $t4, $t7, $at
/* 013948 00413948 2D810400 */  sltiu       $at, $t4, 0x400
/* 01394C 0041394C 1020000E */  beqz        $at, .L00413988
/* 013950 00413950 00000000 */   nop
/* 013954 00413954 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013958 00413958 8F84802C */  lw          $a0, %got(STR_1000623C)($gp)
/* 01395C 0041395C 3C068000 */  lui         $a2, (0x80000400 >> 16)
/* 013960 00413960 3C07A000 */  lui         $a3, (0xA0000400 >> 16)
/* 013964 00413964 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013968 00413968 34E70400 */  ori         $a3, $a3, (0xA0000400 & 0xFFFF)
/* 01396C 0041396C 34C60400 */  ori         $a2, $a2, (0x80000400 & 0xFFFF)
/* 013970 00413970 8E050000 */  lw          $a1, 0x0($s0)
/* 013974 00413974 0320F809 */  jalr        $t9
/* 013978 00413978 2484623C */   addiu      $a0, $a0, %lo(STR_1000623C)
/* 01397C 0041397C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013980 00413980 100002C6 */  b           .L0041449C
/* 013984 00413984 24020001 */   addiu      $v0, $zero, 0x1
.L00413988:
/* 013988 00413988 8F8E8030 */  lw          $t6, %got(B_1000EFF0)($gp)
/* 01398C 0041398C 2401FFFF */  addiu       $at, $zero, -0x1
/* 013990 00413990 8DCEEFF0 */  lw          $t6, %lo(B_1000EFF0)($t6)
/* 013994 00413994 8DD90010 */  lw          $t9, 0x10($t6)
/* 013998 00413998 13210009 */  beq         $t9, $at, .L004139C0
/* 01399C 0041399C 00000000 */   nop
/* 0139A0 004139A0 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 0139A4 004139A4 8F84802C */  lw          $a0, %got(STR_10006274)($gp)
/* 0139A8 004139A8 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 0139AC 004139AC 0320F809 */  jalr        $t9
/* 0139B0 004139B0 24846274 */   addiu      $a0, $a0, %lo(STR_10006274)
/* 0139B4 004139B4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0139B8 004139B8 100002B8 */  b           .L0041449C
/* 0139BC 004139BC 24020001 */   addiu      $v0, $zero, 0x1
.L004139C0:
/* 0139C0 004139C0 8F988030 */  lw          $t8, %got(B_1000EFF0)($gp)
/* 0139C4 004139C4 240D0004 */  addiu       $t5, $zero, 0x4
/* 0139C8 004139C8 8F18EFF0 */  lw          $t8, %lo(B_1000EFF0)($t8)
/* 0139CC 004139CC AF0D0014 */  sw          $t5, 0x14($t8)
/* 0139D0 004139D0 8F898030 */  lw          $t1, %got(B_1000EFF0)($gp)
/* 0139D4 004139D4 8E080000 */  lw          $t0, 0x0($s0)
/* 0139D8 004139D8 8D29EFF0 */  lw          $t1, %lo(B_1000EFF0)($t1)
/* 0139DC 004139DC AD280010 */  sw          $t0, 0x10($t1)
/* 0139E0 004139E0 100002AA */  b           .L0041448C
/* 0139E4 004139E4 00000000 */   nop
.L004139E8:
/* 0139E8 004139E8 8E0A0000 */  lw          $t2, 0x0($s0)
/* 0139EC 004139EC 05400005 */  bltz        $t2, .L00413A04
/* 0139F0 004139F0 00000000 */   nop
/* 0139F4 004139F4 8E0B0000 */  lw          $t3, 0x0($s0)
/* 0139F8 004139F8 29610010 */  slti        $at, $t3, 0x10
/* 0139FC 004139FC 1420000A */  bnez        $at, .L00413A28
/* 013A00 00413A00 00000000 */   nop
.L00413A04:
/* 013A04 00413A04 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013A08 00413A08 8F84802C */  lw          $a0, %got(STR_1000629C)($gp)
/* 013A0C 00413A0C 8E050000 */  lw          $a1, 0x0($s0)
/* 013A10 00413A10 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013A14 00413A14 0320F809 */  jalr        $t9
/* 013A18 00413A18 2484629C */   addiu      $a0, $a0, %lo(STR_1000629C)
/* 013A1C 00413A1C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013A20 00413A20 1000029E */  b           .L0041449C
/* 013A24 00413A24 24020001 */   addiu      $v0, $zero, 0x1
.L00413A28:
/* 013A28 00413A28 8F8F8030 */  lw          $t7, %got(B_1000EFF0)($gp)
/* 013A2C 00413A2C 2401FFFF */  addiu       $at, $zero, -0x1
/* 013A30 00413A30 8DEFEFF0 */  lw          $t7, %lo(B_1000EFF0)($t7)
/* 013A34 00413A34 8DEC0010 */  lw          $t4, 0x10($t7)
/* 013A38 00413A38 11810009 */  beq         $t4, $at, .L00413A60
/* 013A3C 00413A3C 00000000 */   nop
/* 013A40 00413A40 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013A44 00413A44 8F84802C */  lw          $a0, %got(STR_100062C4)($gp)
/* 013A48 00413A48 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013A4C 00413A4C 0320F809 */  jalr        $t9
/* 013A50 00413A50 248462C4 */   addiu      $a0, $a0, %lo(STR_100062C4)
/* 013A54 00413A54 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013A58 00413A58 10000290 */  b           .L0041449C
/* 013A5C 00413A5C 24020001 */   addiu      $v0, $zero, 0x1
.L00413A60:
/* 013A60 00413A60 8F998030 */  lw          $t9, %got(B_1000EFF0)($gp)
/* 013A64 00413A64 240E0005 */  addiu       $t6, $zero, 0x5
/* 013A68 00413A68 8F39EFF0 */  lw          $t9, %lo(B_1000EFF0)($t9)
/* 013A6C 00413A6C AF2E0014 */  sw          $t6, 0x14($t9)
/* 013A70 00413A70 8F888030 */  lw          $t0, %got(B_1000EFF0)($gp)
/* 013A74 00413A74 8E0D0000 */  lw          $t5, 0x0($s0)
/* 013A78 00413A78 8D08EFF0 */  lw          $t0, %lo(B_1000EFF0)($t0)
/* 013A7C 00413A7C 000DC600 */  sll         $t8, $t5, 24
/* 013A80 00413A80 AD180010 */  sw          $t8, 0x10($t0)
/* 013A84 00413A84 10000281 */  b           .L0041448C
/* 013A88 00413A88 00000000 */   nop
.L00413A8C:
/* 013A8C 00413A8C 8F898030 */  lw          $t1, %got(B_1000EFF0)($gp)
/* 013A90 00413A90 2401FFFF */  addiu       $at, $zero, -0x1
/* 013A94 00413A94 8D29EFF0 */  lw          $t1, %lo(B_1000EFF0)($t1)
/* 013A98 00413A98 8D2A0010 */  lw          $t2, 0x10($t1)
/* 013A9C 00413A9C 11410009 */  beq         $t2, $at, .L00413AC4
/* 013AA0 00413AA0 00000000 */   nop
/* 013AA4 00413AA4 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013AA8 00413AA8 8F84802C */  lw          $a0, %got(STR_100062EC)($gp)
/* 013AAC 00413AAC 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013AB0 00413AB0 0320F809 */  jalr        $t9
/* 013AB4 00413AB4 248462EC */   addiu      $a0, $a0, %lo(STR_100062EC)
/* 013AB8 00413AB8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013ABC 00413ABC 10000277 */  b           .L0041449C
/* 013AC0 00413AC0 24020001 */   addiu      $v0, $zero, 0x1
.L00413AC4:
/* 013AC4 00413AC4 8F8F8030 */  lw          $t7, %got(B_1000EFF0)($gp)
/* 013AC8 00413AC8 240BFFFF */  addiu       $t3, $zero, -0x1
/* 013ACC 00413ACC 8DEFEFF0 */  lw          $t7, %lo(B_1000EFF0)($t7)
/* 013AD0 00413AD0 ADEB0010 */  sw          $t3, 0x10($t7)
/* 013AD4 00413AD4 1000026D */  b           .L0041448C
/* 013AD8 00413AD8 00000000 */   nop
.L00413ADC:
/* 013ADC 00413ADC 8E0C0000 */  lw          $t4, 0x0($s0)
/* 013AE0 00413AE0 29810010 */  slti        $at, $t4, 0x10
/* 013AE4 00413AE4 1020000B */  beqz        $at, .L00413B14
/* 013AE8 00413AE8 00000000 */   nop
/* 013AEC 00413AEC 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013AF0 00413AF0 8F84802C */  lw          $a0, %got(STR_10006314)($gp)
/* 013AF4 00413AF4 8E050000 */  lw          $a1, 0x0($s0)
/* 013AF8 00413AF8 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013AFC 00413AFC 8E060000 */  lw          $a2, 0x0($s0)
/* 013B00 00413B00 0320F809 */  jalr        $t9
/* 013B04 00413B04 24846314 */   addiu      $a0, $a0, %lo(STR_10006314)
/* 013B08 00413B08 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013B0C 00413B0C 10000263 */  b           .L0041449C
/* 013B10 00413B10 24020001 */   addiu      $v0, $zero, 0x1
.L00413B14:
/* 013B14 00413B14 8E0E0000 */  lw          $t6, 0x0($s0)
/* 013B18 00413B18 8E0D0000 */  lw          $t5, 0x0($s0)
/* 013B1C 00413B1C 25D9FFFF */  addiu       $t9, $t6, -0x1
/* 013B20 00413B20 032DC024 */  and         $t8, $t9, $t5
/* 013B24 00413B24 1300000B */  beqz        $t8, .L00413B54
/* 013B28 00413B28 00000000 */   nop
/* 013B2C 00413B2C 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013B30 00413B30 8F84802C */  lw          $a0, %got(STR_10006344)($gp)
/* 013B34 00413B34 8E050000 */  lw          $a1, 0x0($s0)
/* 013B38 00413B38 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013B3C 00413B3C 8E060000 */  lw          $a2, 0x0($s0)
/* 013B40 00413B40 0320F809 */  jalr        $t9
/* 013B44 00413B44 24846344 */   addiu      $a0, $a0, %lo(STR_10006344)
/* 013B48 00413B48 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013B4C 00413B4C 10000253 */  b           .L0041449C
/* 013B50 00413B50 24020001 */   addiu      $v0, $zero, 0x1
.L00413B54:
/* 013B54 00413B54 8F898030 */  lw          $t1, %got(B_1000EFF0)($gp)
/* 013B58 00413B58 8E080000 */  lw          $t0, 0x0($s0)
/* 013B5C 00413B5C 8D29EFF0 */  lw          $t1, %lo(B_1000EFF0)($t1)
/* 013B60 00413B60 AD280048 */  sw          $t0, 0x48($t1)
/* 013B64 00413B64 10000249 */  b           .L0041448C
/* 013B68 00413B68 00000000 */   nop
.L00413B6C:
/* 013B6C 00413B6C 8E0A0000 */  lw          $t2, 0x0($s0)
/* 013B70 00413B70 29410010 */  slti        $at, $t2, 0x10
/* 013B74 00413B74 1020000B */  beqz        $at, .L00413BA4
/* 013B78 00413B78 00000000 */   nop
/* 013B7C 00413B7C 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013B80 00413B80 8F84802C */  lw          $a0, %got(STR_10006374)($gp)
/* 013B84 00413B84 8E050000 */  lw          $a1, 0x0($s0)
/* 013B88 00413B88 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013B8C 00413B8C 8E060000 */  lw          $a2, 0x0($s0)
/* 013B90 00413B90 0320F809 */  jalr        $t9
/* 013B94 00413B94 24846374 */   addiu      $a0, $a0, %lo(STR_10006374)
/* 013B98 00413B98 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013B9C 00413B9C 1000023F */  b           .L0041449C
/* 013BA0 00413BA0 24020001 */   addiu      $v0, $zero, 0x1
.L00413BA4:
/* 013BA4 00413BA4 8E0B0000 */  lw          $t3, 0x0($s0)
/* 013BA8 00413BA8 8E0C0000 */  lw          $t4, 0x0($s0)
/* 013BAC 00413BAC 256FFFFF */  addiu       $t7, $t3, -0x1
/* 013BB0 00413BB0 01EC7024 */  and         $t6, $t7, $t4
/* 013BB4 00413BB4 11C0000B */  beqz        $t6, .L00413BE4
/* 013BB8 00413BB8 00000000 */   nop
/* 013BBC 00413BBC 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013BC0 00413BC0 8F84802C */  lw          $a0, %got(STR_100063A0)($gp)
/* 013BC4 00413BC4 8E050000 */  lw          $a1, 0x0($s0)
/* 013BC8 00413BC8 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013BCC 00413BCC 8E060000 */  lw          $a2, 0x0($s0)
/* 013BD0 00413BD0 0320F809 */  jalr        $t9
/* 013BD4 00413BD4 248463A0 */   addiu      $a0, $a0, %lo(STR_100063A0)
/* 013BD8 00413BD8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013BDC 00413BDC 1000022F */  b           .L0041449C
/* 013BE0 00413BE0 24020001 */   addiu      $v0, $zero, 0x1
.L00413BE4:
/* 013BE4 00413BE4 8F8D8030 */  lw          $t5, %got(B_1000EFF0)($gp)
/* 013BE8 00413BE8 8E190000 */  lw          $t9, 0x0($s0)
/* 013BEC 00413BEC 8DADEFF0 */  lw          $t5, %lo(B_1000EFF0)($t5)
/* 013BF0 00413BF0 ADB90020 */  sw          $t9, 0x20($t5)
/* 013BF4 00413BF4 10000225 */  b           .L0041448C
/* 013BF8 00413BF8 00000000 */   nop
.L00413BFC:
/* 013BFC 00413BFC 8F988030 */  lw          $t8, %got(B_1000EFF0)($gp)
/* 013C00 00413C00 8F18EFF0 */  lw          $t8, %lo(B_1000EFF0)($t8)
/* 013C04 00413C04 8F080004 */  lw          $t0, 0x4($t8)
/* 013C08 00413C08 11000009 */  beqz        $t0, .L00413C30
/* 013C0C 00413C0C 00000000 */   nop
/* 013C10 00413C10 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013C14 00413C14 8F84802C */  lw          $a0, %got(STR_100063CC)($gp)
/* 013C18 00413C18 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013C1C 00413C1C 0320F809 */  jalr        $t9
/* 013C20 00413C20 248463CC */   addiu      $a0, $a0, %lo(STR_100063CC)
/* 013C24 00413C24 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013C28 00413C28 1000021C */  b           .L0041449C
/* 013C2C 00413C2C 24020001 */   addiu      $v0, $zero, 0x1
.L00413C30:
/* 013C30 00413C30 8F998118 */  lw          $t9, %call16(strdup)($gp)
/* 013C34 00413C34 8E040000 */  lw          $a0, 0x0($s0)
/* 013C38 00413C38 0320F809 */  jalr        $t9
/* 013C3C 00413C3C 00000000 */   nop
/* 013C40 00413C40 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013C44 00413C44 0040B825 */  move        $s7, $v0
/* 013C48 00413C48 8F898030 */  lw          $t1, %got(B_1000EFF0)($gp)
/* 013C4C 00413C4C 8D29EFF0 */  lw          $t1, %lo(B_1000EFF0)($t1)
/* 013C50 00413C50 16E0000D */  bnez        $s7, .L00413C88
/* 013C54 00413C54 AD370004 */   sw         $s7, 0x4($t1)
/* 013C58 00413C58 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 013C5C 00413C5C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 013C60 00413C60 8F85802C */  lw          $a1, %got(STR_100063E4)($gp)
/* 013C64 00413C64 24840020 */  addiu       $a0, $a0, 0x20
/* 013C68 00413C68 0320F809 */  jalr        $t9
/* 013C6C 00413C6C 24A563E4 */   addiu      $a1, $a1, %lo(STR_100063E4)
/* 013C70 00413C70 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013C74 00413C74 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 013C78 00413C78 24040001 */  addiu       $a0, $zero, 0x1
/* 013C7C 00413C7C 0320F809 */  jalr        $t9
/* 013C80 00413C80 00000000 */   nop
/* 013C84 00413C84 8FBC0038 */  lw          $gp, 0x38($sp)
.L00413C88:
/* 013C88 00413C88 10000200 */  b           .L0041448C
/* 013C8C 00413C8C 00000000 */   nop
.L00413C90:
/* 013C90 00413C90 8F8A8030 */  lw          $t2, %got(D_1000A1A0)($gp)
/* 013C94 00413C94 8D4AA1A0 */  lw          $t2, %lo(D_1000A1A0)($t2)
/* 013C98 00413C98 11400009 */  beqz        $t2, .L00413CC0
/* 013C9C 00413C9C 00000000 */   nop
/* 013CA0 00413CA0 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013CA4 00413CA4 8F84802C */  lw          $a0, %got(STR_100063FC)($gp)
/* 013CA8 00413CA8 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013CAC 00413CAC 0320F809 */  jalr        $t9
/* 013CB0 00413CB0 248463FC */   addiu      $a0, $a0, %lo(STR_100063FC)
/* 013CB4 00413CB4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013CB8 00413CB8 100001F8 */  b           .L0041449C
/* 013CBC 00413CBC 24020001 */   addiu      $v0, $zero, 0x1
.L00413CC0:
/* 013CC0 00413CC0 8F818030 */  lw          $at, %got(D_1000A1A0)($gp)
/* 013CC4 00413CC4 240B0001 */  addiu       $t3, $zero, 0x1
/* 013CC8 00413CC8 AC2BA1A0 */  sw          $t3, %lo(D_1000A1A0)($at)
/* 013CCC 00413CCC 8E0F0000 */  lw          $t7, 0x0($s0)
/* 013CD0 00413CD0 8F818710 */  lw          $at, %got(bootEntryName)($gp)
/* 013CD4 00413CD4 AC2F0000 */  sw          $t7, 0x0($at)
/* 013CD8 00413CD8 100001EC */  b           .L0041448C
/* 013CDC 00413CDC 00000000 */   nop
.L00413CE0:
/* 013CE0 00413CE0 8F8C8030 */  lw          $t4, %got(B_1000EFF0)($gp)
/* 013CE4 00413CE4 2401FFFF */  addiu       $at, $zero, -0x1
/* 013CE8 00413CE8 8D8CEFF0 */  lw          $t4, %lo(B_1000EFF0)($t4)
/* 013CEC 00413CEC 8D8E0028 */  lw          $t6, 0x28($t4)
/* 013CF0 00413CF0 11C10009 */  beq         $t6, $at, .L00413D18
/* 013CF4 00413CF4 00000000 */   nop
/* 013CF8 00413CF8 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013CFC 00413CFC 8F84802C */  lw          $a0, %got(STR_10006414)($gp)
/* 013D00 00413D00 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013D04 00413D04 0320F809 */  jalr        $t9
/* 013D08 00413D08 24846414 */   addiu      $a0, $a0, %lo(STR_10006414)
/* 013D0C 00413D0C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013D10 00413D10 100001E2 */  b           .L0041449C
/* 013D14 00413D14 24020001 */   addiu      $v0, $zero, 0x1
.L00413D18:
/* 013D18 00413D18 8E190000 */  lw          $t9, 0x0($s0)
/* 013D1C 00413D1C 24010005 */  addiu       $at, $zero, 0x5
/* 013D20 00413D20 332D0005 */  andi        $t5, $t9, 0x5
/* 013D24 00413D24 15A10009 */  bne         $t5, $at, .L00413D4C
/* 013D28 00413D28 00000000 */   nop
/* 013D2C 00413D2C 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013D30 00413D30 8F84802C */  lw          $a0, %got(STR_10006434)($gp)
/* 013D34 00413D34 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013D38 00413D38 0320F809 */  jalr        $t9
/* 013D3C 00413D3C 24846434 */   addiu      $a0, $a0, %lo(STR_10006434)
/* 013D40 00413D40 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013D44 00413D44 100001D5 */  b           .L0041449C
/* 013D48 00413D48 24020001 */   addiu      $v0, $zero, 0x1
.L00413D4C:
/* 013D4C 00413D4C 8E180000 */  lw          $t8, 0x0($s0)
/* 013D50 00413D50 24010006 */  addiu       $at, $zero, 0x6
/* 013D54 00413D54 33080006 */  andi        $t0, $t8, 0x6
/* 013D58 00413D58 15010009 */  bne         $t0, $at, .L00413D80
/* 013D5C 00413D5C 00000000 */   nop
/* 013D60 00413D60 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013D64 00413D64 8F84802C */  lw          $a0, %got(STR_1000645C)($gp)
/* 013D68 00413D68 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013D6C 00413D6C 0320F809 */  jalr        $t9
/* 013D70 00413D70 2484645C */   addiu      $a0, $a0, %lo(STR_1000645C)
/* 013D74 00413D74 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013D78 00413D78 100001C8 */  b           .L0041449C
/* 013D7C 00413D7C 24020001 */   addiu      $v0, $zero, 0x1
.L00413D80:
/* 013D80 00413D80 8F8A8030 */  lw          $t2, %got(B_1000EFF0)($gp)
/* 013D84 00413D84 8E090000 */  lw          $t1, 0x0($s0)
/* 013D88 00413D88 8D4AEFF0 */  lw          $t2, %lo(B_1000EFF0)($t2)
/* 013D8C 00413D8C AD490028 */  sw          $t1, 0x28($t2)
/* 013D90 00413D90 100001BE */  b           .L0041448C
/* 013D94 00413D94 00000000 */   nop
.L00413D98:
/* 013D98 00413D98 8F998018 */  lw          $t9, %got(func_004129BC)($gp)
/* 013D9C 00413D9C 8E040000 */  lw          $a0, 0x0($s0)
/* 013DA0 00413DA0 27A50064 */  addiu       $a1, $sp, 0x64
/* 013DA4 00413DA4 273929BC */  addiu       $t9, $t9, %lo(func_004129BC)
/* 013DA8 00413DA8 0320F809 */  jalr        $t9
/* 013DAC 00413DAC 00000000 */   nop
/* 013DB0 00413DB0 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013DB4 00413DB4 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 013DB8 00413DB8 24040048 */  addiu       $a0, $zero, 0x48
/* 013DBC 00413DBC 0320F809 */  jalr        $t9
/* 013DC0 00413DC0 00000000 */   nop
/* 013DC4 00413DC4 AFA20164 */  sw          $v0, 0x164($sp)
/* 013DC8 00413DC8 8FAB0164 */  lw          $t3, 0x164($sp)
/* 013DCC 00413DCC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013DD0 00413DD0 1160000A */  beqz        $t3, .L00413DFC
/* 013DD4 00413DD4 00000000 */   nop
/* 013DD8 00413DD8 8F998118 */  lw          $t9, %call16(strdup)($gp)
/* 013DDC 00413DDC 27A40064 */  addiu       $a0, $sp, 0x64
/* 013DE0 00413DE0 0320F809 */  jalr        $t9
/* 013DE4 00413DE4 00000000 */   nop
/* 013DE8 00413DE8 8FAF0164 */  lw          $t7, 0x164($sp)
/* 013DEC 00413DEC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013DF0 00413DF0 0040B825 */  move        $s7, $v0
/* 013DF4 00413DF4 16E0000D */  bnez        $s7, .L00413E2C
/* 013DF8 00413DF8 ADF70004 */   sw         $s7, 0x4($t7)
.L00413DFC:
/* 013DFC 00413DFC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 013E00 00413E00 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 013E04 00413E04 8F85802C */  lw          $a1, %got(STR_10006484)($gp)
/* 013E08 00413E08 24840020 */  addiu       $a0, $a0, 0x20
/* 013E0C 00413E0C 0320F809 */  jalr        $t9
/* 013E10 00413E10 24A56484 */   addiu      $a1, $a1, %lo(STR_10006484)
/* 013E14 00413E14 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013E18 00413E18 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 013E1C 00413E1C 24040001 */  addiu       $a0, $zero, 0x1
/* 013E20 00413E20 0320F809 */  jalr        $t9
/* 013E24 00413E24 00000000 */   nop
/* 013E28 00413E28 8FBC0038 */  lw          $gp, 0x38($sp)
.L00413E2C:
/* 013E2C 00413E2C 8FAC0164 */  lw          $t4, 0x164($sp)
/* 013E30 00413E30 AD800000 */  sw          $zero, 0x0($t4)
/* 013E34 00413E34 8FAE0164 */  lw          $t6, 0x164($sp)
/* 013E38 00413E38 ADC00044 */  sw          $zero, 0x44($t6)
/* 013E3C 00413E3C 8F998030 */  lw          $t9, %got(B_1000EFF0)($gp)
/* 013E40 00413E40 8F39EFF0 */  lw          $t9, %lo(B_1000EFF0)($t9)
/* 013E44 00413E44 8F2D0008 */  lw          $t5, 0x8($t9)
/* 013E48 00413E48 15A00006 */  bnez        $t5, .L00413E64
/* 013E4C 00413E4C 00000000 */   nop
/* 013E50 00413E50 8F888030 */  lw          $t0, %got(B_1000EFF0)($gp)
/* 013E54 00413E54 8FB80164 */  lw          $t8, 0x164($sp)
/* 013E58 00413E58 8D08EFF0 */  lw          $t0, %lo(B_1000EFF0)($t0)
/* 013E5C 00413E5C 10000005 */  b           .L00413E74
/* 013E60 00413E60 AD180008 */   sw         $t8, 0x8($t0)
.L00413E64:
/* 013E64 00413E64 8F8A8030 */  lw          $t2, %got(B_1000F000)($gp)
/* 013E68 00413E68 8FA90164 */  lw          $t1, 0x164($sp)
/* 013E6C 00413E6C 8D4AF000 */  lw          $t2, %lo(B_1000F000)($t2)
/* 013E70 00413E70 AD490000 */  sw          $t1, 0x0($t2)
.L00413E74:
/* 013E74 00413E74 8FAB0164 */  lw          $t3, 0x164($sp)
/* 013E78 00413E78 8F818030 */  lw          $at, %got(B_1000F000)($gp)
/* 013E7C 00413E7C AC2BF000 */  sw          $t3, %lo(B_1000F000)($at)
/* 013E80 00413E80 10000182 */  b           .L0041448C
/* 013E84 00413E84 00000000 */   nop
.L00413E88:
/* 013E88 00413E88 8F8F8030 */  lw          $t7, %got(B_1000EFF0)($gp)
/* 013E8C 00413E8C 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 013E90 00413E90 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 013E94 00413E94 8DEFEFF0 */  lw          $t7, %lo(B_1000EFF0)($t7)
/* 013E98 00413E98 8DEC0044 */  lw          $t4, 0x44($t7)
/* 013E9C 00413E9C 11810009 */  beq         $t4, $at, .L00413EC4
/* 013EA0 00413EA0 00000000 */   nop
/* 013EA4 00413EA4 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013EA8 00413EA8 8F84802C */  lw          $a0, %got(STR_1000649C)($gp)
/* 013EAC 00413EAC 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013EB0 00413EB0 0320F809 */  jalr        $t9
/* 013EB4 00413EB4 2484649C */   addiu      $a0, $a0, %lo(STR_1000649C)
/* 013EB8 00413EB8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013EBC 00413EBC 10000177 */  b           .L0041449C
/* 013EC0 00413EC0 24020001 */   addiu      $v0, $zero, 0x1
.L00413EC4:
/* 013EC4 00413EC4 8E0E0000 */  lw          $t6, 0x0($s0)
/* 013EC8 00413EC8 31D9000F */  andi        $t9, $t6, 0xF
/* 013ECC 00413ECC 1320000A */  beqz        $t9, .L00413EF8
/* 013ED0 00413ED0 00000000 */   nop
/* 013ED4 00413ED4 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013ED8 00413ED8 8F84802C */  lw          $a0, %got(STR_100064C0)($gp)
/* 013EDC 00413EDC 8E050000 */  lw          $a1, 0x0($s0)
/* 013EE0 00413EE0 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013EE4 00413EE4 0320F809 */  jalr        $t9
/* 013EE8 00413EE8 248464C0 */   addiu      $a0, $a0, %lo(STR_100064C0)
/* 013EEC 00413EEC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013EF0 00413EF0 1000016A */  b           .L0041449C
/* 013EF4 00413EF4 24020001 */   addiu      $v0, $zero, 0x1
.L00413EF8:
/* 013EF8 00413EF8 8F988030 */  lw          $t8, %got(B_1000EFF0)($gp)
/* 013EFC 00413EFC 8E0D0000 */  lw          $t5, 0x0($s0)
/* 013F00 00413F00 8F18EFF0 */  lw          $t8, %lo(B_1000EFF0)($t8)
/* 013F04 00413F04 AF0D0044 */  sw          $t5, 0x44($t8)
/* 013F08 00413F08 10000160 */  b           .L0041448C
/* 013F0C 00413F0C 00000000 */   nop
.L00413F10:
/* 013F10 00413F10 8F888030 */  lw          $t0, %got(D_1000A1A4)($gp)
/* 013F14 00413F14 8D08A1A4 */  lw          $t0, %lo(D_1000A1A4)($t0)
/* 013F18 00413F18 11000009 */  beqz        $t0, .L00413F40
/* 013F1C 00413F1C 00000000 */   nop
/* 013F20 00413F20 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013F24 00413F24 8F84802C */  lw          $a0, %got(STR_100064F8)($gp)
/* 013F28 00413F28 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013F2C 00413F2C 0320F809 */  jalr        $t9
/* 013F30 00413F30 248464F8 */   addiu      $a0, $a0, %lo(STR_100064F8)
/* 013F34 00413F34 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013F38 00413F38 10000158 */  b           .L0041449C
/* 013F3C 00413F3C 24020001 */   addiu      $v0, $zero, 0x1
.L00413F40:
/* 013F40 00413F40 8F818030 */  lw          $at, %got(D_1000A1A4)($gp)
/* 013F44 00413F44 24090001 */  addiu       $t1, $zero, 0x1
/* 013F48 00413F48 AC29A1A4 */  sw          $t1, %lo(D_1000A1A4)($at)
/* 013F4C 00413F4C 1000014F */  b           .L0041448C
/* 013F50 00413F50 00000000 */   nop
.L00413F54:
/* 013F54 00413F54 8F8B8030 */  lw          $t3, %got(B_1000EFF0)($gp)
/* 013F58 00413F58 240A0001 */  addiu       $t2, $zero, 0x1
/* 013F5C 00413F5C 8D6BEFF0 */  lw          $t3, %lo(B_1000EFF0)($t3)
/* 013F60 00413F60 AD6A0014 */  sw          $t2, 0x14($t3)
/* 013F64 00413F64 8F8F8658 */  lw          $t7, %got(segmentList)($gp)
/* 013F68 00413F68 8DEF0000 */  lw          $t7, 0x0($t7)
/* 013F6C 00413F6C 11E0000E */  beqz        $t7, .L00413FA8
/* 013F70 00413F70 AFAF0060 */   sw         $t7, 0x60($sp)
.L00413F74:
/* 013F74 00413F74 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 013F78 00413F78 8FAC0060 */  lw          $t4, 0x60($sp)
/* 013F7C 00413F7C 8E050000 */  lw          $a1, 0x0($s0)
/* 013F80 00413F80 0320F809 */  jalr        $t9
/* 013F84 00413F84 8D840004 */   lw         $a0, 0x4($t4)
/* 013F88 00413F88 14400003 */  bnez        $v0, .L00413F98
/* 013F8C 00413F8C 8FBC0038 */   lw         $gp, 0x38($sp)
/* 013F90 00413F90 10000005 */  b           .L00413FA8
/* 013F94 00413F94 00000000 */   nop
.L00413F98:
/* 013F98 00413F98 8FAE0060 */  lw          $t6, 0x60($sp)
/* 013F9C 00413F9C 8DD90000 */  lw          $t9, 0x0($t6)
/* 013FA0 00413FA0 1720FFF4 */  bnez        $t9, .L00413F74
/* 013FA4 00413FA4 AFB90060 */   sw         $t9, 0x60($sp)
.L00413FA8:
/* 013FA8 00413FA8 8FAD0060 */  lw          $t5, 0x60($sp)
/* 013FAC 00413FAC 15A0000A */  bnez        $t5, .L00413FD8
/* 013FB0 00413FB0 00000000 */   nop
/* 013FB4 00413FB4 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 013FB8 00413FB8 8F84802C */  lw          $a0, %got(STR_10006508)($gp)
/* 013FBC 00413FBC 8E050000 */  lw          $a1, 0x0($s0)
/* 013FC0 00413FC0 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 013FC4 00413FC4 0320F809 */  jalr        $t9
/* 013FC8 00413FC8 24846508 */   addiu      $a0, $a0, %lo(STR_10006508)
/* 013FCC 00413FCC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 013FD0 00413FD0 10000132 */  b           .L0041449C
/* 013FD4 00413FD4 24020001 */   addiu      $v0, $zero, 0x1
.L00413FD8:
/* 013FD8 00413FD8 8F888030 */  lw          $t0, %got(B_1000EFF0)($gp)
/* 013FDC 00413FDC 8FB80060 */  lw          $t8, 0x60($sp)
/* 013FE0 00413FE0 8F898030 */  lw          $t1, %got(B_1000EFF0)($gp)
/* 013FE4 00413FE4 8D08EFF0 */  lw          $t0, %lo(B_1000EFF0)($t0)
/* 013FE8 00413FE8 AD18001C */  sw          $t8, 0x1C($t0)
/* 013FEC 00413FEC 8D29EFF0 */  lw          $t1, %lo(B_1000EFF0)($t1)
/* 013FF0 00413FF0 8D2A001C */  lw          $t2, 0x1C($t1)
/* 013FF4 00413FF4 AD2A0018 */  sw          $t2, 0x18($t1)
/* 013FF8 00413FF8 10000124 */  b           .L0041448C
/* 013FFC 00413FFC 00000000 */   nop
.L00414000:
/* 014000 00414000 8F8B8658 */  lw          $t3, %got(segmentList)($gp)
/* 014004 00414004 8D6B0000 */  lw          $t3, 0x0($t3)
/* 014008 00414008 1160000E */  beqz        $t3, .L00414044
/* 01400C 0041400C AFAB0058 */   sw         $t3, 0x58($sp)
.L00414010:
/* 014010 00414010 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 014014 00414014 8FAF0058 */  lw          $t7, 0x58($sp)
/* 014018 00414018 8E05FFF4 */  lw          $a1, -0xC($s0)
/* 01401C 0041401C 0320F809 */  jalr        $t9
/* 014020 00414020 8DE40004 */   lw         $a0, 0x4($t7)
/* 014024 00414024 14400003 */  bnez        $v0, .L00414034
/* 014028 00414028 8FBC0038 */   lw         $gp, 0x38($sp)
/* 01402C 0041402C 10000005 */  b           .L00414044
/* 014030 00414030 00000000 */   nop
.L00414034:
/* 014034 00414034 8FAC0058 */  lw          $t4, 0x58($sp)
/* 014038 00414038 8D8E0000 */  lw          $t6, 0x0($t4)
/* 01403C 0041403C 15C0FFF4 */  bnez        $t6, .L00414010
/* 014040 00414040 AFAE0058 */   sw         $t6, 0x58($sp)
.L00414044:
/* 014044 00414044 8FB90058 */  lw          $t9, 0x58($sp)
/* 014048 00414048 1720000A */  bnez        $t9, .L00414074
/* 01404C 0041404C 00000000 */   nop
/* 014050 00414050 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 014054 00414054 8F84802C */  lw          $a0, %got(STR_10006528)($gp)
/* 014058 00414058 8E05FFF4 */  lw          $a1, -0xC($s0)
/* 01405C 0041405C 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 014060 00414060 0320F809 */  jalr        $t9
/* 014064 00414064 24846528 */   addiu      $a0, $a0, %lo(STR_10006528)
/* 014068 00414068 8FBC0038 */  lw          $gp, 0x38($sp)
/* 01406C 0041406C 1000010B */  b           .L0041449C
/* 014070 00414070 24020001 */   addiu      $v0, $zero, 0x1
.L00414074:
/* 014074 00414074 8F988030 */  lw          $t8, %got(B_1000EFF0)($gp)
/* 014078 00414078 8FAD0058 */  lw          $t5, 0x58($sp)
/* 01407C 0041407C 8F18EFF0 */  lw          $t8, %lo(B_1000EFF0)($t8)
/* 014080 00414080 AF0D0018 */  sw          $t5, 0x18($t8)
/* 014084 00414084 8F888658 */  lw          $t0, %got(segmentList)($gp)
/* 014088 00414088 8D080000 */  lw          $t0, 0x0($t0)
/* 01408C 0041408C 1100000E */  beqz        $t0, .L004140C8
/* 014090 00414090 AFA80058 */   sw         $t0, 0x58($sp)
.L00414094:
/* 014094 00414094 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 014098 00414098 8FAA0058 */  lw          $t2, 0x58($sp)
/* 01409C 0041409C 8E05FFFC */  lw          $a1, -0x4($s0)
/* 0140A0 004140A0 0320F809 */  jalr        $t9
/* 0140A4 004140A4 8D440004 */   lw         $a0, 0x4($t2)
/* 0140A8 004140A8 14400003 */  bnez        $v0, .L004140B8
/* 0140AC 004140AC 8FBC0038 */   lw         $gp, 0x38($sp)
/* 0140B0 004140B0 10000005 */  b           .L004140C8
/* 0140B4 004140B4 00000000 */   nop
.L004140B8:
/* 0140B8 004140B8 8FA90058 */  lw          $t1, 0x58($sp)
/* 0140BC 004140BC 8D2B0000 */  lw          $t3, 0x0($t1)
/* 0140C0 004140C0 1560FFF4 */  bnez        $t3, .L00414094
/* 0140C4 004140C4 AFAB0058 */   sw         $t3, 0x58($sp)
.L004140C8:
/* 0140C8 004140C8 8FAF0058 */  lw          $t7, 0x58($sp)
/* 0140CC 004140CC 15E0000A */  bnez        $t7, .L004140F8
/* 0140D0 004140D0 00000000 */   nop
/* 0140D4 004140D4 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 0140D8 004140D8 8F84802C */  lw          $a0, %got(STR_10006548)($gp)
/* 0140DC 004140DC 8E05FFFC */  lw          $a1, -0x4($s0)
/* 0140E0 004140E0 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 0140E4 004140E4 0320F809 */  jalr        $t9
/* 0140E8 004140E8 24846548 */   addiu      $a0, $a0, %lo(STR_10006548)
/* 0140EC 004140EC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0140F0 004140F0 100000EA */  b           .L0041449C
/* 0140F4 004140F4 24020001 */   addiu      $v0, $zero, 0x1
.L004140F8:
/* 0140F8 004140F8 8F8E8030 */  lw          $t6, %got(B_1000EFF0)($gp)
/* 0140FC 004140FC 8FAC0058 */  lw          $t4, 0x58($sp)
/* 014100 00414100 8DCEEFF0 */  lw          $t6, %lo(B_1000EFF0)($t6)
/* 014104 00414104 ADCC001C */  sw          $t4, 0x1C($t6)
/* 014108 00414108 100000E0 */  b           .L0041448C
/* 01410C 0041410C 00000000 */   nop
.L00414110:
/* 014110 00414110 8F8D8030 */  lw          $t5, %got(B_1000EFF0)($gp)
/* 014114 00414114 24190002 */  addiu       $t9, $zero, 0x2
/* 014118 00414118 8DADEFF0 */  lw          $t5, %lo(B_1000EFF0)($t5)
/* 01411C 0041411C ADB90014 */  sw          $t9, 0x14($t5)
/* 014120 00414120 100000DA */  b           .L0041448C
/* 014124 00414124 00000000 */   nop
.L00414128:
/* 014128 00414128 8F888030 */  lw          $t0, %got(B_1000EFF0)($gp)
/* 01412C 0041412C 24180003 */  addiu       $t8, $zero, 0x3
/* 014130 00414130 8D08EFF0 */  lw          $t0, %lo(B_1000EFF0)($t0)
/* 014134 00414134 AD180014 */  sw          $t8, 0x14($t0)
/* 014138 00414138 100000D4 */  b           .L0041448C
/* 01413C 0041413C 00000000 */   nop
.L00414140:
/* 014140 00414140 8E0A0000 */  lw          $t2, 0x0($s0)
/* 014144 00414144 8F8187A0 */  lw          $at, %got(yyval)($gp)
/* 014148 00414148 AC2A0000 */  sw          $t2, 0x0($at)
/* 01414C 0041414C 100000CF */  b           .L0041448C
/* 014150 00414150 00000000 */   nop
.L00414154:
/* 014154 00414154 8E090000 */  lw          $t1, 0x0($s0)
/* 014158 00414158 8E0BFFFC */  lw          $t3, -0x4($s0)
/* 01415C 0041415C 8F8187A0 */  lw          $at, %got(yyval)($gp)
/* 014160 00414160 012B7825 */  or          $t7, $t1, $t3
/* 014164 00414164 AC2F0000 */  sw          $t7, 0x0($at)
/* 014168 00414168 100000C8 */  b           .L0041448C
/* 01416C 0041416C 00000000 */   nop
.L00414170:
/* 014170 00414170 8F8187A0 */  lw          $at, %got(yyval)($gp)
/* 014174 00414174 240C0001 */  addiu       $t4, $zero, 0x1
/* 014178 00414178 AC2C0000 */  sw          $t4, 0x0($at)
/* 01417C 0041417C 100000C3 */  b           .L0041448C
/* 014180 00414180 00000000 */   nop
.L00414184:
/* 014184 00414184 8F8187A0 */  lw          $at, %got(yyval)($gp)
/* 014188 00414188 240E0002 */  addiu       $t6, $zero, 0x2
/* 01418C 0041418C AC2E0000 */  sw          $t6, 0x0($at)
/* 014190 00414190 100000BE */  b           .L0041448C
/* 014194 00414194 00000000 */   nop
.L00414198:
/* 014198 00414198 8F8187A0 */  lw          $at, %got(yyval)($gp)
/* 01419C 0041419C 24190004 */  addiu       $t9, $zero, 0x4
/* 0141A0 004141A0 AC390000 */  sw          $t9, 0x0($at)
/* 0141A4 004141A4 100000B9 */  b           .L0041448C
/* 0141A8 004141A8 00000000 */   nop
.L004141AC:
/* 0141AC 004141AC 8F818714 */  lw          $at, %got(bootStackName)($gp)
/* 0141B0 004141B0 AC200000 */  sw          $zero, 0x0($at)
/* 0141B4 004141B4 8E0D0000 */  lw          $t5, 0x0($s0)
/* 0141B8 004141B8 8F818718 */  lw          $at, %got(bootStackOffset)($gp)
/* 0141BC 004141BC AC2D0000 */  sw          $t5, 0x0($at)
/* 0141C0 004141C0 100000B2 */  b           .L0041448C
/* 0141C4 004141C4 00000000 */   nop
.L004141C8:
/* 0141C8 004141C8 8E180000 */  lw          $t8, 0x0($s0)
/* 0141CC 004141CC 8F818714 */  lw          $at, %got(bootStackName)($gp)
/* 0141D0 004141D0 AC380000 */  sw          $t8, 0x0($at)
/* 0141D4 004141D4 8F818718 */  lw          $at, %got(bootStackOffset)($gp)
/* 0141D8 004141D8 AC200000 */  sw          $zero, 0x0($at)
/* 0141DC 004141DC 100000AB */  b           .L0041448C
/* 0141E0 004141E0 00000000 */   nop
.L004141E4:
/* 0141E4 004141E4 8E08FFF8 */  lw          $t0, -0x8($s0)
/* 0141E8 004141E8 8F818714 */  lw          $at, %got(bootStackName)($gp)
/* 0141EC 004141EC AC280000 */  sw          $t0, 0x0($at)
/* 0141F0 004141F0 8E0A0000 */  lw          $t2, 0x0($s0)
/* 0141F4 004141F4 8F818718 */  lw          $at, %got(bootStackOffset)($gp)
/* 0141F8 004141F8 AC2A0000 */  sw          $t2, 0x0($at)
/* 0141FC 004141FC 100000A3 */  b           .L0041448C
/* 014200 00414200 00000000 */   nop
.L00414204:
/* 014204 00414204 8F898030 */  lw          $t1, %got(B_1000EFF8)($gp)
/* 014208 00414208 8F818030 */  lw          $at, %got(B_1000EFF4)($gp)
/* 01420C 0041420C 8D29EFF8 */  lw          $t1, %lo(B_1000EFF8)($t1)
/* 014210 00414210 AC29EFF4 */  sw          $t1, %lo(B_1000EFF4)($at)
/* 014214 00414214 1000009D */  b           .L0041448C
/* 014218 00414218 00000000 */   nop
.L0041421C:
/* 01421C 0041421C 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 014220 00414220 2404011C */  addiu       $a0, $zero, 0x11C
/* 014224 00414224 0320F809 */  jalr        $t9
/* 014228 00414228 00000000 */   nop
/* 01422C 0041422C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 014230 00414230 8F818030 */  lw          $at, %got(B_1000EFF8)($gp)
/* 014234 00414234 8F8B8030 */  lw          $t3, %got(B_1000EFF8)($gp)
/* 014238 00414238 AC22EFF8 */  sw          $v0, %lo(B_1000EFF8)($at)
/* 01423C 0041423C 8D6BEFF8 */  lw          $t3, %lo(B_1000EFF8)($t3)
/* 014240 00414240 1560000D */  bnez        $t3, .L00414278
/* 014244 00414244 00000000 */   nop
/* 014248 00414248 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 01424C 0041424C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 014250 00414250 8F85802C */  lw          $a1, %got(STR_10006568)($gp)
/* 014254 00414254 24840020 */  addiu       $a0, $a0, 0x20
/* 014258 00414258 0320F809 */  jalr        $t9
/* 01425C 0041425C 24A56568 */   addiu      $a1, $a1, %lo(STR_10006568)
/* 014260 00414260 8FBC0038 */  lw          $gp, 0x38($sp)
/* 014264 00414264 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 014268 00414268 24040001 */  addiu       $a0, $zero, 0x1
/* 01426C 0041426C 0320F809 */  jalr        $t9
/* 014270 00414270 00000000 */   nop
/* 014274 00414274 8FBC0038 */  lw          $gp, 0x38($sp)
.L00414278:
/* 014278 00414278 8F8F8030 */  lw          $t7, %got(B_1000EFF8)($gp)
/* 01427C 0041427C 8DEFEFF8 */  lw          $t7, %lo(B_1000EFF8)($t7)
/* 014280 00414280 ADE00000 */  sw          $zero, 0x0($t7)
/* 014284 00414284 8F8C8030 */  lw          $t4, %got(B_1000EFF8)($gp)
/* 014288 00414288 8D8CEFF8 */  lw          $t4, %lo(B_1000EFF8)($t4)
/* 01428C 0041428C AD800008 */  sw          $zero, 0x8($t4)
/* 014290 00414290 8F8E8030 */  lw          $t6, %got(B_1000EFF8)($gp)
/* 014294 00414294 8DCEEFF8 */  lw          $t6, %lo(B_1000EFF8)($t6)
/* 014298 00414298 ADC0000C */  sw          $zero, 0xC($t6)
/* 01429C 0041429C 8F8D8030 */  lw          $t5, %got(B_1000EFF8)($gp)
/* 0142A0 004142A0 24190001 */  addiu       $t9, $zero, 0x1
/* 0142A4 004142A4 8DADEFF8 */  lw          $t5, %lo(B_1000EFF8)($t5)
/* 0142A8 004142A8 ADB90118 */  sw          $t9, 0x118($t5)
/* 0142AC 004142AC 8F98865C */  lw          $t8, %got(waveList)($gp)
/* 0142B0 004142B0 8F180000 */  lw          $t8, 0x0($t8)
/* 0142B4 004142B4 17000006 */  bnez        $t8, .L004142D0
/* 0142B8 004142B8 00000000 */   nop
/* 0142BC 004142BC 8F888030 */  lw          $t0, %got(B_1000EFF8)($gp)
/* 0142C0 004142C0 8F81865C */  lw          $at, %got(waveList)($gp)
/* 0142C4 004142C4 8D08EFF8 */  lw          $t0, %lo(B_1000EFF8)($t0)
/* 0142C8 004142C8 10000006 */  b           .L004142E4
/* 0142CC 004142CC AC280000 */   sw         $t0, 0x0($at)
.L004142D0:
/* 0142D0 004142D0 8F8A8030 */  lw          $t2, %got(B_1000EFF8)($gp)
/* 0142D4 004142D4 8F898030 */  lw          $t1, %got(B_1000EFF4)($gp)
/* 0142D8 004142D8 8D4AEFF8 */  lw          $t2, %lo(B_1000EFF8)($t2)
/* 0142DC 004142DC 8D29EFF4 */  lw          $t1, %lo(B_1000EFF4)($t1)
/* 0142E0 004142E0 AD2A0000 */  sw          $t2, 0x0($t1)
.L004142E4:
/* 0142E4 004142E4 10000069 */  b           .L0041448C
/* 0142E8 004142E8 00000000 */   nop
.L004142EC:
/* 0142EC 004142EC 8F998118 */  lw          $t9, %call16(strdup)($gp)
/* 0142F0 004142F0 8E040000 */  lw          $a0, 0x0($s0)
/* 0142F4 004142F4 0320F809 */  jalr        $t9
/* 0142F8 004142F8 00000000 */   nop
/* 0142FC 004142FC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 014300 00414300 0040B825 */  move        $s7, $v0
/* 014304 00414304 8F8B8030 */  lw          $t3, %got(B_1000EFF8)($gp)
/* 014308 00414308 8D6BEFF8 */  lw          $t3, %lo(B_1000EFF8)($t3)
/* 01430C 0041430C 16E0000D */  bnez        $s7, .L00414344
/* 014310 00414310 AD770004 */   sw         $s7, 0x4($t3)
/* 014314 00414314 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 014318 00414318 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 01431C 0041431C 8F85802C */  lw          $a1, %got(STR_10006580)($gp)
/* 014320 00414320 24840020 */  addiu       $a0, $a0, 0x20
/* 014324 00414324 0320F809 */  jalr        $t9
/* 014328 00414328 24A56580 */   addiu      $a1, $a1, %lo(STR_10006580)
/* 01432C 0041432C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 014330 00414330 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 014334 00414334 24040001 */  addiu       $a0, $zero, 0x1
/* 014338 00414338 0320F809 */  jalr        $t9
/* 01433C 0041433C 00000000 */   nop
/* 014340 00414340 8FBC0038 */  lw          $gp, 0x38($sp)
.L00414344:
/* 014344 00414344 10000051 */  b           .L0041448C
/* 014348 00414348 00000000 */   nop
.L0041434C:
/* 01434C 0041434C 8F8F8658 */  lw          $t7, %got(segmentList)($gp)
/* 014350 00414350 8DEF0000 */  lw          $t7, 0x0($t7)
/* 014354 00414354 11E0000E */  beqz        $t7, .L00414390
/* 014358 00414358 AFAF0050 */   sw         $t7, 0x50($sp)
.L0041435C:
/* 01435C 0041435C 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 014360 00414360 8FAC0050 */  lw          $t4, 0x50($sp)
/* 014364 00414364 8E050000 */  lw          $a1, 0x0($s0)
/* 014368 00414368 0320F809 */  jalr        $t9
/* 01436C 0041436C 8D840004 */   lw         $a0, 0x4($t4)
/* 014370 00414370 14400003 */  bnez        $v0, .L00414380
/* 014374 00414374 8FBC0038 */   lw         $gp, 0x38($sp)
/* 014378 00414378 10000005 */  b           .L00414390
/* 01437C 0041437C 00000000 */   nop
.L00414380:
/* 014380 00414380 8FAE0050 */  lw          $t6, 0x50($sp)
/* 014384 00414384 8DD90000 */  lw          $t9, 0x0($t6)
/* 014388 00414388 1720FFF4 */  bnez        $t9, .L0041435C
/* 01438C 0041438C AFB90050 */   sw         $t9, 0x50($sp)
.L00414390:
/* 014390 00414390 8FAD0050 */  lw          $t5, 0x50($sp)
/* 014394 00414394 15A0000C */  bnez        $t5, .L004143C8
/* 014398 00414398 00000000 */   nop
/* 01439C 0041439C 8F998018 */  lw          $t9, %got(func_00412914)($gp)
/* 0143A0 004143A0 8F84802C */  lw          $a0, %got(STR_10006598)($gp)
/* 0143A4 004143A4 8E050000 */  lw          $a1, 0x0($s0)
/* 0143A8 004143A8 27392914 */  addiu       $t9, $t9, %lo(func_00412914)
/* 0143AC 004143AC 0320F809 */  jalr        $t9
/* 0143B0 004143B0 24846598 */   addiu      $a0, $a0, %lo(STR_10006598)
/* 0143B4 004143B4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0143B8 004143B8 10000038 */  b           .L0041449C
/* 0143BC 004143BC 24020001 */   addiu      $v0, $zero, 0x1
/* 0143C0 004143C0 10000030 */  b           .L00414484
/* 0143C4 004143C4 00000000 */   nop
.L004143C8:
/* 0143C8 004143C8 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 0143CC 004143CC 24040008 */  addiu       $a0, $zero, 0x8
/* 0143D0 004143D0 0320F809 */  jalr        $t9
/* 0143D4 004143D4 00000000 */   nop
/* 0143D8 004143D8 AFA2004C */  sw          $v0, 0x4C($sp)
/* 0143DC 004143DC 8FB8004C */  lw          $t8, 0x4C($sp)
/* 0143E0 004143E0 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0143E4 004143E4 1700000D */  bnez        $t8, .L0041441C
/* 0143E8 004143E8 00000000 */   nop
/* 0143EC 004143EC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 0143F0 004143F0 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 0143F4 004143F4 8F85802C */  lw          $a1, %got(STR_100065B0)($gp)
/* 0143F8 004143F8 24840020 */  addiu       $a0, $a0, 0x20
/* 0143FC 004143FC 0320F809 */  jalr        $t9
/* 014400 00414400 24A565B0 */   addiu      $a1, $a1, %lo(STR_100065B0)
/* 014404 00414404 8FBC0038 */  lw          $gp, 0x38($sp)
/* 014408 00414408 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 01440C 0041440C 24040001 */  addiu       $a0, $zero, 0x1
/* 014410 00414410 0320F809 */  jalr        $t9
/* 014414 00414414 00000000 */   nop
/* 014418 00414418 8FBC0038 */  lw          $gp, 0x38($sp)
.L0041441C:
/* 01441C 0041441C 8F888030 */  lw          $t0, %got(B_1000EFF8)($gp)
/* 014420 00414420 8FAA0050 */  lw          $t2, 0x50($sp)
/* 014424 00414424 8D08EFF8 */  lw          $t0, %lo(B_1000EFF8)($t0)
/* 014428 00414428 AD48000C */  sw          $t0, 0xC($t2)
/* 01442C 0041442C 8FA90050 */  lw          $t1, 0x50($sp)
/* 014430 00414430 8FAB004C */  lw          $t3, 0x4C($sp)
/* 014434 00414434 AD690004 */  sw          $t1, 0x4($t3)
/* 014438 00414438 8FAF004C */  lw          $t7, 0x4C($sp)
/* 01443C 0041443C ADE00000 */  sw          $zero, 0x0($t7)
/* 014440 00414440 8F8C8030 */  lw          $t4, %got(B_1000EFF8)($gp)
/* 014444 00414444 8D8CEFF8 */  lw          $t4, %lo(B_1000EFF8)($t4)
/* 014448 00414448 8D8E0008 */  lw          $t6, 0x8($t4)
/* 01444C 0041444C 15C00006 */  bnez        $t6, .L00414468
/* 014450 00414450 00000000 */   nop
/* 014454 00414454 8F8D8030 */  lw          $t5, %got(B_1000EFF8)($gp)
/* 014458 00414458 8FB9004C */  lw          $t9, 0x4C($sp)
/* 01445C 0041445C 8DADEFF8 */  lw          $t5, %lo(B_1000EFF8)($t5)
/* 014460 00414460 10000005 */  b           .L00414478
/* 014464 00414464 ADB90008 */   sw         $t9, 0x8($t5)
.L00414468:
/* 014468 00414468 8F888030 */  lw          $t0, %got(B_1000EFFC)($gp)
/* 01446C 0041446C 8FB8004C */  lw          $t8, 0x4C($sp)
/* 014470 00414470 8D08EFFC */  lw          $t0, %lo(B_1000EFFC)($t0)
/* 014474 00414474 AD180000 */  sw          $t8, 0x0($t0)
.L00414478:
/* 014478 00414478 8FAA004C */  lw          $t2, 0x4C($sp)
/* 01447C 0041447C 8F818030 */  lw          $at, %got(B_1000EFFC)($gp)
/* 014480 00414480 AC2AEFFC */  sw          $t2, %lo(B_1000EFFC)($at)
.L00414484:
/* 014484 00414484 10000001 */  b           .L0041448C
/* 014488 00414488 00000000 */   nop
.L0041448C:
/* 01448C 0041448C 1000F9CE */  b           .L00412BC8
/* 014490 00414490 00000000 */   nop
/* 014494 00414494 10000001 */  b           .L0041449C
/* 014498 00414498 00000000 */   nop
.L0041449C:
/* 01449C 0041449C 8FBF003C */  lw          $ra, 0x3C($sp)
/* 0144A0 004144A0 8FB00018 */  lw          $s0, 0x18($sp)
/* 0144A4 004144A4 8FB1001C */  lw          $s1, 0x1C($sp)
/* 0144A8 004144A8 8FB20020 */  lw          $s2, 0x20($sp)
/* 0144AC 004144AC 8FB30024 */  lw          $s3, 0x24($sp)
/* 0144B0 004144B0 8FB40028 */  lw          $s4, 0x28($sp)
/* 0144B4 004144B4 8FB5002C */  lw          $s5, 0x2C($sp)
/* 0144B8 004144B8 8FB60030 */  lw          $s6, 0x30($sp)
/* 0144BC 004144BC 8FB70034 */  lw          $s7, 0x34($sp)
/* 0144C0 004144C0 03E00008 */  jr          $ra
/* 0144C4 004144C4 27BD01A8 */   addiu      $sp, $sp, 0x1A8
/* 0144C8 004144C8 00000000 */  nop
/* 0144CC 004144CC 00000000 */  nop
