glabel _elf64_xlatetom # 54
/* 014B44 00414B44 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 014B48 00414B48 279CE21C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBFE21C
/* 014B4C 00414B4C 0399E021 */  addu        $gp, $gp, $t9
/* 014B50 00414B50 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014B54 00414B54 8F998018 */  lw          $t9, %got(func_0041479C)($gp)
/* 014B58 00414B58 AFBF001C */  sw          $ra, 0x1C($sp)
/* 014B5C 00414B5C AFA40020 */  sw          $a0, 0x20($sp)
/* 014B60 00414B60 AFA50024 */  sw          $a1, 0x24($sp)
/* 014B64 00414B64 AFA60028 */  sw          $a2, 0x28($sp)
/* 014B68 00414B68 2739479C */  addiu       $t9, $t9, %lo(func_0041479C)
/* 014B6C 00414B6C AFBC0018 */  sw          $gp, 0x18($sp)
/* 014B70 00414B70 8FA60028 */  lw          $a2, 0x28($sp)
/* 014B74 00414B74 8FA50024 */  lw          $a1, 0x24($sp)
/* 014B78 00414B78 8FA40020 */  lw          $a0, 0x20($sp)
/* 014B7C 00414B7C 0320F809 */  jalr        $t9
/* 014B80 00414B80 00003825 */   move       $a3, $zero
/* 014B84 00414B84 8FBF001C */  lw          $ra, 0x1C($sp)
/* 014B88 00414B88 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014B8C 00414B8C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014B90 00414B90 03E00008 */  jr          $ra
/* 014B94 00414B94 00000000 */   nop
