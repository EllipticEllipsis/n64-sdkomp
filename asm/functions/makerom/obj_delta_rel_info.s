glabel obj_delta_rel_info # 479
/* 030478 00430478 8C8E01B0 */  lw          $t6, 0x1B0($a0)
/* 03047C 0043047C 000578C0 */  sll         $t7, $a1, 3
/* 030480 00430480 01CFC021 */  addu        $t8, $t6, $t7
/* 030484 00430484 03E00008 */  jr          $ra
/* 030488 00430488 8F020004 */   lw         $v0, 0x4($t8)