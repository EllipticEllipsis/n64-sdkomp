glabel obj_set_local_got # 425
/* 02FCC4 0042FCC4 8C8E0128 */  lw          $t6, 0x128($a0)
/* 02FCC8 0042FCC8 00057880 */  sll         $t7, $a1, 2
/* 02FCCC 0042FCCC 01CFC021 */  addu        $t8, $t6, $t7
/* 02FCD0 0042FCD0 03E00008 */  jr          $ra
/* 02FCD4 0042FCD4 AF060000 */   sw         $a2, 0x0($t8)
