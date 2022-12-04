glabel st_iextmax # 647
/* 03F29C 0043F29C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03F2A0 0043F2A0 279C3AC4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3AC4
/* 03F2A4 0043F2A4 0399E021 */  addu        $gp, $gp, $t9
/* 03F2A8 0043F2A8 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 03F2AC 0043F2AC 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03F2B0 0043F2B0 03E00008 */  jr          $ra
/* 03F2B4 0043F2B4 8DC2001C */   lw         $v0, 0x1C($t6)
