glabel obj_liblist_version_str # 437
/* 02FE18 0042FE18 8C8E0134 */  lw          $t6, 0x134($a0)
/* 02FE1C 0042FE1C 00057880 */  sll         $t7, $a1, 2
/* 02FE20 0042FE20 01E57821 */  addu        $t7, $t7, $a1
/* 02FE24 0042FE24 000F7880 */  sll         $t7, $t7, 2
/* 02FE28 0042FE28 01CFC021 */  addu        $t8, $t6, $t7
/* 02FE2C 0042FE2C 8F19000C */  lw          $t9, 0xC($t8)
/* 02FE30 0042FE30 8C88011C */  lw          $t0, 0x11C($a0)
/* 02FE34 0042FE34 03E00008 */  jr          $ra
/* 02FE38 0042FE38 03281021 */   addu       $v0, $t9, $t0
