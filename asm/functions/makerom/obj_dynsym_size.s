glabel obj_dynsym_size # 410
/* 02F9E0 0042F9E0 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02F9E4 0042F9E4 00057900 */  sll         $t7, $a1, 4
/* 02F9E8 0042F9E8 01CFC021 */  addu        $t8, $t6, $t7
/* 02F9EC 0042F9EC 03E00008 */  jr          $ra
/* 02F9F0 0042F9F0 8F020008 */   lw         $v0, 0x8($t8)
