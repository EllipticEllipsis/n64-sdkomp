glabel user_symbol_free # 608
/* 03C07C 0043C07C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03C080 0043C080 279C6CE4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD6CE4
/* 03C084 0043C084 0399E021 */  addu        $gp, $gp, $t9
/* 03C088 0043C088 8F8186FC */  lw          $at, %got(sinx)($gp)
/* 03C08C 0043C08C 2403FFFE */  addiu       $v1, $zero, -0x2
/* 03C090 0043C090 00001025 */  move        $v0, $zero
/* 03C094 0043C094 AC230000 */  sw          $v1, 0x0($at)
/* 03C098 0043C098 8F818700 */  lw          $at, %got(tinx)($gp)
/* 03C09C 0043C09C 03E00008 */  jr          $ra
/* 03C0A0 0043C0A0 AC230000 */   sw         $v1, 0x0($at)
