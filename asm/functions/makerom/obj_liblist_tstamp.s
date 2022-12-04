glabel obj_liblist_tstamp # 435
/* 02FDE0 0042FDE0 8C8E0134 */  lw          $t6, 0x134($a0)
/* 02FDE4 0042FDE4 00057880 */  sll         $t7, $a1, 2
/* 02FDE8 0042FDE8 01E57821 */  addu        $t7, $t7, $a1
/* 02FDEC 0042FDEC 000F7880 */  sll         $t7, $t7, 2
/* 02FDF0 0042FDF0 01CFC021 */  addu        $t8, $t6, $t7
/* 02FDF4 0042FDF4 03E00008 */  jr          $ra
/* 02FDF8 0042FDF8 8F020004 */   lw         $v0, 0x4($t8)
