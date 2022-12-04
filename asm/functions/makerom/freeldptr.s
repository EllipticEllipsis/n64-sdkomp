glabel freeldptr # 216
/* 02A0A0 0042A0A0 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A0A4 0042A0A4 279C8CC0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8CC0
/* 02A0A8 0042A0A8 0399E021 */  addu        $gp, $gp, $t9
/* 02A0AC 0042A0AC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A0B0 0042A0B0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A0B4 0042A0B4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A0B8 0042A0B8 AFB00014 */  sw          $s0, 0x14($sp)
/* 02A0BC 0042A0BC 8C85002C */  lw          $a1, 0x2C($a0)
/* 02A0C0 0042A0C0 00808025 */  move        $s0, $a0
/* 02A0C4 0042A0C4 50A00007 */  beql        $a1, $zero, .L0042A0E4
/* 02A0C8 0042A0C8 8E020020 */   lw         $v0, 0x20($s0)
/* 02A0CC 0042A0CC 8F998280 */  lw          $t9, %call16(obj_close)($gp)
/* 02A0D0 0042A0D0 00A02025 */  move        $a0, $a1
/* 02A0D4 0042A0D4 0320F809 */  jalr        $t9
/* 02A0D8 0042A0D8 00000000 */   nop
/* 02A0DC 0042A0DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A0E0 0042A0E0 8E020020 */  lw          $v0, 0x20($s0)
.L0042A0E4:
/* 02A0E4 0042A0E4 AE00002C */  sw          $zero, 0x2C($s0)
/* 02A0E8 0042A0E8 10400011 */  beqz        $v0, .L0042A130
/* 02A0EC 0042A0EC 00000000 */   nop
/* 02A0F0 0042A0F0 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02A0F4 0042A0F4 8C440048 */  lw          $a0, 0x48($v0)
/* 02A0F8 0042A0F8 0320F809 */  jalr        $t9
/* 02A0FC 0042A0FC 00000000 */   nop
/* 02A100 0042A100 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A104 0042A104 8E0E0020 */  lw          $t6, 0x20($s0)
/* 02A108 0042A108 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02A10C 0042A10C 8DC40004 */  lw          $a0, 0x4($t6)
/* 02A110 0042A110 0320F809 */  jalr        $t9
/* 02A114 0042A114 00000000 */   nop
/* 02A118 0042A118 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A11C 0042A11C 8E040020 */  lw          $a0, 0x20($s0)
/* 02A120 0042A120 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02A124 0042A124 0320F809 */  jalr        $t9
/* 02A128 0042A128 00000000 */   nop
/* 02A12C 0042A12C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042A130:
/* 02A130 0042A130 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02A134 0042A134 02002025 */  move        $a0, $s0
/* 02A138 0042A138 0320F809 */  jalr        $t9
/* 02A13C 0042A13C 00000000 */   nop
/* 02A140 0042A140 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A144 0042A144 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A148 0042A148 8FB00014 */  lw          $s0, 0x14($sp)
/* 02A14C 0042A14C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A150 0042A150 03E00008 */  jr          $ra
/* 02A154 0042A154 24020001 */   addiu      $v0, $zero, 0x1
