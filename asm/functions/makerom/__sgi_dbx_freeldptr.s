glabel __sgi_dbx_freeldptr # 217
/* 02A158 0042A158 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A15C 0042A15C 279C8C08 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8C08
/* 02A160 0042A160 0399E021 */  addu        $gp, $gp, $t9
/* 02A164 0042A164 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A168 0042A168 8F99826C */  lw          $t9, %call16(__sgi_dbx_obj_close)($gp)
/* 02A16C 0042A16C AFB00014 */  sw          $s0, 0x14($sp)
/* 02A170 0042A170 00808025 */  move        $s0, $a0
/* 02A174 0042A174 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A178 0042A178 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A17C 0042A17C 0320F809 */  jalr        $t9
/* 02A180 0042A180 8C84002C */   lw         $a0, 0x2C($a0)
/* 02A184 0042A184 8E020020 */  lw          $v0, 0x20($s0)
/* 02A188 0042A188 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A18C 0042A18C AE00002C */  sw          $zero, 0x2C($s0)
/* 02A190 0042A190 10400011 */  beqz        $v0, .L0042A1D8
/* 02A194 0042A194 00000000 */   nop
/* 02A198 0042A198 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02A19C 0042A19C 8C440048 */  lw          $a0, 0x48($v0)
/* 02A1A0 0042A1A0 0320F809 */  jalr        $t9
/* 02A1A4 0042A1A4 00000000 */   nop
/* 02A1A8 0042A1A8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A1AC 0042A1AC 8E0E0020 */  lw          $t6, 0x20($s0)
/* 02A1B0 0042A1B0 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02A1B4 0042A1B4 8DC40004 */  lw          $a0, 0x4($t6)
/* 02A1B8 0042A1B8 0320F809 */  jalr        $t9
/* 02A1BC 0042A1BC 00000000 */   nop
/* 02A1C0 0042A1C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A1C4 0042A1C4 8E040020 */  lw          $a0, 0x20($s0)
/* 02A1C8 0042A1C8 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02A1CC 0042A1CC 0320F809 */  jalr        $t9
/* 02A1D0 0042A1D0 00000000 */   nop
/* 02A1D4 0042A1D4 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042A1D8:
/* 02A1D8 0042A1D8 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02A1DC 0042A1DC 02002025 */  move        $a0, $s0
/* 02A1E0 0042A1E0 0320F809 */  jalr        $t9
/* 02A1E4 0042A1E4 00000000 */   nop
/* 02A1E8 0042A1E8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A1EC 0042A1EC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A1F0 0042A1F0 8FB00014 */  lw          $s0, 0x14($sp)
/* 02A1F4 0042A1F4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A1F8 0042A1F8 03E00008 */  jr          $ra
/* 02A1FC 0042A1FC 24020001 */   addiu      $v0, $zero, 0x1
