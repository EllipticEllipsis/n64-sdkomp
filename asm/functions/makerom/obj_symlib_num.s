glabel obj_symlib_num # 489
/* 0304D4 004304D4 8C8301D4 */  lw          $v1, 0x1D4($a0)
/* 0304D8 004304D8 54600004 */  bnel        $v1, $zero, .L004304EC
/* 0304DC 004304DC 8C8E016C */   lw         $t6, 0x16C($a0)
/* 0304E0 004304E0 03E00008 */  jr          $ra
/* 0304E4 004304E4 00001025 */   move       $v0, $zero
/* 0304E8 004304E8 8C8E016C */  lw          $t6, 0x16C($a0)
.L004304EC:
/* 0304EC 004304EC 00057840 */  sll         $t7, $a1, 1
/* 0304F0 004304F0 006FC021 */  addu        $t8, $v1, $t7
/* 0304F4 004304F4 29C100FF */  slti        $at, $t6, 0xFF
/* 0304F8 004304F8 54200004 */  bnel        $at, $zero, .L0043050C
/* 0304FC 004304FC 0065C821 */   addu       $t9, $v1, $a1
/* 030500 00430500 03E00008 */  jr          $ra
/* 030504 00430504 97020000 */   lhu        $v0, 0x0($t8)
/* 030508 00430508 0065C821 */  addu        $t9, $v1, $a1
.L0043050C:
/* 03050C 0043050C 83220000 */  lb          $v0, 0x0($t9)
/* 030510 00430510 03E00008 */  jr          $ra
/* 030514 00430514 00000000 */   nop