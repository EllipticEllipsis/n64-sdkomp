glabel func_004206F4 # 103
/* 0206F4 004206F4 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0206F8 004206F8 279C266C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF266C
/* 0206FC 004206FC 0399E021 */  addu        $gp, $gp, $t9
/* 020700 00420700 00803825 */  move        $a3, $a0
/* 020704 00420704 00067080 */  sll         $t6, $a2, 2
/* 020708 00420708 008E2021 */  addu        $a0, $a0, $t6
/* 02070C 0042070C 00067880 */  sll         $t7, $a2, 2
/* 020710 00420710 00E4402B */  sltu        $t0, $a3, $a0
/* 020714 00420714 27BDFFF0 */  addiu       $sp, $sp, -0x10
/* 020718 00420718 00AF2821 */  addu        $a1, $a1, $t7
/* 02071C 0042071C 11000010 */  beqz        $t0, .L00420760
/* 020720 00420720 2484FFFC */   addiu      $a0, $a0, -0x4
.L00420724:
/* 020724 00420724 90B8FFFC */  lbu         $t8, -0x4($a1)
/* 020728 00420728 90A9FFFD */  lbu         $t1, -0x3($a1)
/* 02072C 0042072C 90ACFFFE */  lbu         $t4, -0x2($a1)
/* 020730 00420730 0018CA00 */  sll         $t9, $t8, 8
/* 020734 00420734 03295021 */  addu        $t2, $t9, $t1
/* 020738 00420738 90AFFFFF */  lbu         $t7, -0x1($a1)
/* 02073C 0042073C 000A5A00 */  sll         $t3, $t2, 8
/* 020740 00420740 016C6821 */  addu        $t5, $t3, $t4
/* 020744 00420744 000D7200 */  sll         $t6, $t5, 8
/* 020748 00420748 00E4402B */  sltu        $t0, $a3, $a0
/* 02074C 0042074C 01EEC021 */  addu        $t8, $t7, $t6
/* 020750 00420750 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 020754 00420754 AC980000 */  sw          $t8, 0x0($a0)
/* 020758 00420758 1500FFF2 */  bnez        $t0, .L00420724
/* 02075C 0042075C 2484FFFC */   addiu      $a0, $a0, -0x4
.L00420760:
/* 020760 00420760 03E00008 */  jr          $ra
/* 020764 00420764 27BD0010 */   addiu      $sp, $sp, 0x10
