glabel func_0042577C # 163
/* 02577C 0042577C 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 025780 00425780 279CD5E4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBED5E4
/* 025784 00425784 0399E021 */  addu        $gp, $gp, $t9
/* 025788 00425788 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 02578C 0042578C AFA40004 */  sw          $a0, 0x4($sp)
/* 025790 00425790 8FB80004 */  lw          $t8, 0x4($sp)
/* 025794 00425794 000670C0 */  sll         $t6, $a2, 3
/* 025798 00425798 008E2021 */  addu        $a0, $a0, $t6
/* 02579C 0042579C 000678C0 */  sll         $t7, $a2, 3
/* 0257A0 004257A0 0304382B */  sltu        $a3, $t8, $a0
/* 0257A4 004257A4 00AF2821 */  addu        $a1, $a1, $t7
/* 0257A8 004257A8 10E0001C */  beqz        $a3, .L0042581C
/* 0257AC 004257AC 2484FFF8 */   addiu      $a0, $a0, -0x8
.L004257B0:
/* 0257B0 004257B0 90B9FFFF */  lbu         $t9, -0x1($a1)
/* 0257B4 004257B4 90A9FFFE */  lbu         $t1, -0x2($a1)
/* 0257B8 004257B8 90ACFFFD */  lbu         $t4, -0x3($a1)
/* 0257BC 004257BC 00194200 */  sll         $t0, $t9, 8
/* 0257C0 004257C0 01095021 */  addu        $t2, $t0, $t1
/* 0257C4 004257C4 90AFFFFC */  lbu         $t7, -0x4($a1)
/* 0257C8 004257C8 000A5A00 */  sll         $t3, $t2, 8
/* 0257CC 004257CC 016C6821 */  addu        $t5, $t3, $t4
/* 0257D0 004257D0 000D7200 */  sll         $t6, $t5, 8
/* 0257D4 004257D4 01EEC021 */  addu        $t8, $t7, $t6
/* 0257D8 004257D8 AC980004 */  sw          $t8, 0x4($a0)
/* 0257DC 004257DC 90B9FFFB */  lbu         $t9, -0x5($a1)
/* 0257E0 004257E0 90A9FFFA */  lbu         $t1, -0x6($a1)
/* 0257E4 004257E4 90ACFFF9 */  lbu         $t4, -0x7($a1)
/* 0257E8 004257E8 00194200 */  sll         $t0, $t9, 8
/* 0257EC 004257EC 01095021 */  addu        $t2, $t0, $t1
/* 0257F0 004257F0 90AEFFF8 */  lbu         $t6, -0x8($a1)
/* 0257F4 004257F4 000A5A00 */  sll         $t3, $t2, 8
/* 0257F8 004257F8 016C6821 */  addu        $t5, $t3, $t4
/* 0257FC 004257FC 000D7A00 */  sll         $t7, $t5, 8
/* 025800 00425800 01CFC021 */  addu        $t8, $t6, $t7
/* 025804 00425804 AC980000 */  sw          $t8, 0x0($a0)
/* 025808 00425808 8FB90004 */  lw          $t9, 0x4($sp)
/* 02580C 0042580C 24A5FFF8 */  addiu       $a1, $a1, -0x8
/* 025810 00425810 0324382B */  sltu        $a3, $t9, $a0
/* 025814 00425814 14E0FFE6 */  bnez        $a3, .L004257B0
/* 025818 00425818 2484FFF8 */   addiu      $a0, $a0, -0x8
.L0042581C:
/* 02581C 0042581C 03E00008 */  jr          $ra
/* 025820 00425820 27BD0008 */   addiu      $sp, $sp, 0x8
