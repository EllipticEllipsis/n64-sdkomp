glabel func_004258CC # 165
/* 0258CC 004258CC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0258D0 004258D0 279CD494 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBED494
/* 0258D4 004258D4 0399E021 */  addu        $gp, $gp, $t9
/* 0258D8 004258D8 27BDFFF0 */  addiu       $sp, $sp, -0x10
/* 0258DC 004258DC AFA4000C */  sw          $a0, 0xC($sp)
/* 0258E0 004258E0 00067080 */  sll         $t6, $a2, 2
/* 0258E4 004258E4 8FB8000C */  lw          $t8, 0xC($sp)
/* 0258E8 004258E8 01C67023 */  subu        $t6, $t6, $a2
/* 0258EC 004258EC 000E7080 */  sll         $t6, $t6, 2
/* 0258F0 004258F0 00067880 */  sll         $t7, $a2, 2
/* 0258F4 004258F4 008E2021 */  addu        $a0, $a0, $t6
/* 0258F8 004258F8 01E67823 */  subu        $t7, $t7, $a2
/* 0258FC 004258FC 000F7880 */  sll         $t7, $t7, 2
/* 025900 00425900 0304382B */  sltu        $a3, $t8, $a0
/* 025904 00425904 00AF2821 */  addu        $a1, $a1, $t7
/* 025908 00425908 10E00027 */  beqz        $a3, .L004259A8
/* 02590C 0042590C 2484FFF4 */   addiu      $a0, $a0, -0xC
.L00425910:
/* 025910 00425910 90B9FFFF */  lbu         $t9, -0x1($a1)
/* 025914 00425914 90A9FFFE */  lbu         $t1, -0x2($a1)
/* 025918 00425918 90ACFFFD */  lbu         $t4, -0x3($a1)
/* 02591C 0042591C 00194200 */  sll         $t0, $t9, 8
/* 025920 00425920 01095021 */  addu        $t2, $t0, $t1
/* 025924 00425924 90AFFFFC */  lbu         $t7, -0x4($a1)
/* 025928 00425928 000A5A00 */  sll         $t3, $t2, 8
/* 02592C 0042592C 016C6821 */  addu        $t5, $t3, $t4
/* 025930 00425930 000D7200 */  sll         $t6, $t5, 8
/* 025934 00425934 01EEC021 */  addu        $t8, $t7, $t6
/* 025938 00425938 AC980008 */  sw          $t8, 0x8($a0)
/* 02593C 0042593C 90B9FFFB */  lbu         $t9, -0x5($a1)
/* 025940 00425940 90A9FFFA */  lbu         $t1, -0x6($a1)
/* 025944 00425944 90ACFFF9 */  lbu         $t4, -0x7($a1)
/* 025948 00425948 00194200 */  sll         $t0, $t9, 8
/* 02594C 0042594C 01095021 */  addu        $t2, $t0, $t1
/* 025950 00425950 90AEFFF8 */  lbu         $t6, -0x8($a1)
/* 025954 00425954 000A5A00 */  sll         $t3, $t2, 8
/* 025958 00425958 016C6821 */  addu        $t5, $t3, $t4
/* 02595C 0042595C 000D7A00 */  sll         $t7, $t5, 8
/* 025960 00425960 01CFC021 */  addu        $t8, $t6, $t7
/* 025964 00425964 AC980004 */  sw          $t8, 0x4($a0)
/* 025968 00425968 90B9FFF7 */  lbu         $t9, -0x9($a1)
/* 02596C 0042596C 90A9FFF6 */  lbu         $t1, -0xA($a1)
/* 025970 00425970 90ACFFF5 */  lbu         $t4, -0xB($a1)
/* 025974 00425974 00194200 */  sll         $t0, $t9, 8
/* 025978 00425978 01095021 */  addu        $t2, $t0, $t1
/* 02597C 0042597C 90AFFFF4 */  lbu         $t7, -0xC($a1)
/* 025980 00425980 000A5A00 */  sll         $t3, $t2, 8
/* 025984 00425984 016C6821 */  addu        $t5, $t3, $t4
/* 025988 00425988 000D7200 */  sll         $t6, $t5, 8
/* 02598C 0042598C 01EEC021 */  addu        $t8, $t7, $t6
/* 025990 00425990 AC980000 */  sw          $t8, 0x0($a0)
/* 025994 00425994 8FB9000C */  lw          $t9, 0xC($sp)
/* 025998 00425998 24A5FFF4 */  addiu       $a1, $a1, -0xC
/* 02599C 0042599C 0324382B */  sltu        $a3, $t9, $a0
/* 0259A0 004259A0 14E0FFDB */  bnez        $a3, .L00425910
/* 0259A4 004259A4 2484FFF4 */   addiu      $a0, $a0, -0xC
.L004259A8:
/* 0259A8 004259A8 03E00008 */  jr          $ra
/* 0259AC 004259AC 27BD0010 */   addiu      $sp, $sp, 0x10
