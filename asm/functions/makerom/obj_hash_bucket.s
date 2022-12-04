glabel obj_hash_bucket # 420
/* 02FB1C 0042FB1C 8C8E0118 */  lw          $t6, 0x118($a0)
/* 02FB20 0042FB20 00057880 */  sll         $t7, $a1, 2
/* 02FB24 0042FB24 01CFC021 */  addu        $t8, $t6, $t7
/* 02FB28 0042FB28 03E00008 */  jr          $ra
/* 02FB2C 0042FB2C 8F020008 */   lw         $v0, 0x8($t8)
