glabel search_externals # 625
/* 03D9B4 0043D9B4 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03D9B8 0043D9B8 279C53AC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD53AC
/* 03D9BC 0043D9BC 0399E021 */  addu        $gp, $gp, $t9
/* 03D9C0 0043D9C0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 03D9C4 0043D9C4 8F998024 */  lw          $t9, %got(obj_lookup)($gp)
/* 03D9C8 0043D9C8 AFBF003C */  sw          $ra, 0x3C($sp)
/* 03D9CC 0043D9CC AFB70034 */  sw          $s7, 0x34($sp)
/* 03D9D0 0043D9D0 AFB60030 */  sw          $s6, 0x30($sp)
/* 03D9D4 0043D9D4 AFB5002C */  sw          $s5, 0x2C($sp)
/* 03D9D8 0043D9D8 2739D794 */  addiu       $t9, $t9, %lo(obj_lookup)
/* 03D9DC 0043D9DC 0080A825 */  move        $s5, $a0
/* 03D9E0 0043D9E0 00A0B025 */  move        $s6, $a1
/* 03D9E4 0043D9E4 00C0B825 */  move        $s7, $a2
/* 03D9E8 0043D9E8 AFBC0038 */  sw          $gp, 0x38($sp)
/* 03D9EC 0043D9EC AFB40028 */  sw          $s4, 0x28($sp)
/* 03D9F0 0043D9F0 AFB30024 */  sw          $s3, 0x24($sp)
/* 03D9F4 0043D9F4 AFB20020 */  sw          $s2, 0x20($sp)
/* 03D9F8 0043D9F8 AFB1001C */  sw          $s1, 0x1C($sp)
/* 03D9FC 0043D9FC 0320F809 */  jalr        $t9
/* 03DA00 0043DA00 AFB00018 */   sw         $s0, 0x18($sp)
/* 03DA04 0043DA04 8FBC0038 */  lw          $gp, 0x38($sp)
/* 03DA08 0043DA08 02C02025 */  move        $a0, $s6
/* 03DA0C 0043DA0C 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 03DA10 0043DA10 0320F809 */  jalr        $t9
/* 03DA14 0043DA14 00000000 */   nop
/* 03DA18 0043DA18 8FBC0038 */  lw          $gp, 0x38($sp)
/* 03DA1C 0043DA1C 00402025 */  move        $a0, $v0
/* 03DA20 0043DA20 00403825 */  move        $a3, $v0
/* 03DA24 0043DA24 1840000F */  blez        $v0, .L0043DA64
/* 03DA28 0043DA28 00001825 */   move       $v1, $zero
/* 03DA2C 0043DA2C 02C01025 */  move        $v0, $s6
/* 03DA30 0043DA30 24060265 */  addiu       $a2, $zero, 0x265
/* 03DA34 0043DA34 8F858048 */  lw          $a1, %got(__ctype)($gp)
.L0043DA38:
/* 03DA38 0043DA38 00860019 */  multu       $a0, $a2
/* 03DA3C 0043DA3C 804E0000 */  lb          $t6, 0x0($v0)
/* 03DA40 0043DA40 24630001 */  addiu       $v1, $v1, 0x1
/* 03DA44 0043DA44 0067082A */  slt         $at, $v1, $a3
/* 03DA48 0043DA48 01C57821 */  addu        $t7, $t6, $a1
/* 03DA4C 0043DA4C 91F80102 */  lbu         $t8, 0x102($t7)
/* 03DA50 0043DA50 24420001 */  addiu       $v0, $v0, 0x1
/* 03DA54 0043DA54 0000C812 */  mflo        $t9
/* 03DA58 0043DA58 03192021 */  addu        $a0, $t8, $t9
/* 03DA5C 0043DA5C 1420FFF6 */  bnez        $at, .L0043DA38
/* 03DA60 0043DA60 00000000 */   nop
.L0043DA64:
/* 03DA64 0043DA64 3C013FFF */  lui         $at, (0x3FFFFFFF >> 16)
/* 03DA68 0043DA68 3421FFFF */  ori         $at, $at, (0x3FFFFFFF & 0xFFFF)
/* 03DA6C 0043DA6C 00812024 */  and         $a0, $a0, $at
/* 03DA70 0043DA70 240103F1 */  addiu       $at, $zero, 0x3F1
/* 03DA74 0043DA74 0081001A */  div         $zero, $a0, $at
/* 03DA78 0043DA78 8F898030 */  lw          $t1, %got(B_1000F708)($gp)
/* 03DA7C 0043DA7C 00002010 */  mfhi        $a0
/* 03DA80 0043DA80 00044080 */  sll         $t0, $a0, 2
/* 03DA84 0043DA84 2529F708 */  addiu       $t1, $t1, %lo(B_1000F708)
/* 03DA88 0043DA88 01095021 */  addu        $t2, $t0, $t1
/* 03DA8C 0043DA8C 8D500000 */  lw          $s0, 0x0($t2)
/* 03DA90 0043DA90 24140006 */  addiu       $s4, $zero, 0x6
/* 03DA94 0043DA94 24130012 */  addiu       $s3, $zero, 0x12
/* 03DA98 0043DA98 12000036 */  beqz        $s0, .L0043DB74
/* 03DA9C 0043DA9C 24120011 */   addiu      $s2, $zero, 0x11
/* 03DAA0 0043DAA0 24110015 */  addiu       $s1, $zero, 0x15
/* 03DAA4 0043DAA4 8E0B0000 */  lw          $t3, 0x0($s0)
.L0043DAA8:
/* 03DAA8 0043DAA8 56AB0030 */  bnel        $s5, $t3, .L0043DB6C
/* 03DAAC 0043DAAC 8E100010 */   lw         $s0, 0x10($s0)
/* 03DAB0 0043DAB0 8F9985AC */  lw          $t9, %call16(case_streq)($gp)
/* 03DAB4 0043DAB4 8E040004 */  lw          $a0, 0x4($s0)
/* 03DAB8 0043DAB8 02C02825 */  move        $a1, $s6
/* 03DABC 0043DABC 0320F809 */  jalr        $t9
/* 03DAC0 0043DAC0 02E03025 */   move       $a2, $s7
/* 03DAC4 0043DAC4 10400028 */  beqz        $v0, .L0043DB68
/* 03DAC8 0043DAC8 8FBC0038 */   lw         $gp, 0x38($sp)
/* 03DACC 0043DACC 8E020008 */  lw          $v0, 0x8($s0)
/* 03DAD0 0043DAD0 52820026 */  beql        $s4, $v0, .L0043DB6C
/* 03DAD4 0043DAD4 8E100010 */   lw         $s0, 0x10($s0)
/* 03DAD8 0043DAD8 52220024 */  beql        $s1, $v0, .L0043DB6C
/* 03DADC 0043DADC 8E100010 */   lw         $s0, 0x10($s0)
/* 03DAE0 0043DAE0 52420022 */  beql        $s2, $v0, .L0043DB6C
/* 03DAE4 0043DAE4 8E100010 */   lw         $s0, 0x10($s0)
/* 03DAE8 0043DAE8 52620020 */  beql        $s3, $v0, .L0043DB6C
/* 03DAEC 0043DAEC 8E100010 */   lw         $s0, 0x10($s0)
/* 03DAF0 0043DAF0 8E05000C */  lw          $a1, 0xC($s0)
/* 03DAF4 0043DAF4 8EAC00D8 */  lw          $t4, 0xD8($s5)
/* 03DAF8 0043DAF8 8EA200AC */  lw          $v0, 0xAC($s5)
/* 03DAFC 0043DAFC 00AC1823 */  subu        $v1, $a1, $t4
/* 03DB00 0043DB00 00031900 */  sll         $v1, $v1, 4
/* 03DB04 0043DB04 00436821 */  addu        $t5, $v0, $v1
/* 03DB08 0043DB08 95A40002 */  lhu         $a0, 0x2($t5)
/* 03DB0C 0043DB0C 00433021 */  addu        $a2, $v0, $v1
/* 03DB10 0043DB10 24C60004 */  addiu       $a2, $a2, 0x4
/* 03DB14 0043DB14 10800012 */  beqz        $a0, .L0043DB60
/* 03DB18 0043DB18 00000000 */   nop
/* 03DB1C 0043DB1C 8CC20008 */  lw          $v0, 0x8($a2)
/* 03DB20 0043DB20 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03DB24 0043DB24 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03DB28 0043DB28 00411824 */  and         $v1, $v0, $at
/* 03DB2C 0043DB2C 1061000C */  beq         $v1, $at, .L0043DB60
/* 03DB30 0043DB30 00027682 */   srl        $t6, $v0, 26
/* 03DB34 0043DB34 168E000A */  bne         $s4, $t6, .L0043DB60
/* 03DB38 0043DB38 0004C0C0 */   sll        $t8, $a0, 3
/* 03DB3C 0043DB3C 8EAF00A0 */  lw          $t7, 0xA0($s5)
/* 03DB40 0043DB40 0304C021 */  addu        $t8, $t8, $a0
/* 03DB44 0043DB44 0018C0C0 */  sll         $t8, $t8, 3
/* 03DB48 0043DB48 01F8C821 */  addu        $t9, $t7, $t8
/* 03DB4C 0043DB4C 8F280010 */  lw          $t0, 0x10($t9)
/* 03DB50 0043DB50 8EA900CC */  lw          $t1, 0xCC($s5)
/* 03DB54 0043DB54 01095021 */  addu        $t2, $t0, $t1
/* 03DB58 0043DB58 10000007 */  b           .L0043DB78
/* 03DB5C 0043DB5C 01431021 */   addu       $v0, $t2, $v1
.L0043DB60:
/* 03DB60 0043DB60 10000005 */  b           .L0043DB78
/* 03DB64 0043DB64 00A01025 */   move       $v0, $a1
.L0043DB68:
/* 03DB68 0043DB68 8E100010 */  lw          $s0, 0x10($s0)
.L0043DB6C:
/* 03DB6C 0043DB6C 5600FFCE */  bnel        $s0, $zero, .L0043DAA8
/* 03DB70 0043DB70 8E0B0000 */   lw         $t3, 0x0($s0)
.L0043DB74:
/* 03DB74 0043DB74 2402FFFF */  addiu       $v0, $zero, -0x1
.L0043DB78:
/* 03DB78 0043DB78 8FBF003C */  lw          $ra, 0x3C($sp)
/* 03DB7C 0043DB7C 8FB00018 */  lw          $s0, 0x18($sp)
/* 03DB80 0043DB80 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03DB84 0043DB84 8FB20020 */  lw          $s2, 0x20($sp)
/* 03DB88 0043DB88 8FB30024 */  lw          $s3, 0x24($sp)
/* 03DB8C 0043DB8C 8FB40028 */  lw          $s4, 0x28($sp)
/* 03DB90 0043DB90 8FB5002C */  lw          $s5, 0x2C($sp)
/* 03DB94 0043DB94 8FB60030 */  lw          $s6, 0x30($sp)
/* 03DB98 0043DB98 8FB70034 */  lw          $s7, 0x34($sp)
/* 03DB9C 0043DB9C 03E00008 */  jr          $ra
/* 03DBA0 0043DBA0 27BD0040 */   addiu      $sp, $sp, 0x40
/* 03DBA4 0043DBA4 00000000 */  nop
/* 03DBA8 0043DBA8 00000000 */  nop
/* 03DBAC 0043DBAC 00000000 */  nop
