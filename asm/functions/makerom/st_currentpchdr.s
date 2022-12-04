glabel st_currentpchdr # 638
/* 03E9A8 0043E9A8 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03E9AC 0043E9AC 279C43B8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD43B8
/* 03E9B0 0043E9B0 0399E021 */  addu        $gp, $gp, $t9
/* 03E9B4 0043E9B4 8F8287C8 */  lw          $v0, %got(st_pchdr)($gp)
/* 03E9B8 0043E9B8 03E00008 */  jr          $ra
/* 03E9BC 0043E9BC 8C420000 */   lw         $v0, 0x0($v0)
