glabel st_set_non_gp # 658
/* 04005C 0044005C 948E0008 */  lhu         $t6, 0x8($a0)
/* 040060 00440060 31CFFC1F */  andi        $t7, $t6, 0xFC1F
/* 040064 00440064 35F80360 */  ori         $t8, $t7, 0x360
/* 040068 00440068 03E00008 */  jr          $ra
/* 04006C 0044006C A4980008 */   sh         $t8, 0x8($a0)
