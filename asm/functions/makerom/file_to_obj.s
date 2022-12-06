glabel file_to_obj # 258
/* 02CAE4 0042CAE4 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02CAE8 0042CAE8 279C627C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE627C
/* 02CAEC 0042CAEC 0399E021 */  addu        $gp, $gp, $t9
/* 02CAF0 0042CAF0 8F8E8030 */  lw          $t6, %got(B_1000F240)($gp)
/* 02CAF4 0042CAF4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02CAF8 0042CAF8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02CAFC 0042CAFC 8DCEF240 */  lw          $t6, %lo(B_1000F240)($t6)
/* 02CB00 0042CB00 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02CB04 0042CB04 00A03025 */  move        $a2, $a1
/* 02CB08 0042CB08 15C50004 */  bne         $t6, $a1, .L0042CB1C
/* 02CB0C 0042CB0C 00000000 */   nop
/* 02CB10 0042CB10 8F828030 */  lw          $v0, %got(B_1000F244)($gp)
/* 02CB14 0042CB14 10000011 */  b           .L0042CB5C
/* 02CB18 0042CB18 8C42F244 */   lw         $v0, %lo(B_1000F244)($v0)
.L0042CB1C:
/* 02CB1C 0042CB1C 8F99851C */  lw          $t9, %call16(foreach_obj)($gp)
/* 02CB20 0042CB20 8F858020 */  lw          $a1, %got(check_file_range)($gp)
/* 02CB24 0042CB24 AFA60024 */  sw          $a2, 0x24($sp)
/* 02CB28 0042CB28 0320F809 */  jalr        $t9
/* 02CB2C 0042CB2C 24A5CA94 */   addiu      $a1, $a1, %lo(check_file_range)
/* 02CB30 0042CB30 2401FFFF */  addiu       $at, $zero, -0x1
/* 02CB34 0042CB34 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02CB38 0042CB38 8FA60024 */  lw          $a2, 0x24($sp)
/* 02CB3C 0042CB3C 14410002 */  bne         $v0, $at, .L0042CB48
/* 02CB40 0042CB40 00401825 */   move       $v1, $v0
/* 02CB44 0042CB44 00001825 */  move        $v1, $zero
.L0042CB48:
/* 02CB48 0042CB48 8F818030 */  lw          $at, %got(B_1000F240)($gp)
/* 02CB4C 0042CB4C 00601025 */  move        $v0, $v1
/* 02CB50 0042CB50 AC26F240 */  sw          $a2, %lo(B_1000F240)($at)
/* 02CB54 0042CB54 8F818030 */  lw          $at, %got(B_1000F244)($gp)
/* 02CB58 0042CB58 AC23F244 */  sw          $v1, %lo(B_1000F244)($at)
.L0042CB5C:
/* 02CB5C 0042CB5C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02CB60 0042CB60 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02CB64 0042CB64 03E00008 */  jr          $ra
/* 02CB68 0042CB68 00000000 */   nop
