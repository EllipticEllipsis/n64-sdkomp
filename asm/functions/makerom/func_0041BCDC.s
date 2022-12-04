glabel func_0041BCDC # 91
/* 01BCDC 0041BCDC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01BCE0 0041BCE0 279C7084 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF7084
/* 01BCE4 0041BCE4 0399E021 */  addu        $gp, $gp, $t9
/* 01BCE8 0041BCE8 00803825 */  move        $a3, $a0
/* 01BCEC 0041BCEC 00067040 */  sll         $t6, $a2, 1
/* 01BCF0 0041BCF0 008E2021 */  addu        $a0, $a0, $t6
/* 01BCF4 0041BCF4 00067840 */  sll         $t7, $a2, 1
/* 01BCF8 0041BCF8 00E4402B */  sltu        $t0, $a3, $a0
/* 01BCFC 0041BCFC 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 01BD00 0041BD00 00AF2821 */  addu        $a1, $a1, $t7
/* 01BD04 0041BD04 1100000A */  beqz        $t0, .L0041BD30
/* 01BD08 0041BD08 2484FFFE */   addiu      $a0, $a0, -0x2
.L0041BD0C:
/* 01BD0C 0041BD0C 90B9FFFE */  lbu         $t9, -0x2($a1)
/* 01BD10 0041BD10 90B8FFFF */  lbu         $t8, -0x1($a1)
/* 01BD14 0041BD14 00E4402B */  sltu        $t0, $a3, $a0
/* 01BD18 0041BD18 00194A00 */  sll         $t1, $t9, 8
/* 01BD1C 0041BD1C 03095021 */  addu        $t2, $t8, $t1
/* 01BD20 0041BD20 2484FFFE */  addiu       $a0, $a0, -0x2
/* 01BD24 0041BD24 24A5FFFE */  addiu       $a1, $a1, -0x2
/* 01BD28 0041BD28 1500FFF8 */  bnez        $t0, .L0041BD0C
/* 01BD2C 0041BD2C A48A0002 */   sh         $t2, 0x2($a0)
.L0041BD30:
/* 01BD30 0041BD30 03E00008 */  jr          $ra
/* 01BD34 0041BD34 27BD0008 */   addiu      $sp, $sp, 0x8
