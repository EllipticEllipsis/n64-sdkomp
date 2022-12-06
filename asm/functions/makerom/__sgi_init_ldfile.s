glabel __sgi_init_ldfile # 206
/* 0295AC 004295AC 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0295B0 004295B0 279C97B4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE97B4
/* 0295B4 004295B4 0399E021 */  addu        $gp, $gp, $t9
/* 0295B8 004295B8 8F998020 */  lw          $t9, %got(init_ldfile)($gp)
/* 0295BC 004295BC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0295C0 004295C0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0295C4 004295C4 273998BC */  addiu       $t9, $t9, %lo(init_ldfile)
/* 0295C8 004295C8 0320F809 */  jalr        $t9
/* 0295CC 004295CC AFBC0018 */   sw         $gp, 0x18($sp)
/* 0295D0 004295D0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0295D4 004295D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0295D8 004295D8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0295DC 004295DC 03E00008 */  jr          $ra
/* 0295E0 004295E0 00000000 */   nop
