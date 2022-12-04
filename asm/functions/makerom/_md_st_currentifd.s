glabel _md_st_currentifd # 675
/* 040E34 00440E34 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040E38 00440E38 279C1F2C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD1F2C
/* 040E3C 00440E3C 0399E021 */  addu        $gp, $gp, $t9
/* 040E40 00440E40 8F8487CC */  lw          $a0, %got(pcfdcur)($gp)
/* 040E44 00440E44 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 040E48 00440E48 AFBF001C */  sw          $ra, 0x1C($sp)
/* 040E4C 00440E4C 8C840000 */  lw          $a0, 0x0($a0)
/* 040E50 00440E50 AFBC0018 */  sw          $gp, 0x18($sp)
/* 040E54 00440E54 14800003 */  bnez        $a0, .L00440E64
/* 040E58 00440E58 00000000 */   nop
/* 040E5C 00440E5C 10000005 */  b           .L00440E74
/* 040E60 00440E60 2402FFFF */   addiu      $v0, $zero, -0x1
.L00440E64:
/* 040E64 00440E64 8F998604 */  lw          $t9, %call16(st_ifd_pcfd)($gp)
/* 040E68 00440E68 0320F809 */  jalr        $t9
/* 040E6C 00440E6C 00000000 */   nop
/* 040E70 00440E70 8FBC0018 */  lw          $gp, 0x18($sp)
.L00440E74:
/* 040E74 00440E74 8FBF001C */  lw          $ra, 0x1C($sp)
/* 040E78 00440E78 27BD0020 */  addiu       $sp, $sp, 0x20
/* 040E7C 00440E7C 03E00008 */  jr          $ra
/* 040E80 00440E80 00000000 */   nop
