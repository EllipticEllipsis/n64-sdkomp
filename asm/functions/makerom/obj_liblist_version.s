glabel obj_liblist_version # 438
/* 02FE3C 0042FE3C 8C8E0134 */  lw          $t6, 0x134($a0)
/* 02FE40 0042FE40 00057880 */  sll         $t7, $a1, 2
/* 02FE44 0042FE44 01E57821 */  addu        $t7, $t7, $a1
/* 02FE48 0042FE48 000F7880 */  sll         $t7, $t7, 2
/* 02FE4C 0042FE4C 01CFC021 */  addu        $t8, $t6, $t7
/* 02FE50 0042FE50 03E00008 */  jr          $ra
/* 02FE54 0042FE54 8F02000C */   lw         $v0, 0xC($t8)
