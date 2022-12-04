glabel obj_set_msym_ms_info # 428
/* 02FD04 0042FD04 8C8E0124 */  lw          $t6, 0x124($a0)
/* 02FD08 0042FD08 000578C0 */  sll         $t7, $a1, 3
/* 02FD0C 0042FD0C 01CFC021 */  addu        $t8, $t6, $t7
/* 02FD10 0042FD10 03E00008 */  jr          $ra
/* 02FD14 0042FD14 AF060004 */   sw         $a2, 0x4($t8)
