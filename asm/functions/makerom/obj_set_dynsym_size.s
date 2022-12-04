glabel obj_set_dynsym_size # 411
/* 02F9F4 0042F9F4 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02F9F8 0042F9F8 00057900 */  sll         $t7, $a1, 4
/* 02F9FC 0042F9FC 01CFC021 */  addu        $t8, $t6, $t7
/* 02FA00 0042FA00 03E00008 */  jr          $ra
/* 02FA04 0042FA04 AF060008 */   sw         $a2, 0x8($t8)
