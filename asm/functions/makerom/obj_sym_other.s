glabel obj_sym_other # 409
/* 02F9CC 0042F9CC 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02F9D0 0042F9D0 00057900 */  sll         $t7, $a1, 4
/* 02F9D4 0042F9D4 01CFC021 */  addu        $t8, $t6, $t7
/* 02F9D8 0042F9D8 03E00008 */  jr          $ra
/* 02F9DC 0042F9DC 9302000D */   lbu        $v0, 0xD($t8)
