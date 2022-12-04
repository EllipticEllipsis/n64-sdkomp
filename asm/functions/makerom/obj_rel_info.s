glabel obj_rel_info # 432
/* 02FD54 0042FD54 8C8E0130 */  lw          $t6, 0x130($a0)
/* 02FD58 0042FD58 000578C0 */  sll         $t7, $a1, 3
/* 02FD5C 0042FD5C 01CFC021 */  addu        $t8, $t6, $t7
/* 02FD60 0042FD60 03E00008 */  jr          $ra
/* 02FD64 0042FD64 8F020004 */   lw         $v0, 0x4($t8)
