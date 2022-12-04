glabel _elf64_xlatetof # 53
/* 014AF0 00414AF0 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 014AF4 00414AF4 279CE270 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBFE270
/* 014AF8 00414AF8 0399E021 */  addu        $gp, $gp, $t9
/* 014AFC 00414AFC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014B00 00414B00 8F998018 */  lw          $t9, %got(func_0041479C)($gp)
/* 014B04 00414B04 AFBF001C */  sw          $ra, 0x1C($sp)
/* 014B08 00414B08 AFA40020 */  sw          $a0, 0x20($sp)
/* 014B0C 00414B0C AFA50024 */  sw          $a1, 0x24($sp)
/* 014B10 00414B10 AFA60028 */  sw          $a2, 0x28($sp)
/* 014B14 00414B14 2739479C */  addiu       $t9, $t9, %lo(func_0041479C)
/* 014B18 00414B18 AFBC0018 */  sw          $gp, 0x18($sp)
/* 014B1C 00414B1C 8FA60028 */  lw          $a2, 0x28($sp)
/* 014B20 00414B20 8FA50024 */  lw          $a1, 0x24($sp)
/* 014B24 00414B24 8FA40020 */  lw          $a0, 0x20($sp)
/* 014B28 00414B28 0320F809 */  jalr        $t9
/* 014B2C 00414B2C 24070001 */   addiu      $a3, $zero, 0x1
/* 014B30 00414B30 8FBF001C */  lw          $ra, 0x1C($sp)
/* 014B34 00414B34 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014B38 00414B38 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014B3C 00414B3C 03E00008 */  jr          $ra
/* 014B40 00414B40 00000000 */   nop
