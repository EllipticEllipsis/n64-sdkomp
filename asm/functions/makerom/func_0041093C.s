.section .rodata
glabel STR_10005E98
/* 045E98 10005E98 */ .asciz "Extract(): Cannot open %s.\n"
                      .balign 4
/* 045EB4 10005EB4 */ .asciz ""
                      .balign 4
/* 045EB8 10005EB8 */ .asciz ""
                      .balign 4
/* 045EBC 10005EBC */ .asciz ""
                      .balign 4


.section .text
glabel func_0041093C # 34
/* 01093C 0041093C 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 010940 00410940 279C2424 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC02424
/* 010944 00410944 0399E021 */  addu        $gp, $gp, $t9
/* 010948 00410948 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01094C 0041094C AFBF001C */  sw          $ra, 0x1C($sp)
/* 010950 00410950 AFBC0018 */  sw          $gp, 0x18($sp)
/* 010954 00410954 AFA40028 */  sw          $a0, 0x28($sp)
/* 010958 00410958 AFB00014 */  sw          $s0, 0x14($sp)
/* 01095C 0041095C 8F998240 */  lw          $t9, %call16(ldopen)($gp)
/* 010960 00410960 8F848754 */  lw          $a0, %got(OFileName)($gp)
/* 010964 00410964 00002825 */  move        $a1, $zero
/* 010968 00410968 0320F809 */  jalr        $t9
/* 01096C 0041096C 8C840000 */   lw         $a0, 0x0($a0)
/* 010970 00410970 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010974 00410974 8F81875C */  lw          $at, %got(LDPtr)($gp)
/* 010978 00410978 8F8E875C */  lw          $t6, %got(LDPtr)($gp)
/* 01097C 0041097C AC220000 */  sw          $v0, 0x0($at)
/* 010980 00410980 8DCE0000 */  lw          $t6, 0x0($t6)
/* 010984 00410984 15C0000C */  bnez        $t6, .L004109B8
/* 010988 00410988 00000000 */   nop
/* 01098C 0041098C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 010990 00410990 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 010994 00410994 8F85802C */  lw          $a1, %got(STR_10005E98)($gp)
/* 010998 00410998 8F868754 */  lw          $a2, %got(OFileName)($gp)
/* 01099C 0041099C 24840020 */  addiu       $a0, $a0, 0x20
/* 0109A0 004109A0 24A55E98 */  addiu       $a1, $a1, %lo(STR_10005E98)
/* 0109A4 004109A4 0320F809 */  jalr        $t9
/* 0109A8 004109A8 8CC60000 */   lw         $a2, 0x0($a2)
/* 0109AC 004109AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0109B0 004109B0 100000AB */  b           .L00410C60
/* 0109B4 004109B4 2402FFFF */   addiu      $v0, $zero, -0x1
.L004109B8:
/* 0109B8 004109B8 8F8F875C */  lw          $t7, %got(LDPtr)($gp)
/* 0109BC 004109BC 24010140 */  addiu       $at, $zero, 0x140
/* 0109C0 004109C0 8DEF0000 */  lw          $t7, 0x0($t7)
/* 0109C4 004109C4 95F0000C */  lhu         $s0, 0xC($t7)
/* 0109C8 004109C8 12010012 */  beq         $s0, $at, .L00410A14
/* 0109CC 004109CC 00000000 */   nop
/* 0109D0 004109D0 24010142 */  addiu       $at, $zero, 0x142
/* 0109D4 004109D4 12010019 */  beq         $s0, $at, .L00410A3C
/* 0109D8 004109D8 00000000 */   nop
/* 0109DC 004109DC 24010160 */  addiu       $at, $zero, 0x160
/* 0109E0 004109E0 1201000C */  beq         $s0, $at, .L00410A14
/* 0109E4 004109E4 00000000 */   nop
/* 0109E8 004109E8 24010162 */  addiu       $at, $zero, 0x162
/* 0109EC 004109EC 12010013 */  beq         $s0, $at, .L00410A3C
/* 0109F0 004109F0 00000000 */   nop
/* 0109F4 004109F4 24010163 */  addiu       $at, $zero, 0x163
/* 0109F8 004109F8 12010006 */  beq         $s0, $at, .L00410A14
/* 0109FC 004109FC 00000000 */   nop
/* 010A00 00410A00 24010166 */  addiu       $at, $zero, 0x166
/* 010A04 00410A04 1201000D */  beq         $s0, $at, .L00410A3C
/* 010A08 00410A08 00000000 */   nop
/* 010A0C 00410A0C 10000014 */  b           .L00410A60
/* 010A10 00410A10 00000000 */   nop
.L00410A14:
/* 010A14 00410A14 8F998238 */  lw          $t9, %call16(gethostsex)($gp)
/* 010A18 00410A18 0320F809 */  jalr        $t9
/* 010A1C 00410A1C 00000000 */   nop
/* 010A20 00410A20 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010A24 00410A24 38580001 */  xori        $t8, $v0, 0x1
/* 010A28 00410A28 2F180001 */  sltiu       $t8, $t8, 0x1
/* 010A2C 00410A2C 8F818688 */  lw          $at, %got(Swap)($gp)
/* 010A30 00410A30 AC380000 */  sw          $t8, 0x0($at)
/* 010A34 00410A34 1000000A */  b           .L00410A60
/* 010A38 00410A38 00000000 */   nop
.L00410A3C:
/* 010A3C 00410A3C 8F998238 */  lw          $t9, %call16(gethostsex)($gp)
/* 010A40 00410A40 0320F809 */  jalr        $t9
/* 010A44 00410A44 00000000 */   nop
/* 010A48 00410A48 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010A4C 00410A4C 2C590001 */  sltiu       $t9, $v0, 0x1
/* 010A50 00410A50 8F818688 */  lw          $at, %got(Swap)($gp)
/* 010A54 00410A54 AC390000 */  sw          $t9, 0x0($at)
/* 010A58 00410A58 10000001 */  b           .L00410A60
/* 010A5C 00410A5C 00000000 */   nop
.L00410A60:
/* 010A60 00410A60 8F998264 */  lw          $t9, %call16(ldnshread)($gp)
/* 010A64 00410A64 8F84875C */  lw          $a0, %got(LDPtr)($gp)
/* 010A68 00410A68 8F858758 */  lw          $a1, %got(SName)($gp)
/* 010A6C 00410A6C 8F868760 */  lw          $a2, %got(SHeader)($gp)
/* 010A70 00410A70 8C840000 */  lw          $a0, 0x0($a0)
/* 010A74 00410A74 0320F809 */  jalr        $t9
/* 010A78 00410A78 8CA50000 */   lw         $a1, 0x0($a1)
/* 010A7C 00410A7C 14400003 */  bnez        $v0, .L00410A8C
/* 010A80 00410A80 8FBC0018 */   lw         $gp, 0x18($sp)
/* 010A84 00410A84 1000006C */  b           .L00410C38
/* 010A88 00410A88 00000000 */   nop
.L00410A8C:
/* 010A8C 00410A8C 8F998254 */  lw          $t9, %call16(ldfseek)($gp)
/* 010A90 00410A90 8F84875C */  lw          $a0, %got(LDPtr)($gp)
/* 010A94 00410A94 8F858760 */  lw          $a1, %got(SHeader)($gp)
/* 010A98 00410A98 00003025 */  move        $a2, $zero
/* 010A9C 00410A9C 8C840000 */  lw          $a0, 0x0($a0)
/* 010AA0 00410AA0 0320F809 */  jalr        $t9
/* 010AA4 00410AA4 8CA50014 */   lw         $a1, 0x14($a1)
/* 010AA8 00410AA8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010AAC 00410AAC 8F888760 */  lw          $t0, %got(SHeader)($gp)
/* 010AB0 00410AB0 8F8A8760 */  lw          $t2, %got(SHeader)($gp)
/* 010AB4 00410AB4 8F818748 */  lw          $at, %got(Address)($gp)
/* 010AB8 00410AB8 8D080008 */  lw          $t0, 0x8($t0)
/* 010ABC 00410ABC 8D4A0010 */  lw          $t2, 0x10($t2)
/* 010AC0 00410AC0 AC280000 */  sw          $t0, 0x0($at)
/* 010AC4 00410AC4 01084823 */  subu        $t1, $t0, $t0
/* 010AC8 00410AC8 012A082B */  sltu        $at, $t1, $t2
/* 010ACC 00410ACC 1020005A */  beqz        $at, .L00410C38
/* 010AD0 00410AD0 00000000 */   nop
.L00410AD4:
/* 010AD4 00410AD4 8F998258 */  lw          $t9, %call16(ldfread)($gp)
/* 010AD8 00410AD8 8F87875C */  lw          $a3, %got(LDPtr)($gp)
/* 010ADC 00410ADC 8F84874C */  lw          $a0, %got(Data0)($gp)
/* 010AE0 00410AE0 24050001 */  addiu       $a1, $zero, 0x1
/* 010AE4 00410AE4 24060004 */  addiu       $a2, $zero, 0x4
/* 010AE8 00410AE8 0320F809 */  jalr        $t9
/* 010AEC 00410AEC 8CE70000 */   lw         $a3, 0x0($a3)
/* 010AF0 00410AF0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010AF4 00410AF4 8F8B8688 */  lw          $t3, %got(Swap)($gp)
/* 010AF8 00410AF8 8D6B0000 */  lw          $t3, 0x0($t3)
/* 010AFC 00410AFC 1160000F */  beqz        $t3, .L00410B3C
/* 010B00 00410B00 00000000 */   nop
/* 010B04 00410B04 8F8C874C */  lw          $t4, %got(Data0)($gp)
/* 010B08 00410B08 3C0100FF */  lui         $at, (0xFF0000 >> 16)
/* 010B0C 00410B0C 8D8C0000 */  lw          $t4, 0x0($t4)
/* 010B10 00410B10 000C7200 */  sll         $t6, $t4, 8
/* 010B14 00410B14 01C17824 */  and         $t7, $t6, $at
/* 010B18 00410B18 000C6E00 */  sll         $t5, $t4, 24
/* 010B1C 00410B1C 000CCA02 */  srl         $t9, $t4, 8
/* 010B20 00410B20 8F81874C */  lw          $at, %got(Data0)($gp)
/* 010B24 00410B24 3328FF00 */  andi        $t0, $t9, 0xFF00
/* 010B28 00410B28 01AFC025 */  or          $t8, $t5, $t7
/* 010B2C 00410B2C 03084825 */  or          $t1, $t8, $t0
/* 010B30 00410B30 000C5602 */  srl         $t2, $t4, 24
/* 010B34 00410B34 012A5825 */  or          $t3, $t1, $t2
/* 010B38 00410B38 AC2B0000 */  sw          $t3, 0x0($at)
.L00410B3C:
/* 010B3C 00410B3C 8F998258 */  lw          $t9, %call16(ldfread)($gp)
/* 010B40 00410B40 8F87875C */  lw          $a3, %got(LDPtr)($gp)
/* 010B44 00410B44 8F848750 */  lw          $a0, %got(Data1)($gp)
/* 010B48 00410B48 24050001 */  addiu       $a1, $zero, 0x1
/* 010B4C 00410B4C 24060004 */  addiu       $a2, $zero, 0x4
/* 010B50 00410B50 0320F809 */  jalr        $t9
/* 010B54 00410B54 8CE70000 */   lw         $a3, 0x0($a3)
/* 010B58 00410B58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010B5C 00410B5C 8F8E8688 */  lw          $t6, %got(Swap)($gp)
/* 010B60 00410B60 8DCE0000 */  lw          $t6, 0x0($t6)
/* 010B64 00410B64 11C0000F */  beqz        $t6, .L00410BA4
/* 010B68 00410B68 00000000 */   nop
/* 010B6C 00410B6C 8F8D8750 */  lw          $t5, %got(Data1)($gp)
/* 010B70 00410B70 3C0100FF */  lui         $at, (0xFF0000 >> 16)
/* 010B74 00410B74 8DAD0000 */  lw          $t5, 0x0($t5)
/* 010B78 00410B78 000DCA00 */  sll         $t9, $t5, 8
/* 010B7C 00410B7C 0321C024 */  and         $t8, $t9, $at
/* 010B80 00410B80 000D7E00 */  sll         $t7, $t5, 24
/* 010B84 00410B84 000D6202 */  srl         $t4, $t5, 8
/* 010B88 00410B88 8F818750 */  lw          $at, %got(Data1)($gp)
/* 010B8C 00410B8C 3189FF00 */  andi        $t1, $t4, 0xFF00
/* 010B90 00410B90 01F84025 */  or          $t0, $t7, $t8
/* 010B94 00410B94 01095025 */  or          $t2, $t0, $t1
/* 010B98 00410B98 000D5E02 */  srl         $t3, $t5, 24
/* 010B9C 00410B9C 014B7025 */  or          $t6, $t2, $t3
/* 010BA0 00410BA0 AC2E0000 */  sw          $t6, 0x0($at)
.L00410BA4:
/* 010BA4 00410BA4 8F998688 */  lw          $t9, %got(Swap)($gp)
/* 010BA8 00410BA8 8F390000 */  lw          $t9, 0x0($t9)
/* 010BAC 00410BAC 1320000A */  beqz        $t9, .L00410BD8
/* 010BB0 00410BB0 00000000 */   nop
/* 010BB4 00410BB4 8F8F8750 */  lw          $t7, %got(Data1)($gp)
/* 010BB8 00410BB8 8FB80028 */  lw          $t8, 0x28($sp)
/* 010BBC 00410BBC 8DEF0000 */  lw          $t7, 0x0($t7)
/* 010BC0 00410BC0 AF0F0000 */  sw          $t7, 0x0($t8)
/* 010BC4 00410BC4 8F8C874C */  lw          $t4, %got(Data0)($gp)
/* 010BC8 00410BC8 8FA80028 */  lw          $t0, 0x28($sp)
/* 010BCC 00410BCC 8D8C0000 */  lw          $t4, 0x0($t4)
/* 010BD0 00410BD0 10000009 */  b           .L00410BF8
/* 010BD4 00410BD4 AD0C0004 */   sw         $t4, 0x4($t0)
.L00410BD8:
/* 010BD8 00410BD8 8F89874C */  lw          $t1, %got(Data0)($gp)
/* 010BDC 00410BDC 8FAD0028 */  lw          $t5, 0x28($sp)
/* 010BE0 00410BE0 8D290000 */  lw          $t1, 0x0($t1)
/* 010BE4 00410BE4 ADA90000 */  sw          $t1, 0x0($t5)
/* 010BE8 00410BE8 8F8A8750 */  lw          $t2, %got(Data1)($gp)
/* 010BEC 00410BEC 8FAB0028 */  lw          $t3, 0x28($sp)
/* 010BF0 00410BF0 8D4A0000 */  lw          $t2, 0x0($t2)
/* 010BF4 00410BF4 AD6A0004 */  sw          $t2, 0x4($t3)
.L00410BF8:
/* 010BF8 00410BF8 8FAE0028 */  lw          $t6, 0x28($sp)
/* 010BFC 00410BFC 25D90008 */  addiu       $t9, $t6, 0x8
/* 010C00 00410C00 AFB90028 */  sw          $t9, 0x28($sp)
/* 010C04 00410C04 8F8F8748 */  lw          $t7, %got(Address)($gp)
/* 010C08 00410C08 8F8C8760 */  lw          $t4, %got(SHeader)($gp)
/* 010C0C 00410C0C 8F898760 */  lw          $t1, %got(SHeader)($gp)
/* 010C10 00410C10 8DEF0000 */  lw          $t7, 0x0($t7)
/* 010C14 00410C14 8F818748 */  lw          $at, %got(Address)($gp)
/* 010C18 00410C18 8D8C0008 */  lw          $t4, 0x8($t4)
/* 010C1C 00410C1C 8D290010 */  lw          $t1, 0x10($t1)
/* 010C20 00410C20 25F80008 */  addiu       $t8, $t7, 0x8
/* 010C24 00410C24 AC380000 */  sw          $t8, 0x0($at)
/* 010C28 00410C28 030C4023 */  subu        $t0, $t8, $t4
/* 010C2C 00410C2C 0109082B */  sltu        $at, $t0, $t1
/* 010C30 00410C30 1420FFA8 */  bnez        $at, .L00410AD4
/* 010C34 00410C34 00000000 */   nop
.L00410C38:
/* 010C38 00410C38 8F998244 */  lw          $t9, %call16(ldclose)($gp)
/* 010C3C 00410C3C 8F84875C */  lw          $a0, %got(LDPtr)($gp)
/* 010C40 00410C40 0320F809 */  jalr        $t9
/* 010C44 00410C44 8C840000 */   lw         $a0, 0x0($a0)
/* 010C48 00410C48 8FBC0018 */  lw          $gp, 0x18($sp)
/* 010C4C 00410C4C 8F828760 */  lw          $v0, %got(SHeader)($gp)
/* 010C50 00410C50 10000003 */  b           .L00410C60
/* 010C54 00410C54 8C420010 */   lw         $v0, 0x10($v0)
/* 010C58 00410C58 10000001 */  b           .L00410C60
/* 010C5C 00410C5C 00000000 */   nop
.L00410C60:
/* 010C60 00410C60 8FBF001C */  lw          $ra, 0x1C($sp)
/* 010C64 00410C64 8FB00014 */  lw          $s0, 0x14($sp)
/* 010C68 00410C68 27BD0028 */  addiu       $sp, $sp, 0x28
/* 010C6C 00410C6C 03E00008 */  jr          $ra
/* 010C70 00410C70 00000000 */   nop
/* 010C74 00410C74 00000000 */  nop
/* 010C78 00410C78 00000000 */  nop
/* 010C7C 00410C7C 00000000 */  nop
/* 010C80 00410C80 00000000 */  nop
/* 010C84 00410C84 00000000 */  nop
/* 010C88 00410C88 00000000 */  nop
/* 010C8C 00410C8C 00000000 */  nop
