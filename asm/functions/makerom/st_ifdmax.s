glabel st_ifdmax # 650
/* 03F3B0 0043F3B0 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03F3B4 0043F3B4 279C39B0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD39B0
/* 03F3B8 0043F3B8 0399E021 */  addu        $gp, $gp, $t9
/* 03F3BC 0043F3BC 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 03F3C0 0043F3C0 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03F3C4 0043F3C4 03E00008 */  jr          $ra
/* 03F3C8 0043F3C8 8DC2000C */   lw         $v0, 0xC($t6)
