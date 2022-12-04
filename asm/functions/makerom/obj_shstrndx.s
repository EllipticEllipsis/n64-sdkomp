glabel obj_shstrndx # 450
/* 0300CC 004300CC 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 0300D0 004300D0 279C2C94 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE2C94
/* 0300D4 004300D4 0399E021 */  addu        $gp, $gp, $t9
/* 0300D8 004300D8 8F99842C */  lw          $t9, %call16(obj_pelfhdr)($gp)
/* 0300DC 004300DC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0300E0 004300E0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0300E4 004300E4 0320F809 */  jalr        $t9
/* 0300E8 004300E8 AFBC0018 */   sw         $gp, 0x18($sp)
/* 0300EC 004300EC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0300F0 004300F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0300F4 004300F4 94420032 */  lhu         $v0, 0x32($v0)
/* 0300F8 004300F8 03E00008 */  jr          $ra
/* 0300FC 004300FC 27BD0020 */   addiu      $sp, $sp, 0x20
