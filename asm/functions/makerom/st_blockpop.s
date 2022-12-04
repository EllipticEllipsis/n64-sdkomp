glabel st_blockpop # 694
/* 0421F4 004421F4 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 0421F8 004421F8 279C0B6C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD0B6C
/* 0421FC 004421FC 0399E021 */  addu        $gp, $gp, $t9
/* 042200 00442200 8F828030 */  lw          $v0, %got(B_10010824)($gp)
/* 042204 00442204 24420824 */  addiu       $v0, $v0, %lo(B_10010824)
/* 042208 00442208 8C4E0000 */  lw          $t6, 0x0($v0)
/* 04220C 0044220C 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 042210 00442210 03E00008 */  jr          $ra
/* 042214 00442214 AC4F0000 */   sw         $t7, 0x0($v0)
