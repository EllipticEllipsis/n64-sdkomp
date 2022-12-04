glabel obj_pixie_init_done # 398
/* 02F8A4 0042F8A4 8C820178 */  lw          $v0, 0x178($a0)
/* 02F8A8 0042F8A8 3C010002 */  lui         $at, (0x20000 >> 16)
/* 02F8AC 0042F8AC 03E00008 */  jr          $ra
/* 02F8B0 0042F8B0 00411024 */   and        $v0, $v0, $at
