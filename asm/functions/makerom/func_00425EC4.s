glabel func_00425EC4 # 169
/* 025EC4 00425EC4 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 025EC8 00425EC8 279CCE9C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBECE9C
/* 025ECC 00425ECC 0399E021 */  addu        $gp, $gp, $t9
/* 025ED0 00425ED0 00803825 */  move        $a3, $a0
/* 025ED4 00425ED4 00067080 */  sll         $t6, $a2, 2
/* 025ED8 00425ED8 008E2021 */  addu        $a0, $a0, $t6
/* 025EDC 00425EDC 00067880 */  sll         $t7, $a2, 2
/* 025EE0 00425EE0 00E4402B */  sltu        $t0, $a3, $a0
/* 025EE4 00425EE4 27BDFFF0 */  addiu       $sp, $sp, -0x10
/* 025EE8 00425EE8 00AF2821 */  addu        $a1, $a1, $t7
/* 025EEC 00425EEC 11000010 */  beqz        $t0, .L00425F30
/* 025EF0 00425EF0 2484FFFC */   addiu      $a0, $a0, -0x4
.L00425EF4:
/* 025EF4 00425EF4 90B8FFFF */  lbu         $t8, -0x1($a1)
/* 025EF8 00425EF8 90A9FFFE */  lbu         $t1, -0x2($a1)
/* 025EFC 00425EFC 90ACFFFD */  lbu         $t4, -0x3($a1)
/* 025F00 00425F00 0018CA00 */  sll         $t9, $t8, 8
/* 025F04 00425F04 03295021 */  addu        $t2, $t9, $t1
/* 025F08 00425F08 90AFFFFC */  lbu         $t7, -0x4($a1)
/* 025F0C 00425F0C 000A5A00 */  sll         $t3, $t2, 8
/* 025F10 00425F10 016C6821 */  addu        $t5, $t3, $t4
/* 025F14 00425F14 000D7200 */  sll         $t6, $t5, 8
/* 025F18 00425F18 00E4402B */  sltu        $t0, $a3, $a0
/* 025F1C 00425F1C 01EEC021 */  addu        $t8, $t7, $t6
/* 025F20 00425F20 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 025F24 00425F24 AC980000 */  sw          $t8, 0x0($a0)
/* 025F28 00425F28 1500FFF2 */  bnez        $t0, .L00425EF4
/* 025F2C 00425F2C 2484FFFC */   addiu      $a0, $a0, -0x4
.L00425F30:
/* 025F30 00425F30 03E00008 */  jr          $ra
/* 025F34 00425F34 27BD0010 */   addiu      $sp, $sp, 0x10
