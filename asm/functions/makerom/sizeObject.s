.section .rodata
glabel STR_10004FD4
/* 044FD4 10004FD4 */ .asciz "Segment %s: alignment %x\n"
                      .balign 4

glabel STR_10004FF0
/* 044FF0 10004FF0 */ .asciz "Segment %s: romalign %x\n"
                      .balign 4

glabel STR_1000500C
/* 04500C 1000500C */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10005020
/* 045020 10005020 */ .asciz "Scanning %s\n"
                      .balign 4

glabel STR_10005030
/* 045030 10005030 */ .asciz "makerom: %s: not a valid ELF object file\n"
                      .balign 4

glabel STR_1000505C
/* 04505C 1000505C */ .asciz "makerom: %s: can't get section index %d\n"
                      .balign 4

glabel STR_10005088
/* 045088 10005088 */ .asciz "makerom: %s: detect unnamed section\n"
                      .balign 4

glabel STR_100050B0
/* 0450B0 100050B0 */ .asciz ".text"
                      .balign 4

glabel STR_100050B8
/* 0450B8 100050B8 */ .asciz "  text size  = %x\n"
                      .balign 4

glabel STR_100050CC
/* 0450CC 100050CC */ .asciz "       align = %x\n"
                      .balign 4

glabel STR_100050E0
/* 0450E0 100050E0 */ .asciz ".data"
                      .balign 4

glabel STR_100050E8
/* 0450E8 100050E8 */ .asciz ".rodata"
                      .balign 4

glabel STR_100050F0
/* 0450F0 100050F0 */ .asciz "  data&rodata size  = %x\n"
                      .balign 4

glabel STR_1000510C
/* 04510C 1000510C */ .asciz "       align = %x\n"
                      .balign 4

glabel STR_10005120
/* 045120 10005120 */ .asciz ".sdata"
                      .balign 4

glabel STR_10005128
/* 045128 10005128 */ .asciz "  sdata size  = %x\n"
                      .balign 4

glabel STR_1000513C
/* 04513C 1000513C */ .asciz "        align = %x\n"
                      .balign 4

glabel STR_10005150
/* 045150 10005150 */ .asciz ".sbss"
                      .balign 4

glabel STR_10005158
/* 045158 10005158 */ .asciz "  sbss size  = %x\n"
                      .balign 4

glabel STR_1000516C
/* 04516C 1000516C */ .asciz "       align = %x\n"
                      .balign 4

glabel STR_10005180
/* 045180 10005180 */ .asciz ".bss"
                      .balign 4

glabel STR_10005188
/* 045188 10005188 */ .asciz "  bss size  = %x\n"
                      .balign 4

glabel STR_1000519C
/* 04519C 1000519C */ .asciz "      align = %x\n"
                      .balign 4

.section .late_rodata
glabel jtbl_10005E68
/* 045E68 10005E68 F03FA758 */ .gpword .L0040D4B8
/* 045E6C 10005E6C F03FA6A0 */ .gpword .L0040D400
/* 045E70 10005E70 F03FA6FC */ .gpword .L0040D45C
/* 045E74 10005E74 F03FA780 */ .gpword .L0040D4E0
/* 045E78 10005E78 F03FA794 */ .gpword .L0040D4F4


.section .text
glabel sizeObject # 20
/* 00CB84 0040CB84 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00CB88 0040CB88 279C61DC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC061DC
/* 00CB8C 0040CB8C 0399E021 */  addu        $gp, $gp, $t9
/* 00CB90 0040CB90 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 00CB94 0040CB94 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00CB98 0040CB98 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00CB9C 0040CB9C AFA40050 */  sw          $a0, 0x50($sp)
/* 00CBA0 0040CBA0 240E0001 */  addiu       $t6, $zero, 0x1
/* 00CBA4 0040CBA4 AFAE0020 */  sw          $t6, 0x20($sp)
/* 00CBA8 0040CBA8 8FB80050 */  lw          $t8, 0x50($sp)
/* 00CBAC 0040CBAC 240F0010 */  addiu       $t7, $zero, 0x10
/* 00CBB0 0040CBB0 AF0F004C */  sw          $t7, 0x4C($t8)
/* 00CBB4 0040CBB4 8F998660 */  lw          $t9, %got(debug)($gp)
/* 00CBB8 0040CBB8 8F390000 */  lw          $t9, 0x0($t9)
/* 00CBBC 0040CBBC 1320001F */  beqz        $t9, .L0040CC3C
/* 00CBC0 0040CBC0 00000000 */   nop
/* 00CBC4 0040CBC4 8FA80050 */  lw          $t0, 0x50($sp)
/* 00CBC8 0040CBC8 24010010 */  addiu       $at, $zero, 0x10
/* 00CBCC 0040CBCC 8D090020 */  lw          $t1, 0x20($t0)
/* 00CBD0 0040CBD0 1121000B */  beq         $t1, $at, .L0040CC00
/* 00CBD4 0040CBD4 00000000 */   nop
/* 00CBD8 0040CBD8 11200009 */  beqz        $t1, .L0040CC00
/* 00CBDC 0040CBDC 00000000 */   nop
/* 00CBE0 0040CBE0 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00CBE4 0040CBE4 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00CBE8 0040CBE8 8F84802C */  lw          $a0, %got(STR_10004FD4)($gp)
/* 00CBEC 0040CBEC 8D450004 */  lw          $a1, 0x4($t2)
/* 00CBF0 0040CBF0 8D460020 */  lw          $a2, 0x20($t2)
/* 00CBF4 0040CBF4 0320F809 */  jalr        $t9
/* 00CBF8 0040CBF8 24844FD4 */   addiu      $a0, $a0, %lo(STR_10004FD4)
/* 00CBFC 0040CBFC 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040CC00:
/* 00CC00 0040CC00 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00CC04 0040CC04 24010010 */  addiu       $at, $zero, 0x10
/* 00CC08 0040CC08 8D6C0048 */  lw          $t4, 0x48($t3)
/* 00CC0C 0040CC0C 1181000B */  beq         $t4, $at, .L0040CC3C
/* 00CC10 0040CC10 00000000 */   nop
/* 00CC14 0040CC14 11800009 */  beqz        $t4, .L0040CC3C
/* 00CC18 0040CC18 00000000 */   nop
/* 00CC1C 0040CC1C 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00CC20 0040CC20 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00CC24 0040CC24 8F84802C */  lw          $a0, %got(STR_10004FF0)($gp)
/* 00CC28 0040CC28 8DA50004 */  lw          $a1, 0x4($t5)
/* 00CC2C 0040CC2C 8DA60048 */  lw          $a2, 0x48($t5)
/* 00CC30 0040CC30 0320F809 */  jalr        $t9
/* 00CC34 0040CC34 24844FF0 */   addiu      $a0, $a0, %lo(STR_10004FF0)
/* 00CC38 0040CC38 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040CC3C:
/* 00CC3C 0040CC3C 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00CC40 0040CC40 8DCF0008 */  lw          $t7, 0x8($t6)
/* 00CC44 0040CC44 11E001E1 */  beqz        $t7, .L0040D3CC
/* 00CC48 0040CC48 AFAF0030 */   sw         $t7, 0x30($sp)
.L0040CC4C:
/* 00CC4C 0040CC4C 8FB80030 */  lw          $t8, 0x30($sp)
/* 00CC50 0040CC50 AF000008 */  sw          $zero, 0x8($t8)
/* 00CC54 0040CC54 8FB90030 */  lw          $t9, 0x30($sp)
/* 00CC58 0040CC58 AF20000C */  sw          $zero, 0xC($t9)
/* 00CC5C 0040CC5C 8FA80030 */  lw          $t0, 0x30($sp)
/* 00CC60 0040CC60 AD000010 */  sw          $zero, 0x10($t0)
/* 00CC64 0040CC64 8FA90030 */  lw          $t1, 0x30($sp)
/* 00CC68 0040CC68 AD200014 */  sw          $zero, 0x14($t1)
/* 00CC6C 0040CC6C 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00CC70 0040CC70 AD400018 */  sw          $zero, 0x18($t2)
/* 00CC74 0040CC74 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00CC78 0040CC78 AD60001C */  sw          $zero, 0x1C($t3)
/* 00CC7C 0040CC7C 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00CC80 0040CC80 AD800020 */  sw          $zero, 0x20($t4)
/* 00CC84 0040CC84 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00CC88 0040CC88 ADA00024 */  sw          $zero, 0x24($t5)
/* 00CC8C 0040CC8C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00CC90 0040CC90 ADC00028 */  sw          $zero, 0x28($t6)
/* 00CC94 0040CC94 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00CC98 0040CC98 ADE0002C */  sw          $zero, 0x2C($t7)
/* 00CC9C 0040CC9C 8F9980B8 */  lw          $t9, %call16(open)($gp)
/* 00CCA0 0040CCA0 8FB80030 */  lw          $t8, 0x30($sp)
/* 00CCA4 0040CCA4 00002825 */  move        $a1, $zero
/* 00CCA8 0040CCA8 0320F809 */  jalr        $t9
/* 00CCAC 0040CCAC 8F040004 */   lw         $a0, 0x4($t8)
/* 00CCB0 0040CCB0 AFA20044 */  sw          $v0, 0x44($sp)
/* 00CCB4 0040CCB4 8FB90044 */  lw          $t9, 0x44($sp)
/* 00CCB8 0040CCB8 2401FFFF */  addiu       $at, $zero, -0x1
/* 00CCBC 0040CCBC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CCC0 0040CCC0 17210012 */  bne         $t9, $at, .L0040CD0C
/* 00CCC4 0040CCC4 00000000 */   nop
/* 00CCC8 0040CCC8 8F898050 */  lw          $t1, %got(errno)($gp)
/* 00CCCC 0040CCCC 8F8B8054 */  lw          $t3, %got(sys_errlist)($gp)
/* 00CCD0 0040CCD0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00CCD4 0040CCD4 8D290000 */  lw          $t1, 0x0($t1)
/* 00CCD8 0040CCD8 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00CCDC 0040CCDC 8F85802C */  lw          $a1, %got(STR_1000500C)($gp)
/* 00CCE0 0040CCE0 8FA80030 */  lw          $t0, 0x30($sp)
/* 00CCE4 0040CCE4 00095080 */  sll         $t2, $t1, 2
/* 00CCE8 0040CCE8 014B6021 */  addu        $t4, $t2, $t3
/* 00CCEC 0040CCEC 8D870000 */  lw          $a3, 0x0($t4)
/* 00CCF0 0040CCF0 24840020 */  addiu       $a0, $a0, 0x20
/* 00CCF4 0040CCF4 24A5500C */  addiu       $a1, $a1, %lo(STR_1000500C)
/* 00CCF8 0040CCF8 0320F809 */  jalr        $t9
/* 00CCFC 0040CCFC 8D060004 */   lw         $a2, 0x4($t0)
/* 00CD00 0040CD00 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CD04 0040CD04 1000035A */  b           .L0040DA70
/* 00CD08 0040CD08 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CD0C:
/* 00CD0C 0040CD0C 8F8D8660 */  lw          $t5, %got(debug)($gp)
/* 00CD10 0040CD10 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00CD14 0040CD14 11A00008 */  beqz        $t5, .L0040CD38
/* 00CD18 0040CD18 00000000 */   nop
/* 00CD1C 0040CD1C 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00CD20 0040CD20 8F84802C */  lw          $a0, %got(STR_10005020)($gp)
/* 00CD24 0040CD24 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00CD28 0040CD28 24845020 */  addiu       $a0, $a0, %lo(STR_10005020)
/* 00CD2C 0040CD2C 0320F809 */  jalr        $t9
/* 00CD30 0040CD30 8DC50004 */   lw         $a1, 0x4($t6)
/* 00CD34 0040CD34 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040CD38:
/* 00CD38 0040CD38 8F9981EC */  lw          $t9, %call16(elf_begin)($gp)
/* 00CD3C 0040CD3C 8FA40044 */  lw          $a0, 0x44($sp)
/* 00CD40 0040CD40 24050001 */  addiu       $a1, $zero, 0x1
/* 00CD44 0040CD44 0320F809 */  jalr        $t9
/* 00CD48 0040CD48 00003025 */   move       $a2, $zero
/* 00CD4C 0040CD4C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CD50 0040CD50 AFA20040 */  sw          $v0, 0x40($sp)
/* 00CD54 0040CD54 8F998214 */  lw          $t9, %call16(elf_kind)($gp)
/* 00CD58 0040CD58 8FA40040 */  lw          $a0, 0x40($sp)
/* 00CD5C 0040CD5C 0320F809 */  jalr        $t9
/* 00CD60 0040CD60 00000000 */   nop
/* 00CD64 0040CD64 24010003 */  addiu       $at, $zero, 0x3
/* 00CD68 0040CD68 1441000A */  bne         $v0, $at, .L0040CD94
/* 00CD6C 0040CD6C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00CD70 0040CD70 8F998204 */  lw          $t9, %call16(elf32_getehdr)($gp)
/* 00CD74 0040CD74 8FA40040 */  lw          $a0, 0x40($sp)
/* 00CD78 0040CD78 0320F809 */  jalr        $t9
/* 00CD7C 0040CD7C 00000000 */   nop
/* 00CD80 0040CD80 AFA20038 */  sw          $v0, 0x38($sp)
/* 00CD84 0040CD84 8FAF0038 */  lw          $t7, 0x38($sp)
/* 00CD88 0040CD88 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CD8C 0040CD8C 15E0000C */  bnez        $t7, .L0040CDC0
/* 00CD90 0040CD90 00000000 */   nop
.L0040CD94:
/* 00CD94 0040CD94 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00CD98 0040CD98 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00CD9C 0040CD9C 8F85802C */  lw          $a1, %got(STR_10005030)($gp)
/* 00CDA0 0040CDA0 8FB80030 */  lw          $t8, 0x30($sp)
/* 00CDA4 0040CDA4 24840020 */  addiu       $a0, $a0, 0x20
/* 00CDA8 0040CDA8 24A55030 */  addiu       $a1, $a1, %lo(STR_10005030)
/* 00CDAC 0040CDAC 0320F809 */  jalr        $t9
/* 00CDB0 0040CDB0 8F060004 */   lw         $a2, 0x4($t8)
/* 00CDB4 0040CDB4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CDB8 0040CDB8 1000032D */  b           .L0040DA70
/* 00CDBC 0040CDBC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CDC0:
/* 00CDC0 0040CDC0 8FA80038 */  lw          $t0, 0x38($sp)
/* 00CDC4 0040CDC4 24190001 */  addiu       $t9, $zero, 0x1
/* 00CDC8 0040CDC8 AFB9002C */  sw          $t9, 0x2C($sp)
/* 00CDCC 0040CDCC 95090030 */  lhu         $t1, 0x30($t0)
/* 00CDD0 0040CDD0 2D210002 */  sltiu       $at, $t1, 0x2
/* 00CDD4 0040CDD4 14200174 */  bnez        $at, .L0040D3A8
/* 00CDD8 0040CDD8 00000000 */   nop
.L0040CDDC:
/* 00CDDC 0040CDDC 8F998224 */  lw          $t9, %call16(_elf_getscn)($gp)
/* 00CDE0 0040CDE0 8FA40040 */  lw          $a0, 0x40($sp)
/* 00CDE4 0040CDE4 8FA5002C */  lw          $a1, 0x2C($sp)
/* 00CDE8 0040CDE8 0320F809 */  jalr        $t9
/* 00CDEC 0040CDEC 00000000 */   nop
/* 00CDF0 0040CDF0 AFA2003C */  sw          $v0, 0x3C($sp)
/* 00CDF4 0040CDF4 8FAA003C */  lw          $t2, 0x3C($sp)
/* 00CDF8 0040CDF8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CDFC 0040CDFC 1140000A */  beqz        $t2, .L0040CE28
/* 00CE00 0040CE00 00000000 */   nop
/* 00CE04 0040CE04 8F998210 */  lw          $t9, %call16(elf32_getshdr)($gp)
/* 00CE08 0040CE08 01402025 */  move        $a0, $t2
/* 00CE0C 0040CE0C 0320F809 */  jalr        $t9
/* 00CE10 0040CE10 00000000 */   nop
/* 00CE14 0040CE14 AFA20034 */  sw          $v0, 0x34($sp)
/* 00CE18 0040CE18 8FAB0034 */  lw          $t3, 0x34($sp)
/* 00CE1C 0040CE1C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CE20 0040CE20 1560000D */  bnez        $t3, .L0040CE58
/* 00CE24 0040CE24 00000000 */   nop
.L0040CE28:
/* 00CE28 0040CE28 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00CE2C 0040CE2C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00CE30 0040CE30 8F85802C */  lw          $a1, %got(STR_1000505C)($gp)
/* 00CE34 0040CE34 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00CE38 0040CE38 8FA7002C */  lw          $a3, 0x2C($sp)
/* 00CE3C 0040CE3C 24840020 */  addiu       $a0, $a0, 0x20
/* 00CE40 0040CE40 24A5505C */  addiu       $a1, $a1, %lo(STR_1000505C)
/* 00CE44 0040CE44 0320F809 */  jalr        $t9
/* 00CE48 0040CE48 8D860004 */   lw         $a2, 0x4($t4)
/* 00CE4C 0040CE4C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CE50 0040CE50 10000307 */  b           .L0040DA70
/* 00CE54 0040CE54 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CE58:
/* 00CE58 0040CE58 8F9981E8 */  lw          $t9, %call16(elf_strptr)($gp)
/* 00CE5C 0040CE5C 8FAD0038 */  lw          $t5, 0x38($sp)
/* 00CE60 0040CE60 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00CE64 0040CE64 8FA40040 */  lw          $a0, 0x40($sp)
/* 00CE68 0040CE68 95A50032 */  lhu         $a1, 0x32($t5)
/* 00CE6C 0040CE6C 0320F809 */  jalr        $t9
/* 00CE70 0040CE70 8DC60000 */   lw         $a2, 0x0($t6)
/* 00CE74 0040CE74 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CE78 0040CE78 AFA20028 */  sw          $v0, 0x28($sp)
/* 00CE7C 0040CE7C 8FAF0028 */  lw          $t7, 0x28($sp)
/* 00CE80 0040CE80 15E0000C */  bnez        $t7, .L0040CEB4
/* 00CE84 0040CE84 00000000 */   nop
/* 00CE88 0040CE88 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00CE8C 0040CE8C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00CE90 0040CE90 8F85802C */  lw          $a1, %got(STR_10005088)($gp)
/* 00CE94 0040CE94 8FB80030 */  lw          $t8, 0x30($sp)
/* 00CE98 0040CE98 24840020 */  addiu       $a0, $a0, 0x20
/* 00CE9C 0040CE9C 24A55088 */  addiu       $a1, $a1, %lo(STR_10005088)
/* 00CEA0 0040CEA0 0320F809 */  jalr        $t9
/* 00CEA4 0040CEA4 8F060004 */   lw         $a2, 0x4($t8)
/* 00CEA8 0040CEA8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CEAC 0040CEAC 100002F0 */  b           .L0040DA70
/* 00CEB0 0040CEB0 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040CEB4:
/* 00CEB4 0040CEB4 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 00CEB8 0040CEB8 8F85802C */  lw          $a1, %got(STR_100050B0)($gp)
/* 00CEBC 0040CEBC 8FA40028 */  lw          $a0, 0x28($sp)
/* 00CEC0 0040CEC0 0320F809 */  jalr        $t9
/* 00CEC4 0040CEC4 24A550B0 */   addiu      $a1, $a1, %lo(STR_100050B0)
/* 00CEC8 0040CEC8 14400037 */  bnez        $v0, .L0040CFA8
/* 00CECC 0040CECC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00CED0 0040CED0 8FB90050 */  lw          $t9, 0x50($sp)
/* 00CED4 0040CED4 8FA90034 */  lw          $t1, 0x34($sp)
/* 00CED8 0040CED8 8F28002C */  lw          $t0, 0x2C($t9)
/* 00CEDC 0040CEDC 8D2A0014 */  lw          $t2, 0x14($t1)
/* 00CEE0 0040CEE0 010A5821 */  addu        $t3, $t0, $t2
/* 00CEE4 0040CEE4 AF2B002C */  sw          $t3, 0x2C($t9)
/* 00CEE8 0040CEE8 8FAC0034 */  lw          $t4, 0x34($sp)
/* 00CEEC 0040CEEC 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00CEF0 0040CEF0 8D8D0020 */  lw          $t5, 0x20($t4)
/* 00CEF4 0040CEF4 ADCD001C */  sw          $t5, 0x1C($t6)
/* 00CEF8 0040CEF8 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00CEFC 0040CEFC 8FA90030 */  lw          $t1, 0x30($sp)
/* 00CF00 0040CF00 8DF80014 */  lw          $t8, 0x14($t7)
/* 00CF04 0040CF04 AD380008 */  sw          $t8, 0x8($t1)
/* 00CF08 0040CF08 8FA80030 */  lw          $t0, 0x30($sp)
/* 00CF0C 0040CF0C 8D0A0044 */  lw          $t2, 0x44($t0)
/* 00CF10 0040CF10 354B0001 */  ori         $t3, $t2, 0x1
/* 00CF14 0040CF14 AD0B0044 */  sw          $t3, 0x44($t0)
/* 00CF18 0040CF18 8FB90050 */  lw          $t9, 0x50($sp)
/* 00CF1C 0040CF1C 8F2C0060 */  lw          $t4, 0x60($t9)
/* 00CF20 0040CF20 358D0001 */  ori         $t5, $t4, 0x1
/* 00CF24 0040CF24 AF2D0060 */  sw          $t5, 0x60($t9)
/* 00CF28 0040CF28 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00CF2C 0040CF2C 8FB80050 */  lw          $t8, 0x50($sp)
/* 00CF30 0040CF30 8DCF001C */  lw          $t7, 0x1C($t6)
/* 00CF34 0040CF34 8F09004C */  lw          $t1, 0x4C($t8)
/* 00CF38 0040CF38 012F082B */  sltu        $at, $t1, $t7
/* 00CF3C 0040CF3C 10200005 */  beqz        $at, .L0040CF54
/* 00CF40 0040CF40 00000000 */   nop
/* 00CF44 0040CF44 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00CF48 0040CF48 8FA80050 */  lw          $t0, 0x50($sp)
/* 00CF4C 0040CF4C 8D4B001C */  lw          $t3, 0x1C($t2)
/* 00CF50 0040CF50 AD0B004C */  sw          $t3, 0x4C($t0)
.L0040CF54:
/* 00CF54 0040CF54 8F8C8660 */  lw          $t4, %got(debug)($gp)
/* 00CF58 0040CF58 8D8C0000 */  lw          $t4, 0x0($t4)
/* 00CF5C 0040CF5C 11800010 */  beqz        $t4, .L0040CFA0
/* 00CF60 0040CF60 00000000 */   nop
/* 00CF64 0040CF64 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00CF68 0040CF68 8F84802C */  lw          $a0, %got(STR_100050B8)($gp)
/* 00CF6C 0040CF6C 8FAD0034 */  lw          $t5, 0x34($sp)
/* 00CF70 0040CF70 248450B8 */  addiu       $a0, $a0, %lo(STR_100050B8)
/* 00CF74 0040CF74 0320F809 */  jalr        $t9
/* 00CF78 0040CF78 8DA50014 */   lw         $a1, 0x14($t5)
/* 00CF7C 0040CF7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00CF80 0040CF80 8FB90034 */  lw          $t9, 0x34($sp)
/* 00CF84 0040CF84 8F84802C */  lw          $a0, %got(STR_100050CC)($gp)
/* 00CF88 0040CF88 8F250020 */  lw          $a1, 0x20($t9)
/* 00CF8C 0040CF8C 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00CF90 0040CF90 248450CC */  addiu       $a0, $a0, %lo(STR_100050CC)
/* 00CF94 0040CF94 0320F809 */  jalr        $t9
/* 00CF98 0040CF98 00000000 */   nop
/* 00CF9C 0040CF9C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040CFA0:
/* 00CFA0 0040CFA0 100000F9 */  b           .L0040D388
/* 00CFA4 0040CFA4 00000000 */   nop
.L0040CFA8:
/* 00CFA8 0040CFA8 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 00CFAC 0040CFAC 8F85802C */  lw          $a1, %got(STR_100050E0)($gp)
/* 00CFB0 0040CFB0 8FA40028 */  lw          $a0, 0x28($sp)
/* 00CFB4 0040CFB4 0320F809 */  jalr        $t9
/* 00CFB8 0040CFB8 24A550E0 */   addiu      $a1, $a1, %lo(STR_100050E0)
/* 00CFBC 0040CFBC 10400008 */  beqz        $v0, .L0040CFE0
/* 00CFC0 0040CFC0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00CFC4 0040CFC4 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 00CFC8 0040CFC8 8F85802C */  lw          $a1, %got(STR_100050E8)($gp)
/* 00CFCC 0040CFCC 8FA40028 */  lw          $a0, 0x28($sp)
/* 00CFD0 0040CFD0 0320F809 */  jalr        $t9
/* 00CFD4 0040CFD4 24A550E8 */   addiu      $a1, $a1, %lo(STR_100050E8)
/* 00CFD8 0040CFD8 14400038 */  bnez        $v0, .L0040D0BC
/* 00CFDC 0040CFDC 8FBC0018 */   lw         $gp, 0x18($sp)
.L0040CFE0:
/* 00CFE0 0040CFE0 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00CFE4 0040CFE4 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00CFE8 0040CFE8 8DD80030 */  lw          $t8, 0x30($t6)
/* 00CFEC 0040CFEC 8DE90014 */  lw          $t1, 0x14($t7)
/* 00CFF0 0040CFF0 03095021 */  addu        $t2, $t8, $t1
/* 00CFF4 0040CFF4 ADCA0030 */  sw          $t2, 0x30($t6)
/* 00CFF8 0040CFF8 8FAB0034 */  lw          $t3, 0x34($sp)
/* 00CFFC 0040CFFC 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00D000 0040D000 8D680020 */  lw          $t0, 0x20($t3)
/* 00D004 0040D004 AD880020 */  sw          $t0, 0x20($t4)
/* 00D008 0040D008 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00D00C 0040D00C 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00D010 0040D010 8DB9000C */  lw          $t9, 0xC($t5)
/* 00D014 0040D014 8DF80014 */  lw          $t8, 0x14($t7)
/* 00D018 0040D018 03384821 */  addu        $t1, $t9, $t8
/* 00D01C 0040D01C ADA9000C */  sw          $t1, 0xC($t5)
/* 00D020 0040D020 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00D024 0040D024 8D4E0044 */  lw          $t6, 0x44($t2)
/* 00D028 0040D028 35CB0002 */  ori         $t3, $t6, 0x2
/* 00D02C 0040D02C AD4B0044 */  sw          $t3, 0x44($t2)
/* 00D030 0040D030 8FA80050 */  lw          $t0, 0x50($sp)
/* 00D034 0040D034 8D0C0060 */  lw          $t4, 0x60($t0)
/* 00D038 0040D038 358F0002 */  ori         $t7, $t4, 0x2
/* 00D03C 0040D03C AD0F0060 */  sw          $t7, 0x60($t0)
/* 00D040 0040D040 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D044 0040D044 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D048 0040D048 8F380020 */  lw          $t8, 0x20($t9)
/* 00D04C 0040D04C 8D2D0050 */  lw          $t5, 0x50($t1)
/* 00D050 0040D050 01B8082B */  sltu        $at, $t5, $t8
/* 00D054 0040D054 10200005 */  beqz        $at, .L0040D06C
/* 00D058 0040D058 00000000 */   nop
/* 00D05C 0040D05C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00D060 0040D060 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D064 0040D064 8DCB0020 */  lw          $t3, 0x20($t6)
/* 00D068 0040D068 AD4B0050 */  sw          $t3, 0x50($t2)
.L0040D06C:
/* 00D06C 0040D06C 8F8C8660 */  lw          $t4, %got(debug)($gp)
/* 00D070 0040D070 8D8C0000 */  lw          $t4, 0x0($t4)
/* 00D074 0040D074 1180000F */  beqz        $t4, .L0040D0B4
/* 00D078 0040D078 00000000 */   nop
/* 00D07C 0040D07C 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00D080 0040D080 8F84802C */  lw          $a0, %got(STR_100050F0)($gp)
/* 00D084 0040D084 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00D088 0040D088 248450F0 */  addiu       $a0, $a0, %lo(STR_100050F0)
/* 00D08C 0040D08C 0320F809 */  jalr        $t9
/* 00D090 0040D090 8DE50014 */   lw         $a1, 0x14($t7)
/* 00D094 0040D094 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D098 0040D098 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00D09C 0040D09C 8F84802C */  lw          $a0, %got(STR_1000510C)($gp)
/* 00D0A0 0040D0A0 8FA80034 */  lw          $t0, 0x34($sp)
/* 00D0A4 0040D0A4 2484510C */  addiu       $a0, $a0, %lo(STR_1000510C)
/* 00D0A8 0040D0A8 0320F809 */  jalr        $t9
/* 00D0AC 0040D0AC 8D050020 */   lw         $a1, 0x20($t0)
/* 00D0B0 0040D0B0 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040D0B4:
/* 00D0B4 0040D0B4 100000B4 */  b           .L0040D388
/* 00D0B8 0040D0B8 00000000 */   nop
.L0040D0BC:
/* 00D0BC 0040D0BC 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 00D0C0 0040D0C0 8F85802C */  lw          $a1, %got(STR_10005120)($gp)
/* 00D0C4 0040D0C4 8FA40028 */  lw          $a0, 0x28($sp)
/* 00D0C8 0040D0C8 0320F809 */  jalr        $t9
/* 00D0CC 0040D0CC 24A55120 */   addiu      $a1, $a1, %lo(STR_10005120)
/* 00D0D0 0040D0D0 14400037 */  bnez        $v0, .L0040D1B0
/* 00D0D4 0040D0D4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00D0D8 0040D0D8 8FB90050 */  lw          $t9, 0x50($sp)
/* 00D0DC 0040D0DC 8FB80034 */  lw          $t8, 0x34($sp)
/* 00D0E0 0040D0E0 8F290034 */  lw          $t1, 0x34($t9)
/* 00D0E4 0040D0E4 8F0D0014 */  lw          $t5, 0x14($t8)
/* 00D0E8 0040D0E8 012D7021 */  addu        $t6, $t1, $t5
/* 00D0EC 0040D0EC AF2E0034 */  sw          $t6, 0x34($t9)
/* 00D0F0 0040D0F0 8FAB0034 */  lw          $t3, 0x34($sp)
/* 00D0F4 0040D0F4 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00D0F8 0040D0F8 8D6A0020 */  lw          $t2, 0x20($t3)
/* 00D0FC 0040D0FC AD8A0024 */  sw          $t2, 0x24($t4)
/* 00D100 0040D100 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00D104 0040D104 8FB80030 */  lw          $t8, 0x30($sp)
/* 00D108 0040D108 8DE80014 */  lw          $t0, 0x14($t7)
/* 00D10C 0040D10C AF080010 */  sw          $t0, 0x10($t8)
/* 00D110 0040D110 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D114 0040D114 8D2D0060 */  lw          $t5, 0x60($t1)
/* 00D118 0040D118 35AE0004 */  ori         $t6, $t5, 0x4
/* 00D11C 0040D11C AD2E0060 */  sw          $t6, 0x60($t1)
/* 00D120 0040D120 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D124 0040D124 8F2B0044 */  lw          $t3, 0x44($t9)
/* 00D128 0040D128 356A0004 */  ori         $t2, $t3, 0x4
/* 00D12C 0040D12C AF2A0044 */  sw          $t2, 0x44($t9)
/* 00D130 0040D130 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00D134 0040D134 8FA80050 */  lw          $t0, 0x50($sp)
/* 00D138 0040D138 8D8F0024 */  lw          $t7, 0x24($t4)
/* 00D13C 0040D13C 8D180054 */  lw          $t8, 0x54($t0)
/* 00D140 0040D140 030F082B */  sltu        $at, $t8, $t7
/* 00D144 0040D144 10200005 */  beqz        $at, .L0040D15C
/* 00D148 0040D148 00000000 */   nop
/* 00D14C 0040D14C 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00D150 0040D150 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D154 0040D154 8DAE0024 */  lw          $t6, 0x24($t5)
/* 00D158 0040D158 AD2E0054 */  sw          $t6, 0x54($t1)
.L0040D15C:
/* 00D15C 0040D15C 8F8B8660 */  lw          $t3, %got(debug)($gp)
/* 00D160 0040D160 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00D164 0040D164 11600010 */  beqz        $t3, .L0040D1A8
/* 00D168 0040D168 00000000 */   nop
/* 00D16C 0040D16C 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00D170 0040D170 8F84802C */  lw          $a0, %got(STR_10005128)($gp)
/* 00D174 0040D174 8FAA0034 */  lw          $t2, 0x34($sp)
/* 00D178 0040D178 24845128 */  addiu       $a0, $a0, %lo(STR_10005128)
/* 00D17C 0040D17C 0320F809 */  jalr        $t9
/* 00D180 0040D180 8D450014 */   lw         $a1, 0x14($t2)
/* 00D184 0040D184 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D188 0040D188 8FB90034 */  lw          $t9, 0x34($sp)
/* 00D18C 0040D18C 8F84802C */  lw          $a0, %got(STR_1000513C)($gp)
/* 00D190 0040D190 8F250020 */  lw          $a1, 0x20($t9)
/* 00D194 0040D194 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00D198 0040D198 2484513C */  addiu       $a0, $a0, %lo(STR_1000513C)
/* 00D19C 0040D19C 0320F809 */  jalr        $t9
/* 00D1A0 0040D1A0 00000000 */   nop
/* 00D1A4 0040D1A4 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040D1A8:
/* 00D1A8 0040D1A8 10000077 */  b           .L0040D388
/* 00D1AC 0040D1AC 00000000 */   nop
.L0040D1B0:
/* 00D1B0 0040D1B0 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 00D1B4 0040D1B4 8F85802C */  lw          $a1, %got(STR_10005150)($gp)
/* 00D1B8 0040D1B8 8FA40028 */  lw          $a0, 0x28($sp)
/* 00D1BC 0040D1BC 0320F809 */  jalr        $t9
/* 00D1C0 0040D1C0 24A55150 */   addiu      $a1, $a1, %lo(STR_10005150)
/* 00D1C4 0040D1C4 14400036 */  bnez        $v0, .L0040D2A0
/* 00D1C8 0040D1C8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00D1CC 0040D1CC 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D1D0 0040D1D0 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00D1D4 0040D1D4 8D880038 */  lw          $t0, 0x38($t4)
/* 00D1D8 0040D1D8 8DF80014 */  lw          $t8, 0x14($t7)
/* 00D1DC 0040D1DC 01186821 */  addu        $t5, $t0, $t8
/* 00D1E0 0040D1E0 AD8D0038 */  sw          $t5, 0x38($t4)
/* 00D1E4 0040D1E4 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00D1E8 0040D1E8 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00D1EC 0040D1EC 8DC90020 */  lw          $t1, 0x20($t6)
/* 00D1F0 0040D1F0 AD690028 */  sw          $t1, 0x28($t3)
/* 00D1F4 0040D1F4 8FAA0034 */  lw          $t2, 0x34($sp)
/* 00D1F8 0040D1F8 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D1FC 0040D1FC 8D590014 */  lw          $t9, 0x14($t2)
/* 00D200 0040D200 ADF90014 */  sw          $t9, 0x14($t7)
/* 00D204 0040D204 8FA80030 */  lw          $t0, 0x30($sp)
/* 00D208 0040D208 8D180044 */  lw          $t8, 0x44($t0)
/* 00D20C 0040D20C 370D0010 */  ori         $t5, $t8, 0x10
/* 00D210 0040D210 AD0D0044 */  sw          $t5, 0x44($t0)
/* 00D214 0040D214 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D218 0040D218 8D8E0060 */  lw          $t6, 0x60($t4)
/* 00D21C 0040D21C 35C90010 */  ori         $t1, $t6, 0x10
/* 00D220 0040D220 AD890060 */  sw          $t1, 0x60($t4)
/* 00D224 0040D224 8FAB0030 */  lw          $t3, 0x30($sp)
/* 00D228 0040D228 8FB90050 */  lw          $t9, 0x50($sp)
/* 00D22C 0040D22C 8D6A0028 */  lw          $t2, 0x28($t3)
/* 00D230 0040D230 8F2F0058 */  lw          $t7, 0x58($t9)
/* 00D234 0040D234 01EA082B */  sltu        $at, $t7, $t2
/* 00D238 0040D238 10200005 */  beqz        $at, .L0040D250
/* 00D23C 0040D23C 00000000 */   nop
/* 00D240 0040D240 8FB80030 */  lw          $t8, 0x30($sp)
/* 00D244 0040D244 8FA80050 */  lw          $t0, 0x50($sp)
/* 00D248 0040D248 8F0D0028 */  lw          $t5, 0x28($t8)
/* 00D24C 0040D24C AD0D0058 */  sw          $t5, 0x58($t0)
.L0040D250:
/* 00D250 0040D250 8F8E8660 */  lw          $t6, %got(debug)($gp)
/* 00D254 0040D254 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00D258 0040D258 11C0000F */  beqz        $t6, .L0040D298
/* 00D25C 0040D25C 00000000 */   nop
/* 00D260 0040D260 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00D264 0040D264 8F84802C */  lw          $a0, %got(STR_10005158)($gp)
/* 00D268 0040D268 8FA90034 */  lw          $t1, 0x34($sp)
/* 00D26C 0040D26C 24845158 */  addiu       $a0, $a0, %lo(STR_10005158)
/* 00D270 0040D270 0320F809 */  jalr        $t9
/* 00D274 0040D274 8D250014 */   lw         $a1, 0x14($t1)
/* 00D278 0040D278 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D27C 0040D27C 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00D280 0040D280 8F84802C */  lw          $a0, %got(STR_1000516C)($gp)
/* 00D284 0040D284 8FAC0034 */  lw          $t4, 0x34($sp)
/* 00D288 0040D288 2484516C */  addiu       $a0, $a0, %lo(STR_1000516C)
/* 00D28C 0040D28C 0320F809 */  jalr        $t9
/* 00D290 0040D290 8D850020 */   lw         $a1, 0x20($t4)
/* 00D294 0040D294 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040D298:
/* 00D298 0040D298 1000003B */  b           .L0040D388
/* 00D29C 0040D29C 00000000 */   nop
.L0040D2A0:
/* 00D2A0 0040D2A0 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 00D2A4 0040D2A4 8F85802C */  lw          $a1, %got(STR_10005180)($gp)
/* 00D2A8 0040D2A8 8FA40028 */  lw          $a0, 0x28($sp)
/* 00D2AC 0040D2AC 0320F809 */  jalr        $t9
/* 00D2B0 0040D2B0 24A55180 */   addiu      $a1, $a1, %lo(STR_10005180)
/* 00D2B4 0040D2B4 14400034 */  bnez        $v0, .L0040D388
/* 00D2B8 0040D2B8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00D2BC 0040D2BC 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00D2C0 0040D2C0 8FAA0034 */  lw          $t2, 0x34($sp)
/* 00D2C4 0040D2C4 8D79003C */  lw          $t9, 0x3C($t3)
/* 00D2C8 0040D2C8 8D4F0014 */  lw          $t7, 0x14($t2)
/* 00D2CC 0040D2CC 032FC021 */  addu        $t8, $t9, $t7
/* 00D2D0 0040D2D0 AD78003C */  sw          $t8, 0x3C($t3)
/* 00D2D4 0040D2D4 8FAD0034 */  lw          $t5, 0x34($sp)
/* 00D2D8 0040D2D8 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00D2DC 0040D2DC 8DA80020 */  lw          $t0, 0x20($t5)
/* 00D2E0 0040D2E0 ADC8002C */  sw          $t0, 0x2C($t6)
/* 00D2E4 0040D2E4 8FA90034 */  lw          $t1, 0x34($sp)
/* 00D2E8 0040D2E8 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00D2EC 0040D2EC 8D2C0014 */  lw          $t4, 0x14($t1)
/* 00D2F0 0040D2F0 AD4C0018 */  sw          $t4, 0x18($t2)
/* 00D2F4 0040D2F4 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D2F8 0040D2F8 8F2F0044 */  lw          $t7, 0x44($t9)
/* 00D2FC 0040D2FC 35F80008 */  ori         $t8, $t7, 0x8
/* 00D300 0040D300 AF380044 */  sw          $t8, 0x44($t9)
/* 00D304 0040D304 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00D308 0040D308 8D6D0060 */  lw          $t5, 0x60($t3)
/* 00D30C 0040D30C 35A80008 */  ori         $t0, $t5, 0x8
/* 00D310 0040D310 AD680060 */  sw          $t0, 0x60($t3)
/* 00D314 0040D314 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00D318 0040D318 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D31C 0040D31C 8DC9002C */  lw          $t1, 0x2C($t6)
/* 00D320 0040D320 8D8A005C */  lw          $t2, 0x5C($t4)
/* 00D324 0040D324 0149082B */  sltu        $at, $t2, $t1
/* 00D328 0040D328 10200005 */  beqz        $at, .L0040D340
/* 00D32C 0040D32C 00000000 */   nop
/* 00D330 0040D330 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D334 0040D334 8FB90050 */  lw          $t9, 0x50($sp)
/* 00D338 0040D338 8DF8002C */  lw          $t8, 0x2C($t7)
/* 00D33C 0040D33C AF38005C */  sw          $t8, 0x5C($t9)
.L0040D340:
/* 00D340 0040D340 8F8D8660 */  lw          $t5, %got(debug)($gp)
/* 00D344 0040D344 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00D348 0040D348 11A0000F */  beqz        $t5, .L0040D388
/* 00D34C 0040D34C 00000000 */   nop
/* 00D350 0040D350 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00D354 0040D354 8F84802C */  lw          $a0, %got(STR_10005188)($gp)
/* 00D358 0040D358 8FA80034 */  lw          $t0, 0x34($sp)
/* 00D35C 0040D35C 24845188 */  addiu       $a0, $a0, %lo(STR_10005188)
/* 00D360 0040D360 0320F809 */  jalr        $t9
/* 00D364 0040D364 8D050014 */   lw         $a1, 0x14($t0)
/* 00D368 0040D368 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D36C 0040D36C 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00D370 0040D370 8F84802C */  lw          $a0, %got(STR_1000519C)($gp)
/* 00D374 0040D374 8FAB0034 */  lw          $t3, 0x34($sp)
/* 00D378 0040D378 2484519C */  addiu       $a0, $a0, %lo(STR_1000519C)
/* 00D37C 0040D37C 0320F809 */  jalr        $t9
/* 00D380 0040D380 8D650020 */   lw         $a1, 0x20($t3)
/* 00D384 0040D384 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040D388:
/* 00D388 0040D388 8FAE002C */  lw          $t6, 0x2C($sp)
/* 00D38C 0040D38C 8FA90038 */  lw          $t1, 0x38($sp)
/* 00D390 0040D390 25CC0001 */  addiu       $t4, $t6, 0x1
/* 00D394 0040D394 AFAC002C */  sw          $t4, 0x2C($sp)
/* 00D398 0040D398 952A0030 */  lhu         $t2, 0x30($t1)
/* 00D39C 0040D39C 018A082B */  sltu        $at, $t4, $t2
/* 00D3A0 0040D3A0 1420FE8E */  bnez        $at, .L0040CDDC
/* 00D3A4 0040D3A4 00000000 */   nop
.L0040D3A8:
/* 00D3A8 0040D3A8 8F9980C4 */  lw          $t9, %call16(close)($gp)
/* 00D3AC 0040D3AC 8FA40044 */  lw          $a0, 0x44($sp)
/* 00D3B0 0040D3B0 0320F809 */  jalr        $t9
/* 00D3B4 0040D3B4 00000000 */   nop
/* 00D3B8 0040D3B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D3BC 0040D3BC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D3C0 0040D3C0 8DF80000 */  lw          $t8, 0x0($t7)
/* 00D3C4 0040D3C4 1700FE21 */  bnez        $t8, .L0040CC4C
/* 00D3C8 0040D3C8 AFB80030 */   sw         $t8, 0x30($sp)
.L0040D3CC:
/* 00D3CC 0040D3CC 8FB90050 */  lw          $t9, 0x50($sp)
/* 00D3D0 0040D3D0 8F2D0014 */  lw          $t5, 0x14($t9)
/* 00D3D4 0040D3D4 25A8FFFF */  addiu       $t0, $t5, -0x1
/* 00D3D8 0040D3D8 2D010005 */  sltiu       $at, $t0, 0x5
/* 00D3DC 0040D3DC 1020004A */  beqz        $at, .L0040D508
/* 00D3E0 0040D3E0 00000000 */   nop
/* 00D3E4 0040D3E4 8F81802C */  lw          $at, %got(jtbl_10005E68)($gp)
/* 00D3E8 0040D3E8 00084080 */  sll         $t0, $t0, 2
/* 00D3EC 0040D3EC 00280821 */  addu        $at, $at, $t0
/* 00D3F0 0040D3F0 8C285E68 */  lw          $t0, %lo(jtbl_10005E68)($at)
/* 00D3F4 0040D3F4 011C4021 */  addu        $t0, $t0, $gp
/* 00D3F8 0040D3F8 01000008 */  jr          $t0
/* 00D3FC 0040D3FC 00000000 */   nop
.L0040D400:
/* 00D400 0040D400 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00D404 0040D404 8D6E0018 */  lw          $t6, 0x18($t3)
/* 00D408 0040D408 8DC90010 */  lw          $t1, 0x10($t6)
/* 00D40C 0040D40C 8DCC0040 */  lw          $t4, 0x40($t6)
/* 00D410 0040D410 012C5021 */  addu        $t2, $t1, $t4
/* 00D414 0040D414 AFAA004C */  sw          $t2, 0x4C($sp)
/* 00D418 0040D418 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00D41C 0040D41C 8DF8001C */  lw          $t8, 0x1C($t7)
/* 00D420 0040D420 8F190010 */  lw          $t9, 0x10($t8)
/* 00D424 0040D424 8F0D0040 */  lw          $t5, 0x40($t8)
/* 00D428 0040D428 032D4021 */  addu        $t0, $t9, $t5
/* 00D42C 0040D42C AFA80048 */  sw          $t0, 0x48($sp)
/* 00D430 0040D430 8FAB004C */  lw          $t3, 0x4C($sp)
/* 00D434 0040D434 8FAE0048 */  lw          $t6, 0x48($sp)
/* 00D438 0040D438 01CB082B */  sltu        $at, $t6, $t3
/* 00D43C 0040D43C 10200003 */  beqz        $at, .L0040D44C
/* 00D440 0040D440 00000000 */   nop
/* 00D444 0040D444 10000003 */  b           .L0040D454
/* 00D448 0040D448 AFAB0024 */   sw         $t3, 0x24($sp)
.L0040D44C:
/* 00D44C 0040D44C 8FA90048 */  lw          $t1, 0x48($sp)
/* 00D450 0040D450 AFA90024 */  sw          $t1, 0x24($sp)
.L0040D454:
/* 00D454 0040D454 1000002E */  b           .L0040D510
/* 00D458 0040D458 00000000 */   nop
.L0040D45C:
/* 00D45C 0040D45C 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D460 0040D460 8D8A0018 */  lw          $t2, 0x18($t4)
/* 00D464 0040D464 8D4F0010 */  lw          $t7, 0x10($t2)
/* 00D468 0040D468 8D580040 */  lw          $t8, 0x40($t2)
/* 00D46C 0040D46C 01F8C821 */  addu        $t9, $t7, $t8
/* 00D470 0040D470 AFB9004C */  sw          $t9, 0x4C($sp)
/* 00D474 0040D474 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00D478 0040D478 8DA8001C */  lw          $t0, 0x1C($t5)
/* 00D47C 0040D47C 8D0E0010 */  lw          $t6, 0x10($t0)
/* 00D480 0040D480 8D0B0040 */  lw          $t3, 0x40($t0)
/* 00D484 0040D484 01CB4821 */  addu        $t1, $t6, $t3
/* 00D488 0040D488 AFA90048 */  sw          $t1, 0x48($sp)
/* 00D48C 0040D48C 8FAC004C */  lw          $t4, 0x4C($sp)
/* 00D490 0040D490 8FAA0048 */  lw          $t2, 0x48($sp)
/* 00D494 0040D494 018A082B */  sltu        $at, $t4, $t2
/* 00D498 0040D498 10200003 */  beqz        $at, .L0040D4A8
/* 00D49C 0040D49C 00000000 */   nop
/* 00D4A0 0040D4A0 10000003 */  b           .L0040D4B0
/* 00D4A4 0040D4A4 AFAC0024 */   sw         $t4, 0x24($sp)
.L0040D4A8:
/* 00D4A8 0040D4A8 8FAF0048 */  lw          $t7, 0x48($sp)
/* 00D4AC 0040D4AC AFAF0024 */  sw          $t7, 0x24($sp)
.L0040D4B0:
/* 00D4B0 0040D4B0 10000017 */  b           .L0040D510
/* 00D4B4 0040D4B4 00000000 */   nop
.L0040D4B8:
/* 00D4B8 0040D4B8 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D4BC 0040D4BC 8F190018 */  lw          $t9, 0x18($t8)
/* 00D4C0 0040D4C0 8F2D0010 */  lw          $t5, 0x10($t9)
/* 00D4C4 0040D4C4 8F280040 */  lw          $t0, 0x40($t9)
/* 00D4C8 0040D4C8 01A87021 */  addu        $t6, $t5, $t0
/* 00D4CC 0040D4CC AFAE004C */  sw          $t6, 0x4C($sp)
/* 00D4D0 0040D4D0 8FAB004C */  lw          $t3, 0x4C($sp)
/* 00D4D4 0040D4D4 AFAB0024 */  sw          $t3, 0x24($sp)
/* 00D4D8 0040D4D8 1000000D */  b           .L0040D510
/* 00D4DC 0040D4DC 00000000 */   nop
.L0040D4E0:
/* 00D4E0 0040D4E0 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D4E4 0040D4E4 8D2A0010 */  lw          $t2, 0x10($t1)
/* 00D4E8 0040D4E8 AFAA0024 */  sw          $t2, 0x24($sp)
/* 00D4EC 0040D4EC 10000008 */  b           .L0040D510
/* 00D4F0 0040D4F0 00000000 */   nop
.L0040D4F4:
/* 00D4F4 0040D4F4 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D4F8 0040D4F8 8D8F0010 */  lw          $t7, 0x10($t4)
/* 00D4FC 0040D4FC AFAF0024 */  sw          $t7, 0x24($sp)
/* 00D500 0040D500 10000003 */  b           .L0040D510
/* 00D504 0040D504 00000000 */   nop
.L0040D508:
/* 00D508 0040D508 10000001 */  b           .L0040D510
/* 00D50C 0040D50C 00000000 */   nop
.L0040D510:
/* 00D510 0040D510 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D514 0040D514 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D518 0040D518 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D51C 0040D51C 0320F809 */  jalr        $t9
/* 00D520 0040D520 8F040020 */   lw         $a0, 0x20($t8)
/* 00D524 0040D524 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D528 0040D528 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D52C 0040D52C 8FB90024 */  lw          $t9, 0x24($sp)
/* 00D530 0040D530 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00D534 0040D534 ADB90010 */  sw          $t9, 0x10($t5)
/* 00D538 0040D538 8FA80050 */  lw          $t0, 0x50($sp)
/* 00D53C 0040D53C 8D0E0028 */  lw          $t6, 0x28($t0)
/* 00D540 0040D540 31CB0001 */  andi        $t3, $t6, 0x1
/* 00D544 0040D544 11600018 */  beqz        $t3, .L0040D5A8
/* 00D548 0040D548 00000000 */   nop
/* 00D54C 0040D54C 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D550 0040D550 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D554 0040D554 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D558 0040D558 0320F809 */  jalr        $t9
/* 00D55C 0040D55C 8D24004C */   lw         $a0, 0x4C($t1)
/* 00D560 0040D560 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D564 0040D564 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D568 0040D568 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D56C 0040D56C 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D570 0040D570 8D44004C */  lw          $a0, 0x4C($t2)
/* 00D574 0040D574 0320F809 */  jalr        $t9
/* 00D578 0040D578 8D450024 */   lw         $a1, 0x24($t2)
/* 00D57C 0040D57C 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D580 0040D580 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D584 0040D584 AD820024 */  sw          $v0, 0x24($t4)
/* 00D588 0040D588 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00D58C 0040D58C 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D590 0040D590 8DE40020 */  lw          $a0, 0x20($t7)
/* 00D594 0040D594 0320F809 */  jalr        $t9
/* 00D598 0040D598 8DE50024 */   lw         $a1, 0x24($t7)
/* 00D59C 0040D59C 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D5A0 0040D5A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D5A4 0040D5A4 AF020024 */  sw          $v0, 0x24($t8)
.L0040D5A8:
/* 00D5A8 0040D5A8 8FB90050 */  lw          $t9, 0x50($sp)
/* 00D5AC 0040D5AC 8F2D0060 */  lw          $t5, 0x60($t9)
/* 00D5B0 0040D5B0 31A80001 */  andi        $t0, $t5, 0x1
/* 00D5B4 0040D5B4 1100002D */  beqz        $t0, .L0040D66C
/* 00D5B8 0040D5B8 00000000 */   nop
/* 00D5BC 0040D5BC 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D5C0 0040D5C0 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D5C4 0040D5C4 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D5C8 0040D5C8 0320F809 */  jalr        $t9
/* 00D5CC 0040D5CC 8DC4004C */   lw         $a0, 0x4C($t6)
/* 00D5D0 0040D5D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D5D4 0040D5D4 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D5D8 0040D5D8 8FAB0024 */  lw          $t3, 0x24($sp)
/* 00D5DC 0040D5DC 8FA90050 */  lw          $t1, 0x50($sp)
/* 00D5E0 0040D5E0 AD2B0064 */  sw          $t3, 0x64($t1)
/* 00D5E4 0040D5E4 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00D5E8 0040D5E8 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D5EC 0040D5EC AD8A0010 */  sw          $t2, 0x10($t4)
/* 00D5F0 0040D5F0 AFA00020 */  sw          $zero, 0x20($sp)
/* 00D5F4 0040D5F4 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00D5F8 0040D5F8 8DF80008 */  lw          $t8, 0x8($t7)
/* 00D5FC 0040D5FC 13000019 */  beqz        $t8, .L0040D664
/* 00D600 0040D600 AFB80030 */   sw         $t8, 0x30($sp)
.L0040D604:
/* 00D604 0040D604 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D608 0040D608 8F2D0044 */  lw          $t5, 0x44($t9)
/* 00D60C 0040D60C 31A80001 */  andi        $t0, $t5, 0x1
/* 00D610 0040D610 11000010 */  beqz        $t0, .L0040D654
/* 00D614 0040D614 00000000 */   nop
/* 00D618 0040D618 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D61C 0040D61C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00D620 0040D620 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D624 0040D624 0320F809 */  jalr        $t9
/* 00D628 0040D628 8DC4001C */   lw         $a0, 0x1C($t6)
/* 00D62C 0040D62C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D630 0040D630 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D634 0040D634 8FAB0024 */  lw          $t3, 0x24($sp)
/* 00D638 0040D638 8FA90030 */  lw          $t1, 0x30($sp)
/* 00D63C 0040D63C AD2B0030 */  sw          $t3, 0x30($t1)
/* 00D640 0040D640 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00D644 0040D644 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00D648 0040D648 8D8F0008 */  lw          $t7, 0x8($t4)
/* 00D64C 0040D64C 014FC021 */  addu        $t8, $t2, $t7
/* 00D650 0040D650 AFB80024 */  sw          $t8, 0x24($sp)
.L0040D654:
/* 00D654 0040D654 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D658 0040D658 8F2D0000 */  lw          $t5, 0x0($t9)
/* 00D65C 0040D65C 15A0FFE9 */  bnez        $t5, .L0040D604
/* 00D660 0040D660 AFAD0030 */   sw         $t5, 0x30($sp)
.L0040D664:
/* 00D664 0040D664 10000004 */  b           .L0040D678
/* 00D668 0040D668 00000000 */   nop
.L0040D66C:
/* 00D66C 0040D66C 8FA80024 */  lw          $t0, 0x24($sp)
/* 00D670 0040D670 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D674 0040D674 ADC80064 */  sw          $t0, 0x64($t6)
.L0040D678:
/* 00D678 0040D678 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00D67C 0040D67C 8D690060 */  lw          $t1, 0x60($t3)
/* 00D680 0040D680 312C0002 */  andi        $t4, $t1, 0x2
/* 00D684 0040D684 11800030 */  beqz        $t4, .L0040D748
/* 00D688 0040D688 00000000 */   nop
/* 00D68C 0040D68C 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D690 0040D690 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D694 0040D694 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D698 0040D698 0320F809 */  jalr        $t9
/* 00D69C 0040D69C 8D440050 */   lw         $a0, 0x50($t2)
/* 00D6A0 0040D6A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D6A4 0040D6A4 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D6A8 0040D6A8 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00D6AC 0040D6AC 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D6B0 0040D6B0 AF0F0068 */  sw          $t7, 0x68($t8)
/* 00D6B4 0040D6B4 8FB90020 */  lw          $t9, 0x20($sp)
/* 00D6B8 0040D6B8 13200005 */  beqz        $t9, .L0040D6D0
/* 00D6BC 0040D6BC 00000000 */   nop
/* 00D6C0 0040D6C0 8FAD0024 */  lw          $t5, 0x24($sp)
/* 00D6C4 0040D6C4 8FA80050 */  lw          $t0, 0x50($sp)
/* 00D6C8 0040D6C8 AD0D0010 */  sw          $t5, 0x10($t0)
/* 00D6CC 0040D6CC AFA00020 */  sw          $zero, 0x20($sp)
.L0040D6D0:
/* 00D6D0 0040D6D0 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D6D4 0040D6D4 8DCB0008 */  lw          $t3, 0x8($t6)
/* 00D6D8 0040D6D8 11600019 */  beqz        $t3, .L0040D740
/* 00D6DC 0040D6DC AFAB0030 */   sw         $t3, 0x30($sp)
.L0040D6E0:
/* 00D6E0 0040D6E0 8FA90030 */  lw          $t1, 0x30($sp)
/* 00D6E4 0040D6E4 8D2C0044 */  lw          $t4, 0x44($t1)
/* 00D6E8 0040D6E8 318A0002 */  andi        $t2, $t4, 0x2
/* 00D6EC 0040D6EC 11400010 */  beqz        $t2, .L0040D730
/* 00D6F0 0040D6F0 00000000 */   nop
/* 00D6F4 0040D6F4 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D6F8 0040D6F8 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D6FC 0040D6FC 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D700 0040D700 0320F809 */  jalr        $t9
/* 00D704 0040D704 8DE40020 */   lw         $a0, 0x20($t7)
/* 00D708 0040D708 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D70C 0040D70C AFA20024 */  sw          $v0, 0x24($sp)
/* 00D710 0040D710 8FB80024 */  lw          $t8, 0x24($sp)
/* 00D714 0040D714 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D718 0040D718 AF380034 */  sw          $t8, 0x34($t9)
/* 00D71C 0040D71C 8FA80030 */  lw          $t0, 0x30($sp)
/* 00D720 0040D720 8FAD0024 */  lw          $t5, 0x24($sp)
/* 00D724 0040D724 8D0E000C */  lw          $t6, 0xC($t0)
/* 00D728 0040D728 01AE5821 */  addu        $t3, $t5, $t6
/* 00D72C 0040D72C AFAB0024 */  sw          $t3, 0x24($sp)
.L0040D730:
/* 00D730 0040D730 8FA90030 */  lw          $t1, 0x30($sp)
/* 00D734 0040D734 8D2C0000 */  lw          $t4, 0x0($t1)
/* 00D738 0040D738 1580FFE9 */  bnez        $t4, .L0040D6E0
/* 00D73C 0040D73C AFAC0030 */   sw         $t4, 0x30($sp)
.L0040D740:
/* 00D740 0040D740 10000004 */  b           .L0040D754
/* 00D744 0040D744 00000000 */   nop
.L0040D748:
/* 00D748 0040D748 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00D74C 0040D74C 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00D750 0040D750 ADEA0068 */  sw          $t2, 0x68($t7)
.L0040D754:
/* 00D754 0040D754 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D758 0040D758 8F190060 */  lw          $t9, 0x60($t8)
/* 00D75C 0040D75C 33280004 */  andi        $t0, $t9, 0x4
/* 00D760 0040D760 11000030 */  beqz        $t0, .L0040D824
/* 00D764 0040D764 00000000 */   nop
/* 00D768 0040D768 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D76C 0040D76C 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00D770 0040D770 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D774 0040D774 0320F809 */  jalr        $t9
/* 00D778 0040D778 8DA40054 */   lw         $a0, 0x54($t5)
/* 00D77C 0040D77C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D780 0040D780 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D784 0040D784 8FAE0024 */  lw          $t6, 0x24($sp)
/* 00D788 0040D788 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00D78C 0040D78C AD6E006C */  sw          $t6, 0x6C($t3)
/* 00D790 0040D790 8FA90020 */  lw          $t1, 0x20($sp)
/* 00D794 0040D794 11200005 */  beqz        $t1, .L0040D7AC
/* 00D798 0040D798 00000000 */   nop
/* 00D79C 0040D79C 8FAC0024 */  lw          $t4, 0x24($sp)
/* 00D7A0 0040D7A0 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00D7A4 0040D7A4 AD4C0010 */  sw          $t4, 0x10($t2)
/* 00D7A8 0040D7A8 AFA00020 */  sw          $zero, 0x20($sp)
.L0040D7AC:
/* 00D7AC 0040D7AC 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00D7B0 0040D7B0 8DF80008 */  lw          $t8, 0x8($t7)
/* 00D7B4 0040D7B4 13000019 */  beqz        $t8, .L0040D81C
/* 00D7B8 0040D7B8 AFB80030 */   sw         $t8, 0x30($sp)
.L0040D7BC:
/* 00D7BC 0040D7BC 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D7C0 0040D7C0 8F280044 */  lw          $t0, 0x44($t9)
/* 00D7C4 0040D7C4 310D0004 */  andi        $t5, $t0, 0x4
/* 00D7C8 0040D7C8 11A00010 */  beqz        $t5, .L0040D80C
/* 00D7CC 0040D7CC 00000000 */   nop
/* 00D7D0 0040D7D0 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D7D4 0040D7D4 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00D7D8 0040D7D8 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D7DC 0040D7DC 0320F809 */  jalr        $t9
/* 00D7E0 0040D7E0 8DC40024 */   lw         $a0, 0x24($t6)
/* 00D7E4 0040D7E4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D7E8 0040D7E8 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D7EC 0040D7EC 8FAB0024 */  lw          $t3, 0x24($sp)
/* 00D7F0 0040D7F0 8FA90030 */  lw          $t1, 0x30($sp)
/* 00D7F4 0040D7F4 AD2B0038 */  sw          $t3, 0x38($t1)
/* 00D7F8 0040D7F8 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00D7FC 0040D7FC 8FAC0024 */  lw          $t4, 0x24($sp)
/* 00D800 0040D800 8D4F0010 */  lw          $t7, 0x10($t2)
/* 00D804 0040D804 018FC021 */  addu        $t8, $t4, $t7
/* 00D808 0040D808 AFB80024 */  sw          $t8, 0x24($sp)
.L0040D80C:
/* 00D80C 0040D80C 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D810 0040D810 8F280000 */  lw          $t0, 0x0($t9)
/* 00D814 0040D814 1500FFE9 */  bnez        $t0, .L0040D7BC
/* 00D818 0040D818 AFA80030 */   sw         $t0, 0x30($sp)
.L0040D81C:
/* 00D81C 0040D81C 10000004 */  b           .L0040D830
/* 00D820 0040D820 00000000 */   nop
.L0040D824:
/* 00D824 0040D824 8FAD0024 */  lw          $t5, 0x24($sp)
/* 00D828 0040D828 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D82C 0040D82C ADCD006C */  sw          $t5, 0x6C($t6)
.L0040D830:
/* 00D830 0040D830 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00D834 0040D834 8D690060 */  lw          $t1, 0x60($t3)
/* 00D838 0040D838 312A0010 */  andi        $t2, $t1, 0x10
/* 00D83C 0040D83C 11400030 */  beqz        $t2, .L0040D900
/* 00D840 0040D840 00000000 */   nop
/* 00D844 0040D844 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D848 0040D848 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D84C 0040D84C 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D850 0040D850 0320F809 */  jalr        $t9
/* 00D854 0040D854 8D840058 */   lw         $a0, 0x58($t4)
/* 00D858 0040D858 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D85C 0040D85C AFA20024 */  sw          $v0, 0x24($sp)
/* 00D860 0040D860 8FAF0024 */  lw          $t7, 0x24($sp)
/* 00D864 0040D864 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D868 0040D868 AF0F0070 */  sw          $t7, 0x70($t8)
/* 00D86C 0040D86C 8FB90020 */  lw          $t9, 0x20($sp)
/* 00D870 0040D870 13200005 */  beqz        $t9, .L0040D888
/* 00D874 0040D874 00000000 */   nop
/* 00D878 0040D878 8FA80024 */  lw          $t0, 0x24($sp)
/* 00D87C 0040D87C 8FAD0050 */  lw          $t5, 0x50($sp)
/* 00D880 0040D880 ADA80010 */  sw          $t0, 0x10($t5)
/* 00D884 0040D884 AFA00020 */  sw          $zero, 0x20($sp)
.L0040D888:
/* 00D888 0040D888 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D88C 0040D88C 8DCB0008 */  lw          $t3, 0x8($t6)
/* 00D890 0040D890 11600019 */  beqz        $t3, .L0040D8F8
/* 00D894 0040D894 AFAB0030 */   sw         $t3, 0x30($sp)
.L0040D898:
/* 00D898 0040D898 8FA90030 */  lw          $t1, 0x30($sp)
/* 00D89C 0040D89C 8D2A0044 */  lw          $t2, 0x44($t1)
/* 00D8A0 0040D8A0 314C0010 */  andi        $t4, $t2, 0x10
/* 00D8A4 0040D8A4 11800010 */  beqz        $t4, .L0040D8E8
/* 00D8A8 0040D8A8 00000000 */   nop
/* 00D8AC 0040D8AC 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D8B0 0040D8B0 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00D8B4 0040D8B4 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D8B8 0040D8B8 0320F809 */  jalr        $t9
/* 00D8BC 0040D8BC 8DE40028 */   lw         $a0, 0x28($t7)
/* 00D8C0 0040D8C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D8C4 0040D8C4 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D8C8 0040D8C8 8FB80024 */  lw          $t8, 0x24($sp)
/* 00D8CC 0040D8CC 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D8D0 0040D8D0 AF38003C */  sw          $t8, 0x3C($t9)
/* 00D8D4 0040D8D4 8FAD0030 */  lw          $t5, 0x30($sp)
/* 00D8D8 0040D8D8 8FA80024 */  lw          $t0, 0x24($sp)
/* 00D8DC 0040D8DC 8DAE0014 */  lw          $t6, 0x14($t5)
/* 00D8E0 0040D8E0 010E5821 */  addu        $t3, $t0, $t6
/* 00D8E4 0040D8E4 AFAB0024 */  sw          $t3, 0x24($sp)
.L0040D8E8:
/* 00D8E8 0040D8E8 8FA90030 */  lw          $t1, 0x30($sp)
/* 00D8EC 0040D8EC 8D2A0000 */  lw          $t2, 0x0($t1)
/* 00D8F0 0040D8F0 1540FFE9 */  bnez        $t2, .L0040D898
/* 00D8F4 0040D8F4 AFAA0030 */   sw         $t2, 0x30($sp)
.L0040D8F8:
/* 00D8F8 0040D8F8 10000004 */  b           .L0040D90C
/* 00D8FC 0040D8FC 00000000 */   nop
.L0040D900:
/* 00D900 0040D900 8FAC0024 */  lw          $t4, 0x24($sp)
/* 00D904 0040D904 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00D908 0040D908 ADEC0070 */  sw          $t4, 0x70($t7)
.L0040D90C:
/* 00D90C 0040D90C 8FB80050 */  lw          $t8, 0x50($sp)
/* 00D910 0040D910 8F190060 */  lw          $t9, 0x60($t8)
/* 00D914 0040D914 332D0008 */  andi        $t5, $t9, 0x8
/* 00D918 0040D918 11A00030 */  beqz        $t5, .L0040D9DC
/* 00D91C 0040D91C 00000000 */   nop
/* 00D920 0040D920 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D924 0040D924 8FA80050 */  lw          $t0, 0x50($sp)
/* 00D928 0040D928 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D92C 0040D92C 0320F809 */  jalr        $t9
/* 00D930 0040D930 8D04005C */   lw         $a0, 0x5C($t0)
/* 00D934 0040D934 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D938 0040D938 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D93C 0040D93C 8FAE0024 */  lw          $t6, 0x24($sp)
/* 00D940 0040D940 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00D944 0040D944 AD6E0074 */  sw          $t6, 0x74($t3)
/* 00D948 0040D948 8FA90020 */  lw          $t1, 0x20($sp)
/* 00D94C 0040D94C 11200005 */  beqz        $t1, .L0040D964
/* 00D950 0040D950 00000000 */   nop
/* 00D954 0040D954 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00D958 0040D958 8FAC0050 */  lw          $t4, 0x50($sp)
/* 00D95C 0040D95C AD8A0010 */  sw          $t2, 0x10($t4)
/* 00D960 0040D960 AFA00020 */  sw          $zero, 0x20($sp)
.L0040D964:
/* 00D964 0040D964 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00D968 0040D968 8DF80008 */  lw          $t8, 0x8($t7)
/* 00D96C 0040D96C 13000019 */  beqz        $t8, .L0040D9D4
/* 00D970 0040D970 AFB80030 */   sw         $t8, 0x30($sp)
.L0040D974:
/* 00D974 0040D974 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D978 0040D978 8F2D0044 */  lw          $t5, 0x44($t9)
/* 00D97C 0040D97C 31A80008 */  andi        $t0, $t5, 0x8
/* 00D980 0040D980 11000010 */  beqz        $t0, .L0040D9C4
/* 00D984 0040D984 00000000 */   nop
/* 00D988 0040D988 8F9981B0 */  lw          $t9, %call16(ALIGNn)($gp)
/* 00D98C 0040D98C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00D990 0040D990 8FA50024 */  lw          $a1, 0x24($sp)
/* 00D994 0040D994 0320F809 */  jalr        $t9
/* 00D998 0040D998 8DC4002C */   lw         $a0, 0x2C($t6)
/* 00D99C 0040D99C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D9A0 0040D9A0 AFA20024 */  sw          $v0, 0x24($sp)
/* 00D9A4 0040D9A4 8FAB0024 */  lw          $t3, 0x24($sp)
/* 00D9A8 0040D9A8 8FA90030 */  lw          $t1, 0x30($sp)
/* 00D9AC 0040D9AC AD2B0040 */  sw          $t3, 0x40($t1)
/* 00D9B0 0040D9B0 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00D9B4 0040D9B4 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00D9B8 0040D9B8 8D8F0018 */  lw          $t7, 0x18($t4)
/* 00D9BC 0040D9BC 014FC021 */  addu        $t8, $t2, $t7
/* 00D9C0 0040D9C0 AFB80024 */  sw          $t8, 0x24($sp)
.L0040D9C4:
/* 00D9C4 0040D9C4 8FB90030 */  lw          $t9, 0x30($sp)
/* 00D9C8 0040D9C8 8F2D0000 */  lw          $t5, 0x0($t9)
/* 00D9CC 0040D9CC 15A0FFE9 */  bnez        $t5, .L0040D974
/* 00D9D0 0040D9D0 AFAD0030 */   sw         $t5, 0x30($sp)
.L0040D9D4:
/* 00D9D4 0040D9D4 10000004 */  b           .L0040D9E8
/* 00D9D8 0040D9D8 00000000 */   nop
.L0040D9DC:
/* 00D9DC 0040D9DC 8FA80024 */  lw          $t0, 0x24($sp)
/* 00D9E0 0040D9E0 8FAE0050 */  lw          $t6, 0x50($sp)
/* 00D9E4 0040D9E4 ADC80074 */  sw          $t0, 0x74($t6)
.L0040D9E8:
/* 00D9E8 0040D9E8 8FAB0050 */  lw          $t3, 0x50($sp)
/* 00D9EC 0040D9EC 8D690068 */  lw          $t1, 0x68($t3)
/* 00D9F0 0040D9F0 8D6C0010 */  lw          $t4, 0x10($t3)
/* 00D9F4 0040D9F4 012C5023 */  subu        $t2, $t1, $t4
/* 00D9F8 0040D9F8 AD6A002C */  sw          $t2, 0x2C($t3)
/* 00D9FC 0040D9FC 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00DA00 0040DA00 8DF8006C */  lw          $t8, 0x6C($t7)
/* 00DA04 0040DA04 8DF90068 */  lw          $t9, 0x68($t7)
/* 00DA08 0040DA08 03196823 */  subu        $t5, $t8, $t9
/* 00DA0C 0040DA0C ADED0030 */  sw          $t5, 0x30($t7)
/* 00DA10 0040DA10 8FA80050 */  lw          $t0, 0x50($sp)
/* 00DA14 0040DA14 8D0E0070 */  lw          $t6, 0x70($t0)
/* 00DA18 0040DA18 8D09006C */  lw          $t1, 0x6C($t0)
/* 00DA1C 0040DA1C 01C96023 */  subu        $t4, $t6, $t1
/* 00DA20 0040DA20 AD0C0034 */  sw          $t4, 0x34($t0)
/* 00DA24 0040DA24 8FAA0050 */  lw          $t2, 0x50($sp)
/* 00DA28 0040DA28 8D4B0074 */  lw          $t3, 0x74($t2)
/* 00DA2C 0040DA2C 8D580070 */  lw          $t8, 0x70($t2)
/* 00DA30 0040DA30 0178C823 */  subu        $t9, $t3, $t8
/* 00DA34 0040DA34 AD590038 */  sw          $t9, 0x38($t2)
/* 00DA38 0040DA38 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00DA3C 0040DA3C 8FAD0024 */  lw          $t5, 0x24($sp)
/* 00DA40 0040DA40 8DEE0074 */  lw          $t6, 0x74($t7)
/* 00DA44 0040DA44 01AE4823 */  subu        $t1, $t5, $t6
/* 00DA48 0040DA48 ADE9003C */  sw          $t1, 0x3C($t7)
/* 00DA4C 0040DA4C 8FA80050 */  lw          $t0, 0x50($sp)
/* 00DA50 0040DA50 8FAC0024 */  lw          $t4, 0x24($sp)
/* 00DA54 0040DA54 8D0B0010 */  lw          $t3, 0x10($t0)
/* 00DA58 0040DA58 018BC023 */  subu        $t8, $t4, $t3
/* 00DA5C 0040DA5C AD180040 */  sw          $t8, 0x40($t0)
/* 00DA60 0040DA60 10000003 */  b           .L0040DA70
/* 00DA64 0040DA64 00001025 */   move       $v0, $zero
/* 00DA68 0040DA68 10000001 */  b           .L0040DA70
/* 00DA6C 0040DA6C 00000000 */   nop
.L0040DA70:
/* 00DA70 0040DA70 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00DA74 0040DA74 27BD0050 */  addiu       $sp, $sp, 0x50
/* 00DA78 0040DA78 03E00008 */  jr          $ra
/* 00DA7C 0040DA7C 00000000 */   nop
