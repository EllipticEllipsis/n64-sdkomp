glabel compare_coff_sections # 579
/* 0390A4 004390A4 8C83000C */  lw          $v1, 0xC($a0)
/* 0390A8 004390A8 54600004 */  bnel        $v1, $zero, .L004390BC
/* 0390AC 004390AC 8CA4000C */   lw         $a0, 0xC($a1)
/* 0390B0 004390B0 03E00008 */  jr          $ra
/* 0390B4 004390B4 24020001 */   addiu      $v0, $zero, 0x1
/* 0390B8 004390B8 8CA4000C */  lw          $a0, 0xC($a1)
.L004390BC:
/* 0390BC 004390BC 14800003 */  bnez        $a0, .L004390CC
/* 0390C0 004390C0 0064082A */   slt        $at, $v1, $a0
/* 0390C4 004390C4 03E00008 */  jr          $ra
/* 0390C8 004390C8 2402FFFF */   addiu      $v0, $zero, -0x1
.L004390CC:
/* 0390CC 004390CC 10200003 */  beqz        $at, .L004390DC
/* 0390D0 004390D0 00831026 */   xor        $v0, $a0, $v1
/* 0390D4 004390D4 03E00008 */  jr          $ra
/* 0390D8 004390D8 2402FFFF */   addiu      $v0, $zero, -0x1
.L004390DC:
/* 0390DC 004390DC 0002102B */  sltu        $v0, $zero, $v0
/* 0390E0 004390E0 03E00008 */  jr          $ra
/* 0390E4 004390E4 00000000 */   nop
