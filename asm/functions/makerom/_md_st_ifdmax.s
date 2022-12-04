glabel _md_st_ifdmax # 677
/* 040FD0 00440FD0 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040FD4 00440FD4 279C1D90 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD1D90
/* 040FD8 00440FD8 0399E021 */  addu        $gp, $gp, $t9
/* 040FDC 00440FDC 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 040FE0 00440FE0 8DCE0000 */  lw          $t6, 0x0($t6)
/* 040FE4 00440FE4 03E00008 */  jr          $ra
/* 040FE8 00440FE8 8DC2000C */   lw         $v0, 0xC($t6)
