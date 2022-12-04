glabel func_0042B0E0 # 240
/* 02B0E0 0042B0E0 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02B0E4 0042B0E4 279C7C80 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE7C80
/* 02B0E8 0042B0E8 0399E021 */  addu        $gp, $gp, $t9
/* 02B0EC 0042B0EC 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 02B0F0 0042B0F0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02B0F4 0042B0F4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02B0F8 0042B0F8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02B0FC 0042B0FC 0320F809 */  jalr        $t9
/* 02B100 0042B100 AFA40028 */   sw         $a0, 0x28($sp)
/* 02B104 0042B104 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02B108 0042B108 24440001 */  addiu       $a0, $v0, 0x1
/* 02B10C 0042B10C 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 02B110 0042B110 0320F809 */  jalr        $t9
/* 02B114 0042B114 00000000 */   nop
/* 02B118 0042B118 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02B11C 0042B11C AFA20024 */  sw          $v0, 0x24($sp)
/* 02B120 0042B120 00402025 */  move        $a0, $v0
/* 02B124 0042B124 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 02B128 0042B128 8FA50028 */  lw          $a1, 0x28($sp)
/* 02B12C 0042B12C 0320F809 */  jalr        $t9
/* 02B130 0042B130 00000000 */   nop
/* 02B134 0042B134 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02B138 0042B138 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02B13C 0042B13C 8FA20024 */  lw          $v0, 0x24($sp)
/* 02B140 0042B140 03E00008 */  jr          $ra
/* 02B144 0042B144 27BD0028 */   addiu      $sp, $sp, 0x28
