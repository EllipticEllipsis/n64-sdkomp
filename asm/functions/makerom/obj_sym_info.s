glabel obj_sym_info # 414
/* 02FA60 0042FA60 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02FA64 0042FA64 00057900 */  sll         $t7, $a1, 4
/* 02FA68 0042FA68 01CFC021 */  addu        $t8, $t6, $t7
/* 02FA6C 0042FA6C 03E00008 */  jr          $ra
/* 02FA70 0042FA70 9302000C */   lbu        $v0, 0xC($t8)
