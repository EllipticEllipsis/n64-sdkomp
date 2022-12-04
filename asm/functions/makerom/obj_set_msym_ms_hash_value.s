glabel obj_set_msym_ms_hash_value # 430
/* 02FD2C 0042FD2C 8C8E0124 */  lw          $t6, 0x124($a0)
/* 02FD30 0042FD30 000578C0 */  sll         $t7, $a1, 3
/* 02FD34 0042FD34 01CFC021 */  addu        $t8, $t6, $t7
/* 02FD38 0042FD38 03E00008 */  jr          $ra
/* 02FD3C 0042FD3C AF060000 */   sw         $a2, 0x0($t8)
