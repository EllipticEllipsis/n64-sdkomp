glabel file_symbol_count # 542
/* 034464 00434464 8C9900D0 */  lw          $t9, 0xD0($a0)
/* 034468 00434468 8C8E00A0 */  lw          $t6, 0xA0($a0)
/* 03446C 0043446C 000578C0 */  sll         $t7, $a1, 3
/* 034470 00434470 001940C0 */  sll         $t0, $t9, 3
/* 034474 00434474 01E57821 */  addu        $t7, $t7, $a1
/* 034478 00434478 01194021 */  addu        $t0, $t0, $t9
/* 03447C 0043447C 000840C0 */  sll         $t0, $t0, 3
/* 034480 00434480 000F78C0 */  sll         $t7, $t7, 3
/* 034484 00434484 00084823 */  negu        $t1, $t0
/* 034488 00434488 01CFC021 */  addu        $t8, $t6, $t7
/* 03448C 0043448C 03095021 */  addu        $t2, $t8, $t1
/* 034490 00434490 03E00008 */  jr          $ra
/* 034494 00434494 8D420014 */   lw         $v0, 0x14($t2)
