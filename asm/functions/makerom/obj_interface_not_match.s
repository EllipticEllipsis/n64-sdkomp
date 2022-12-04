glabel obj_interface_not_match # 441
/* 02FE84 0042FE84 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02FE88 0042FE88 279C2EDC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE2EDC
/* 02FE8C 0042FE8C 0399E021 */  addu        $gp, $gp, $t9
/* 02FE90 0042FE90 8F998424 */  lw          $t9, %call16(obj_liblist_version_str)($gp)
/* 02FE94 0042FE94 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02FE98 0042FE98 AFA40028 */  sw          $a0, 0x28($sp)
/* 02FE9C 0042FE9C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02FEA0 0042FEA0 00A02025 */  move        $a0, $a1
/* 02FEA4 0042FEA4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02FEA8 0042FEA8 0320F809 */  jalr        $t9
/* 02FEAC 0042FEAC 00C02825 */   move       $a1, $a2
/* 02FEB0 0042FEB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FEB4 0042FEB4 AFA20020 */  sw          $v0, 0x20($sp)
/* 02FEB8 0042FEB8 8FA40028 */  lw          $a0, 0x28($sp)
/* 02FEBC 0042FEBC 8F998428 */  lw          $t9, %call16(obj_interface_version)($gp)
/* 02FEC0 0042FEC0 0320F809 */  jalr        $t9
/* 02FEC4 0042FEC4 00000000 */   nop
/* 02FEC8 0042FEC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FECC 0042FECC 8FA40020 */  lw          $a0, 0x20($sp)
/* 02FED0 0042FED0 00402825 */  move        $a1, $v0
/* 02FED4 0042FED4 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 02FED8 0042FED8 0320F809 */  jalr        $t9
/* 02FEDC 0042FEDC 00000000 */   nop
/* 02FEE0 0042FEE0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02FEE4 0042FEE4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FEE8 0042FEE8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02FEEC 0042FEEC 03E00008 */  jr          $ra
/* 02FEF0 0042FEF0 00000000 */   nop
