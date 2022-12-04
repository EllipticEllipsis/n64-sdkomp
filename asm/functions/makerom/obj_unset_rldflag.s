glabel obj_unset_rldflag # 381
/* 02F7C0 0042F7C0 8C8E0178 */  lw          $t6, 0x178($a0)
/* 02F7C4 0042F7C4 00A07827 */  not         $t7, $a1
/* 02F7C8 0042F7C8 01CFC024 */  and         $t8, $t6, $t7
/* 02F7CC 0042F7CC 03E00008 */  jr          $ra
/* 02F7D0 0042F7D0 AC980178 */   sw         $t8, 0x178($a0)
