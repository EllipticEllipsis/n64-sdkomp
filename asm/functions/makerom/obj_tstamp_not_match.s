glabel obj_tstamp_not_match # 444
/* 02FF9C 0042FF9C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02FFA0 0042FFA0 279C2DC4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE2DC4
/* 02FFA4 0042FFA4 0399E021 */  addu        $gp, $gp, $t9
/* 02FFA8 0042FFA8 8F99841C */  lw          $t9, %call16(obj_liblist_tstamp)($gp)
/* 02FFAC 0042FFAC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02FFB0 0042FFB0 AFA40020 */  sw          $a0, 0x20($sp)
/* 02FFB4 0042FFB4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02FFB8 0042FFB8 00A02025 */  move        $a0, $a1
/* 02FFBC 0042FFBC AFBC0018 */  sw          $gp, 0x18($sp)
/* 02FFC0 0042FFC0 0320F809 */  jalr        $t9
/* 02FFC4 0042FFC4 00C02825 */   move       $a1, $a2
/* 02FFC8 0042FFC8 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02FFCC 0042FFCC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02FFD0 0042FFD0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FFD4 0042FFD4 8DCF014C */  lw          $t7, 0x14C($t6)
/* 02FFD8 0042FFD8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02FFDC 0042FFDC 004F1026 */  xor         $v0, $v0, $t7
/* 02FFE0 0042FFE0 03E00008 */  jr          $ra
/* 02FFE4 0042FFE4 0002102B */   sltu       $v0, $zero, $v0
