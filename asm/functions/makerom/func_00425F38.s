glabel func_00425F38 # 170
/* 025F38 00425F38 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 025F3C 00425F3C 279CCE28 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBECE28
/* 025F40 00425F40 0399E021 */  addu        $gp, $gp, $t9
/* 025F44 00425F44 00803825 */  move        $a3, $a0
/* 025F48 00425F48 00067080 */  sll         $t6, $a2, 2
/* 025F4C 00425F4C 008E2021 */  addu        $a0, $a0, $t6
/* 025F50 00425F50 00067880 */  sll         $t7, $a2, 2
/* 025F54 00425F54 00E4402B */  sltu        $t0, $a3, $a0
/* 025F58 00425F58 27BDFFF0 */  addiu       $sp, $sp, -0x10
/* 025F5C 00425F5C 00AF2821 */  addu        $a1, $a1, $t7
/* 025F60 00425F60 11000010 */  beqz        $t0, .L00425FA4
/* 025F64 00425F64 2484FFFC */   addiu      $a0, $a0, -0x4
.L00425F68:
/* 025F68 00425F68 90B8FFFC */  lbu         $t8, -0x4($a1)
/* 025F6C 00425F6C 90A9FFFD */  lbu         $t1, -0x3($a1)
/* 025F70 00425F70 90ACFFFE */  lbu         $t4, -0x2($a1)
/* 025F74 00425F74 0018CA00 */  sll         $t9, $t8, 8
/* 025F78 00425F78 03295021 */  addu        $t2, $t9, $t1
/* 025F7C 00425F7C 90AFFFFF */  lbu         $t7, -0x1($a1)
/* 025F80 00425F80 000A5A00 */  sll         $t3, $t2, 8
/* 025F84 00425F84 016C6821 */  addu        $t5, $t3, $t4
/* 025F88 00425F88 000D7200 */  sll         $t6, $t5, 8
/* 025F8C 00425F8C 00E4402B */  sltu        $t0, $a3, $a0
/* 025F90 00425F90 01EEC021 */  addu        $t8, $t7, $t6
/* 025F94 00425F94 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 025F98 00425F98 AC980000 */  sw          $t8, 0x0($a0)
/* 025F9C 00425F9C 1500FFF2 */  bnez        $t0, .L00425F68
/* 025FA0 00425FA0 2484FFFC */   addiu      $a0, $a0, -0x4
.L00425FA4:
/* 025FA4 00425FA4 03E00008 */  jr          $ra
/* 025FA8 00425FA8 27BD0010 */   addiu      $sp, $sp, 0x10
