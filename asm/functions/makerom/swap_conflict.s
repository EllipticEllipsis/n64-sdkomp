glabel swap_conflict # 514
/* 032DC0 00432DC0 AFA50004 */  sw          $a1, 0x4($sp)
/* 032DC4 00432DC4 8C820000 */  lw          $v0, 0x0($a0)
/* 032DC8 00432DC8 3C0100FF */  lui         $at, (0xFF0000 >> 16)
/* 032DCC 00432DCC 00027602 */  srl         $t6, $v0, 24
/* 032DD0 00432DD0 00027E00 */  sll         $t7, $v0, 24
/* 032DD4 00432DD4 0002CA00 */  sll         $t9, $v0, 8
/* 032DD8 00432DD8 03214024 */  and         $t0, $t9, $at
/* 032DDC 00432DDC 01CFC025 */  or          $t8, $t6, $t7
/* 032DE0 00432DE0 00025202 */  srl         $t2, $v0, 8
/* 032DE4 00432DE4 314BFF00 */  andi        $t3, $t2, 0xFF00
/* 032DE8 00432DE8 03084825 */  or          $t1, $t8, $t0
/* 032DEC 00432DEC 012B6025 */  or          $t4, $t1, $t3
/* 032DF0 00432DF0 03E00008 */  jr          $ra
/* 032DF4 00432DF4 AC8C0000 */   sw         $t4, 0x0($a0)
