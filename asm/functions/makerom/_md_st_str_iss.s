glabel _md_st_str_iss # 673
/* 040D68 00440D68 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040D6C 00440D6C 279C1FF8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD1FF8
/* 040D70 00440D70 0399E021 */  addu        $gp, $gp, $t9
/* 040D74 00440D74 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 040D78 00440D78 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 040D7C 00440D7C AFBF001C */  sw          $ra, 0x1C($sp)
/* 040D80 00440D80 8DCE0000 */  lw          $t6, 0x0($t6)
/* 040D84 00440D84 AFBC0018 */  sw          $gp, 0x18($sp)
/* 040D88 00440D88 AFA40020 */  sw          $a0, 0x20($sp)
/* 040D8C 00440D8C 8DCF0004 */  lw          $t7, 0x4($t6)
/* 040D90 00440D90 15E00006 */  bnez        $t7, .L00440DAC
/* 040D94 00440D94 00000000 */   nop
/* 040D98 00440D98 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 040D9C 00440D9C 8F848030 */  lw          $a0, %got(D_1000ACF0)($gp)
/* 040DA0 00440DA0 0320F809 */  jalr        $t9
/* 040DA4 00440DA4 2484ACF0 */   addiu      $a0, $a0, %lo(D_1000ACF0)
/* 040DA8 00440DA8 8FBC0018 */  lw          $gp, 0x18($sp)
.L00440DAC:
/* 040DAC 00440DAC 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 040DB0 00440DB0 8C630000 */  lw          $v1, 0x0($v1)
/* 040DB4 00440DB4 54600009 */  bnel        $v1, $zero, .L00440DDC
/* 040DB8 00440DB8 8C780000 */   lw         $t8, 0x0($v1)
/* 040DBC 00440DBC 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 040DC0 00440DC0 8F848030 */  lw          $a0, %got(D_1000AD2C)($gp)
/* 040DC4 00440DC4 0320F809 */  jalr        $t9
/* 040DC8 00440DC8 2484AD2C */   addiu      $a0, $a0, %lo(D_1000AD2C)
/* 040DCC 00440DCC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 040DD0 00440DD0 8F8387CC */  lw          $v1, %got(pcfdcur)($gp)
/* 040DD4 00440DD4 8C630000 */  lw          $v1, 0x0($v1)
/* 040DD8 00440DD8 8C780000 */  lw          $t8, 0x0($v1)
.L00440DDC:
/* 040DDC 00440DDC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 040DE0 00440DE0 8F02000C */  lw          $v0, 0xC($t8)
/* 040DE4 00440DE4 5040000A */  beql        $v0, $zero, .L00440E10
/* 040DE8 00440DE8 00001025 */   move       $v0, $zero
/* 040DEC 00440DEC 8FB90020 */  lw          $t9, 0x20($sp)
/* 040DF0 00440DF0 8FA90020 */  lw          $t1, 0x20($sp)
/* 040DF4 00440DF4 0322082A */  slt         $at, $t9, $v0
/* 040DF8 00440DF8 50200005 */  beql        $at, $zero, .L00440E10
/* 040DFC 00440DFC 00001025 */   move       $v0, $zero
/* 040E00 00440E00 8C680014 */  lw          $t0, 0x14($v1)
/* 040E04 00440E04 10000002 */  b           .L00440E10
/* 040E08 00440E08 01091021 */   addu       $v0, $t0, $t1
/* 040E0C 00440E0C 00001025 */  move        $v0, $zero
.L00440E10:
/* 040E10 00440E10 03E00008 */  jr          $ra
/* 040E14 00440E14 27BD0020 */   addiu      $sp, $sp, 0x20
