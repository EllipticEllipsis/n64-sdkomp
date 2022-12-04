glabel _elf64_msize # 49
/* 0145C8 004145C8 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 0145CC 004145CC 279CE798 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBFE798
/* 0145D0 004145D0 0399E021 */  addu        $gp, $gp, $t9
/* 0145D4 004145D4 8F99802C */  lw          $t9, %got(RO_10006660)($gp)
/* 0145D8 004145D8 00057100 */  sll         $t6, $a1, 4
/* 0145DC 004145DC 01C57023 */  subu        $t6, $t6, $a1
/* 0145E0 004145E0 000E70C0 */  sll         $t6, $t6, 3
/* 0145E4 004145E4 000478C0 */  sll         $t7, $a0, 3
/* 0145E8 004145E8 01CFC021 */  addu        $t8, $t6, $t7
/* 0145EC 004145EC 27396660 */  addiu       $t9, $t9, %lo(RO_10006660)
/* 0145F0 004145F0 03194021 */  addu        $t0, $t8, $t9
/* 0145F4 004145F4 03E00008 */  jr          $ra
/* 0145F8 004145F8 8D02FF8C */   lw         $v0, -0x74($t0)
