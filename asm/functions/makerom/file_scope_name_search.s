glabel file_scope_name_search # 617
/* 03D070 0043D070 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03D074 0043D074 279C5CF0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD5CF0
/* 03D078 0043D078 0399E021 */  addu        $gp, $gp, $t9
/* 03D07C 0043D07C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03D080 0043D080 8F9984FC */  lw          $t9, %call16(file_symbol)($gp)
/* 03D084 0043D084 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03D088 0043D088 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03D08C 0043D08C AFA40028 */  sw          $a0, 0x28($sp)
/* 03D090 0043D090 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03D094 0043D094 AFA60030 */  sw          $a2, 0x30($sp)
/* 03D098 0043D098 0320F809 */  jalr        $t9
/* 03D09C 0043D09C AFA70034 */   sw         $a3, 0x34($sp)
/* 03D0A0 0043D0A0 2401FFFF */  addiu       $at, $zero, -0x1
/* 03D0A4 0043D0A4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03D0A8 0043D0A8 14410003 */  bne         $v0, $at, .L0043D0B8
/* 03D0AC 0043D0AC 00402825 */   move       $a1, $v0
/* 03D0B0 0043D0B0 1000000C */  b           .L0043D0E4
/* 03D0B4 0043D0B4 2402FFFF */   addiu      $v0, $zero, -0x1
.L0043D0B8:
/* 03D0B8 0043D0B8 8F998024 */  lw          $t9, %got(scope_name_to_sym)($gp)
/* 03D0BC 0043D0BC 8FAE0034 */  lw          $t6, 0x34($sp)
/* 03D0C0 0043D0C0 8FAF0038 */  lw          $t7, 0x38($sp)
/* 03D0C4 0043D0C4 2739CCB0 */  addiu       $t9, $t9, %lo(scope_name_to_sym)
/* 03D0C8 0043D0C8 8FA40028 */  lw          $a0, 0x28($sp)
/* 03D0CC 0043D0CC 8FA6002C */  lw          $a2, 0x2C($sp)
/* 03D0D0 0043D0D0 8FA70030 */  lw          $a3, 0x30($sp)
/* 03D0D4 0043D0D4 AFAE0010 */  sw          $t6, 0x10($sp)
/* 03D0D8 0043D0D8 0320F809 */  jalr        $t9
/* 03D0DC 0043D0DC AFAF0014 */   sw         $t7, 0x14($sp)
/* 03D0E0 0043D0E0 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043D0E4:
/* 03D0E4 0043D0E4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03D0E8 0043D0E8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03D0EC 0043D0EC 03E00008 */  jr          $ra
/* 03D0F0 0043D0F0 00000000 */   nop
