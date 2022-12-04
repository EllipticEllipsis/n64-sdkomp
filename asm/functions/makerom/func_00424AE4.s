glabel func_00424AE4 # 151
/* 024AE4 00424AE4 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 024AE8 00424AE8 279CE27C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEE27C
/* 024AEC 00424AEC 0399E021 */  addu        $gp, $gp, $t9
/* 024AF0 00424AF0 00803825 */  move        $a3, $a0
/* 024AF4 00424AF4 00067080 */  sll         $t6, $a2, 2
/* 024AF8 00424AF8 008E2021 */  addu        $a0, $a0, $t6
/* 024AFC 00424AFC 00067880 */  sll         $t7, $a2, 2
/* 024B00 00424B00 00E4402B */  sltu        $t0, $a3, $a0
/* 024B04 00424B04 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 024B08 00424B08 00AF2821 */  addu        $a1, $a1, $t7
/* 024B0C 00424B0C 11000010 */  beqz        $t0, .L00424B50
/* 024B10 00424B10 2484FFFC */   addiu      $a0, $a0, -0x4
.L00424B14:
/* 024B14 00424B14 90B8FFFF */  lbu         $t8, -0x1($a1)
/* 024B18 00424B18 90A9FFFE */  lbu         $t1, -0x2($a1)
/* 024B1C 00424B1C 90ACFFFD */  lbu         $t4, -0x3($a1)
/* 024B20 00424B20 0018CA00 */  sll         $t9, $t8, 8
/* 024B24 00424B24 03295021 */  addu        $t2, $t9, $t1
/* 024B28 00424B28 90AFFFFC */  lbu         $t7, -0x4($a1)
/* 024B2C 00424B2C 000A5A00 */  sll         $t3, $t2, 8
/* 024B30 00424B30 016C6821 */  addu        $t5, $t3, $t4
/* 024B34 00424B34 000D7200 */  sll         $t6, $t5, 8
/* 024B38 00424B38 00E4402B */  sltu        $t0, $a3, $a0
/* 024B3C 00424B3C 01EEC021 */  addu        $t8, $t7, $t6
/* 024B40 00424B40 2484FFFC */  addiu       $a0, $a0, -0x4
/* 024B44 00424B44 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 024B48 00424B48 1500FFF2 */  bnez        $t0, .L00424B14
/* 024B4C 00424B4C AC980004 */   sw         $t8, 0x4($a0)
.L00424B50:
/* 024B50 00424B50 03E00008 */  jr          $ra
/* 024B54 00424B54 27BD0008 */   addiu      $sp, $sp, 0x8
