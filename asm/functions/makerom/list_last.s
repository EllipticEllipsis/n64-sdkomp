glabel list_last # 552
/* 034C94 00434C94 10800006 */  beqz        $a0, .L00434CB0
/* 034C98 00434C98 2402FFFF */   addiu      $v0, $zero, -0x1
/* 034C9C 00434C9C 8C830008 */  lw          $v1, 0x8($a0)
/* 034CA0 00434CA0 10600003 */  beqz        $v1, .L00434CB0
/* 034CA4 00434CA4 00000000 */   nop
/* 034CA8 00434CA8 03E00008 */  jr          $ra
/* 034CAC 00434CAC 8C620000 */   lw         $v0, 0x0($v1)
.L00434CB0:
/* 034CB0 00434CB0 03E00008 */  jr          $ra
/* 034CB4 00434CB4 00000000 */   nop
