glabel func_00425CAC # 168
/* 025CAC 00425CAC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 025CB0 00425CB0 279CD0B4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBED0B4
/* 025CB4 00425CB4 0399E021 */  addu        $gp, $gp, $t9
/* 025CB8 00425CB8 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 025CBC 00425CBC AFA40004 */  sw          $a0, 0x4($sp)
/* 025CC0 00425CC0 00067080 */  sll         $t6, $a2, 2
/* 025CC4 00425CC4 8FB80004 */  lw          $t8, 0x4($sp)
/* 025CC8 00425CC8 01C67021 */  addu        $t6, $t6, $a2
/* 025CCC 00425CCC 000E70C0 */  sll         $t6, $t6, 3
/* 025CD0 00425CD0 00067880 */  sll         $t7, $a2, 2
/* 025CD4 00425CD4 008E2021 */  addu        $a0, $a0, $t6
/* 025CD8 00425CD8 01E67821 */  addu        $t7, $t7, $a2
/* 025CDC 00425CDC 000F78C0 */  sll         $t7, $t7, 3
/* 025CE0 00425CE0 0304382B */  sltu        $a3, $t8, $a0
/* 025CE4 00425CE4 00AF2821 */  addu        $a1, $a1, $t7
/* 025CE8 00425CE8 10E00074 */  beqz        $a3, .L00425EBC
/* 025CEC 00425CEC 2484FFD8 */   addiu      $a0, $a0, -0x28
.L00425CF0:
/* 025CF0 00425CF0 90B9FFFC */  lbu         $t9, -0x4($a1)
/* 025CF4 00425CF4 90A9FFFD */  lbu         $t1, -0x3($a1)
/* 025CF8 00425CF8 90ACFFFE */  lbu         $t4, -0x2($a1)
/* 025CFC 00425CFC 00194200 */  sll         $t0, $t9, 8
/* 025D00 00425D00 01095021 */  addu        $t2, $t0, $t1
/* 025D04 00425D04 90AFFFFF */  lbu         $t7, -0x1($a1)
/* 025D08 00425D08 000A5A00 */  sll         $t3, $t2, 8
/* 025D0C 00425D0C 016C6821 */  addu        $t5, $t3, $t4
/* 025D10 00425D10 000D7200 */  sll         $t6, $t5, 8
/* 025D14 00425D14 01EEC021 */  addu        $t8, $t7, $t6
/* 025D18 00425D18 AC980024 */  sw          $t8, 0x24($a0)
/* 025D1C 00425D1C 90B9FFF8 */  lbu         $t9, -0x8($a1)
/* 025D20 00425D20 90A9FFF9 */  lbu         $t1, -0x7($a1)
/* 025D24 00425D24 90ACFFFA */  lbu         $t4, -0x6($a1)
/* 025D28 00425D28 00194200 */  sll         $t0, $t9, 8
/* 025D2C 00425D2C 01095021 */  addu        $t2, $t0, $t1
/* 025D30 00425D30 90AEFFFB */  lbu         $t6, -0x5($a1)
/* 025D34 00425D34 000A5A00 */  sll         $t3, $t2, 8
/* 025D38 00425D38 016C6821 */  addu        $t5, $t3, $t4
/* 025D3C 00425D3C 000D7A00 */  sll         $t7, $t5, 8
/* 025D40 00425D40 01CFC021 */  addu        $t8, $t6, $t7
/* 025D44 00425D44 AC980020 */  sw          $t8, 0x20($a0)
/* 025D48 00425D48 90B9FFF4 */  lbu         $t9, -0xC($a1)
/* 025D4C 00425D4C 90A9FFF5 */  lbu         $t1, -0xB($a1)
/* 025D50 00425D50 90ACFFF6 */  lbu         $t4, -0xA($a1)
/* 025D54 00425D54 00194200 */  sll         $t0, $t9, 8
/* 025D58 00425D58 01095021 */  addu        $t2, $t0, $t1
/* 025D5C 00425D5C 90AFFFF7 */  lbu         $t7, -0x9($a1)
/* 025D60 00425D60 000A5A00 */  sll         $t3, $t2, 8
/* 025D64 00425D64 016C6821 */  addu        $t5, $t3, $t4
/* 025D68 00425D68 000D7200 */  sll         $t6, $t5, 8
/* 025D6C 00425D6C 01EEC021 */  addu        $t8, $t7, $t6
/* 025D70 00425D70 AC98001C */  sw          $t8, 0x1C($a0)
/* 025D74 00425D74 90B9FFF0 */  lbu         $t9, -0x10($a1)
/* 025D78 00425D78 90A9FFF1 */  lbu         $t1, -0xF($a1)
/* 025D7C 00425D7C 90ACFFF2 */  lbu         $t4, -0xE($a1)
/* 025D80 00425D80 00194200 */  sll         $t0, $t9, 8
/* 025D84 00425D84 01095021 */  addu        $t2, $t0, $t1
/* 025D88 00425D88 90AEFFF3 */  lbu         $t6, -0xD($a1)
/* 025D8C 00425D8C 000A5A00 */  sll         $t3, $t2, 8
/* 025D90 00425D90 016C6821 */  addu        $t5, $t3, $t4
/* 025D94 00425D94 000D7A00 */  sll         $t7, $t5, 8
/* 025D98 00425D98 01CFC021 */  addu        $t8, $t6, $t7
/* 025D9C 00425D9C AC980018 */  sw          $t8, 0x18($a0)
/* 025DA0 00425DA0 90B9FFEC */  lbu         $t9, -0x14($a1)
/* 025DA4 00425DA4 90A9FFED */  lbu         $t1, -0x13($a1)
/* 025DA8 00425DA8 90ACFFEE */  lbu         $t4, -0x12($a1)
/* 025DAC 00425DAC 00194200 */  sll         $t0, $t9, 8
/* 025DB0 00425DB0 01095021 */  addu        $t2, $t0, $t1
/* 025DB4 00425DB4 90AFFFEF */  lbu         $t7, -0x11($a1)
/* 025DB8 00425DB8 000A5A00 */  sll         $t3, $t2, 8
/* 025DBC 00425DBC 016C6821 */  addu        $t5, $t3, $t4
/* 025DC0 00425DC0 000D7200 */  sll         $t6, $t5, 8
/* 025DC4 00425DC4 01EEC021 */  addu        $t8, $t7, $t6
/* 025DC8 00425DC8 AC980014 */  sw          $t8, 0x14($a0)
/* 025DCC 00425DCC 90B9FFE8 */  lbu         $t9, -0x18($a1)
/* 025DD0 00425DD0 90A9FFE9 */  lbu         $t1, -0x17($a1)
/* 025DD4 00425DD4 90ACFFEA */  lbu         $t4, -0x16($a1)
/* 025DD8 00425DD8 00194200 */  sll         $t0, $t9, 8
/* 025DDC 00425DDC 01095021 */  addu        $t2, $t0, $t1
/* 025DE0 00425DE0 90AEFFEB */  lbu         $t6, -0x15($a1)
/* 025DE4 00425DE4 000A5A00 */  sll         $t3, $t2, 8
/* 025DE8 00425DE8 016C6821 */  addu        $t5, $t3, $t4
/* 025DEC 00425DEC 000D7A00 */  sll         $t7, $t5, 8
/* 025DF0 00425DF0 01CFC021 */  addu        $t8, $t6, $t7
/* 025DF4 00425DF4 AC980010 */  sw          $t8, 0x10($a0)
/* 025DF8 00425DF8 90B9FFE4 */  lbu         $t9, -0x1C($a1)
/* 025DFC 00425DFC 90A9FFE5 */  lbu         $t1, -0x1B($a1)
/* 025E00 00425E00 90ACFFE6 */  lbu         $t4, -0x1A($a1)
/* 025E04 00425E04 00194200 */  sll         $t0, $t9, 8
/* 025E08 00425E08 01095021 */  addu        $t2, $t0, $t1
/* 025E0C 00425E0C 90AFFFE7 */  lbu         $t7, -0x19($a1)
/* 025E10 00425E10 000A5A00 */  sll         $t3, $t2, 8
/* 025E14 00425E14 016C6821 */  addu        $t5, $t3, $t4
/* 025E18 00425E18 000D7200 */  sll         $t6, $t5, 8
/* 025E1C 00425E1C 01EEC021 */  addu        $t8, $t7, $t6
/* 025E20 00425E20 AC98000C */  sw          $t8, 0xC($a0)
/* 025E24 00425E24 90B9FFE0 */  lbu         $t9, -0x20($a1)
/* 025E28 00425E28 90A9FFE1 */  lbu         $t1, -0x1F($a1)
/* 025E2C 00425E2C 90ACFFE2 */  lbu         $t4, -0x1E($a1)
/* 025E30 00425E30 00194200 */  sll         $t0, $t9, 8
/* 025E34 00425E34 01095021 */  addu        $t2, $t0, $t1
/* 025E38 00425E38 90AEFFE3 */  lbu         $t6, -0x1D($a1)
/* 025E3C 00425E3C 000A5A00 */  sll         $t3, $t2, 8
/* 025E40 00425E40 016C6821 */  addu        $t5, $t3, $t4
/* 025E44 00425E44 000D7A00 */  sll         $t7, $t5, 8
/* 025E48 00425E48 01CFC021 */  addu        $t8, $t6, $t7
/* 025E4C 00425E4C AC980008 */  sw          $t8, 0x8($a0)
/* 025E50 00425E50 90B9FFDC */  lbu         $t9, -0x24($a1)
/* 025E54 00425E54 90A9FFDD */  lbu         $t1, -0x23($a1)
/* 025E58 00425E58 90ACFFDE */  lbu         $t4, -0x22($a1)
/* 025E5C 00425E5C 00194200 */  sll         $t0, $t9, 8
/* 025E60 00425E60 01095021 */  addu        $t2, $t0, $t1
/* 025E64 00425E64 90AFFFDF */  lbu         $t7, -0x21($a1)
/* 025E68 00425E68 000A5A00 */  sll         $t3, $t2, 8
/* 025E6C 00425E6C 016C6821 */  addu        $t5, $t3, $t4
/* 025E70 00425E70 000D7200 */  sll         $t6, $t5, 8
/* 025E74 00425E74 01EEC021 */  addu        $t8, $t7, $t6
/* 025E78 00425E78 AC980004 */  sw          $t8, 0x4($a0)
/* 025E7C 00425E7C 90B9FFD8 */  lbu         $t9, -0x28($a1)
/* 025E80 00425E80 90A9FFD9 */  lbu         $t1, -0x27($a1)
/* 025E84 00425E84 90ACFFDA */  lbu         $t4, -0x26($a1)
/* 025E88 00425E88 00194200 */  sll         $t0, $t9, 8
/* 025E8C 00425E8C 01095021 */  addu        $t2, $t0, $t1
/* 025E90 00425E90 90AEFFDB */  lbu         $t6, -0x25($a1)
/* 025E94 00425E94 000A5A00 */  sll         $t3, $t2, 8
/* 025E98 00425E98 016C6821 */  addu        $t5, $t3, $t4
/* 025E9C 00425E9C 000D7A00 */  sll         $t7, $t5, 8
/* 025EA0 00425EA0 01CFC021 */  addu        $t8, $t6, $t7
/* 025EA4 00425EA4 AC980000 */  sw          $t8, 0x0($a0)
/* 025EA8 00425EA8 8FB90004 */  lw          $t9, 0x4($sp)
/* 025EAC 00425EAC 24A5FFD8 */  addiu       $a1, $a1, -0x28
/* 025EB0 00425EB0 0324382B */  sltu        $a3, $t9, $a0
/* 025EB4 00425EB4 14E0FF8E */  bnez        $a3, .L00425CF0
/* 025EB8 00425EB8 2484FFD8 */   addiu      $a0, $a0, -0x28
.L00425EBC:
/* 025EBC 00425EBC 03E00008 */  jr          $ra
/* 025EC0 00425EC0 27BD0008 */   addiu      $sp, $sp, 0x8
