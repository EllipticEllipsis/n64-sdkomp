glabel procedure_ppd # 522
/* 033578 00433578 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 03357C 0043357C 279CF7E8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDF7E8
/* 033580 00433580 0399E021 */  addu        $gp, $gp, $t9
/* 033584 00433584 04A1000C */  bgez        $a1, .L004335B8
/* 033588 00433588 00051823 */   negu       $v1, $a1
/* 03358C 0043358C 28610010 */  slti        $at, $v1, 0x10
/* 033590 00433590 10200009 */  beqz        $at, .L004335B8
/* 033594 00433594 00037080 */   sll        $t6, $v1, 2
/* 033598 00433598 8F8F8030 */  lw          $t7, %got(B_1000F250)($gp)
/* 03359C 0043359C 01C37023 */  subu        $t6, $t6, $v1
/* 0335A0 004335A0 000E7080 */  sll         $t6, $t6, 2
/* 0335A4 004335A4 01C37021 */  addu        $t6, $t6, $v1
/* 0335A8 004335A8 000E7080 */  sll         $t6, $t6, 2
/* 0335AC 004335AC 25EFF250 */  addiu       $t7, $t7, %lo(B_1000F250)
/* 0335B0 004335B0 03E00008 */  jr          $ra
/* 0335B4 004335B4 01CF1021 */   addu       $v0, $t6, $t7
.L004335B8:
/* 0335B8 004335B8 8C82009C */  lw          $v0, 0x9C($a0)
/* 0335BC 004335BC 10400007 */  beqz        $v0, .L004335DC
/* 0335C0 004335C0 00000000 */   nop
/* 0335C4 004335C4 8C9800D4 */  lw          $t8, 0xD4($a0)
/* 0335C8 004335C8 8C590018 */  lw          $t9, 0x18($v0)
/* 0335CC 004335CC 00B81823 */  subu        $v1, $a1, $t8
/* 0335D0 004335D0 0079082B */  sltu        $at, $v1, $t9
/* 0335D4 004335D4 14200003 */  bnez        $at, .L004335E4
/* 0335D8 004335D8 00034880 */   sll        $t1, $v1, 2
.L004335DC:
/* 0335DC 004335DC 03E00008 */  jr          $ra
/* 0335E0 004335E0 00001025 */   move       $v0, $zero
.L004335E4:
/* 0335E4 004335E4 01234823 */  subu        $t1, $t1, $v1
/* 0335E8 004335E8 8C8800A4 */  lw          $t0, 0xA4($a0)
/* 0335EC 004335EC 00094880 */  sll         $t1, $t1, 2
/* 0335F0 004335F0 01234821 */  addu        $t1, $t1, $v1
/* 0335F4 004335F4 00094880 */  sll         $t1, $t1, 2
/* 0335F8 004335F8 01091021 */  addu        $v0, $t0, $t1
/* 0335FC 004335FC 03E00008 */  jr          $ra
/* 033600 00433600 00000000 */   nop