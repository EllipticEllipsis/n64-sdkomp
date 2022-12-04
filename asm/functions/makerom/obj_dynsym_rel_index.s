glabel obj_dynsym_rel_index # 426
/* 02FCD8 0042FCD8 8C8E0124 */  lw          $t6, 0x124($a0)
/* 02FCDC 0042FCDC 000578C0 */  sll         $t7, $a1, 3
/* 02FCE0 0042FCE0 01CFC021 */  addu        $t8, $t6, $t7
/* 02FCE4 0042FCE4 8F020004 */  lw          $v0, 0x4($t8)
/* 02FCE8 0042FCE8 03E00008 */  jr          $ra
/* 02FCEC 0042FCEC 00021202 */   srl        $v0, $v0, 8
