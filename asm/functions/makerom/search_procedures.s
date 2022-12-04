glabel search_procedures # 619
/* 03D160 0043D160 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03D164 0043D164 279C5C00 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD5C00
/* 03D168 0043D168 0399E021 */  addu        $gp, $gp, $t9
/* 03D16C 0043D16C 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 03D170 0043D170 AFBF003C */  sw          $ra, 0x3C($sp)
/* 03D174 0043D174 AFBE0038 */  sw          $fp, 0x38($sp)
/* 03D178 0043D178 AFBC0034 */  sw          $gp, 0x34($sp)
/* 03D17C 0043D17C AFB70030 */  sw          $s7, 0x30($sp)
/* 03D180 0043D180 AFB6002C */  sw          $s6, 0x2C($sp)
/* 03D184 0043D184 AFB50028 */  sw          $s5, 0x28($sp)
/* 03D188 0043D188 AFB40024 */  sw          $s4, 0x24($sp)
/* 03D18C 0043D18C AFB30020 */  sw          $s3, 0x20($sp)
/* 03D190 0043D190 AFB2001C */  sw          $s2, 0x1C($sp)
/* 03D194 0043D194 AFB10018 */  sw          $s1, 0x18($sp)
/* 03D198 0043D198 AFB00014 */  sw          $s0, 0x14($sp)
/* 03D19C 0043D19C 8C8E009C */  lw          $t6, 0x9C($a0)
/* 03D1A0 0043D1A0 00809025 */  move        $s2, $a0
/* 03D1A4 0043D1A4 00A0B825 */  move        $s7, $a1
/* 03D1A8 0043D1A8 8DC70048 */  lw          $a3, 0x48($t6)
/* 03D1AC 0043D1AC 00C0F025 */  move        $fp, $a2
/* 03D1B0 0043D1B0 0000A025 */  move        $s4, $zero
/* 03D1B4 0043D1B4 18E00040 */  blez        $a3, .L0043D2B8
/* 03D1B8 0043D1B8 0000A825 */   move       $s5, $zero
/* 03D1BC 0043D1BC 8C8300A0 */  lw          $v1, 0xA0($a0)
/* 03D1C0 0043D1C0 2416FFFF */  addiu       $s6, $zero, -0x1
.L0043D1C4:
/* 03D1C4 0043D1C4 9465002A */  lhu         $a1, 0x2A($v1)
/* 03D1C8 0043D1C8 50A00037 */  beql        $a1, $zero, .L0043D2A8
/* 03D1CC 0043D1CC 26940001 */   addiu      $s4, $s4, 0x1
/* 03D1D0 0043D1D0 8C6F0014 */  lw          $t7, 0x14($v1)
/* 03D1D4 0043D1D4 55E00004 */  bnel        $t7, $zero, .L0043D1E8
/* 03D1D8 0043D1D8 8C780010 */   lw         $t8, 0x10($v1)
/* 03D1DC 0043D1DC 10000004 */  b           .L0043D1F0
/* 03D1E0 0043D1E0 8E5300D8 */   lw         $s3, 0xD8($s2)
/* 03D1E4 0043D1E4 8C780010 */  lw          $t8, 0x10($v1)
.L0043D1E8:
/* 03D1E8 0043D1E8 8E5900CC */  lw          $t9, 0xCC($s2)
/* 03D1EC 0043D1EC 03199821 */  addu        $s3, $t8, $t9
.L0043D1F0:
/* 03D1F0 0043D1F0 94640028 */  lhu         $a0, 0x28($v1)
/* 03D1F4 0043D1F4 00A41021 */  addu        $v0, $a1, $a0
/* 03D1F8 0043D1F8 0082082B */  sltu        $at, $a0, $v0
/* 03D1FC 0043D1FC 10200029 */  beqz        $at, .L0043D2A4
/* 03D200 0043D200 00808825 */   move       $s1, $a0
/* 03D204 0043D204 00048080 */  sll         $s0, $a0, 2
/* 03D208 0043D208 02048023 */  subu        $s0, $s0, $a0
/* 03D20C 0043D20C 00108080 */  sll         $s0, $s0, 2
/* 03D210 0043D210 02048021 */  addu        $s0, $s0, $a0
/* 03D214 0043D214 00108080 */  sll         $s0, $s0, 2
.L0043D218:
/* 03D218 0043D218 8E4800A4 */  lw          $t0, 0xA4($s2)
/* 03D21C 0043D21C 02402025 */  move        $a0, $s2
/* 03D220 0043D220 01104821 */  addu        $t1, $t0, $s0
/* 03D224 0043D224 8D260004 */  lw          $a2, 0x4($t1)
/* 03D228 0043D228 50D60019 */  beql        $a2, $s6, .L0043D290
/* 03D22C 0043D22C 26310001 */   addiu      $s1, $s1, 0x1
/* 03D230 0043D230 8F998024 */  lw          $t9, %got(func_0043C670)($gp)
/* 03D234 0043D234 8E4A00D0 */  lw          $t2, 0xD0($s2)
/* 03D238 0043D238 00D33021 */  addu        $a2, $a2, $s3
/* 03D23C 0043D23C 2739C670 */  addiu       $t9, $t9, %lo(func_0043C670)
/* 03D240 0043D240 0320F809 */  jalr        $t9
/* 03D244 0043D244 028A2821 */   addu       $a1, $s4, $t2
/* 03D248 0043D248 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03D24C 0043D24C 00402025 */  move        $a0, $v0
/* 03D250 0043D250 02E02825 */  move        $a1, $s7
/* 03D254 0043D254 8F9985AC */  lw          $t9, %call16(case_streq)($gp)
/* 03D258 0043D258 03C03025 */  move        $a2, $fp
/* 03D25C 0043D25C 0320F809 */  jalr        $t9
/* 03D260 0043D260 00000000 */   nop
/* 03D264 0043D264 10400004 */  beqz        $v0, .L0043D278
/* 03D268 0043D268 8FBC0034 */   lw         $gp, 0x34($sp)
/* 03D26C 0043D26C 8E4B00D4 */  lw          $t3, 0xD4($s2)
/* 03D270 0043D270 10000012 */  b           .L0043D2BC
/* 03D274 0043D274 022B1021 */   addu       $v0, $s1, $t3
.L0043D278:
/* 03D278 0043D278 8E4C00A0 */  lw          $t4, 0xA0($s2)
/* 03D27C 0043D27C 01951821 */  addu        $v1, $t4, $s5
/* 03D280 0043D280 946D002A */  lhu         $t5, 0x2A($v1)
/* 03D284 0043D284 946E0028 */  lhu         $t6, 0x28($v1)
/* 03D288 0043D288 01AE1021 */  addu        $v0, $t5, $t6
/* 03D28C 0043D28C 26310001 */  addiu       $s1, $s1, 0x1
.L0043D290:
/* 03D290 0043D290 0222082B */  sltu        $at, $s1, $v0
/* 03D294 0043D294 1420FFE0 */  bnez        $at, .L0043D218
/* 03D298 0043D298 26100034 */   addiu      $s0, $s0, 0x34
/* 03D29C 0043D29C 8E4F009C */  lw          $t7, 0x9C($s2)
/* 03D2A0 0043D2A0 8DE70048 */  lw          $a3, 0x48($t7)
.L0043D2A4:
/* 03D2A4 0043D2A4 26940001 */  addiu       $s4, $s4, 0x1
.L0043D2A8:
/* 03D2A8 0043D2A8 0287082A */  slt         $at, $s4, $a3
/* 03D2AC 0043D2AC 26B50048 */  addiu       $s5, $s5, 0x48
/* 03D2B0 0043D2B0 1420FFC4 */  bnez        $at, .L0043D1C4
/* 03D2B4 0043D2B4 24630048 */   addiu      $v1, $v1, 0x48
.L0043D2B8:
/* 03D2B8 0043D2B8 2402FFFF */  addiu       $v0, $zero, -0x1
.L0043D2BC:
/* 03D2BC 0043D2BC 8FBF003C */  lw          $ra, 0x3C($sp)
/* 03D2C0 0043D2C0 8FB00014 */  lw          $s0, 0x14($sp)
/* 03D2C4 0043D2C4 8FB10018 */  lw          $s1, 0x18($sp)
/* 03D2C8 0043D2C8 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03D2CC 0043D2CC 8FB30020 */  lw          $s3, 0x20($sp)
/* 03D2D0 0043D2D0 8FB40024 */  lw          $s4, 0x24($sp)
/* 03D2D4 0043D2D4 8FB50028 */  lw          $s5, 0x28($sp)
/* 03D2D8 0043D2D8 8FB6002C */  lw          $s6, 0x2C($sp)
/* 03D2DC 0043D2DC 8FB70030 */  lw          $s7, 0x30($sp)
/* 03D2E0 0043D2E0 8FBE0038 */  lw          $fp, 0x38($sp)
/* 03D2E4 0043D2E4 03E00008 */  jr          $ra
/* 03D2E8 0043D2E8 27BD0040 */   addiu      $sp, $sp, 0x40
