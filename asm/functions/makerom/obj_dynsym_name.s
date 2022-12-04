glabel obj_dynsym_name # 413
/* 02FA1C 0042FA1C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02FA20 0042FA20 279C3344 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE3344
/* 02FA24 0042FA24 0399E021 */  addu        $gp, $gp, $t9
/* 02FA28 0042FA28 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02FA2C 0042FA2C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02FA30 0042FA30 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02FA34 0042FA34 8C8E0120 */  lw          $t6, 0x120($a0)
/* 02FA38 0042FA38 8F9983E4 */  lw          $t9, %call16(obj_dynstring)($gp)
/* 02FA3C 0042FA3C 00057900 */  sll         $t7, $a1, 4
/* 02FA40 0042FA40 01CFC021 */  addu        $t8, $t6, $t7
/* 02FA44 0042FA44 0320F809 */  jalr        $t9
/* 02FA48 0042FA48 8F050000 */   lw         $a1, 0x0($t8)
/* 02FA4C 0042FA4C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02FA50 0042FA50 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02FA54 0042FA54 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02FA58 0042FA58 03E00008 */  jr          $ra
/* 02FA5C 0042FA5C 00000000 */   nop
