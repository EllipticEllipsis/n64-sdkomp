.section .rodata
glabel STR_10006920
/* 046920 10006920 */ .asciz "`\n"
                      .balign 4
/* 046924 10006924 */ .asciz ""
                      .balign 4
/* 046928 10006928 */ .asciz ""
                      .balign 4
/* 04692C 1000692C */ .asciz ""
                      .balign 4


.section .text
glabel _elf_armem # 198
/* 0288DC 004288DC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0288E0 004288E0 279CA484 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEA484
/* 0288E4 004288E4 0399E021 */  addu        $gp, $gp, $t9
/* 0288E8 004288E8 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 0288EC 004288EC AFA60048 */  sw          $a2, 0x48($sp)
/* 0288F0 004288F0 8FAE0048 */  lw          $t6, 0x48($sp)
/* 0288F4 004288F4 AFA50044 */  sw          $a1, 0x44($sp)
/* 0288F8 004288F8 AFB00014 */  sw          $s0, 0x14($sp)
/* 0288FC 004288FC 2DC1003C */  sltiu       $at, $t6, 0x3C
/* 028900 00428900 AFBF0024 */  sw          $ra, 0x24($sp)
/* 028904 00428904 AFBC0020 */  sw          $gp, 0x20($sp)
/* 028908 00428908 AFA40040 */  sw          $a0, 0x40($sp)
/* 02890C 0042890C AFB2001C */  sw          $s2, 0x1C($sp)
/* 028910 00428910 AFB10018 */  sw          $s1, 0x18($sp)
/* 028914 00428914 10200006 */  beqz        $at, .L00428930
/* 028918 00428918 8FB00044 */   lw         $s0, 0x44($sp)
/* 02891C 0042891C 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 028920 00428920 240F0203 */  addiu       $t7, $zero, 0x203
/* 028924 00428924 00001025 */  move        $v0, $zero
/* 028928 00428928 10000118 */  b           .L00428D8C
/* 02892C 0042892C AC2F0000 */   sw         $t7, 0x0($at)
.L00428930:
/* 028930 00428930 8F998020 */  lw          $t9, %got(ck_mangle)($gp)
/* 028934 00428934 8FA40040 */  lw          $a0, 0x40($sp)
/* 028938 00428938 02002825 */  move        $a1, $s0
/* 02893C 0042893C 27398600 */  addiu       $t9, $t9, %lo(ck_mangle)
/* 028940 00428940 0320F809 */  jalr        $t9
/* 028944 00428944 00000000 */   nop
/* 028948 00428948 00408825 */  move        $s1, $v0
/* 02894C 0042894C 12200003 */  beqz        $s1, .L0042895C
/* 028950 00428950 8FBC0020 */   lw         $gp, 0x20($sp)
/* 028954 00428954 1000010D */  b           .L00428D8C
/* 028958 00428958 02201025 */   move       $v0, $s1
.L0042895C:
/* 02895C 0042895C 8F98802C */  lw          $t8, %got(STR_10006920)($gp)
/* 028960 00428960 8208003A */  lb          $t0, 0x3A($s0)
/* 028964 00428964 27186920 */  addiu       $t8, $t8, %lo(STR_10006920)
/* 028968 00428968 83190000 */  lb          $t9, 0x0($t8)
/* 02896C 0042896C 17280004 */  bne         $t9, $t0, .L00428980
/* 028970 00428970 00000000 */   nop
/* 028974 00428974 83090001 */  lb          $t1, 0x1($t8)
/* 028978 00428978 820A003B */  lb          $t2, 0x3B($s0)
/* 02897C 0042897C 112A0005 */  beq         $t1, $t2, .L00428994
.L00428980:
/* 028980 00428980 8F8186EC */   lw         $at, %got(_elf_err)($gp)
/* 028984 00428984 240B0202 */  addiu       $t3, $zero, 0x202
/* 028988 00428988 00001025 */  move        $v0, $zero
/* 02898C 0042898C 100000FF */  b           .L00428D8C
/* 028990 00428990 AC2B0000 */   sw         $t3, 0x0($at)
.L00428994:
/* 028994 00428994 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 028998 00428998 24040048 */  addiu       $a0, $zero, 0x48
/* 02899C 0042899C 0320F809 */  jalr        $t9
/* 0289A0 004289A0 00000000 */   nop
/* 0289A4 004289A4 00408825 */  move        $s1, $v0
/* 0289A8 004289A8 16200006 */  bnez        $s1, .L004289C4
/* 0289AC 004289AC 8FBC0020 */   lw         $gp, 0x20($sp)
/* 0289B0 004289B0 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 0289B4 004289B4 240C0401 */  addiu       $t4, $zero, 0x401
/* 0289B8 004289B8 00001025 */  move        $v0, $zero
/* 0289BC 004289BC 100000F3 */  b           .L00428D8C
/* 0289C0 004289C0 AC2C0000 */   sw         $t4, 0x0($at)
.L004289C4:
/* 0289C4 004289C4 8FAD0040 */  lw          $t5, 0x40($sp)
/* 0289C8 004289C8 26240035 */  addiu       $a0, $s1, 0x35
/* 0289CC 004289CC 02002825 */  move        $a1, $s0
/* 0289D0 004289D0 8DAE0068 */  lw          $t6, 0x68($t5)
/* 0289D4 004289D4 24060010 */  addiu       $a2, $zero, 0x10
/* 0289D8 004289D8 AE2E001C */  sw          $t6, 0x1C($s1)
/* 0289DC 004289DC 8FAF0040 */  lw          $t7, 0x40($sp)
/* 0289E0 004289E0 ADF10068 */  sw          $s1, 0x68($t7)
/* 0289E4 004289E4 AE200020 */  sw          $zero, 0x20($s1)
/* 0289E8 004289E8 8F99810C */  lw          $t9, %call16(memcpy)($gp)
/* 0289EC 004289EC 0320F809 */  jalr        $t9
/* 0289F0 004289F0 00000000 */   nop
/* 0289F4 004289F4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0289F8 004289F8 26390035 */  addiu       $t9, $s1, 0x35
/* 0289FC 004289FC A2200045 */  sb          $zero, 0x45($s1)
/* 028A00 00428A00 AE390000 */  sw          $t9, 0x0($s1)
/* 028A04 00428A04 8F99810C */  lw          $t9, %call16(memcpy)($gp)
/* 028A08 00428A08 26240024 */  addiu       $a0, $s1, 0x24
/* 028A0C 00428A0C 02002825 */  move        $a1, $s0
/* 028A10 00428A10 0320F809 */  jalr        $t9
/* 028A14 00428A14 24060010 */   addiu      $a2, $zero, 0x10
/* 028A18 00428A18 8FBC0020 */  lw          $gp, 0x20($sp)
/* 028A1C 00428A1C 26280024 */  addiu       $t0, $s1, 0x24
/* 028A20 00428A20 A2200034 */  sb          $zero, 0x34($s1)
/* 028A24 00428A24 AE280018 */  sw          $t0, 0x18($s1)
/* 028A28 00428A28 82180000 */  lb          $t8, 0x0($s0)
/* 028A2C 00428A2C 2401002F */  addiu       $at, $zero, 0x2F
/* 028A30 00428A30 13010021 */  beq         $t8, $at, .L00428AB8
/* 028A34 00428A34 00000000 */   nop
/* 028A38 00428A38 26320046 */  addiu       $s2, $s1, 0x46
/* 028A3C 00428A3C 8249FFFF */  lb          $t1, -0x1($s2)
/* 028A40 00428A40 2401002F */  addiu       $at, $zero, 0x2F
/* 028A44 00428A44 2652FFFF */  addiu       $s2, $s2, -0x1
/* 028A48 00428A48 1121000A */  beq         $t1, $at, .L00428A74
/* 028A4C 00428A4C 00000000 */   nop
.L00428A50:
/* 028A50 00428A50 262A0035 */  addiu       $t2, $s1, 0x35
/* 028A54 00428A54 0152082B */  sltu        $at, $t2, $s2
/* 028A58 00428A58 10200006 */  beqz        $at, .L00428A74
/* 028A5C 00428A5C 00000000 */   nop
/* 028A60 00428A60 824BFFFF */  lb          $t3, -0x1($s2)
/* 028A64 00428A64 2401002F */  addiu       $at, $zero, 0x2F
/* 028A68 00428A68 2652FFFF */  addiu       $s2, $s2, -0x1
/* 028A6C 00428A6C 1561FFF8 */  bne         $t3, $at, .L00428A50
/* 028A70 00428A70 00000000 */   nop
.L00428A74:
/* 028A74 00428A74 262C0035 */  addiu       $t4, $s1, 0x35
/* 028A78 00428A78 1592000D */  bne         $t4, $s2, .L00428AB0
/* 028A7C 00428A7C 00000000 */   nop
/* 028A80 00428A80 824D0000 */  lb          $t5, 0x0($s2)
/* 028A84 00428A84 24010020 */  addiu       $at, $zero, 0x20
/* 028A88 00428A88 11A10009 */  beq         $t5, $at, .L00428AB0
/* 028A8C 00428A8C 00000000 */   nop
.L00428A90:
/* 028A90 00428A90 262E0046 */  addiu       $t6, $s1, 0x46
/* 028A94 00428A94 11D20006 */  beq         $t6, $s2, .L00428AB0
/* 028A98 00428A98 00000000 */   nop
/* 028A9C 00428A9C 824F0001 */  lb          $t7, 0x1($s2)
/* 028AA0 00428AA0 24010020 */  addiu       $at, $zero, 0x20
/* 028AA4 00428AA4 26520001 */  addiu       $s2, $s2, 0x1
/* 028AA8 00428AA8 15E1FFF9 */  bne         $t7, $at, .L00428A90
/* 028AAC 00428AAC 00000000 */   nop
.L00428AB0:
/* 028AB0 00428AB0 10000081 */  b           .L00428CB8
/* 028AB4 00428AB4 A2400000 */   sb         $zero, 0x0($s2)
.L00428AB8:
/* 028AB8 00428AB8 82190001 */  lb          $t9, 0x1($s0)
/* 028ABC 00428ABC 2B210030 */  slti        $at, $t9, 0x30
/* 028AC0 00428AC0 14200024 */  bnez        $at, .L00428B54
/* 028AC4 00428AC4 00000000 */   nop
/* 028AC8 00428AC8 82080001 */  lb          $t0, 0x1($s0)
/* 028ACC 00428ACC 2901003A */  slti        $at, $t0, 0x3A
/* 028AD0 00428AD0 10200020 */  beqz        $at, .L00428B54
/* 028AD4 00428AD4 00000000 */   nop
/* 028AD8 00428AD8 8F998020 */  lw          $t9, %got(number)($gp)
/* 028ADC 00428ADC 26040001 */  addiu       $a0, $s0, 0x1
/* 028AE0 00428AE0 26050010 */  addiu       $a1, $s0, 0x10
/* 028AE4 00428AE4 27398784 */  addiu       $t9, $t9, %lo(number)
/* 028AE8 00428AE8 0320F809 */  jalr        $t9
/* 028AEC 00428AEC 2406000A */   addiu      $a2, $zero, 0xA
/* 028AF0 00428AF0 8FA90040 */  lw          $t1, 0x40($sp)
/* 028AF4 00428AF4 AFA20028 */  sw          $v0, 0x28($sp)
/* 028AF8 00428AF8 8FB80028 */  lw          $t8, 0x28($sp)
/* 028AFC 00428AFC AFA3002C */  sw          $v1, 0x2C($sp)
/* 028B00 00428B00 8D2A0080 */  lw          $t2, 0x80($t1)
/* 028B04 00428B04 240C0000 */  addiu       $t4, $zero, 0x0
/* 028B08 00428B08 0198082B */  sltu        $at, $t4, $t8
/* 028B0C 00428B0C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 028B10 00428B10 8FB9002C */  lw          $t9, 0x2C($sp)
/* 028B14 00428B14 1420000B */  bnez        $at, .L00428B44
/* 028B18 00428B18 01406825 */   move       $t5, $t2
/* 028B1C 00428B1C 030C082B */  sltu        $at, $t8, $t4
/* 028B20 00428B20 14200003 */  bnez        $at, .L00428B30
/* 028B24 00428B24 032D082B */   sltu       $at, $t9, $t5
/* 028B28 00428B28 10200006 */  beqz        $at, .L00428B44
/* 028B2C 00428B2C 00000000 */   nop
.L00428B30:
/* 028B30 00428B30 8D2B007C */  lw          $t3, 0x7C($t1)
/* 028B34 00428B34 03207025 */  move        $t6, $t9
/* 028B38 00428B38 016E7821 */  addu        $t7, $t3, $t6
/* 028B3C 00428B3C 1000005E */  b           .L00428CB8
/* 028B40 00428B40 AE2F0000 */   sw         $t7, 0x0($s1)
.L00428B44:
/* 028B44 00428B44 24080205 */  addiu       $t0, $zero, 0x205
/* 028B48 00428B48 AE200000 */  sw          $zero, 0x0($s1)
/* 028B4C 00428B4C 1000005A */  b           .L00428CB8
/* 028B50 00428B50 AE280020 */   sw         $t0, 0x20($s1)
.L00428B54:
/* 028B54 00428B54 820A0001 */  lb          $t2, 0x1($s0)
/* 028B58 00428B58 24010020 */  addiu       $at, $zero, 0x20
/* 028B5C 00428B5C 15410003 */  bne         $t2, $at, .L00428B6C
/* 028B60 00428B60 00000000 */   nop
/* 028B64 00428B64 10000054 */  b           .L00428CB8
/* 028B68 00428B68 A2200036 */   sb         $zero, 0x36($s1)
.L00428B6C:
/* 028B6C 00428B6C 822C0035 */  lb          $t4, 0x35($s1)
/* 028B70 00428B70 2401002F */  addiu       $at, $zero, 0x2F
/* 028B74 00428B74 15810022 */  bne         $t4, $at, .L00428C00
/* 028B78 00428B78 00000000 */   nop
/* 028B7C 00428B7C 822D0036 */  lb          $t5, 0x36($s1)
/* 028B80 00428B80 24010053 */  addiu       $at, $zero, 0x53
/* 028B84 00428B84 15A1001E */  bne         $t5, $at, .L00428C00
/* 028B88 00428B88 00000000 */   nop
/* 028B8C 00428B8C 82290037 */  lb          $t1, 0x37($s1)
/* 028B90 00428B90 24010059 */  addiu       $at, $zero, 0x59
/* 028B94 00428B94 1521001A */  bne         $t1, $at, .L00428C00
/* 028B98 00428B98 00000000 */   nop
/* 028B9C 00428B9C 82380038 */  lb          $t8, 0x38($s1)
/* 028BA0 00428BA0 2401004D */  addiu       $at, $zero, 0x4D
/* 028BA4 00428BA4 17010016 */  bne         $t8, $at, .L00428C00
/* 028BA8 00428BA8 00000000 */   nop
/* 028BAC 00428BAC 82390039 */  lb          $t9, 0x39($s1)
/* 028BB0 00428BB0 24010036 */  addiu       $at, $zero, 0x36
/* 028BB4 00428BB4 17210012 */  bne         $t9, $at, .L00428C00
/* 028BB8 00428BB8 00000000 */   nop
/* 028BBC 00428BBC 822B003A */  lb          $t3, 0x3A($s1)
/* 028BC0 00428BC0 24010034 */  addiu       $at, $zero, 0x34
/* 028BC4 00428BC4 1561000E */  bne         $t3, $at, .L00428C00
/* 028BC8 00428BC8 00000000 */   nop
/* 028BCC 00428BCC 822E003B */  lb          $t6, 0x3B($s1)
/* 028BD0 00428BD0 2401002F */  addiu       $at, $zero, 0x2F
/* 028BD4 00428BD4 15C1000A */  bne         $t6, $at, .L00428C00
/* 028BD8 00428BD8 00000000 */   nop
/* 028BDC 00428BDC 822F003C */  lb          $t7, 0x3C($s1)
/* 028BE0 00428BE0 24010020 */  addiu       $at, $zero, 0x20
/* 028BE4 00428BE4 11E10004 */  beq         $t7, $at, .L00428BF8
/* 028BE8 00428BE8 00000000 */   nop
/* 028BEC 00428BEC 8228003C */  lb          $t0, 0x3C($s1)
/* 028BF0 00428BF0 15000003 */  bnez        $t0, .L00428C00
/* 028BF4 00428BF4 00000000 */   nop
.L00428BF8:
/* 028BF8 00428BF8 1000002F */  b           .L00428CB8
/* 028BFC 00428BFC A220003C */   sb         $zero, 0x3C($s1)
.L00428C00:
/* 028C00 00428C00 822A0035 */  lb          $t2, 0x35($s1)
/* 028C04 00428C04 2401002F */  addiu       $at, $zero, 0x2F
/* 028C08 00428C08 1541001E */  bne         $t2, $at, .L00428C84
/* 028C0C 00428C0C 00000000 */   nop
/* 028C10 00428C10 822C0036 */  lb          $t4, 0x36($s1)
/* 028C14 00428C14 24010048 */  addiu       $at, $zero, 0x48
/* 028C18 00428C18 1581001A */  bne         $t4, $at, .L00428C84
/* 028C1C 00428C1C 00000000 */   nop
/* 028C20 00428C20 822D0037 */  lb          $t5, 0x37($s1)
/* 028C24 00428C24 24010041 */  addiu       $at, $zero, 0x41
/* 028C28 00428C28 15A10016 */  bne         $t5, $at, .L00428C84
/* 028C2C 00428C2C 00000000 */   nop
/* 028C30 00428C30 82290038 */  lb          $t1, 0x38($s1)
/* 028C34 00428C34 24010053 */  addiu       $at, $zero, 0x53
/* 028C38 00428C38 15210012 */  bne         $t1, $at, .L00428C84
/* 028C3C 00428C3C 00000000 */   nop
/* 028C40 00428C40 82380039 */  lb          $t8, 0x39($s1)
/* 028C44 00428C44 24010048 */  addiu       $at, $zero, 0x48
/* 028C48 00428C48 1701000E */  bne         $t8, $at, .L00428C84
/* 028C4C 00428C4C 00000000 */   nop
/* 028C50 00428C50 8239003A */  lb          $t9, 0x3A($s1)
/* 028C54 00428C54 2401002F */  addiu       $at, $zero, 0x2F
/* 028C58 00428C58 1721000A */  bne         $t9, $at, .L00428C84
/* 028C5C 00428C5C 00000000 */   nop
/* 028C60 00428C60 822B003B */  lb          $t3, 0x3B($s1)
/* 028C64 00428C64 24010020 */  addiu       $at, $zero, 0x20
/* 028C68 00428C68 11610004 */  beq         $t3, $at, .L00428C7C
/* 028C6C 00428C6C 00000000 */   nop
/* 028C70 00428C70 822E003B */  lb          $t6, 0x3B($s1)
/* 028C74 00428C74 15C00003 */  bnez        $t6, .L00428C84
/* 028C78 00428C78 00000000 */   nop
.L00428C7C:
/* 028C7C 00428C7C 1000000E */  b           .L00428CB8
/* 028C80 00428C80 A220003B */   sb         $zero, 0x3B($s1)
.L00428C84:
/* 028C84 00428C84 820F0001 */  lb          $t7, 0x1($s0)
/* 028C88 00428C88 2401002F */  addiu       $at, $zero, 0x2F
/* 028C8C 00428C8C 15E10007 */  bne         $t7, $at, .L00428CAC
/* 028C90 00428C90 00000000 */   nop
/* 028C94 00428C94 82080002 */  lb          $t0, 0x2($s0)
/* 028C98 00428C98 24010020 */  addiu       $at, $zero, 0x20
/* 028C9C 00428C9C 15010003 */  bne         $t0, $at, .L00428CAC
/* 028CA0 00428CA0 00000000 */   nop
/* 028CA4 00428CA4 10000004 */  b           .L00428CB8
/* 028CA8 00428CA8 A2200037 */   sb         $zero, 0x37($s1)
.L00428CAC:
/* 028CAC 00428CAC 240A0209 */  addiu       $t2, $zero, 0x209
/* 028CB0 00428CB0 AE200000 */  sw          $zero, 0x0($s1)
/* 028CB4 00428CB4 AE2A0020 */  sw          $t2, 0x20($s1)
.L00428CB8:
/* 028CB8 00428CB8 8F998020 */  lw          $t9, %got(number)($gp)
/* 028CBC 00428CBC 26040010 */  addiu       $a0, $s0, 0x10
/* 028CC0 00428CC0 2605001C */  addiu       $a1, $s0, 0x1C
/* 028CC4 00428CC4 27398784 */  addiu       $t9, $t9, %lo(number)
/* 028CC8 00428CC8 0320F809 */  jalr        $t9
/* 028CCC 00428CCC 2406000A */   addiu      $a2, $zero, 0xA
/* 028CD0 00428CD0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 028CD4 00428CD4 00606025 */  move        $t4, $v1
/* 028CD8 00428CD8 AE2C0004 */  sw          $t4, 0x4($s1)
/* 028CDC 00428CDC 8F998020 */  lw          $t9, %got(number)($gp)
/* 028CE0 00428CE0 2604001C */  addiu       $a0, $s0, 0x1C
/* 028CE4 00428CE4 26050022 */  addiu       $a1, $s0, 0x22
/* 028CE8 00428CE8 27398784 */  addiu       $t9, $t9, %lo(number)
/* 028CEC 00428CEC 0320F809 */  jalr        $t9
/* 028CF0 00428CF0 2406000A */   addiu      $a2, $zero, 0xA
/* 028CF4 00428CF4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 028CF8 00428CF8 00606825 */  move        $t5, $v1
/* 028CFC 00428CFC AE2D0008 */  sw          $t5, 0x8($s1)
/* 028D00 00428D00 8F998020 */  lw          $t9, %got(number)($gp)
/* 028D04 00428D04 26040022 */  addiu       $a0, $s0, 0x22
/* 028D08 00428D08 26050028 */  addiu       $a1, $s0, 0x28
/* 028D0C 00428D0C 27398784 */  addiu       $t9, $t9, %lo(number)
/* 028D10 00428D10 0320F809 */  jalr        $t9
/* 028D14 00428D14 2406000A */   addiu      $a2, $zero, 0xA
/* 028D18 00428D18 8FBC0020 */  lw          $gp, 0x20($sp)
/* 028D1C 00428D1C 00604825 */  move        $t1, $v1
/* 028D20 00428D20 AE29000C */  sw          $t1, 0xC($s1)
/* 028D24 00428D24 8F998020 */  lw          $t9, %got(number)($gp)
/* 028D28 00428D28 26040028 */  addiu       $a0, $s0, 0x28
/* 028D2C 00428D2C 26050030 */  addiu       $a1, $s0, 0x30
/* 028D30 00428D30 27398784 */  addiu       $t9, $t9, %lo(number)
/* 028D34 00428D34 0320F809 */  jalr        $t9
/* 028D38 00428D38 24060008 */   addiu      $a2, $zero, 0x8
/* 028D3C 00428D3C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 028D40 00428D40 0060C025 */  move        $t8, $v1
/* 028D44 00428D44 AE380010 */  sw          $t8, 0x10($s1)
/* 028D48 00428D48 8F998020 */  lw          $t9, %got(number)($gp)
/* 028D4C 00428D4C 26040030 */  addiu       $a0, $s0, 0x30
/* 028D50 00428D50 2605003A */  addiu       $a1, $s0, 0x3A
/* 028D54 00428D54 27398784 */  addiu       $t9, $t9, %lo(number)
/* 028D58 00428D58 0320F809 */  jalr        $t9
/* 028D5C 00428D5C 2406000A */   addiu      $a2, $zero, 0xA
/* 028D60 00428D60 8FBC0020 */  lw          $gp, 0x20($sp)
/* 028D64 00428D64 0060C825 */  move        $t9, $v1
/* 028D68 00428D68 AE390014 */  sw          $t9, 0x14($s1)
/* 028D6C 00428D6C 8F998020 */  lw          $t9, %got(do_mangle)($gp)
/* 028D70 00428D70 8FA40040 */  lw          $a0, 0x40($sp)
/* 028D74 00428D74 02002825 */  move        $a1, $s0
/* 028D78 00428D78 273986E0 */  addiu       $t9, $t9, %lo(do_mangle)
/* 028D7C 00428D7C 0320F809 */  jalr        $t9
/* 028D80 00428D80 02203025 */   move       $a2, $s1
/* 028D84 00428D84 8FBC0020 */  lw          $gp, 0x20($sp)
/* 028D88 00428D88 02201025 */  move        $v0, $s1
.L00428D8C:
/* 028D8C 00428D8C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 028D90 00428D90 8FB00014 */  lw          $s0, 0x14($sp)
/* 028D94 00428D94 8FB10018 */  lw          $s1, 0x18($sp)
/* 028D98 00428D98 8FB2001C */  lw          $s2, 0x1C($sp)
/* 028D9C 00428D9C 03E00008 */  jr          $ra
/* 028DA0 00428DA0 27BD0040 */   addiu      $sp, $sp, 0x40
