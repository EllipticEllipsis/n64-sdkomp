glabel file_symbol # 536
/* 0342EC 004342EC 8C9900D0 */  lw          $t9, 0xD0($a0)
/* 0342F0 004342F0 8C8E00A0 */  lw          $t6, 0xA0($a0)
/* 0342F4 004342F4 000578C0 */  sll         $t7, $a1, 3
/* 0342F8 004342F8 001940C0 */  sll         $t0, $t9, 3
/* 0342FC 004342FC 01E57821 */  addu        $t7, $t7, $a1
/* 034300 00434300 01194021 */  addu        $t0, $t0, $t9
/* 034304 00434304 000840C0 */  sll         $t0, $t0, 3
/* 034308 00434308 000F78C0 */  sll         $t7, $t7, 3
/* 03430C 0043430C 00084823 */  negu        $t1, $t0
/* 034310 00434310 01CFC021 */  addu        $t8, $t6, $t7
/* 034314 00434314 03091821 */  addu        $v1, $t8, $t1
/* 034318 00434318 8C6A0014 */  lw          $t2, 0x14($v1)
/* 03431C 0043431C 55400004 */  bnel        $t2, $zero, .L00434330
/* 034320 00434320 8C6B0010 */   lw         $t3, 0x10($v1)
/* 034324 00434324 03E00008 */  jr          $ra
/* 034328 00434328 2402FFFF */   addiu      $v0, $zero, -0x1
/* 03432C 0043432C 8C6B0010 */  lw          $t3, 0x10($v1)
.L00434330:
/* 034330 00434330 8C8C00CC */  lw          $t4, 0xCC($a0)
/* 034334 00434334 016C1021 */  addu        $v0, $t3, $t4
/* 034338 00434338 03E00008 */  jr          $ra
/* 03433C 0043433C 00000000 */   nop
