glabel func_00424BCC # 153
/* 024BCC 00424BCC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 024BD0 00424BD0 279CE194 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEE194
/* 024BD4 00424BD4 0399E021 */  addu        $gp, $gp, $t9
/* 024BD8 00424BD8 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 024BDC 00424BDC AFA40004 */  sw          $a0, 0x4($sp)
/* 024BE0 00424BE0 8FB80004 */  lw          $t8, 0x4($sp)
/* 024BE4 00424BE4 000670C0 */  sll         $t6, $a2, 3
/* 024BE8 00424BE8 008E2021 */  addu        $a0, $a0, $t6
/* 024BEC 00424BEC 000678C0 */  sll         $t7, $a2, 3
/* 024BF0 00424BF0 0304382B */  sltu        $a3, $t8, $a0
/* 024BF4 00424BF4 00AF2821 */  addu        $a1, $a1, $t7
/* 024BF8 00424BF8 10E0001C */  beqz        $a3, .L00424C6C
/* 024BFC 00424BFC 2484FFF8 */   addiu      $a0, $a0, -0x8
.L00424C00:
/* 024C00 00424C00 90B9FFFF */  lbu         $t9, -0x1($a1)
/* 024C04 00424C04 90A9FFFE */  lbu         $t1, -0x2($a1)
/* 024C08 00424C08 90ACFFFD */  lbu         $t4, -0x3($a1)
/* 024C0C 00424C0C 00194200 */  sll         $t0, $t9, 8
/* 024C10 00424C10 01095021 */  addu        $t2, $t0, $t1
/* 024C14 00424C14 90AFFFFC */  lbu         $t7, -0x4($a1)
/* 024C18 00424C18 000A5A00 */  sll         $t3, $t2, 8
/* 024C1C 00424C1C 016C6821 */  addu        $t5, $t3, $t4
/* 024C20 00424C20 000D7200 */  sll         $t6, $t5, 8
/* 024C24 00424C24 01EEC021 */  addu        $t8, $t7, $t6
/* 024C28 00424C28 AC980004 */  sw          $t8, 0x4($a0)
/* 024C2C 00424C2C 90B9FFFB */  lbu         $t9, -0x5($a1)
/* 024C30 00424C30 90A9FFFA */  lbu         $t1, -0x6($a1)
/* 024C34 00424C34 90ACFFF9 */  lbu         $t4, -0x7($a1)
/* 024C38 00424C38 00194200 */  sll         $t0, $t9, 8
/* 024C3C 00424C3C 01095021 */  addu        $t2, $t0, $t1
/* 024C40 00424C40 90AEFFF8 */  lbu         $t6, -0x8($a1)
/* 024C44 00424C44 000A5A00 */  sll         $t3, $t2, 8
/* 024C48 00424C48 016C6821 */  addu        $t5, $t3, $t4
/* 024C4C 00424C4C 000D7A00 */  sll         $t7, $t5, 8
/* 024C50 00424C50 01CFC021 */  addu        $t8, $t6, $t7
/* 024C54 00424C54 AC980000 */  sw          $t8, 0x0($a0)
/* 024C58 00424C58 8FB90004 */  lw          $t9, 0x4($sp)
/* 024C5C 00424C5C 24A5FFF8 */  addiu       $a1, $a1, -0x8
/* 024C60 00424C60 0324382B */  sltu        $a3, $t9, $a0
/* 024C64 00424C64 14E0FFE6 */  bnez        $a3, .L00424C00
/* 024C68 00424C68 2484FFF8 */   addiu      $a0, $a0, -0x8
.L00424C6C:
/* 024C6C 00424C6C 03E00008 */  jr          $ra
/* 024C70 00424C70 27BD0008 */   addiu      $sp, $sp, 0x8
