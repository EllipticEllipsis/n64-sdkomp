glabel func_00425A94 # 167
/* 025A94 00425A94 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 025A98 00425A98 279CD2CC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBED2CC
/* 025A9C 00425A9C 0399E021 */  addu        $gp, $gp, $t9
/* 025AA0 00425AA0 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 025AA4 00425AA4 AFA40004 */  sw          $a0, 0x4($sp)
/* 025AA8 00425AA8 00067080 */  sll         $t6, $a2, 2
/* 025AAC 00425AAC 8FB80004 */  lw          $t8, 0x4($sp)
/* 025AB0 00425AB0 01C67021 */  addu        $t6, $t6, $a2
/* 025AB4 00425AB4 000E70C0 */  sll         $t6, $t6, 3
/* 025AB8 00425AB8 00067880 */  sll         $t7, $a2, 2
/* 025ABC 00425ABC 008E2021 */  addu        $a0, $a0, $t6
/* 025AC0 00425AC0 01E67821 */  addu        $t7, $t7, $a2
/* 025AC4 00425AC4 000F78C0 */  sll         $t7, $t7, 3
/* 025AC8 00425AC8 0304382B */  sltu        $a3, $t8, $a0
/* 025ACC 00425ACC 00AF2821 */  addu        $a1, $a1, $t7
/* 025AD0 00425AD0 10E00074 */  beqz        $a3, .L00425CA4
/* 025AD4 00425AD4 2484FFD8 */   addiu      $a0, $a0, -0x28
.L00425AD8:
/* 025AD8 00425AD8 90B9FFFF */  lbu         $t9, -0x1($a1)
/* 025ADC 00425ADC 90A9FFFE */  lbu         $t1, -0x2($a1)
/* 025AE0 00425AE0 90ACFFFD */  lbu         $t4, -0x3($a1)
/* 025AE4 00425AE4 00194200 */  sll         $t0, $t9, 8
/* 025AE8 00425AE8 01095021 */  addu        $t2, $t0, $t1
/* 025AEC 00425AEC 90AFFFFC */  lbu         $t7, -0x4($a1)
/* 025AF0 00425AF0 000A5A00 */  sll         $t3, $t2, 8
/* 025AF4 00425AF4 016C6821 */  addu        $t5, $t3, $t4
/* 025AF8 00425AF8 000D7200 */  sll         $t6, $t5, 8
/* 025AFC 00425AFC 01EEC021 */  addu        $t8, $t7, $t6
/* 025B00 00425B00 AC980024 */  sw          $t8, 0x24($a0)
/* 025B04 00425B04 90B9FFFB */  lbu         $t9, -0x5($a1)
/* 025B08 00425B08 90A9FFFA */  lbu         $t1, -0x6($a1)
/* 025B0C 00425B0C 90ACFFF9 */  lbu         $t4, -0x7($a1)
/* 025B10 00425B10 00194200 */  sll         $t0, $t9, 8
/* 025B14 00425B14 01095021 */  addu        $t2, $t0, $t1
/* 025B18 00425B18 90AEFFF8 */  lbu         $t6, -0x8($a1)
/* 025B1C 00425B1C 000A5A00 */  sll         $t3, $t2, 8
/* 025B20 00425B20 016C6821 */  addu        $t5, $t3, $t4
/* 025B24 00425B24 000D7A00 */  sll         $t7, $t5, 8
/* 025B28 00425B28 01CFC021 */  addu        $t8, $t6, $t7
/* 025B2C 00425B2C AC980020 */  sw          $t8, 0x20($a0)
/* 025B30 00425B30 90B9FFF7 */  lbu         $t9, -0x9($a1)
/* 025B34 00425B34 90A9FFF6 */  lbu         $t1, -0xA($a1)
/* 025B38 00425B38 90ACFFF5 */  lbu         $t4, -0xB($a1)
/* 025B3C 00425B3C 00194200 */  sll         $t0, $t9, 8
/* 025B40 00425B40 01095021 */  addu        $t2, $t0, $t1
/* 025B44 00425B44 90AFFFF4 */  lbu         $t7, -0xC($a1)
/* 025B48 00425B48 000A5A00 */  sll         $t3, $t2, 8
/* 025B4C 00425B4C 016C6821 */  addu        $t5, $t3, $t4
/* 025B50 00425B50 000D7200 */  sll         $t6, $t5, 8
/* 025B54 00425B54 01EEC021 */  addu        $t8, $t7, $t6
/* 025B58 00425B58 AC98001C */  sw          $t8, 0x1C($a0)
/* 025B5C 00425B5C 90B9FFF3 */  lbu         $t9, -0xD($a1)
/* 025B60 00425B60 90A9FFF2 */  lbu         $t1, -0xE($a1)
/* 025B64 00425B64 90ACFFF1 */  lbu         $t4, -0xF($a1)
/* 025B68 00425B68 00194200 */  sll         $t0, $t9, 8
/* 025B6C 00425B6C 01095021 */  addu        $t2, $t0, $t1
/* 025B70 00425B70 90AEFFF0 */  lbu         $t6, -0x10($a1)
/* 025B74 00425B74 000A5A00 */  sll         $t3, $t2, 8
/* 025B78 00425B78 016C6821 */  addu        $t5, $t3, $t4
/* 025B7C 00425B7C 000D7A00 */  sll         $t7, $t5, 8
/* 025B80 00425B80 01CFC021 */  addu        $t8, $t6, $t7
/* 025B84 00425B84 AC980018 */  sw          $t8, 0x18($a0)
/* 025B88 00425B88 90B9FFEF */  lbu         $t9, -0x11($a1)
/* 025B8C 00425B8C 90A9FFEE */  lbu         $t1, -0x12($a1)
/* 025B90 00425B90 90ACFFED */  lbu         $t4, -0x13($a1)
/* 025B94 00425B94 00194200 */  sll         $t0, $t9, 8
/* 025B98 00425B98 01095021 */  addu        $t2, $t0, $t1
/* 025B9C 00425B9C 90AFFFEC */  lbu         $t7, -0x14($a1)
/* 025BA0 00425BA0 000A5A00 */  sll         $t3, $t2, 8
/* 025BA4 00425BA4 016C6821 */  addu        $t5, $t3, $t4
/* 025BA8 00425BA8 000D7200 */  sll         $t6, $t5, 8
/* 025BAC 00425BAC 01EEC021 */  addu        $t8, $t7, $t6
/* 025BB0 00425BB0 AC980014 */  sw          $t8, 0x14($a0)
/* 025BB4 00425BB4 90B9FFEB */  lbu         $t9, -0x15($a1)
/* 025BB8 00425BB8 90A9FFEA */  lbu         $t1, -0x16($a1)
/* 025BBC 00425BBC 90ACFFE9 */  lbu         $t4, -0x17($a1)
/* 025BC0 00425BC0 00194200 */  sll         $t0, $t9, 8
/* 025BC4 00425BC4 01095021 */  addu        $t2, $t0, $t1
/* 025BC8 00425BC8 90AEFFE8 */  lbu         $t6, -0x18($a1)
/* 025BCC 00425BCC 000A5A00 */  sll         $t3, $t2, 8
/* 025BD0 00425BD0 016C6821 */  addu        $t5, $t3, $t4
/* 025BD4 00425BD4 000D7A00 */  sll         $t7, $t5, 8
/* 025BD8 00425BD8 01CFC021 */  addu        $t8, $t6, $t7
/* 025BDC 00425BDC AC980010 */  sw          $t8, 0x10($a0)
/* 025BE0 00425BE0 90B9FFE7 */  lbu         $t9, -0x19($a1)
/* 025BE4 00425BE4 90A9FFE6 */  lbu         $t1, -0x1A($a1)
/* 025BE8 00425BE8 90ACFFE5 */  lbu         $t4, -0x1B($a1)
/* 025BEC 00425BEC 00194200 */  sll         $t0, $t9, 8
/* 025BF0 00425BF0 01095021 */  addu        $t2, $t0, $t1
/* 025BF4 00425BF4 90AFFFE4 */  lbu         $t7, -0x1C($a1)
/* 025BF8 00425BF8 000A5A00 */  sll         $t3, $t2, 8
/* 025BFC 00425BFC 016C6821 */  addu        $t5, $t3, $t4
/* 025C00 00425C00 000D7200 */  sll         $t6, $t5, 8
/* 025C04 00425C04 01EEC021 */  addu        $t8, $t7, $t6
/* 025C08 00425C08 AC98000C */  sw          $t8, 0xC($a0)
/* 025C0C 00425C0C 90B9FFE3 */  lbu         $t9, -0x1D($a1)
/* 025C10 00425C10 90A9FFE2 */  lbu         $t1, -0x1E($a1)
/* 025C14 00425C14 90ACFFE1 */  lbu         $t4, -0x1F($a1)
/* 025C18 00425C18 00194200 */  sll         $t0, $t9, 8
/* 025C1C 00425C1C 01095021 */  addu        $t2, $t0, $t1
/* 025C20 00425C20 90AEFFE0 */  lbu         $t6, -0x20($a1)
/* 025C24 00425C24 000A5A00 */  sll         $t3, $t2, 8
/* 025C28 00425C28 016C6821 */  addu        $t5, $t3, $t4
/* 025C2C 00425C2C 000D7A00 */  sll         $t7, $t5, 8
/* 025C30 00425C30 01CFC021 */  addu        $t8, $t6, $t7
/* 025C34 00425C34 AC980008 */  sw          $t8, 0x8($a0)
/* 025C38 00425C38 90B9FFDF */  lbu         $t9, -0x21($a1)
/* 025C3C 00425C3C 90A9FFDE */  lbu         $t1, -0x22($a1)
/* 025C40 00425C40 90ACFFDD */  lbu         $t4, -0x23($a1)
/* 025C44 00425C44 00194200 */  sll         $t0, $t9, 8
/* 025C48 00425C48 01095021 */  addu        $t2, $t0, $t1
/* 025C4C 00425C4C 90AFFFDC */  lbu         $t7, -0x24($a1)
/* 025C50 00425C50 000A5A00 */  sll         $t3, $t2, 8
/* 025C54 00425C54 016C6821 */  addu        $t5, $t3, $t4
/* 025C58 00425C58 000D7200 */  sll         $t6, $t5, 8
/* 025C5C 00425C5C 01EEC021 */  addu        $t8, $t7, $t6
/* 025C60 00425C60 AC980004 */  sw          $t8, 0x4($a0)
/* 025C64 00425C64 90B9FFDB */  lbu         $t9, -0x25($a1)
/* 025C68 00425C68 90A9FFDA */  lbu         $t1, -0x26($a1)
/* 025C6C 00425C6C 90ACFFD9 */  lbu         $t4, -0x27($a1)
/* 025C70 00425C70 00194200 */  sll         $t0, $t9, 8
/* 025C74 00425C74 01095021 */  addu        $t2, $t0, $t1
/* 025C78 00425C78 90AEFFD8 */  lbu         $t6, -0x28($a1)
/* 025C7C 00425C7C 000A5A00 */  sll         $t3, $t2, 8
/* 025C80 00425C80 016C6821 */  addu        $t5, $t3, $t4
/* 025C84 00425C84 000D7A00 */  sll         $t7, $t5, 8
/* 025C88 00425C88 01CFC021 */  addu        $t8, $t6, $t7
/* 025C8C 00425C8C AC980000 */  sw          $t8, 0x0($a0)
/* 025C90 00425C90 8FB90004 */  lw          $t9, 0x4($sp)
/* 025C94 00425C94 24A5FFD8 */  addiu       $a1, $a1, -0x28
/* 025C98 00425C98 0324382B */  sltu        $a3, $t9, $a0
/* 025C9C 00425C9C 14E0FF8E */  bnez        $a3, .L00425AD8
/* 025CA0 00425CA0 2484FFD8 */   addiu      $a0, $a0, -0x28
.L00425CA4:
/* 025CA4 00425CA4 03E00008 */  jr          $ra
/* 025CA8 00425CA8 27BD0008 */   addiu      $sp, $sp, 0x8
