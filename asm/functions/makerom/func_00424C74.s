glabel func_00424C74 # 154
/* 024C74 00424C74 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 024C78 00424C78 279CE0EC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEE0EC
/* 024C7C 00424C7C 0399E021 */  addu        $gp, $gp, $t9
/* 024C80 00424C80 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 024C84 00424C84 AFA40004 */  sw          $a0, 0x4($sp)
/* 024C88 00424C88 8FB80004 */  lw          $t8, 0x4($sp)
/* 024C8C 00424C8C 000670C0 */  sll         $t6, $a2, 3
/* 024C90 00424C90 008E2021 */  addu        $a0, $a0, $t6
/* 024C94 00424C94 000678C0 */  sll         $t7, $a2, 3
/* 024C98 00424C98 0304382B */  sltu        $a3, $t8, $a0
/* 024C9C 00424C9C 00AF2821 */  addu        $a1, $a1, $t7
/* 024CA0 00424CA0 10E0001C */  beqz        $a3, .L00424D14
/* 024CA4 00424CA4 2484FFF8 */   addiu      $a0, $a0, -0x8
.L00424CA8:
/* 024CA8 00424CA8 90B9FFFC */  lbu         $t9, -0x4($a1)
/* 024CAC 00424CAC 90A9FFFD */  lbu         $t1, -0x3($a1)
/* 024CB0 00424CB0 90ACFFFE */  lbu         $t4, -0x2($a1)
/* 024CB4 00424CB4 00194200 */  sll         $t0, $t9, 8
/* 024CB8 00424CB8 01095021 */  addu        $t2, $t0, $t1
/* 024CBC 00424CBC 90AFFFFF */  lbu         $t7, -0x1($a1)
/* 024CC0 00424CC0 000A5A00 */  sll         $t3, $t2, 8
/* 024CC4 00424CC4 016C6821 */  addu        $t5, $t3, $t4
/* 024CC8 00424CC8 000D7200 */  sll         $t6, $t5, 8
/* 024CCC 00424CCC 01EEC021 */  addu        $t8, $t7, $t6
/* 024CD0 00424CD0 AC980004 */  sw          $t8, 0x4($a0)
/* 024CD4 00424CD4 90B9FFF8 */  lbu         $t9, -0x8($a1)
/* 024CD8 00424CD8 90A9FFF9 */  lbu         $t1, -0x7($a1)
/* 024CDC 00424CDC 90ACFFFA */  lbu         $t4, -0x6($a1)
/* 024CE0 00424CE0 00194200 */  sll         $t0, $t9, 8
/* 024CE4 00424CE4 01095021 */  addu        $t2, $t0, $t1
/* 024CE8 00424CE8 90AEFFFB */  lbu         $t6, -0x5($a1)
/* 024CEC 00424CEC 000A5A00 */  sll         $t3, $t2, 8
/* 024CF0 00424CF0 016C6821 */  addu        $t5, $t3, $t4
/* 024CF4 00424CF4 000D7A00 */  sll         $t7, $t5, 8
/* 024CF8 00424CF8 01CFC021 */  addu        $t8, $t6, $t7
/* 024CFC 00424CFC AC980000 */  sw          $t8, 0x0($a0)
/* 024D00 00424D00 8FB90004 */  lw          $t9, 0x4($sp)
/* 024D04 00424D04 24A5FFF8 */  addiu       $a1, $a1, -0x8
/* 024D08 00424D08 0324382B */  sltu        $a3, $t9, $a0
/* 024D0C 00424D0C 14E0FFE6 */  bnez        $a3, .L00424CA8
/* 024D10 00424D10 2484FFF8 */   addiu      $a0, $a0, -0x8
.L00424D14:
/* 024D14 00424D14 03E00008 */  jr          $ra
/* 024D18 00424D18 27BD0008 */   addiu      $sp, $sp, 0x8
