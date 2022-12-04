glabel obj_different_name # 445
/* 02FFE8 0042FFE8 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02FFEC 0042FFEC 279C2D78 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE2D78
/* 02FFF0 0042FFF0 0399E021 */  addu        $gp, $gp, $t9
/* 02FFF4 0042FFF4 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 02FFF8 0042FFF8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02FFFC 0042FFFC AFBF001C */  sw          $ra, 0x1C($sp)
/* 030000 00430000 AFBC0018 */  sw          $gp, 0x18($sp)
/* 030004 00430004 8CA500F0 */  lw          $a1, 0xF0($a1)
/* 030008 00430008 0320F809 */  jalr        $t9
/* 03000C 0043000C 8C8400F0 */   lw         $a0, 0xF0($a0)
/* 030010 00430010 8FBF001C */  lw          $ra, 0x1C($sp)
/* 030014 00430014 8FBC0018 */  lw          $gp, 0x18($sp)
/* 030018 00430018 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03001C 0043001C 03E00008 */  jr          $ra
/* 030020 00430020 00000000 */   nop
