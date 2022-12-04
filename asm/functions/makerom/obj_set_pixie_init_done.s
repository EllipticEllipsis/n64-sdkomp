glabel obj_set_pixie_init_done # 399
/* 02F8B4 0042F8B4 8C8E0178 */  lw          $t6, 0x178($a0)
/* 02F8B8 0042F8B8 3C010002 */  lui         $at, (0x20000 >> 16)
/* 02F8BC 0042F8BC 01C17825 */  or          $t7, $t6, $at
/* 02F8C0 0042F8C0 03E00008 */  jr          $ra
/* 02F8C4 0042F8C4 AC8F0178 */   sw         $t7, 0x178($a0)
