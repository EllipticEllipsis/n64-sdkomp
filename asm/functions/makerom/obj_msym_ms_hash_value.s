glabel obj_msym_ms_hash_value # 429
/* 02FD18 0042FD18 8C8E0124 */  lw          $t6, 0x124($a0)
/* 02FD1C 0042FD1C 000578C0 */  sll         $t7, $a1, 3
/* 02FD20 0042FD20 01CFC021 */  addu        $t8, $t6, $t7
/* 02FD24 0042FD24 03E00008 */  jr          $ra
/* 02FD28 0042FD28 8F020000 */   lw         $v0, 0x0($t8)
