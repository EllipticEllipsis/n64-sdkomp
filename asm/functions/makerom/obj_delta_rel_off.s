glabel obj_delta_rel_off # 478
/* 030464 00430464 8C8E01B0 */  lw          $t6, 0x1B0($a0)
/* 030468 00430468 000578C0 */  sll         $t7, $a1, 3
/* 03046C 0043046C 01CFC021 */  addu        $t8, $t6, $t7
/* 030470 00430470 03E00008 */  jr          $ra
/* 030474 00430474 8F020000 */   lw         $v0, 0x0($t8)
