glabel obj_msym_ms_info # 427
/* 02FCF0 0042FCF0 8C8E0124 */  lw          $t6, 0x124($a0)
/* 02FCF4 0042FCF4 000578C0 */  sll         $t7, $a1, 3
/* 02FCF8 0042FCF8 01CFC021 */  addu        $t8, $t6, $t7
/* 02FCFC 0042FCFC 03E00008 */  jr          $ra
/* 02FD00 0042FD00 8F020004 */   lw         $v0, 0x4($t8)
