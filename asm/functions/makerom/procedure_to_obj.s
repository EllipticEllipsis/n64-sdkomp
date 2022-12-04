glabel procedure_to_obj # 256
/* 02CA0C 0042CA0C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02CA10 0042CA10 279C6354 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE6354
/* 02CA14 0042CA14 0399E021 */  addu        $gp, $gp, $t9
/* 02CA18 0042CA18 8F8E8030 */  lw          $t6, %got(B_1000F138)($gp)
/* 02CA1C 0042CA1C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02CA20 0042CA20 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02CA24 0042CA24 8DCEF138 */  lw          $t6, %lo(B_1000F138)($t6)
/* 02CA28 0042CA28 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02CA2C 0042CA2C 00A03025 */  move        $a2, $a1
/* 02CA30 0042CA30 15C50004 */  bne         $t6, $a1, .L0042CA44
/* 02CA34 0042CA34 00000000 */   nop
/* 02CA38 0042CA38 8F828030 */  lw          $v0, %got(B_1000F13C)($gp)
/* 02CA3C 0042CA3C 10000011 */  b           .L0042CA84
/* 02CA40 0042CA40 8C42F13C */   lw         $v0, %lo(B_1000F13C)($v0)
.L0042CA44:
/* 02CA44 0042CA44 8F99851C */  lw          $t9, %call16(foreach_obj)($gp)
/* 02CA48 0042CA48 8F858020 */  lw          $a1, %got(func_0042C9BC)($gp)
/* 02CA4C 0042CA4C AFA60024 */  sw          $a2, 0x24($sp)
/* 02CA50 0042CA50 0320F809 */  jalr        $t9
/* 02CA54 0042CA54 24A5C9BC */   addiu      $a1, $a1, %lo(func_0042C9BC)
/* 02CA58 0042CA58 2401FFFF */  addiu       $at, $zero, -0x1
/* 02CA5C 0042CA5C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02CA60 0042CA60 8FA60024 */  lw          $a2, 0x24($sp)
/* 02CA64 0042CA64 14410002 */  bne         $v0, $at, .L0042CA70
/* 02CA68 0042CA68 00401825 */   move       $v1, $v0
/* 02CA6C 0042CA6C 00001825 */  move        $v1, $zero
.L0042CA70:
/* 02CA70 0042CA70 8F818030 */  lw          $at, %got(B_1000F138)($gp)
/* 02CA74 0042CA74 00601025 */  move        $v0, $v1
/* 02CA78 0042CA78 AC26F138 */  sw          $a2, %lo(B_1000F138)($at)
/* 02CA7C 0042CA7C 8F818030 */  lw          $at, %got(B_1000F13C)($gp)
/* 02CA80 0042CA80 AC23F13C */  sw          $v1, %lo(B_1000F13C)($at)
.L0042CA84:
/* 02CA84 0042CA84 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02CA88 0042CA88 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02CA8C 0042CA8C 03E00008 */  jr          $ra
/* 02CA90 0042CA90 00000000 */   nop
