glabel obj_set_dynsym_value # 408
/* 02F9B8 0042F9B8 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02F9BC 0042F9BC 00057900 */  sll         $t7, $a1, 4
/* 02F9C0 0042F9C0 01CFC021 */  addu        $t8, $t6, $t7
/* 02F9C4 0042F9C4 03E00008 */  jr          $ra
/* 02F9C8 0042F9C8 AF060004 */   sw         $a2, 0x4($t8)
