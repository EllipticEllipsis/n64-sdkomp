glabel func_004260A4 # 172
/* 0260A4 004260A4 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0260A8 004260A8 279CCCBC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBECCBC
/* 0260AC 004260AC 0399E021 */  addu        $gp, $gp, $t9
/* 0260B0 004260B0 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 0260B4 004260B4 AFA40004 */  sw          $a0, 0x4($sp)
/* 0260B8 004260B8 8FB80004 */  lw          $t8, 0x4($sp)
/* 0260BC 004260BC 00067100 */  sll         $t6, $a2, 4
/* 0260C0 004260C0 008E2021 */  addu        $a0, $a0, $t6
/* 0260C4 004260C4 00067900 */  sll         $t7, $a2, 4
/* 0260C8 004260C8 0304382B */  sltu        $a3, $t8, $a0
/* 0260CC 004260CC 00AF2821 */  addu        $a1, $a1, $t7
/* 0260D0 004260D0 10E00030 */  beqz        $a3, .L00426194
/* 0260D4 004260D4 2484FFF0 */   addiu      $a0, $a0, -0x10
.L004260D8:
/* 0260D8 004260D8 90A8FFFE */  lbu         $t0, -0x2($a1)
/* 0260DC 004260DC 90B9FFFF */  lbu         $t9, -0x1($a1)
/* 0260E0 004260E0 24A5FFF0 */  addiu       $a1, $a1, -0x10
/* 0260E4 004260E4 00084A00 */  sll         $t1, $t0, 8
/* 0260E8 004260E8 03295021 */  addu        $t2, $t9, $t1
/* 0260EC 004260EC A48A000E */  sh          $t2, 0xE($a0)
/* 0260F0 004260F0 90AB000D */  lbu         $t3, 0xD($a1)
/* 0260F4 004260F4 A08B000D */  sb          $t3, 0xD($a0)
/* 0260F8 004260F8 90AC000C */  lbu         $t4, 0xC($a1)
/* 0260FC 004260FC A08C000C */  sb          $t4, 0xC($a0)
/* 026100 00426100 90AD0008 */  lbu         $t5, 0x8($a1)
/* 026104 00426104 90AF0009 */  lbu         $t7, 0x9($a1)
/* 026108 00426108 90B9000A */  lbu         $t9, 0xA($a1)
/* 02610C 0042610C 000D7200 */  sll         $t6, $t5, 8
/* 026110 00426110 01CFC021 */  addu        $t8, $t6, $t7
/* 026114 00426114 90AB000B */  lbu         $t3, 0xB($a1)
/* 026118 00426118 00184200 */  sll         $t0, $t8, 8
/* 02611C 0042611C 01194821 */  addu        $t1, $t0, $t9
/* 026120 00426120 00095200 */  sll         $t2, $t1, 8
/* 026124 00426124 016A6021 */  addu        $t4, $t3, $t2
/* 026128 00426128 AC8C0008 */  sw          $t4, 0x8($a0)
/* 02612C 0042612C 90AD0004 */  lbu         $t5, 0x4($a1)
/* 026130 00426130 90AF0005 */  lbu         $t7, 0x5($a1)
/* 026134 00426134 90B90006 */  lbu         $t9, 0x6($a1)
/* 026138 00426138 000D7200 */  sll         $t6, $t5, 8
/* 02613C 0042613C 01CFC021 */  addu        $t8, $t6, $t7
/* 026140 00426140 90AA0007 */  lbu         $t2, 0x7($a1)
/* 026144 00426144 00184200 */  sll         $t0, $t8, 8
/* 026148 00426148 01194821 */  addu        $t1, $t0, $t9
/* 02614C 0042614C 00095A00 */  sll         $t3, $t1, 8
/* 026150 00426150 014B6021 */  addu        $t4, $t2, $t3
/* 026154 00426154 AC8C0004 */  sw          $t4, 0x4($a0)
/* 026158 00426158 90AD0000 */  lbu         $t5, 0x0($a1)
/* 02615C 0042615C 90AF0001 */  lbu         $t7, 0x1($a1)
/* 026160 00426160 90B90002 */  lbu         $t9, 0x2($a1)
/* 026164 00426164 000D7200 */  sll         $t6, $t5, 8
/* 026168 00426168 01CFC021 */  addu        $t8, $t6, $t7
/* 02616C 0042616C 90AB0003 */  lbu         $t3, 0x3($a1)
/* 026170 00426170 00184200 */  sll         $t0, $t8, 8
/* 026174 00426174 01194821 */  addu        $t1, $t0, $t9
/* 026178 00426178 00095200 */  sll         $t2, $t1, 8
/* 02617C 0042617C 016A6021 */  addu        $t4, $t3, $t2
/* 026180 00426180 AC8C0000 */  sw          $t4, 0x0($a0)
/* 026184 00426184 8FAD0004 */  lw          $t5, 0x4($sp)
/* 026188 00426188 01A4382B */  sltu        $a3, $t5, $a0
/* 02618C 0042618C 14E0FFD2 */  bnez        $a3, .L004260D8
/* 026190 00426190 2484FFF0 */   addiu      $a0, $a0, -0x10
.L00426194:
/* 026194 00426194 03E00008 */  jr          $ra
/* 026198 00426198 27BD0008 */   addiu      $sp, $sp, 0x8