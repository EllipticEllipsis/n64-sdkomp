glabel _md_st_iextmax # 674
/* 040E18 00440E18 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040E1C 00440E1C 279C1F48 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD1F48
/* 040E20 00440E20 0399E021 */  addu        $gp, $gp, $t9
/* 040E24 00440E24 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 040E28 00440E28 8DCE0000 */  lw          $t6, 0x0($t6)
/* 040E2C 00440E2C 03E00008 */  jr          $ra
/* 040E30 00440E30 8DC2001C */   lw         $v0, 0x1C($t6)
