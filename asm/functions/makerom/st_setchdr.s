glabel st_setchdr # 637
/* 03E990 0043E990 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03E994 0043E994 279C43D0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD43D0
/* 03E998 0043E998 0399E021 */  addu        $gp, $gp, $t9
/* 03E99C 0043E99C 8F8187C8 */  lw          $at, %got(st_pchdr)($gp)
/* 03E9A0 0043E9A0 03E00008 */  jr          $ra
/* 03E9A4 0043E9A4 AC240000 */   sw         $a0, 0x0($at)
