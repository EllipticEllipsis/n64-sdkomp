glabel obj_dynsym_value # 407
/* 02F9A4 0042F9A4 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02F9A8 0042F9A8 00057900 */  sll         $t7, $a1, 4
/* 02F9AC 0042F9AC 01CFC021 */  addu        $t8, $t6, $t7
/* 02F9B0 0042F9B0 03E00008 */  jr          $ra
/* 02F9B4 0042F9B4 8F020004 */   lw         $v0, 0x4($t8)
