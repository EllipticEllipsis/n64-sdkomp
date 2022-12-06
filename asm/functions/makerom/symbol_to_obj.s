glabel symbol_to_obj # 254
/* 02C934 0042C934 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02C938 0042C938 279C642C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE642C
/* 02C93C 0042C93C 0399E021 */  addu        $gp, $gp, $t9
/* 02C940 0042C940 8F8E8030 */  lw          $t6, %got(B_1000F130)($gp)
/* 02C944 0042C944 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02C948 0042C948 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02C94C 0042C94C 8DCEF130 */  lw          $t6, %lo(B_1000F130)($t6)
/* 02C950 0042C950 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02C954 0042C954 00A03025 */  move        $a2, $a1
/* 02C958 0042C958 15C50004 */  bne         $t6, $a1, .L0042C96C
/* 02C95C 0042C95C 00000000 */   nop
/* 02C960 0042C960 8F828030 */  lw          $v0, %got(B_1000F134)($gp)
/* 02C964 0042C964 10000011 */  b           .L0042C9AC
/* 02C968 0042C968 8C42F134 */   lw         $v0, %lo(B_1000F134)($v0)
.L0042C96C:
/* 02C96C 0042C96C 8F99851C */  lw          $t9, %call16(foreach_obj)($gp)
/* 02C970 0042C970 8F858020 */  lw          $a1, %got(check_symbol_range)($gp)
/* 02C974 0042C974 AFA60024 */  sw          $a2, 0x24($sp)
/* 02C978 0042C978 0320F809 */  jalr        $t9
/* 02C97C 0042C97C 24A5C8E0 */   addiu      $a1, $a1, %lo(check_symbol_range)
/* 02C980 0042C980 2401FFFF */  addiu       $at, $zero, -0x1
/* 02C984 0042C984 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02C988 0042C988 8FA60024 */  lw          $a2, 0x24($sp)
/* 02C98C 0042C98C 14410002 */  bne         $v0, $at, .L0042C998
/* 02C990 0042C990 00401825 */   move       $v1, $v0
/* 02C994 0042C994 00001825 */  move        $v1, $zero
.L0042C998:
/* 02C998 0042C998 8F818030 */  lw          $at, %got(B_1000F130)($gp)
/* 02C99C 0042C99C 00601025 */  move        $v0, $v1
/* 02C9A0 0042C9A0 AC26F130 */  sw          $a2, %lo(B_1000F130)($at)
/* 02C9A4 0042C9A4 8F818030 */  lw          $at, %got(B_1000F134)($gp)
/* 02C9A8 0042C9A8 AC23F134 */  sw          $v1, %lo(B_1000F134)($at)
.L0042C9AC:
/* 02C9AC 0042C9AC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02C9B0 0042C9B0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02C9B4 0042C9B4 03E00008 */  jr          $ra
/* 02C9B8 0042C9B8 00000000 */   nop
