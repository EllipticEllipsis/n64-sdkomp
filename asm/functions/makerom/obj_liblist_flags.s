glabel obj_liblist_flags # 439
/* 02FE58 0042FE58 8C8E0134 */  lw          $t6, 0x134($a0)
/* 02FE5C 0042FE5C 00057880 */  sll         $t7, $a1, 2
/* 02FE60 0042FE60 01E57821 */  addu        $t7, $t7, $a1
/* 02FE64 0042FE64 000F7880 */  sll         $t7, $t7, 2
/* 02FE68 0042FE68 01CFC021 */  addu        $t8, $t6, $t7
/* 02FE6C 0042FE6C 03E00008 */  jr          $ra
/* 02FE70 0042FE70 8F020010 */   lw         $v0, 0x10($t8)
