glabel obj_sym_shndx # 412
/* 02FA08 0042FA08 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02FA0C 0042FA0C 00057900 */  sll         $t7, $a1, 4
/* 02FA10 0042FA10 01CFC021 */  addu        $t8, $t6, $t7
/* 02FA14 0042FA14 03E00008 */  jr          $ra
/* 02FA18 0042FA18 9702000E */   lhu        $v0, 0xE($t8)
