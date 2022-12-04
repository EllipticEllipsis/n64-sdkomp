glabel address_to_procedure # 528
/* 033A80 00433A80 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 033A84 00433A84 279CF2E0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDF2E0
/* 033A88 00433A88 0399E021 */  addu        $gp, $gp, $t9
/* 033A8C 00433A8C 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 033A90 00433A90 8F998528 */  lw          $t9, %call16(address_to_section)($gp)
/* 033A94 00433A94 AFBF003C */  sw          $ra, 0x3C($sp)
/* 033A98 00433A98 AFB70034 */  sw          $s7, 0x34($sp)
/* 033A9C 00433A9C AFB60030 */  sw          $s6, 0x30($sp)
/* 033AA0 00433AA0 00A0B025 */  move        $s6, $a1
/* 033AA4 00433AA4 0080B825 */  move        $s7, $a0
/* 033AA8 00433AA8 AFBC0038 */  sw          $gp, 0x38($sp)
/* 033AAC 00433AAC AFB5002C */  sw          $s5, 0x2C($sp)
/* 033AB0 00433AB0 AFB40028 */  sw          $s4, 0x28($sp)
/* 033AB4 00433AB4 AFB30024 */  sw          $s3, 0x24($sp)
/* 033AB8 00433AB8 AFB20020 */  sw          $s2, 0x20($sp)
/* 033ABC 00433ABC AFB1001C */  sw          $s1, 0x1C($sp)
/* 033AC0 00433AC0 0320F809 */  jalr        $t9
/* 033AC4 00433AC4 AFB00018 */   sw         $s0, 0x18($sp)
/* 033AC8 00433AC8 14400003 */  bnez        $v0, .L00433AD8
/* 033ACC 00433ACC 8FBC0038 */   lw         $gp, 0x38($sp)
/* 033AD0 00433AD0 10000092 */  b           .L00433D1C
/* 033AD4 00433AD4 2402FFFF */   addiu      $v0, $zero, -0x1
.L00433AD8:
/* 033AD8 00433AD8 8EE2009C */  lw          $v0, 0x9C($s7)
/* 033ADC 00433ADC 8EE700D4 */  lw          $a3, 0xD4($s7)
/* 033AE0 00433AE0 14400003 */  bnez        $v0, .L00433AF0
/* 033AE4 00433AE4 00E09025 */   move       $s2, $a3
/* 033AE8 00433AE8 1000008C */  b           .L00433D1C
/* 033AEC 00433AEC 2402FFFF */   addiu      $v0, $zero, -0x1
.L00433AF0:
/* 033AF0 00433AF0 8EE60198 */  lw          $a2, 0x198($s7)
/* 033AF4 00433AF4 8C430018 */  lw          $v1, 0x18($v0)
/* 033AF8 00433AF8 02409825 */  move        $s3, $s2
/* 033AFC 00433AFC 10C0003A */  beqz        $a2, .L00433BE8
/* 033B00 00433B00 00722021 */   addu       $a0, $v1, $s2
/* 033B04 00433B04 2464FFFF */  addiu       $a0, $v1, -0x1
/* 033B08 00433B08 00C02825 */  move        $a1, $a2
/* 033B0C 00433B0C 00009025 */  move        $s2, $zero
/* 033B10 00433B10 00009825 */  move        $s3, $zero
/* 033B14 00433B14 1880001F */  blez        $a0, .L00433B94
/* 033B18 00433B18 00808825 */   move       $s1, $a0
/* 033B1C 00433B1C 02518021 */  addu        $s0, $s2, $s1
.L00433B20:
/* 033B20 00433B20 06010002 */  bgez        $s0, .L00433B2C
/* 033B24 00433B24 02000821 */   addu       $at, $s0, $zero
/* 033B28 00433B28 26010001 */  addiu       $at, $s0, 0x1
.L00433B2C:
/* 033B2C 00433B2C 00018043 */  sra         $s0, $at, 1
/* 033B30 00433B30 001070C0 */  sll         $t6, $s0, 3
/* 033B34 00433B34 00AE1821 */  addu        $v1, $a1, $t6
/* 033B38 00433B38 8C620004 */  lw          $v0, 0x4($v1)
/* 033B3C 00433B3C 02009825 */  move        $s3, $s0
/* 033B40 00433B40 0240A025 */  move        $s4, $s2
/* 033B44 00433B44 02C2082B */  sltu        $at, $s6, $v0
/* 033B48 00433B48 10200003 */  beqz        $at, .L00433B58
/* 033B4C 00433B4C 0220A825 */   move       $s5, $s1
/* 033B50 00433B50 1000000A */  b           .L00433B7C
/* 033B54 00433B54 02608825 */   move       $s1, $s3
.L00433B58:
/* 033B58 00433B58 02C2082B */  sltu        $at, $s6, $v0
/* 033B5C 00433B5C 14200007 */  bnez        $at, .L00433B7C
/* 033B60 00433B60 00000000 */   nop
/* 033B64 00433B64 1211000B */  beq         $s0, $s1, .L00433B94
/* 033B68 00433B68 02609025 */   move       $s2, $s3
/* 033B6C 00433B6C 8C6F000C */  lw          $t7, 0xC($v1)
/* 033B70 00433B70 02CF082B */  sltu        $at, $s6, $t7
/* 033B74 00433B74 54200008 */  bnel        $at, $zero, .L00433B98
/* 033B78 00433B78 0264082A */   slt        $at, $s3, $a0
.L00433B7C:
/* 033B7C 00433B7C 16540003 */  bne         $s2, $s4, .L00433B8C
/* 033B80 00433B80 0251082A */   slt        $at, $s2, $s1
/* 033B84 00433B84 52350004 */  beql        $s1, $s5, .L00433B98
/* 033B88 00433B88 0264082A */   slt        $at, $s3, $a0
.L00433B8C:
/* 033B8C 00433B8C 5420FFE4 */  bnel        $at, $zero, .L00433B20
/* 033B90 00433B90 02518021 */   addu       $s0, $s2, $s1
.L00433B94:
/* 033B94 00433B94 0264082A */  slt         $at, $s3, $a0
.L00433B98:
/* 033B98 00433B98 1020000E */  beqz        $at, .L00433BD4
/* 033B9C 00433B9C 0013C0C0 */   sll        $t8, $s3, 3
/* 033BA0 00433BA0 00B81021 */  addu        $v0, $a1, $t8
/* 033BA4 00433BA4 8C59000C */  lw          $t9, 0xC($v0)
/* 033BA8 00433BA8 02D9082B */  sltu        $at, $s6, $t9
/* 033BAC 00433BAC 5420000A */  bnel        $at, $zero, .L00433BD8
/* 033BB0 00433BB0 001348C0 */   sll        $t1, $s3, 3
/* 033BB4 00433BB4 26730001 */  addiu       $s3, $s3, 0x1
.L00433BB8:
/* 033BB8 00433BB8 0264082A */  slt         $at, $s3, $a0
/* 033BBC 00433BBC 10200005 */  beqz        $at, .L00433BD4
/* 033BC0 00433BC0 24420008 */   addiu      $v0, $v0, 0x8
/* 033BC4 00433BC4 8C48000C */  lw          $t0, 0xC($v0)
/* 033BC8 00433BC8 02C8082B */  sltu        $at, $s6, $t0
/* 033BCC 00433BCC 5020FFFA */  beql        $at, $zero, .L00433BB8
/* 033BD0 00433BD0 26730001 */   addiu      $s3, $s3, 0x1
.L00433BD4:
/* 033BD4 00433BD4 001348C0 */  sll         $t1, $s3, 3
.L00433BD8:
/* 033BD8 00433BD8 00A95021 */  addu        $t2, $a1, $t1
/* 033BDC 00433BDC 8D530000 */  lw          $s3, 0x0($t2)
/* 033BE0 00433BE0 10000043 */  b           .L00433CF0
/* 033BE4 00433BE4 02679821 */   addu       $s3, $s3, $a3
.L00433BE8:
/* 033BE8 00433BE8 2491FFFF */  addiu       $s1, $a0, -0x1
/* 033BEC 00433BEC 0251082A */  slt         $at, $s2, $s1
/* 033BF0 00433BF0 10200026 */  beqz        $at, .L00433C8C
/* 033BF4 00433BF4 AFB10044 */   sw         $s1, 0x44($sp)
.L00433BF8:
/* 033BF8 00433BF8 8F9984E8 */  lw          $t9, %call16(procedure_address)($gp)
/* 033BFC 00433BFC 02518021 */  addu        $s0, $s2, $s1
/* 033C00 00433C00 06010002 */  bgez        $s0, .L00433C0C
/* 033C04 00433C04 02000821 */   addu       $at, $s0, $zero
/* 033C08 00433C08 26010001 */  addiu       $at, $s0, 0x1
.L00433C0C:
/* 033C0C 00433C0C 00018043 */  sra         $s0, $at, 1
/* 033C10 00433C10 02009825 */  move        $s3, $s0
/* 033C14 00433C14 0240A025 */  move        $s4, $s2
/* 033C18 00433C18 0220A825 */  move        $s5, $s1
/* 033C1C 00433C1C 02002825 */  move        $a1, $s0
/* 033C20 00433C20 0320F809 */  jalr        $t9
/* 033C24 00433C24 02E02025 */   move       $a0, $s7
/* 033C28 00433C28 02C2082B */  sltu        $at, $s6, $v0
/* 033C2C 00433C2C 10200003 */  beqz        $at, .L00433C3C
/* 033C30 00433C30 8FBC0038 */   lw         $gp, 0x38($sp)
/* 033C34 00433C34 1000000F */  b           .L00433C74
/* 033C38 00433C38 02608825 */   move       $s1, $s3
.L00433C3C:
/* 033C3C 00433C3C 02C2082B */  sltu        $at, $s6, $v0
/* 033C40 00433C40 1420000C */  bnez        $at, .L00433C74
/* 033C44 00433C44 00000000 */   nop
/* 033C48 00433C48 52110011 */  beql        $s0, $s1, .L00433C90
/* 033C4C 00433C4C 8FAD0044 */   lw         $t5, 0x44($sp)
/* 033C50 00433C50 8F9984E8 */  lw          $t9, %call16(procedure_address)($gp)
/* 033C54 00433C54 02E02025 */  move        $a0, $s7
/* 033C58 00433C58 26050001 */  addiu       $a1, $s0, 0x1
/* 033C5C 00433C5C 0320F809 */  jalr        $t9
/* 033C60 00433C60 00000000 */   nop
/* 033C64 00433C64 02C2082B */  sltu        $at, $s6, $v0
/* 033C68 00433C68 14200008 */  bnez        $at, .L00433C8C
/* 033C6C 00433C6C 8FBC0038 */   lw         $gp, 0x38($sp)
/* 033C70 00433C70 02609025 */  move        $s2, $s3
.L00433C74:
/* 033C74 00433C74 16540003 */  bne         $s2, $s4, .L00433C84
/* 033C78 00433C78 0251082A */   slt        $at, $s2, $s1
/* 033C7C 00433C7C 52350004 */  beql        $s1, $s5, .L00433C90
/* 033C80 00433C80 8FAD0044 */   lw         $t5, 0x44($sp)
.L00433C84:
/* 033C84 00433C84 1420FFDC */  bnez        $at, .L00433BF8
/* 033C88 00433C88 00000000 */   nop
.L00433C8C:
/* 033C8C 00433C8C 8FAD0044 */  lw          $t5, 0x44($sp)
.L00433C90:
/* 033C90 00433C90 026D082A */  slt         $at, $s3, $t5
/* 033C94 00433C94 10200016 */  beqz        $at, .L00433CF0
/* 033C98 00433C98 00000000 */   nop
/* 033C9C 00433C9C 8F9984E8 */  lw          $t9, %call16(procedure_address)($gp)
/* 033CA0 00433CA0 26700001 */  addiu       $s0, $s3, 0x1
/* 033CA4 00433CA4 02002825 */  move        $a1, $s0
/* 033CA8 00433CA8 0320F809 */  jalr        $t9
/* 033CAC 00433CAC 02E02025 */   move       $a0, $s7
/* 033CB0 00433CB0 02C2082B */  sltu        $at, $s6, $v0
/* 033CB4 00433CB4 1420000E */  bnez        $at, .L00433CF0
/* 033CB8 00433CB8 8FBC0038 */   lw         $gp, 0x38($sp)
.L00433CBC:
/* 033CBC 00433CBC 8FAE0044 */  lw          $t6, 0x44($sp)
/* 033CC0 00433CC0 02009825 */  move        $s3, $s0
/* 033CC4 00433CC4 020E082A */  slt         $at, $s0, $t6
/* 033CC8 00433CC8 10200009 */  beqz        $at, .L00433CF0
/* 033CCC 00433CCC 00000000 */   nop
/* 033CD0 00433CD0 8F9984E8 */  lw          $t9, %call16(procedure_address)($gp)
/* 033CD4 00433CD4 26100001 */  addiu       $s0, $s0, 0x1
/* 033CD8 00433CD8 02002825 */  move        $a1, $s0
/* 033CDC 00433CDC 0320F809 */  jalr        $t9
/* 033CE0 00433CE0 02E02025 */   move       $a0, $s7
/* 033CE4 00433CE4 02C2082B */  sltu        $at, $s6, $v0
/* 033CE8 00433CE8 1020FFF4 */  beqz        $at, .L00433CBC
/* 033CEC 00433CEC 8FBC0038 */   lw         $gp, 0x38($sp)
.L00433CF0:
/* 033CF0 00433CF0 8F9984E8 */  lw          $t9, %call16(procedure_address)($gp)
/* 033CF4 00433CF4 02E02025 */  move        $a0, $s7
/* 033CF8 00433CF8 02602825 */  move        $a1, $s3
/* 033CFC 00433CFC 0320F809 */  jalr        $t9
/* 033D00 00433D00 00000000 */   nop
/* 033D04 00433D04 02C2082B */  sltu        $at, $s6, $v0
/* 033D08 00433D08 10200003 */  beqz        $at, .L00433D18
/* 033D0C 00433D0C 8FBC0038 */   lw         $gp, 0x38($sp)
/* 033D10 00433D10 10000002 */  b           .L00433D1C
/* 033D14 00433D14 2402FFFF */   addiu      $v0, $zero, -0x1
.L00433D18:
/* 033D18 00433D18 02601025 */  move        $v0, $s3
.L00433D1C:
/* 033D1C 00433D1C 8FBF003C */  lw          $ra, 0x3C($sp)
/* 033D20 00433D20 8FB00018 */  lw          $s0, 0x18($sp)
/* 033D24 00433D24 8FB1001C */  lw          $s1, 0x1C($sp)
/* 033D28 00433D28 8FB20020 */  lw          $s2, 0x20($sp)
/* 033D2C 00433D2C 8FB30024 */  lw          $s3, 0x24($sp)
/* 033D30 00433D30 8FB40028 */  lw          $s4, 0x28($sp)
/* 033D34 00433D34 8FB5002C */  lw          $s5, 0x2C($sp)
/* 033D38 00433D38 8FB60030 */  lw          $s6, 0x30($sp)
/* 033D3C 00433D3C 8FB70034 */  lw          $s7, 0x34($sp)
/* 033D40 00433D40 03E00008 */  jr          $ra
/* 033D44 00433D44 27BD0078 */   addiu      $sp, $sp, 0x78
