glabel obj_locgot # 424
/* 02FCB0 0042FCB0 8C8E0128 */  lw          $t6, 0x128($a0)
/* 02FCB4 0042FCB4 00057880 */  sll         $t7, $a1, 2
/* 02FCB8 0042FCB8 01CFC021 */  addu        $t8, $t6, $t7
/* 02FCBC 0042FCBC 03E00008 */  jr          $ra
/* 02FCC0 0042FCC0 8F020000 */   lw         $v0, 0x0($t8)
