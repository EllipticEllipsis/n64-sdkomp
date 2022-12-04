glabel obj_get_delta_version # 395
/* 02F878 0042F878 8C8201C8 */  lw          $v0, 0x1C8($a0)
/* 02F87C 0042F87C 3C01F000 */  lui         $at, (0xF0000000 >> 16)
/* 02F880 0042F880 00411024 */  and         $v0, $v0, $at
/* 02F884 0042F884 03E00008 */  jr          $ra
/* 02F888 0042F888 00021702 */   srl        $v0, $v0, 28
