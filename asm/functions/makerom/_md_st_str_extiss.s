glabel _md_st_str_extiss # 672
/* 040D28 00440D28 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040D2C 00440D2C 279C2038 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD2038
/* 040D30 00440D30 0399E021 */  addu        $gp, $gp, $t9
/* 040D34 00440D34 0480000A */  bltz        $a0, .L00440D60
/* 040D38 00440D38 00001025 */   move       $v0, $zero
/* 040D3C 00440D3C 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 040D40 00440D40 8C630000 */  lw          $v1, 0x0($v1)
/* 040D44 00440D44 8C6E0028 */  lw          $t6, 0x28($v1)
/* 040D48 00440D48 008E082A */  slt         $at, $a0, $t6
/* 040D4C 00440D4C 10200004 */  beqz        $at, .L00440D60
/* 040D50 00440D50 00000000 */   nop
/* 040D54 00440D54 8C6F0024 */  lw          $t7, 0x24($v1)
/* 040D58 00440D58 03E00008 */  jr          $ra
/* 040D5C 00440D5C 01E41021 */   addu       $v0, $t7, $a0
.L00440D60:
/* 040D60 00440D60 03E00008 */  jr          $ra
/* 040D64 00440D64 00000000 */   nop
