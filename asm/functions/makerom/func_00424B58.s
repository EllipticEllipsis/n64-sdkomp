glabel func_00424B58 # 152
/* 024B58 00424B58 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 024B5C 00424B5C 279CE208 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEE208
/* 024B60 00424B60 0399E021 */  addu        $gp, $gp, $t9
/* 024B64 00424B64 00803825 */  move        $a3, $a0
/* 024B68 00424B68 00067080 */  sll         $t6, $a2, 2
/* 024B6C 00424B6C 008E2021 */  addu        $a0, $a0, $t6
/* 024B70 00424B70 00067880 */  sll         $t7, $a2, 2
/* 024B74 00424B74 00E4402B */  sltu        $t0, $a3, $a0
/* 024B78 00424B78 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 024B7C 00424B7C 00AF2821 */  addu        $a1, $a1, $t7
/* 024B80 00424B80 11000010 */  beqz        $t0, .L00424BC4
/* 024B84 00424B84 2484FFFC */   addiu      $a0, $a0, -0x4
.L00424B88:
/* 024B88 00424B88 90B8FFFC */  lbu         $t8, -0x4($a1)
/* 024B8C 00424B8C 90A9FFFD */  lbu         $t1, -0x3($a1)
/* 024B90 00424B90 90ACFFFE */  lbu         $t4, -0x2($a1)
/* 024B94 00424B94 0018CA00 */  sll         $t9, $t8, 8
/* 024B98 00424B98 03295021 */  addu        $t2, $t9, $t1
/* 024B9C 00424B9C 90AFFFFF */  lbu         $t7, -0x1($a1)
/* 024BA0 00424BA0 000A5A00 */  sll         $t3, $t2, 8
/* 024BA4 00424BA4 016C6821 */  addu        $t5, $t3, $t4
/* 024BA8 00424BA8 000D7200 */  sll         $t6, $t5, 8
/* 024BAC 00424BAC 00E4402B */  sltu        $t0, $a3, $a0
/* 024BB0 00424BB0 01EEC021 */  addu        $t8, $t7, $t6
/* 024BB4 00424BB4 2484FFFC */  addiu       $a0, $a0, -0x4
/* 024BB8 00424BB8 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 024BBC 00424BBC 1500FFF2 */  bnez        $t0, .L00424B88
/* 024BC0 00424BC0 AC980004 */   sw         $t8, 0x4($a0)
.L00424BC4:
/* 024BC4 00424BC4 03E00008 */  jr          $ra
/* 024BC8 00424BC8 27BD0008 */   addiu      $sp, $sp, 0x8
