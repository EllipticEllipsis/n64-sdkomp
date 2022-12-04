glabel obj_set_rldflag # 380
/* 02F7B0 0042F7B0 8C8E0178 */  lw          $t6, 0x178($a0)
/* 02F7B4 0042F7B4 01C57825 */  or          $t7, $t6, $a1
/* 02F7B8 0042F7B8 03E00008 */  jr          $ra
/* 02F7BC 0042F7BC AC8F0178 */   sw         $t7, 0x178($a0)
