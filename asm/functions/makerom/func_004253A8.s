glabel func_004253A8 # 160
/* 0253A8 004253A8 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0253AC 004253AC 279CD9B8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBED9B8
/* 0253B0 004253B0 0399E021 */  addu        $gp, $gp, $t9
/* 0253B4 004253B4 00803825 */  move        $a3, $a0
/* 0253B8 004253B8 00067080 */  sll         $t6, $a2, 2
/* 0253BC 004253BC 008E2021 */  addu        $a0, $a0, $t6
/* 0253C0 004253C0 00067880 */  sll         $t7, $a2, 2
/* 0253C4 004253C4 00E4402B */  sltu        $t0, $a3, $a0
/* 0253C8 004253C8 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 0253CC 004253CC 00AF2821 */  addu        $a1, $a1, $t7
/* 0253D0 004253D0 11000010 */  beqz        $t0, .L00425414
/* 0253D4 004253D4 2484FFFC */   addiu      $a0, $a0, -0x4
.L004253D8:
/* 0253D8 004253D8 90B8FFFC */  lbu         $t8, -0x4($a1)
/* 0253DC 004253DC 90A9FFFD */  lbu         $t1, -0x3($a1)
/* 0253E0 004253E0 90ACFFFE */  lbu         $t4, -0x2($a1)
/* 0253E4 004253E4 0018CA00 */  sll         $t9, $t8, 8
/* 0253E8 004253E8 03295021 */  addu        $t2, $t9, $t1
/* 0253EC 004253EC 90AFFFFF */  lbu         $t7, -0x1($a1)
/* 0253F0 004253F0 000A5A00 */  sll         $t3, $t2, 8
/* 0253F4 004253F4 016C6821 */  addu        $t5, $t3, $t4
/* 0253F8 004253F8 000D7200 */  sll         $t6, $t5, 8
/* 0253FC 004253FC 00E4402B */  sltu        $t0, $a3, $a0
/* 025400 00425400 01EEC021 */  addu        $t8, $t7, $t6
/* 025404 00425404 2484FFFC */  addiu       $a0, $a0, -0x4
/* 025408 00425408 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 02540C 0042540C 1500FFF2 */  bnez        $t0, .L004253D8
/* 025410 00425410 AC980004 */   sw         $t8, 0x4($a0)
.L00425414:
/* 025414 00425414 03E00008 */  jr          $ra
/* 025418 00425418 27BD0008 */   addiu      $sp, $sp, 0x8
