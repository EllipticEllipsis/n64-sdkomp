glabel address_to_obj # 260
/* 02CBD0 0042CBD0 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02CBD4 0042CBD4 279C6190 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE6190
/* 02CBD8 0042CBD8 0399E021 */  addu        $gp, $gp, $t9
/* 02CBDC 0042CBDC 8F8E8030 */  lw          $t6, %got(B_1000F248)($gp)
/* 02CBE0 0042CBE0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02CBE4 0042CBE4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02CBE8 0042CBE8 8DCEF248 */  lw          $t6, %lo(B_1000F248)($t6)
/* 02CBEC 0042CBEC AFBC0018 */  sw          $gp, 0x18($sp)
/* 02CBF0 0042CBF0 00A03025 */  move        $a2, $a1
/* 02CBF4 0042CBF4 15C50004 */  bne         $t6, $a1, .L0042CC08
/* 02CBF8 0042CBF8 00000000 */   nop
/* 02CBFC 0042CBFC 8F828030 */  lw          $v0, %got(B_1000F24C)($gp)
/* 02CC00 0042CC00 10000011 */  b           .L0042CC48
/* 02CC04 0042CC04 8C42F24C */   lw         $v0, %lo(B_1000F24C)($v0)
.L0042CC08:
/* 02CC08 0042CC08 8F99851C */  lw          $t9, %call16(foreach_obj)($gp)
/* 02CC0C 0042CC0C 8F858020 */  lw          $a1, %got(check_address_range)($gp)
/* 02CC10 0042CC10 AFA60024 */  sw          $a2, 0x24($sp)
/* 02CC14 0042CC14 0320F809 */  jalr        $t9
/* 02CC18 0042CC18 24A5CB6C */   addiu      $a1, $a1, %lo(check_address_range)
/* 02CC1C 0042CC1C 2401FFFF */  addiu       $at, $zero, -0x1
/* 02CC20 0042CC20 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02CC24 0042CC24 8FA60024 */  lw          $a2, 0x24($sp)
/* 02CC28 0042CC28 14410002 */  bne         $v0, $at, .L0042CC34
/* 02CC2C 0042CC2C 00401825 */   move       $v1, $v0
/* 02CC30 0042CC30 00001825 */  move        $v1, $zero
.L0042CC34:
/* 02CC34 0042CC34 8F818030 */  lw          $at, %got(B_1000F248)($gp)
/* 02CC38 0042CC38 00601025 */  move        $v0, $v1
/* 02CC3C 0042CC3C AC26F248 */  sw          $a2, %lo(B_1000F248)($at)
/* 02CC40 0042CC40 8F818030 */  lw          $at, %got(B_1000F24C)($gp)
/* 02CC44 0042CC44 AC23F24C */  sw          $v1, %lo(B_1000F24C)($at)
.L0042CC48:
/* 02CC48 0042CC48 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02CC4C 0042CC4C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02CC50 0042CC50 03E00008 */  jr          $ra
/* 02CC54 0042CC54 00000000 */   nop
