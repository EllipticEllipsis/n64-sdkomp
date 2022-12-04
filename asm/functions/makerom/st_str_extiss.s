glabel st_str_extiss # 641
/* 03EDC0 0043EDC0 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03EDC4 0043EDC4 279C3FA0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3FA0
/* 03EDC8 0043EDC8 0399E021 */  addu        $gp, $gp, $t9
/* 03EDCC 0043EDCC 0480000A */  bltz        $a0, .L0043EDF8
/* 03EDD0 0043EDD0 00001025 */   move       $v0, $zero
/* 03EDD4 0043EDD4 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03EDD8 0043EDD8 8C630000 */  lw          $v1, 0x0($v1)
/* 03EDDC 0043EDDC 8C6E0028 */  lw          $t6, 0x28($v1)
/* 03EDE0 0043EDE0 008E082A */  slt         $at, $a0, $t6
/* 03EDE4 0043EDE4 10200004 */  beqz        $at, .L0043EDF8
/* 03EDE8 0043EDE8 00000000 */   nop
/* 03EDEC 0043EDEC 8C6F0024 */  lw          $t7, 0x24($v1)
/* 03EDF0 0043EDF0 03E00008 */  jr          $ra
/* 03EDF4 0043EDF4 01E41021 */   addu       $v0, $t7, $a0
.L0043EDF8:
/* 03EDF8 0043EDF8 03E00008 */  jr          $ra
/* 03EDFC 0043EDFC 00000000 */   nop
