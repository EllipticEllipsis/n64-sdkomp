glabel address_to_symbol # 604
/* 03BC7C 0043BC7C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03BC80 0043BC80 279C70E4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD70E4
/* 03BC84 0043BC84 0399E021 */  addu        $gp, $gp, $t9
/* 03BC88 0043BC88 8F99851C */  lw          $t9, %call16(foreach_obj)($gp)
/* 03BC8C 0043BC8C 00A03025 */  move        $a2, $a1
/* 03BC90 0043BC90 8F858024 */  lw          $a1, %got(func_0043BAB8)($gp)
/* 03BC94 0043BC94 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03BC98 0043BC98 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03BC9C 0043BC9C AFBC0018 */  sw          $gp, 0x18($sp)
/* 03BCA0 0043BCA0 0320F809 */  jalr        $t9
/* 03BCA4 0043BCA4 24A5BAB8 */   addiu      $a1, $a1, %lo(func_0043BAB8)
/* 03BCA8 0043BCA8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03BCAC 0043BCAC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03BCB0 0043BCB0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03BCB4 0043BCB4 03E00008 */  jr          $ra
/* 03BCB8 0043BCB8 00000000 */   nop
