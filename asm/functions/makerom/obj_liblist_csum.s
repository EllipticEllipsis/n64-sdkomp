glabel obj_liblist_csum # 436
/* 02FDFC 0042FDFC 8C8E0134 */  lw          $t6, 0x134($a0)
/* 02FE00 0042FE00 00057880 */  sll         $t7, $a1, 2
/* 02FE04 0042FE04 01E57821 */  addu        $t7, $t7, $a1
/* 02FE08 0042FE08 000F7880 */  sll         $t7, $t7, 2
/* 02FE0C 0042FE0C 01CFC021 */  addu        $t8, $t6, $t7
/* 02FE10 0042FE10 03E00008 */  jr          $ra
/* 02FE14 0042FE14 8F020008 */   lw         $v0, 0x8($t8)
