glabel symbol_to_file # 532
/* 033FA0 00433FA0 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 033FA4 00433FA4 279CEDC0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDEDC0
/* 033FA8 00433FA8 0399E021 */  addu        $gp, $gp, $t9
/* 033FAC 00433FAC 8C8300D8 */  lw          $v1, 0xD8($a0)
/* 033FB0 00433FB0 00057900 */  sll         $t7, $a1, 4
/* 033FB4 00433FB4 00A3082B */  sltu        $at, $a1, $v1
/* 033FB8 00433FB8 1420000A */  bnez        $at, .L00433FE4
/* 033FBC 00433FBC 00000000 */   nop
/* 033FC0 00433FC0 8C8E00AC */  lw          $t6, 0xAC($a0)
/* 033FC4 00433FC4 0003C900 */  sll         $t9, $v1, 4
/* 033FC8 00433FC8 00194823 */  negu        $t1, $t9
/* 033FCC 00433FCC 01CFC021 */  addu        $t8, $t6, $t7
/* 033FD0 00433FD0 03095021 */  addu        $t2, $t8, $t1
/* 033FD4 00433FD4 954B0002 */  lhu         $t3, 0x2($t2)
/* 033FD8 00433FD8 8C8C00D0 */  lw          $t4, 0xD0($a0)
/* 033FDC 00433FDC 03E00008 */  jr          $ra
/* 033FE0 00433FE0 016C1021 */   addu       $v0, $t3, $t4
.L00433FE4:
/* 033FE4 00433FE4 8F838030 */  lw          $v1, %got(B_1000F590)($gp)
/* 033FE8 00433FE8 8C82009C */  lw          $v0, 0x9C($a0)
/* 033FEC 00433FEC 8C8D00CC */  lw          $t5, 0xCC($a0)
/* 033FF0 00433FF0 8C63F590 */  lw          $v1, %lo(B_1000F590)($v1)
/* 033FF4 00433FF4 8C460048 */  lw          $a2, 0x48($v0)
/* 033FF8 00433FF8 00AD2823 */  subu        $a1, $a1, $t5
/* 033FFC 00433FFC 000378C0 */  sll         $t7, $v1, 3
/* 034000 00434000 0066082A */  slt         $at, $v1, $a2
/* 034004 00434004 50200012 */  beql        $at, $zero, .L00434050
/* 034008 00434008 8C4A0020 */   lw         $t2, 0x20($v0)
/* 03400C 0043400C 8C8E00A0 */  lw          $t6, 0xA0($a0)
/* 034010 00434010 01E37821 */  addu        $t7, $t7, $v1
/* 034014 00434014 000F78C0 */  sll         $t7, $t7, 3
/* 034018 00434018 01CF3821 */  addu        $a3, $t6, $t7
/* 03401C 0043401C 8CE80010 */  lw          $t0, 0x10($a3)
/* 034020 00434020 00A8082B */  sltu        $at, $a1, $t0
/* 034024 00434024 5420000A */  bnel        $at, $zero, .L00434050
/* 034028 00434028 8C4A0020 */   lw         $t2, 0x20($v0)
/* 03402C 0043402C 8CF90014 */  lw          $t9, 0x14($a3)
/* 034030 00434030 0328C021 */  addu        $t8, $t9, $t0
/* 034034 00434034 00B8082B */  sltu        $at, $a1, $t8
/* 034038 00434038 50200005 */  beql        $at, $zero, .L00434050
/* 03403C 0043403C 8C4A0020 */   lw         $t2, 0x20($v0)
/* 034040 00434040 8C8900D0 */  lw          $t1, 0xD0($a0)
/* 034044 00434044 03E00008 */  jr          $ra
/* 034048 00434048 00691021 */   addu       $v0, $v1, $t1
/* 03404C 0043404C 8C4A0020 */  lw          $t2, 0x20($v0)
.L00434050:
/* 034050 00434050 00AA082B */  sltu        $at, $a1, $t2
/* 034054 00434054 14200003 */  bnez        $at, .L00434064
/* 034058 00434058 00000000 */   nop
/* 03405C 0043405C 03E00008 */  jr          $ra
/* 034060 00434060 2402FFFF */   addiu      $v0, $zero, -0x1
.L00434064:
/* 034064 00434064 8F818030 */  lw          $at, %got(B_1000F590)($gp)
/* 034068 00434068 00001825 */  move        $v1, $zero
/* 03406C 0043406C 18C00016 */  blez        $a2, .L004340C8
/* 034070 00434070 AC20F590 */   sw         $zero, %lo(B_1000F590)($at)
/* 034074 00434074 8C8700A0 */  lw          $a3, 0xA0($a0)
.L00434078:
/* 034078 00434078 8CE80010 */  lw          $t0, 0x10($a3)
/* 03407C 0043407C 00A8082B */  sltu        $at, $a1, $t0
/* 034080 00434080 5420000C */  bnel        $at, $zero, .L004340B4
/* 034084 00434084 24630001 */   addiu      $v1, $v1, 0x1
/* 034088 00434088 8CEB0014 */  lw          $t3, 0x14($a3)
/* 03408C 0043408C 01686021 */  addu        $t4, $t3, $t0
/* 034090 00434090 00AC082B */  sltu        $at, $a1, $t4
/* 034094 00434094 50200007 */  beql        $at, $zero, .L004340B4
/* 034098 00434098 24630001 */   addiu      $v1, $v1, 0x1
/* 03409C 0043409C 8C8D00D0 */  lw          $t5, 0xD0($a0)
/* 0340A0 004340A0 8F818030 */  lw          $at, %got(B_1000F590)($gp)
/* 0340A4 004340A4 006D1021 */  addu        $v0, $v1, $t5
/* 0340A8 004340A8 03E00008 */  jr          $ra
/* 0340AC 004340AC AC23F590 */   sw         $v1, %lo(B_1000F590)($at)
/* 0340B0 004340B0 24630001 */  addiu       $v1, $v1, 0x1
.L004340B4:
/* 0340B4 004340B4 0066082A */  slt         $at, $v1, $a2
/* 0340B8 004340B8 1420FFEF */  bnez        $at, .L00434078
/* 0340BC 004340BC 24E70048 */   addiu      $a3, $a3, 0x48
/* 0340C0 004340C0 8F818030 */  lw          $at, %got(B_1000F590)($gp)
/* 0340C4 004340C4 AC23F590 */  sw          $v1, %lo(B_1000F590)($at)
.L004340C8:
/* 0340C8 004340C8 2402FFFF */  addiu       $v0, $zero, -0x1
/* 0340CC 004340CC 03E00008 */  jr          $ra
/* 0340D0 004340D0 00000000 */   nop