glabel check_symbol_range # 253
/* 02C8E0 0042C8E0 AFA60008 */  sw          $a2, 0x8($sp)
/* 02C8E4 0042C8E4 8C82009C */  lw          $v0, 0x9C($a0)
/* 02C8E8 0042C8E8 54400004 */  bnel        $v0, $zero, .L0042C8FC
/* 02C8EC 0042C8EC 8C8E00CC */   lw         $t6, 0xCC($a0)
/* 02C8F0 0042C8F0 03E00008 */  jr          $ra
/* 02C8F4 0042C8F4 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02C8F8 0042C8F8 8C8E00CC */  lw          $t6, 0xCC($a0)
.L0042C8FC:
/* 02C8FC 0042C8FC 00AE082B */  sltu        $at, $a1, $t6
/* 02C900 0042C900 5420000A */  bnel        $at, $zero, .L0042C92C
/* 02C904 0042C904 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02C908 0042C908 8C8F00D8 */  lw          $t7, 0xD8($a0)
/* 02C90C 0042C90C 8C580058 */  lw          $t8, 0x58($v0)
/* 02C910 0042C910 01F8C821 */  addu        $t9, $t7, $t8
/* 02C914 0042C914 00B9082B */  sltu        $at, $a1, $t9
/* 02C918 0042C918 50200004 */  beql        $at, $zero, .L0042C92C
/* 02C91C 0042C91C 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02C920 0042C920 03E00008 */  jr          $ra
/* 02C924 0042C924 00801025 */   move       $v0, $a0
/* 02C928 0042C928 2402FFFF */  addiu       $v0, $zero, -0x1
.L0042C92C:
/* 02C92C 0042C92C 03E00008 */  jr          $ra
/* 02C930 0042C930 00000000 */   nop
