glabel obj_checksum_not_match # 442
/* 02FEF4 0042FEF4 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02FEF8 0042FEF8 279C2E6C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE2E6C
/* 02FEFC 0042FEFC 0399E021 */  addu        $gp, $gp, $t9
/* 02FF00 0042FF00 8F998420 */  lw          $t9, %call16(obj_liblist_csum)($gp)
/* 02FF04 0042FF04 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02FF08 0042FF08 AFA40020 */  sw          $a0, 0x20($sp)
/* 02FF0C 0042FF0C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02FF10 0042FF10 00A02025 */  move        $a0, $a1
/* 02FF14 0042FF14 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02FF18 0042FF18 0320F809 */  jalr        $t9
/* 02FF1C 0042FF1C 00C02825 */   move       $a1, $a2
/* 02FF20 0042FF20 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02FF24 0042FF24 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02FF28 0042FF28 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FF2C 0042FF2C 8DCF0150 */  lw          $t7, 0x150($t6)
/* 02FF30 0042FF30 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02FF34 0042FF34 004F1026 */  xor         $v0, $v0, $t7
/* 02FF38 0042FF38 03E00008 */  jr          $ra
/* 02FF3C 0042FF3C 0002102B */   sltu       $v0, $zero, $v0
