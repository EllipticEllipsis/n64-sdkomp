glabel file_pfd # 535
/* 0342CC 004342CC 8C8F00D0 */  lw          $t7, 0xD0($a0)
/* 0342D0 004342D0 8C8E00A0 */  lw          $t6, 0xA0($a0)
/* 0342D4 004342D4 00AFC023 */  subu        $t8, $a1, $t7
/* 0342D8 004342D8 0018C8C0 */  sll         $t9, $t8, 3
/* 0342DC 004342DC 0338C821 */  addu        $t9, $t9, $t8
/* 0342E0 004342E0 0019C8C0 */  sll         $t9, $t9, 3
/* 0342E4 004342E4 03E00008 */  jr          $ra
/* 0342E8 004342E8 01D91021 */   addu       $v0, $t6, $t9