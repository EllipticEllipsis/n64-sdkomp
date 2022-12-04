glabel func_00414EE8 # 57
/* 014EE8 00414EE8 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 014EEC 00414EEC 279CDE78 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBFDE78
/* 014EF0 00414EF0 0399E021 */  addu        $gp, $gp, $t9
/* 014EF4 00414EF4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014EF8 00414EF8 AFA40020 */  sw          $a0, 0x20($sp)
/* 014EFC 00414EFC AFA50024 */  sw          $a1, 0x24($sp)
/* 014F00 00414F00 8FAF0024 */  lw          $t7, 0x24($sp)
/* 014F04 00414F04 8FAE0020 */  lw          $t6, 0x20($sp)
/* 014F08 00414F08 AFBF001C */  sw          $ra, 0x1C($sp)
/* 014F0C 00414F0C AFBC0018 */  sw          $gp, 0x18($sp)
/* 014F10 00414F10 11CF0007 */  beq         $t6, $t7, .L00414F30
/* 014F14 00414F14 AFA60028 */   sw         $a2, 0x28($sp)
/* 014F18 00414F18 8F99810C */  lw          $t9, %call16(memcpy)($gp)
/* 014F1C 00414F1C 01C02025 */  move        $a0, $t6
/* 014F20 00414F20 01E02825 */  move        $a1, $t7
/* 014F24 00414F24 0320F809 */  jalr        $t9
/* 014F28 00414F28 8FA60028 */   lw         $a2, 0x28($sp)
/* 014F2C 00414F2C 8FBC0018 */  lw          $gp, 0x18($sp)
.L00414F30:
/* 014F30 00414F30 8FBF001C */  lw          $ra, 0x1C($sp)
/* 014F34 00414F34 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014F38 00414F38 03E00008 */  jr          $ra
/* 014F3C 00414F3C 00000000 */   nop
