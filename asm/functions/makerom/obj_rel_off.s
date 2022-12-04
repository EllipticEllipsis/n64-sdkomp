glabel obj_rel_off # 431
/* 02FD40 0042FD40 8C8E0130 */  lw          $t6, 0x130($a0)
/* 02FD44 0042FD44 000578C0 */  sll         $t7, $a1, 3
/* 02FD48 0042FD48 01CFC021 */  addu        $t8, $t6, $t7
/* 02FD4C 0042FD4C 03E00008 */  jr          $ra
/* 02FD50 0042FD50 8F020000 */   lw         $v0, 0x0($t8)
