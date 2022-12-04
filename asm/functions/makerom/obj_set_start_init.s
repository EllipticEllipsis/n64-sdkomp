glabel obj_set_start_init # 400
/* 02F8C8 0042F8C8 8C8E0178 */  lw          $t6, 0x178($a0)
/* 02F8CC 0042F8CC 35CF1000 */  ori         $t7, $t6, 0x1000
/* 02F8D0 0042F8D0 03E00008 */  jr          $ra
/* 02F8D4 0042F8D4 AC8F0178 */   sw         $t7, 0x178($a0)
