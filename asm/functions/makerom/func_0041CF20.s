glabel func_0041CF20 # 95
/* 01CF20 0041CF20 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01CF24 0041CF24 279C5E40 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF5E40
/* 01CF28 0041CF28 0399E021 */  addu        $gp, $gp, $t9
/* 01CF2C 0041CF2C 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01CF30 0041CF30 AFA40060 */  sw          $a0, 0x60($sp)
/* 01CF34 0041CF34 AFA60068 */  sw          $a2, 0x68($sp)
/* 01CF38 0041CF38 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01CF3C 0041CF3C 8FAF0068 */  lw          $t7, 0x68($sp)
/* 01CF40 0041CF40 AFA50064 */  sw          $a1, 0x64($sp)
/* 01CF44 0041CF44 AFAE005C */  sw          $t6, 0x5C($sp)
/* 01CF48 0041CF48 000FC140 */  sll         $t8, $t7, 5
/* 01CF4C 0041CF4C 8FA80064 */  lw          $t0, 0x64($sp)
/* 01CF50 0041CF50 8FAB005C */  lw          $t3, 0x5C($sp)
/* 01CF54 0041CF54 01D8C821 */  addu        $t9, $t6, $t8
/* 01CF58 0041CF58 000F48C0 */  sll         $t1, $t7, 3
/* 01CF5C 0041CF5C 012F4823 */  subu        $t1, $t1, $t7
/* 01CF60 0041CF60 AFB00014 */  sw          $s0, 0x14($sp)
/* 01CF64 0041CF64 000948C0 */  sll         $t1, $t1, 3
/* 01CF68 0041CF68 AFB90060 */  sw          $t9, 0x60($sp)
/* 01CF6C 0041CF6C 272CFFE0 */  addiu       $t4, $t9, -0x20
/* 01CF70 0041CF70 01095021 */  addu        $t2, $t0, $t1
/* 01CF74 0041CF74 0179802B */  sltu        $s0, $t3, $t9
/* 01CF78 0041CF78 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01CF7C 0041CF7C AFBC0018 */  sw          $gp, 0x18($sp)
/* 01CF80 0041CF80 AFAA0064 */  sw          $t2, 0x64($sp)
/* 01CF84 0041CF84 12000317 */  beqz        $s0, .L0041DBE4
/* 01CF88 0041CF88 AFAC0060 */   sw         $t4, 0x60($sp)
.L0041CF8C:
/* 01CF8C 0041CF8C 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01CF90 0041CF90 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CF94 0041CF94 24040000 */  addiu       $a0, $zero, 0x0
/* 01CF98 0041CF98 25AEFFC8 */  addiu       $t6, $t5, -0x38
/* 01CF9C 0041CF9C AFAE0064 */  sw          $t6, 0x64($sp)
/* 01CFA0 0041CFA0 91D80030 */  lbu         $t8, 0x30($t6)
/* 01CFA4 0041CFA4 24060000 */  addiu       $a2, $zero, 0x0
/* 01CFA8 0041CFA8 24070008 */  addiu       $a3, $zero, 0x8
/* 01CFAC 0041CFAC 0320F809 */  jalr        $t9
/* 01CFB0 0041CFB0 03002825 */   move       $a1, $t8
/* 01CFB4 0041CFB4 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01CFB8 0041CFB8 AFA20020 */  sw          $v0, 0x20($sp)
/* 01CFBC 0041CFBC AFA30024 */  sw          $v1, 0x24($sp)
/* 01CFC0 0041CFC0 91E80031 */  lbu         $t0, 0x31($t7)
/* 01CFC4 0041CFC4 8FAD0024 */  lw          $t5, 0x24($sp)
/* 01CFC8 0041CFC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01CFCC 0041CFCC 01005825 */  move        $t3, $t0
/* 01CFD0 0041CFD0 016D2821 */  addu        $a1, $t3, $t5
/* 01CFD4 0041CFD4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01CFD8 0041CFD8 8FAC0020 */  lw          $t4, 0x20($sp)
/* 01CFDC 0041CFDC 000857C3 */  sra         $t2, $t0, 31
/* 01CFE0 0041CFE0 00AD082B */  sltu        $at, $a1, $t5
/* 01CFE4 0041CFE4 002A2021 */  addu        $a0, $at, $t2
/* 01CFE8 0041CFE8 24060000 */  addiu       $a2, $zero, 0x0
/* 01CFEC 0041CFEC 24070008 */  addiu       $a3, $zero, 0x8
/* 01CFF0 0041CFF0 0320F809 */  jalr        $t9
/* 01CFF4 0041CFF4 008C2021 */   addu       $a0, $a0, $t4
/* 01CFF8 0041CFF8 8FA90064 */  lw          $t1, 0x64($sp)
/* 01CFFC 0041CFFC AFA20028 */  sw          $v0, 0x28($sp)
/* 01D000 0041D000 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01D004 0041D004 91390032 */  lbu         $t9, 0x32($t1)
/* 01D008 0041D008 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D00C 0041D00C 8FB80028 */  lw          $t8, 0x28($sp)
/* 01D010 0041D010 03207825 */  move        $t7, $t9
/* 01D014 0041D014 001977C3 */  sra         $t6, $t9, 31
/* 01D018 0041D018 8FB9002C */  lw          $t9, 0x2C($sp)
/* 01D01C 0041D01C 24060000 */  addiu       $a2, $zero, 0x0
/* 01D020 0041D020 24070008 */  addiu       $a3, $zero, 0x8
/* 01D024 0041D024 01F92821 */  addu        $a1, $t7, $t9
/* 01D028 0041D028 00B9082B */  sltu        $at, $a1, $t9
/* 01D02C 0041D02C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D030 0041D030 002E2021 */  addu        $a0, $at, $t6
/* 01D034 0041D034 00982021 */  addu        $a0, $a0, $t8
/* 01D038 0041D038 0320F809 */  jalr        $t9
/* 01D03C 0041D03C 00000000 */   nop
/* 01D040 0041D040 8FA80064 */  lw          $t0, 0x64($sp)
/* 01D044 0041D044 AFA20030 */  sw          $v0, 0x30($sp)
/* 01D048 0041D048 AFA30034 */  sw          $v1, 0x34($sp)
/* 01D04C 0041D04C 910A0033 */  lbu         $t2, 0x33($t0)
/* 01D050 0041D050 8FAF0034 */  lw          $t7, 0x34($sp)
/* 01D054 0041D054 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D058 0041D058 01406825 */  move        $t5, $t2
/* 01D05C 0041D05C 01AF2821 */  addu        $a1, $t5, $t7
/* 01D060 0041D060 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D064 0041D064 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01D068 0041D068 000A67C3 */  sra         $t4, $t2, 31
/* 01D06C 0041D06C 00AF082B */  sltu        $at, $a1, $t7
/* 01D070 0041D070 002C2021 */  addu        $a0, $at, $t4
/* 01D074 0041D074 24060000 */  addiu       $a2, $zero, 0x0
/* 01D078 0041D078 24070008 */  addiu       $a3, $zero, 0x8
/* 01D07C 0041D07C 0320F809 */  jalr        $t9
/* 01D080 0041D080 008E2021 */   addu       $a0, $a0, $t6
/* 01D084 0041D084 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01D088 0041D088 AFA20038 */  sw          $v0, 0x38($sp)
/* 01D08C 0041D08C AFA3003C */  sw          $v1, 0x3C($sp)
/* 01D090 0041D090 91690034 */  lbu         $t1, 0x34($t3)
/* 01D094 0041D094 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D098 0041D098 8FA80038 */  lw          $t0, 0x38($sp)
/* 01D09C 0041D09C 0120C825 */  move        $t9, $t1
/* 01D0A0 0041D0A0 0009C7C3 */  sra         $t8, $t1, 31
/* 01D0A4 0041D0A4 8FA9003C */  lw          $t1, 0x3C($sp)
/* 01D0A8 0041D0A8 24060000 */  addiu       $a2, $zero, 0x0
/* 01D0AC 0041D0AC 24070008 */  addiu       $a3, $zero, 0x8
/* 01D0B0 0041D0B0 03292821 */  addu        $a1, $t9, $t1
/* 01D0B4 0041D0B4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D0B8 0041D0B8 00A9082B */  sltu        $at, $a1, $t1
/* 01D0BC 0041D0BC 00382021 */  addu        $a0, $at, $t8
/* 01D0C0 0041D0C0 0320F809 */  jalr        $t9
/* 01D0C4 0041D0C4 00882021 */   addu       $a0, $a0, $t0
/* 01D0C8 0041D0C8 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01D0CC 0041D0CC AFA20040 */  sw          $v0, 0x40($sp)
/* 01D0D0 0041D0D0 AFA30044 */  sw          $v1, 0x44($sp)
/* 01D0D4 0041D0D4 914C0035 */  lbu         $t4, 0x35($t2)
/* 01D0D8 0041D0D8 8FB90044 */  lw          $t9, 0x44($sp)
/* 01D0DC 0041D0DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D0E0 0041D0E0 01807825 */  move        $t7, $t4
/* 01D0E4 0041D0E4 01F92821 */  addu        $a1, $t7, $t9
/* 01D0E8 0041D0E8 00B9082B */  sltu        $at, $a1, $t9
/* 01D0EC 0041D0EC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D0F0 0041D0F0 8FB80040 */  lw          $t8, 0x40($sp)
/* 01D0F4 0041D0F4 000C77C3 */  sra         $t6, $t4, 31
/* 01D0F8 0041D0F8 002E2021 */  addu        $a0, $at, $t6
/* 01D0FC 0041D0FC 24060000 */  addiu       $a2, $zero, 0x0
/* 01D100 0041D100 24070008 */  addiu       $a3, $zero, 0x8
/* 01D104 0041D104 0320F809 */  jalr        $t9
/* 01D108 0041D108 00982021 */   addu       $a0, $a0, $t8
/* 01D10C 0041D10C 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01D110 0041D110 AFA20048 */  sw          $v0, 0x48($sp)
/* 01D114 0041D114 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01D118 0041D118 91AB0036 */  lbu         $t3, 0x36($t5)
/* 01D11C 0041D11C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D120 0041D120 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01D124 0041D124 01604825 */  move        $t1, $t3
/* 01D128 0041D128 000B47C3 */  sra         $t0, $t3, 31
/* 01D12C 0041D12C 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01D130 0041D130 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D134 0041D134 24060000 */  addiu       $a2, $zero, 0x0
/* 01D138 0041D138 012B2821 */  addu        $a1, $t1, $t3
/* 01D13C 0041D13C 00AB082B */  sltu        $at, $a1, $t3
/* 01D140 0041D140 00282021 */  addu        $a0, $at, $t0
/* 01D144 0041D144 24070008 */  addiu       $a3, $zero, 0x8
/* 01D148 0041D148 0320F809 */  jalr        $t9
/* 01D14C 0041D14C 008A2021 */   addu       $a0, $a0, $t2
/* 01D150 0041D150 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01D154 0041D154 AFA20050 */  sw          $v0, 0x50($sp)
/* 01D158 0041D158 AFA30054 */  sw          $v1, 0x54($sp)
/* 01D15C 0041D15C 918E0037 */  lbu         $t6, 0x37($t4)
/* 01D160 0041D160 8FA90054 */  lw          $t1, 0x54($sp)
/* 01D164 0041D164 8FAD0060 */  lw          $t5, 0x60($sp)
/* 01D168 0041D168 01C0C825 */  move        $t9, $t6
/* 01D16C 0041D16C 03295821 */  addu        $t3, $t9, $t1
/* 01D170 0041D170 8FA80050 */  lw          $t0, 0x50($sp)
/* 01D174 0041D174 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D178 0041D178 01607825 */  move        $t7, $t3
/* 01D17C 0041D17C ADAF001C */  sw          $t7, 0x1C($t5)
/* 01D180 0041D180 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01D184 0041D184 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D188 0041D188 000EC7C3 */  sra         $t8, $t6, 31
/* 01D18C 0041D18C 918E0028 */  lbu         $t6, 0x28($t4)
/* 01D190 0041D190 0169082B */  sltu        $at, $t3, $t1
/* 01D194 0041D194 00385021 */  addu        $t2, $at, $t8
/* 01D198 0041D198 24040000 */  addiu       $a0, $zero, 0x0
/* 01D19C 0041D19C 24060000 */  addiu       $a2, $zero, 0x0
/* 01D1A0 0041D1A0 24070008 */  addiu       $a3, $zero, 0x8
/* 01D1A4 0041D1A4 01485021 */  addu        $t2, $t2, $t0
/* 01D1A8 0041D1A8 0320F809 */  jalr        $t9
/* 01D1AC 0041D1AC 01C02825 */   move       $a1, $t6
/* 01D1B0 0041D1B0 8FB80064 */  lw          $t8, 0x64($sp)
/* 01D1B4 0041D1B4 AFA20020 */  sw          $v0, 0x20($sp)
/* 01D1B8 0041D1B8 AFA30024 */  sw          $v1, 0x24($sp)
/* 01D1BC 0041D1BC 93190029 */  lbu         $t9, 0x29($t8)
/* 01D1C0 0041D1C0 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01D1C4 0041D1C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D1C8 0041D1C8 03204825 */  move        $t1, $t9
/* 01D1CC 0041D1CC 001947C3 */  sra         $t0, $t9, 31
/* 01D1D0 0041D1D0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D1D4 0041D1D4 012B2821 */  addu        $a1, $t1, $t3
/* 01D1D8 0041D1D8 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01D1DC 0041D1DC 00AB082B */  sltu        $at, $a1, $t3
/* 01D1E0 0041D1E0 00282021 */  addu        $a0, $at, $t0
/* 01D1E4 0041D1E4 24060000 */  addiu       $a2, $zero, 0x0
/* 01D1E8 0041D1E8 24070008 */  addiu       $a3, $zero, 0x8
/* 01D1EC 0041D1EC 0320F809 */  jalr        $t9
/* 01D1F0 0041D1F0 008A2021 */   addu       $a0, $a0, $t2
/* 01D1F4 0041D1F4 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01D1F8 0041D1F8 AFA20028 */  sw          $v0, 0x28($sp)
/* 01D1FC 0041D1FC AFA3002C */  sw          $v1, 0x2C($sp)
/* 01D200 0041D200 91ED002A */  lbu         $t5, 0x2A($t7)
/* 01D204 0041D204 8FAF002C */  lw          $t7, 0x2C($sp)
/* 01D208 0041D208 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D20C 0041D20C 8FAE0028 */  lw          $t6, 0x28($sp)
/* 01D210 0041D210 01AF2821 */  addu        $a1, $t5, $t7
/* 01D214 0041D214 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D218 0041D218 000D67C3 */  sra         $t4, $t5, 31
/* 01D21C 0041D21C 00AF082B */  sltu        $at, $a1, $t7
/* 01D220 0041D220 002C2021 */  addu        $a0, $at, $t4
/* 01D224 0041D224 24060000 */  addiu       $a2, $zero, 0x0
/* 01D228 0041D228 24070008 */  addiu       $a3, $zero, 0x8
/* 01D22C 0041D22C 0320F809 */  jalr        $t9
/* 01D230 0041D230 008E2021 */   addu       $a0, $a0, $t6
/* 01D234 0041D234 8FB80064 */  lw          $t8, 0x64($sp)
/* 01D238 0041D238 AFA20030 */  sw          $v0, 0x30($sp)
/* 01D23C 0041D23C AFA30034 */  sw          $v1, 0x34($sp)
/* 01D240 0041D240 9319002B */  lbu         $t9, 0x2B($t8)
/* 01D244 0041D244 8FAB0034 */  lw          $t3, 0x34($sp)
/* 01D248 0041D248 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D24C 0041D24C 03204825 */  move        $t1, $t9
/* 01D250 0041D250 001947C3 */  sra         $t0, $t9, 31
/* 01D254 0041D254 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D258 0041D258 012B2821 */  addu        $a1, $t1, $t3
/* 01D25C 0041D25C 8FAA0030 */  lw          $t2, 0x30($sp)
/* 01D260 0041D260 00AB082B */  sltu        $at, $a1, $t3
/* 01D264 0041D264 00282021 */  addu        $a0, $at, $t0
/* 01D268 0041D268 24060000 */  addiu       $a2, $zero, 0x0
/* 01D26C 0041D26C 24070008 */  addiu       $a3, $zero, 0x8
/* 01D270 0041D270 0320F809 */  jalr        $t9
/* 01D274 0041D274 008A2021 */   addu       $a0, $a0, $t2
/* 01D278 0041D278 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01D27C 0041D27C AFA20038 */  sw          $v0, 0x38($sp)
/* 01D280 0041D280 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01D284 0041D284 918D002C */  lbu         $t5, 0x2C($t4)
/* 01D288 0041D288 8FB9003C */  lw          $t9, 0x3C($sp)
/* 01D28C 0041D28C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D290 0041D290 01A07825 */  move        $t7, $t5
/* 01D294 0041D294 01F92821 */  addu        $a1, $t7, $t9
/* 01D298 0041D298 00B9082B */  sltu        $at, $a1, $t9
/* 01D29C 0041D29C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D2A0 0041D2A0 8FB80038 */  lw          $t8, 0x38($sp)
/* 01D2A4 0041D2A4 000D77C3 */  sra         $t6, $t5, 31
/* 01D2A8 0041D2A8 002E2021 */  addu        $a0, $at, $t6
/* 01D2AC 0041D2AC 24060000 */  addiu       $a2, $zero, 0x0
/* 01D2B0 0041D2B0 24070008 */  addiu       $a3, $zero, 0x8
/* 01D2B4 0041D2B4 0320F809 */  jalr        $t9
/* 01D2B8 0041D2B8 00982021 */   addu       $a0, $a0, $t8
/* 01D2BC 0041D2BC 8FA80064 */  lw          $t0, 0x64($sp)
/* 01D2C0 0041D2C0 AFA20040 */  sw          $v0, 0x40($sp)
/* 01D2C4 0041D2C4 AFA30044 */  sw          $v1, 0x44($sp)
/* 01D2C8 0041D2C8 9109002D */  lbu         $t1, 0x2D($t0)
/* 01D2CC 0041D2CC 8FAD0044 */  lw          $t5, 0x44($sp)
/* 01D2D0 0041D2D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D2D4 0041D2D4 01205825 */  move        $t3, $t1
/* 01D2D8 0041D2D8 016D2821 */  addu        $a1, $t3, $t5
/* 01D2DC 0041D2DC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D2E0 0041D2E0 8FAC0040 */  lw          $t4, 0x40($sp)
/* 01D2E4 0041D2E4 000957C3 */  sra         $t2, $t1, 31
/* 01D2E8 0041D2E8 00AD082B */  sltu        $at, $a1, $t5
/* 01D2EC 0041D2EC 002A2021 */  addu        $a0, $at, $t2
/* 01D2F0 0041D2F0 24060000 */  addiu       $a2, $zero, 0x0
/* 01D2F4 0041D2F4 24070008 */  addiu       $a3, $zero, 0x8
/* 01D2F8 0041D2F8 0320F809 */  jalr        $t9
/* 01D2FC 0041D2FC 008C2021 */   addu       $a0, $a0, $t4
/* 01D300 0041D300 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01D304 0041D304 AFA20048 */  sw          $v0, 0x48($sp)
/* 01D308 0041D308 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01D30C 0041D30C 91CF002E */  lbu         $t7, 0x2E($t6)
/* 01D310 0041D310 8FA9004C */  lw          $t1, 0x4C($sp)
/* 01D314 0041D314 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D318 0041D318 01E0C825 */  move        $t9, $t7
/* 01D31C 0041D31C 03292821 */  addu        $a1, $t9, $t1
/* 01D320 0041D320 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D324 0041D324 8FA80048 */  lw          $t0, 0x48($sp)
/* 01D328 0041D328 000FC7C3 */  sra         $t8, $t7, 31
/* 01D32C 0041D32C 00A9082B */  sltu        $at, $a1, $t1
/* 01D330 0041D330 00382021 */  addu        $a0, $at, $t8
/* 01D334 0041D334 24060000 */  addiu       $a2, $zero, 0x0
/* 01D338 0041D338 24070008 */  addiu       $a3, $zero, 0x8
/* 01D33C 0041D33C 0320F809 */  jalr        $t9
/* 01D340 0041D340 00882021 */   addu       $a0, $a0, $t0
/* 01D344 0041D344 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01D348 0041D348 AFA20050 */  sw          $v0, 0x50($sp)
/* 01D34C 0041D34C AFA30054 */  sw          $v1, 0x54($sp)
/* 01D350 0041D350 914B002F */  lbu         $t3, 0x2F($t2)
/* 01D354 0041D354 8FAF0054 */  lw          $t7, 0x54($sp)
/* 01D358 0041D358 8FA90060 */  lw          $t1, 0x60($sp)
/* 01D35C 0041D35C 01606825 */  move        $t5, $t3
/* 01D360 0041D360 01AFC821 */  addu        $t9, $t5, $t7
/* 01D364 0041D364 8FAE0050 */  lw          $t6, 0x50($sp)
/* 01D368 0041D368 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D36C 0041D36C 03204025 */  move        $t0, $t9
/* 01D370 0041D370 AD280014 */  sw          $t0, 0x14($t1)
/* 01D374 0041D374 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01D378 0041D378 032F082B */  sltu        $at, $t9, $t7
/* 01D37C 0041D37C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D380 0041D380 000B67C3 */  sra         $t4, $t3, 31
/* 01D384 0041D384 914B0020 */  lbu         $t3, 0x20($t2)
/* 01D388 0041D388 002CC021 */  addu        $t8, $at, $t4
/* 01D38C 0041D38C 24040000 */  addiu       $a0, $zero, 0x0
/* 01D390 0041D390 24060000 */  addiu       $a2, $zero, 0x0
/* 01D394 0041D394 24070008 */  addiu       $a3, $zero, 0x8
/* 01D398 0041D398 030EC021 */  addu        $t8, $t8, $t6
/* 01D39C 0041D39C 0320F809 */  jalr        $t9
/* 01D3A0 0041D3A0 01602825 */   move       $a1, $t3
/* 01D3A4 0041D3A4 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01D3A8 0041D3A8 AFA20020 */  sw          $v0, 0x20($sp)
/* 01D3AC 0041D3AC AFA30024 */  sw          $v1, 0x24($sp)
/* 01D3B0 0041D3B0 918D0021 */  lbu         $t5, 0x21($t4)
/* 01D3B4 0041D3B4 8FB90024 */  lw          $t9, 0x24($sp)
/* 01D3B8 0041D3B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D3BC 0041D3BC 01A07825 */  move        $t7, $t5
/* 01D3C0 0041D3C0 01F92821 */  addu        $a1, $t7, $t9
/* 01D3C4 0041D3C4 00B9082B */  sltu        $at, $a1, $t9
/* 01D3C8 0041D3C8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D3CC 0041D3CC 8FB80020 */  lw          $t8, 0x20($sp)
/* 01D3D0 0041D3D0 000D77C3 */  sra         $t6, $t5, 31
/* 01D3D4 0041D3D4 002E2021 */  addu        $a0, $at, $t6
/* 01D3D8 0041D3D8 24060000 */  addiu       $a2, $zero, 0x0
/* 01D3DC 0041D3DC 24070008 */  addiu       $a3, $zero, 0x8
/* 01D3E0 0041D3E0 0320F809 */  jalr        $t9
/* 01D3E4 0041D3E4 00982021 */   addu       $a0, $a0, $t8
/* 01D3E8 0041D3E8 8FA80064 */  lw          $t0, 0x64($sp)
/* 01D3EC 0041D3EC AFA20028 */  sw          $v0, 0x28($sp)
/* 01D3F0 0041D3F0 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01D3F4 0041D3F4 91090022 */  lbu         $t1, 0x22($t0)
/* 01D3F8 0041D3F8 8FAD002C */  lw          $t5, 0x2C($sp)
/* 01D3FC 0041D3FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D400 0041D400 01205825 */  move        $t3, $t1
/* 01D404 0041D404 016D2821 */  addu        $a1, $t3, $t5
/* 01D408 0041D408 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D40C 0041D40C 8FAC0028 */  lw          $t4, 0x28($sp)
/* 01D410 0041D410 000957C3 */  sra         $t2, $t1, 31
/* 01D414 0041D414 00AD082B */  sltu        $at, $a1, $t5
/* 01D418 0041D418 002A2021 */  addu        $a0, $at, $t2
/* 01D41C 0041D41C 24060000 */  addiu       $a2, $zero, 0x0
/* 01D420 0041D420 24070008 */  addiu       $a3, $zero, 0x8
/* 01D424 0041D424 0320F809 */  jalr        $t9
/* 01D428 0041D428 008C2021 */   addu       $a0, $a0, $t4
/* 01D42C 0041D42C 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01D430 0041D430 AFA20030 */  sw          $v0, 0x30($sp)
/* 01D434 0041D434 AFA30034 */  sw          $v1, 0x34($sp)
/* 01D438 0041D438 91CF0023 */  lbu         $t7, 0x23($t6)
/* 01D43C 0041D43C 8FA90034 */  lw          $t1, 0x34($sp)
/* 01D440 0041D440 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D444 0041D444 01E0C825 */  move        $t9, $t7
/* 01D448 0041D448 03292821 */  addu        $a1, $t9, $t1
/* 01D44C 0041D44C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D450 0041D450 8FA80030 */  lw          $t0, 0x30($sp)
/* 01D454 0041D454 000FC7C3 */  sra         $t8, $t7, 31
/* 01D458 0041D458 00A9082B */  sltu        $at, $a1, $t1
/* 01D45C 0041D45C 00382021 */  addu        $a0, $at, $t8
/* 01D460 0041D460 24060000 */  addiu       $a2, $zero, 0x0
/* 01D464 0041D464 24070008 */  addiu       $a3, $zero, 0x8
/* 01D468 0041D468 0320F809 */  jalr        $t9
/* 01D46C 0041D46C 00882021 */   addu       $a0, $a0, $t0
/* 01D470 0041D470 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01D474 0041D474 AFA20038 */  sw          $v0, 0x38($sp)
/* 01D478 0041D478 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01D47C 0041D47C 914B0024 */  lbu         $t3, 0x24($t2)
/* 01D480 0041D480 8FAF003C */  lw          $t7, 0x3C($sp)
/* 01D484 0041D484 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D488 0041D488 01606825 */  move        $t5, $t3
/* 01D48C 0041D48C 01AF2821 */  addu        $a1, $t5, $t7
/* 01D490 0041D490 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D494 0041D494 8FAE0038 */  lw          $t6, 0x38($sp)
/* 01D498 0041D498 000B67C3 */  sra         $t4, $t3, 31
/* 01D49C 0041D49C 00AF082B */  sltu        $at, $a1, $t7
/* 01D4A0 0041D4A0 002C2021 */  addu        $a0, $at, $t4
/* 01D4A4 0041D4A4 24060000 */  addiu       $a2, $zero, 0x0
/* 01D4A8 0041D4A8 24070008 */  addiu       $a3, $zero, 0x8
/* 01D4AC 0041D4AC 0320F809 */  jalr        $t9
/* 01D4B0 0041D4B0 008E2021 */   addu       $a0, $a0, $t6
/* 01D4B4 0041D4B4 8FB80064 */  lw          $t8, 0x64($sp)
/* 01D4B8 0041D4B8 AFA20040 */  sw          $v0, 0x40($sp)
/* 01D4BC 0041D4BC AFA30044 */  sw          $v1, 0x44($sp)
/* 01D4C0 0041D4C0 93190025 */  lbu         $t9, 0x25($t8)
/* 01D4C4 0041D4C4 8FAB0044 */  lw          $t3, 0x44($sp)
/* 01D4C8 0041D4C8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D4CC 0041D4CC 03204825 */  move        $t1, $t9
/* 01D4D0 0041D4D0 001947C3 */  sra         $t0, $t9, 31
/* 01D4D4 0041D4D4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D4D8 0041D4D8 012B2821 */  addu        $a1, $t1, $t3
/* 01D4DC 0041D4DC 8FAA0040 */  lw          $t2, 0x40($sp)
/* 01D4E0 0041D4E0 00AB082B */  sltu        $at, $a1, $t3
/* 01D4E4 0041D4E4 00282021 */  addu        $a0, $at, $t0
/* 01D4E8 0041D4E8 24060000 */  addiu       $a2, $zero, 0x0
/* 01D4EC 0041D4EC 24070008 */  addiu       $a3, $zero, 0x8
/* 01D4F0 0041D4F0 0320F809 */  jalr        $t9
/* 01D4F4 0041D4F4 008A2021 */   addu       $a0, $a0, $t2
/* 01D4F8 0041D4F8 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01D4FC 0041D4FC AFA20048 */  sw          $v0, 0x48($sp)
/* 01D500 0041D500 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01D504 0041D504 918D0026 */  lbu         $t5, 0x26($t4)
/* 01D508 0041D508 8FB9004C */  lw          $t9, 0x4C($sp)
/* 01D50C 0041D50C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D510 0041D510 01A07825 */  move        $t7, $t5
/* 01D514 0041D514 01F92821 */  addu        $a1, $t7, $t9
/* 01D518 0041D518 00B9082B */  sltu        $at, $a1, $t9
/* 01D51C 0041D51C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D520 0041D520 8FB80048 */  lw          $t8, 0x48($sp)
/* 01D524 0041D524 000D77C3 */  sra         $t6, $t5, 31
/* 01D528 0041D528 002E2021 */  addu        $a0, $at, $t6
/* 01D52C 0041D52C 24060000 */  addiu       $a2, $zero, 0x0
/* 01D530 0041D530 24070008 */  addiu       $a3, $zero, 0x8
/* 01D534 0041D534 0320F809 */  jalr        $t9
/* 01D538 0041D538 00982021 */   addu       $a0, $a0, $t8
/* 01D53C 0041D53C 8FA80064 */  lw          $t0, 0x64($sp)
/* 01D540 0041D540 AFA20050 */  sw          $v0, 0x50($sp)
/* 01D544 0041D544 AFA30054 */  sw          $v1, 0x54($sp)
/* 01D548 0041D548 91090027 */  lbu         $t1, 0x27($t0)
/* 01D54C 0041D54C 8FAD0054 */  lw          $t5, 0x54($sp)
/* 01D550 0041D550 8FB90060 */  lw          $t9, 0x60($sp)
/* 01D554 0041D554 01205825 */  move        $t3, $t1
/* 01D558 0041D558 016D7821 */  addu        $t7, $t3, $t5
/* 01D55C 0041D55C 8FAC0050 */  lw          $t4, 0x50($sp)
/* 01D560 0041D560 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D564 0041D564 01E0C025 */  move        $t8, $t7
/* 01D568 0041D568 AF380010 */  sw          $t8, 0x10($t9)
/* 01D56C 0041D56C 8FA80064 */  lw          $t0, 0x64($sp)
/* 01D570 0041D570 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D574 0041D574 000957C3 */  sra         $t2, $t1, 31
/* 01D578 0041D578 91090018 */  lbu         $t1, 0x18($t0)
/* 01D57C 0041D57C 01ED082B */  sltu        $at, $t7, $t5
/* 01D580 0041D580 002A7021 */  addu        $t6, $at, $t2
/* 01D584 0041D584 24040000 */  addiu       $a0, $zero, 0x0
/* 01D588 0041D588 24060000 */  addiu       $a2, $zero, 0x0
/* 01D58C 0041D58C 24070008 */  addiu       $a3, $zero, 0x8
/* 01D590 0041D590 01CC7021 */  addu        $t6, $t6, $t4
/* 01D594 0041D594 0320F809 */  jalr        $t9
/* 01D598 0041D598 01202825 */   move       $a1, $t1
/* 01D59C 0041D59C 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01D5A0 0041D5A0 AFA20020 */  sw          $v0, 0x20($sp)
/* 01D5A4 0041D5A4 AFA30024 */  sw          $v1, 0x24($sp)
/* 01D5A8 0041D5A8 914B0019 */  lbu         $t3, 0x19($t2)
/* 01D5AC 0041D5AC 8FAF0024 */  lw          $t7, 0x24($sp)
/* 01D5B0 0041D5B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D5B4 0041D5B4 01606825 */  move        $t5, $t3
/* 01D5B8 0041D5B8 01AF2821 */  addu        $a1, $t5, $t7
/* 01D5BC 0041D5BC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D5C0 0041D5C0 8FAE0020 */  lw          $t6, 0x20($sp)
/* 01D5C4 0041D5C4 000B67C3 */  sra         $t4, $t3, 31
/* 01D5C8 0041D5C8 00AF082B */  sltu        $at, $a1, $t7
/* 01D5CC 0041D5CC 002C2021 */  addu        $a0, $at, $t4
/* 01D5D0 0041D5D0 24060000 */  addiu       $a2, $zero, 0x0
/* 01D5D4 0041D5D4 24070008 */  addiu       $a3, $zero, 0x8
/* 01D5D8 0041D5D8 0320F809 */  jalr        $t9
/* 01D5DC 0041D5DC 008E2021 */   addu       $a0, $a0, $t6
/* 01D5E0 0041D5E0 8FB80064 */  lw          $t8, 0x64($sp)
/* 01D5E4 0041D5E4 AFA20028 */  sw          $v0, 0x28($sp)
/* 01D5E8 0041D5E8 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01D5EC 0041D5EC 9319001A */  lbu         $t9, 0x1A($t8)
/* 01D5F0 0041D5F0 8FAB002C */  lw          $t3, 0x2C($sp)
/* 01D5F4 0041D5F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D5F8 0041D5F8 03204825 */  move        $t1, $t9
/* 01D5FC 0041D5FC 001947C3 */  sra         $t0, $t9, 31
/* 01D600 0041D600 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D604 0041D604 012B2821 */  addu        $a1, $t1, $t3
/* 01D608 0041D608 8FAA0028 */  lw          $t2, 0x28($sp)
/* 01D60C 0041D60C 00AB082B */  sltu        $at, $a1, $t3
/* 01D610 0041D610 00282021 */  addu        $a0, $at, $t0
/* 01D614 0041D614 24060000 */  addiu       $a2, $zero, 0x0
/* 01D618 0041D618 24070008 */  addiu       $a3, $zero, 0x8
/* 01D61C 0041D61C 0320F809 */  jalr        $t9
/* 01D620 0041D620 008A2021 */   addu       $a0, $a0, $t2
/* 01D624 0041D624 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01D628 0041D628 AFA20030 */  sw          $v0, 0x30($sp)
/* 01D62C 0041D62C AFA30034 */  sw          $v1, 0x34($sp)
/* 01D630 0041D630 918D001B */  lbu         $t5, 0x1B($t4)
/* 01D634 0041D634 8FB90034 */  lw          $t9, 0x34($sp)
/* 01D638 0041D638 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D63C 0041D63C 01A07825 */  move        $t7, $t5
/* 01D640 0041D640 01F92821 */  addu        $a1, $t7, $t9
/* 01D644 0041D644 00B9082B */  sltu        $at, $a1, $t9
/* 01D648 0041D648 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D64C 0041D64C 8FB80030 */  lw          $t8, 0x30($sp)
/* 01D650 0041D650 000D77C3 */  sra         $t6, $t5, 31
/* 01D654 0041D654 002E2021 */  addu        $a0, $at, $t6
/* 01D658 0041D658 24060000 */  addiu       $a2, $zero, 0x0
/* 01D65C 0041D65C 24070008 */  addiu       $a3, $zero, 0x8
/* 01D660 0041D660 0320F809 */  jalr        $t9
/* 01D664 0041D664 00982021 */   addu       $a0, $a0, $t8
/* 01D668 0041D668 8FA80064 */  lw          $t0, 0x64($sp)
/* 01D66C 0041D66C AFA20038 */  sw          $v0, 0x38($sp)
/* 01D670 0041D670 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01D674 0041D674 9109001C */  lbu         $t1, 0x1C($t0)
/* 01D678 0041D678 8FAD003C */  lw          $t5, 0x3C($sp)
/* 01D67C 0041D67C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D680 0041D680 01205825 */  move        $t3, $t1
/* 01D684 0041D684 016D2821 */  addu        $a1, $t3, $t5
/* 01D688 0041D688 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D68C 0041D68C 8FAC0038 */  lw          $t4, 0x38($sp)
/* 01D690 0041D690 000957C3 */  sra         $t2, $t1, 31
/* 01D694 0041D694 00AD082B */  sltu        $at, $a1, $t5
/* 01D698 0041D698 002A2021 */  addu        $a0, $at, $t2
/* 01D69C 0041D69C 24060000 */  addiu       $a2, $zero, 0x0
/* 01D6A0 0041D6A0 24070008 */  addiu       $a3, $zero, 0x8
/* 01D6A4 0041D6A4 0320F809 */  jalr        $t9
/* 01D6A8 0041D6A8 008C2021 */   addu       $a0, $a0, $t4
/* 01D6AC 0041D6AC 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01D6B0 0041D6B0 AFA20040 */  sw          $v0, 0x40($sp)
/* 01D6B4 0041D6B4 AFA30044 */  sw          $v1, 0x44($sp)
/* 01D6B8 0041D6B8 91CF001D */  lbu         $t7, 0x1D($t6)
/* 01D6BC 0041D6BC 8FA90044 */  lw          $t1, 0x44($sp)
/* 01D6C0 0041D6C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D6C4 0041D6C4 01E0C825 */  move        $t9, $t7
/* 01D6C8 0041D6C8 03292821 */  addu        $a1, $t9, $t1
/* 01D6CC 0041D6CC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D6D0 0041D6D0 8FA80040 */  lw          $t0, 0x40($sp)
/* 01D6D4 0041D6D4 000FC7C3 */  sra         $t8, $t7, 31
/* 01D6D8 0041D6D8 00A9082B */  sltu        $at, $a1, $t1
/* 01D6DC 0041D6DC 00382021 */  addu        $a0, $at, $t8
/* 01D6E0 0041D6E0 24060000 */  addiu       $a2, $zero, 0x0
/* 01D6E4 0041D6E4 24070008 */  addiu       $a3, $zero, 0x8
/* 01D6E8 0041D6E8 0320F809 */  jalr        $t9
/* 01D6EC 0041D6EC 00882021 */   addu       $a0, $a0, $t0
/* 01D6F0 0041D6F0 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01D6F4 0041D6F4 AFA20048 */  sw          $v0, 0x48($sp)
/* 01D6F8 0041D6F8 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01D6FC 0041D6FC 914B001E */  lbu         $t3, 0x1E($t2)
/* 01D700 0041D700 8FAF004C */  lw          $t7, 0x4C($sp)
/* 01D704 0041D704 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D708 0041D708 01606825 */  move        $t5, $t3
/* 01D70C 0041D70C 01AF2821 */  addu        $a1, $t5, $t7
/* 01D710 0041D710 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D714 0041D714 8FAE0048 */  lw          $t6, 0x48($sp)
/* 01D718 0041D718 000B67C3 */  sra         $t4, $t3, 31
/* 01D71C 0041D71C 00AF082B */  sltu        $at, $a1, $t7
/* 01D720 0041D720 002C2021 */  addu        $a0, $at, $t4
/* 01D724 0041D724 24060000 */  addiu       $a2, $zero, 0x0
/* 01D728 0041D728 24070008 */  addiu       $a3, $zero, 0x8
/* 01D72C 0041D72C 0320F809 */  jalr        $t9
/* 01D730 0041D730 008E2021 */   addu       $a0, $a0, $t6
/* 01D734 0041D734 8FB80064 */  lw          $t8, 0x64($sp)
/* 01D738 0041D738 AFA20050 */  sw          $v0, 0x50($sp)
/* 01D73C 0041D73C AFA30054 */  sw          $v1, 0x54($sp)
/* 01D740 0041D740 9319001F */  lbu         $t9, 0x1F($t8)
/* 01D744 0041D744 8FAB0054 */  lw          $t3, 0x54($sp)
/* 01D748 0041D748 8FAF0060 */  lw          $t7, 0x60($sp)
/* 01D74C 0041D74C 03204825 */  move        $t1, $t9
/* 01D750 0041D750 012B6821 */  addu        $t5, $t1, $t3
/* 01D754 0041D754 8FAA0050 */  lw          $t2, 0x50($sp)
/* 01D758 0041D758 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D75C 0041D75C 01A07025 */  move        $t6, $t5
/* 01D760 0041D760 ADEE000C */  sw          $t6, 0xC($t7)
/* 01D764 0041D764 8FB80064 */  lw          $t8, 0x64($sp)
/* 01D768 0041D768 001947C3 */  sra         $t0, $t9, 31
/* 01D76C 0041D76C 01AB082B */  sltu        $at, $t5, $t3
/* 01D770 0041D770 93190010 */  lbu         $t9, 0x10($t8)
/* 01D774 0041D774 00286021 */  addu        $t4, $at, $t0
/* 01D778 0041D778 24040000 */  addiu       $a0, $zero, 0x0
/* 01D77C 0041D77C 03202825 */  move        $a1, $t9
/* 01D780 0041D780 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D784 0041D784 24060000 */  addiu       $a2, $zero, 0x0
/* 01D788 0041D788 24070008 */  addiu       $a3, $zero, 0x8
/* 01D78C 0041D78C 0320F809 */  jalr        $t9
/* 01D790 0041D790 018A6021 */   addu       $t4, $t4, $t2
/* 01D794 0041D794 8FA80064 */  lw          $t0, 0x64($sp)
/* 01D798 0041D798 AFA20020 */  sw          $v0, 0x20($sp)
/* 01D79C 0041D79C AFA30024 */  sw          $v1, 0x24($sp)
/* 01D7A0 0041D7A0 91090011 */  lbu         $t1, 0x11($t0)
/* 01D7A4 0041D7A4 8FAD0024 */  lw          $t5, 0x24($sp)
/* 01D7A8 0041D7A8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D7AC 0041D7AC 01205825 */  move        $t3, $t1
/* 01D7B0 0041D7B0 016D2821 */  addu        $a1, $t3, $t5
/* 01D7B4 0041D7B4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D7B8 0041D7B8 8FAC0020 */  lw          $t4, 0x20($sp)
/* 01D7BC 0041D7BC 000957C3 */  sra         $t2, $t1, 31
/* 01D7C0 0041D7C0 00AD082B */  sltu        $at, $a1, $t5
/* 01D7C4 0041D7C4 002A2021 */  addu        $a0, $at, $t2
/* 01D7C8 0041D7C8 24060000 */  addiu       $a2, $zero, 0x0
/* 01D7CC 0041D7CC 24070008 */  addiu       $a3, $zero, 0x8
/* 01D7D0 0041D7D0 0320F809 */  jalr        $t9
/* 01D7D4 0041D7D4 008C2021 */   addu       $a0, $a0, $t4
/* 01D7D8 0041D7D8 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01D7DC 0041D7DC AFA20028 */  sw          $v0, 0x28($sp)
/* 01D7E0 0041D7E0 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01D7E4 0041D7E4 91CF0012 */  lbu         $t7, 0x12($t6)
/* 01D7E8 0041D7E8 8FA9002C */  lw          $t1, 0x2C($sp)
/* 01D7EC 0041D7EC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D7F0 0041D7F0 01E0C825 */  move        $t9, $t7
/* 01D7F4 0041D7F4 03292821 */  addu        $a1, $t9, $t1
/* 01D7F8 0041D7F8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D7FC 0041D7FC 8FA80028 */  lw          $t0, 0x28($sp)
/* 01D800 0041D800 000FC7C3 */  sra         $t8, $t7, 31
/* 01D804 0041D804 00A9082B */  sltu        $at, $a1, $t1
/* 01D808 0041D808 00382021 */  addu        $a0, $at, $t8
/* 01D80C 0041D80C 24060000 */  addiu       $a2, $zero, 0x0
/* 01D810 0041D810 24070008 */  addiu       $a3, $zero, 0x8
/* 01D814 0041D814 0320F809 */  jalr        $t9
/* 01D818 0041D818 00882021 */   addu       $a0, $a0, $t0
/* 01D81C 0041D81C 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01D820 0041D820 AFA20030 */  sw          $v0, 0x30($sp)
/* 01D824 0041D824 AFA30034 */  sw          $v1, 0x34($sp)
/* 01D828 0041D828 914B0013 */  lbu         $t3, 0x13($t2)
/* 01D82C 0041D82C 8FAF0034 */  lw          $t7, 0x34($sp)
/* 01D830 0041D830 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D834 0041D834 01606825 */  move        $t5, $t3
/* 01D838 0041D838 01AF2821 */  addu        $a1, $t5, $t7
/* 01D83C 0041D83C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D840 0041D840 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01D844 0041D844 000B67C3 */  sra         $t4, $t3, 31
/* 01D848 0041D848 00AF082B */  sltu        $at, $a1, $t7
/* 01D84C 0041D84C 002C2021 */  addu        $a0, $at, $t4
/* 01D850 0041D850 24060000 */  addiu       $a2, $zero, 0x0
/* 01D854 0041D854 24070008 */  addiu       $a3, $zero, 0x8
/* 01D858 0041D858 0320F809 */  jalr        $t9
/* 01D85C 0041D85C 008E2021 */   addu       $a0, $a0, $t6
/* 01D860 0041D860 8FB80064 */  lw          $t8, 0x64($sp)
/* 01D864 0041D864 AFA20038 */  sw          $v0, 0x38($sp)
/* 01D868 0041D868 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01D86C 0041D86C 93190014 */  lbu         $t9, 0x14($t8)
/* 01D870 0041D870 8FAB003C */  lw          $t3, 0x3C($sp)
/* 01D874 0041D874 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D878 0041D878 03204825 */  move        $t1, $t9
/* 01D87C 0041D87C 001947C3 */  sra         $t0, $t9, 31
/* 01D880 0041D880 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D884 0041D884 012B2821 */  addu        $a1, $t1, $t3
/* 01D888 0041D888 8FAA0038 */  lw          $t2, 0x38($sp)
/* 01D88C 0041D88C 00AB082B */  sltu        $at, $a1, $t3
/* 01D890 0041D890 00282021 */  addu        $a0, $at, $t0
/* 01D894 0041D894 24060000 */  addiu       $a2, $zero, 0x0
/* 01D898 0041D898 24070008 */  addiu       $a3, $zero, 0x8
/* 01D89C 0041D89C 0320F809 */  jalr        $t9
/* 01D8A0 0041D8A0 008A2021 */   addu       $a0, $a0, $t2
/* 01D8A4 0041D8A4 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01D8A8 0041D8A8 AFA20040 */  sw          $v0, 0x40($sp)
/* 01D8AC 0041D8AC AFA30044 */  sw          $v1, 0x44($sp)
/* 01D8B0 0041D8B0 918D0015 */  lbu         $t5, 0x15($t4)
/* 01D8B4 0041D8B4 8FB90044 */  lw          $t9, 0x44($sp)
/* 01D8B8 0041D8B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D8BC 0041D8BC 01A07825 */  move        $t7, $t5
/* 01D8C0 0041D8C0 01F92821 */  addu        $a1, $t7, $t9
/* 01D8C4 0041D8C4 00B9082B */  sltu        $at, $a1, $t9
/* 01D8C8 0041D8C8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D8CC 0041D8CC 8FB80040 */  lw          $t8, 0x40($sp)
/* 01D8D0 0041D8D0 000D77C3 */  sra         $t6, $t5, 31
/* 01D8D4 0041D8D4 002E2021 */  addu        $a0, $at, $t6
/* 01D8D8 0041D8D8 24060000 */  addiu       $a2, $zero, 0x0
/* 01D8DC 0041D8DC 24070008 */  addiu       $a3, $zero, 0x8
/* 01D8E0 0041D8E0 0320F809 */  jalr        $t9
/* 01D8E4 0041D8E4 00982021 */   addu       $a0, $a0, $t8
/* 01D8E8 0041D8E8 8FA80064 */  lw          $t0, 0x64($sp)
/* 01D8EC 0041D8EC AFA20048 */  sw          $v0, 0x48($sp)
/* 01D8F0 0041D8F0 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01D8F4 0041D8F4 91090016 */  lbu         $t1, 0x16($t0)
/* 01D8F8 0041D8F8 8FAD004C */  lw          $t5, 0x4C($sp)
/* 01D8FC 0041D8FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D900 0041D900 01205825 */  move        $t3, $t1
/* 01D904 0041D904 016D2821 */  addu        $a1, $t3, $t5
/* 01D908 0041D908 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D90C 0041D90C 8FAC0048 */  lw          $t4, 0x48($sp)
/* 01D910 0041D910 000957C3 */  sra         $t2, $t1, 31
/* 01D914 0041D914 00AD082B */  sltu        $at, $a1, $t5
/* 01D918 0041D918 002A2021 */  addu        $a0, $at, $t2
/* 01D91C 0041D91C 24060000 */  addiu       $a2, $zero, 0x0
/* 01D920 0041D920 24070008 */  addiu       $a3, $zero, 0x8
/* 01D924 0041D924 0320F809 */  jalr        $t9
/* 01D928 0041D928 008C2021 */   addu       $a0, $a0, $t4
/* 01D92C 0041D92C 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01D930 0041D930 AFA20050 */  sw          $v0, 0x50($sp)
/* 01D934 0041D934 AFA30054 */  sw          $v1, 0x54($sp)
/* 01D938 0041D938 91CF0017 */  lbu         $t7, 0x17($t6)
/* 01D93C 0041D93C 8FA90054 */  lw          $t1, 0x54($sp)
/* 01D940 0041D940 8FAD0060 */  lw          $t5, 0x60($sp)
/* 01D944 0041D944 01E0C825 */  move        $t9, $t7
/* 01D948 0041D948 03295821 */  addu        $t3, $t9, $t1
/* 01D94C 0041D94C 8FA80050 */  lw          $t0, 0x50($sp)
/* 01D950 0041D950 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D954 0041D954 01606025 */  move        $t4, $t3
/* 01D958 0041D958 ADAC0008 */  sw          $t4, 0x8($t5)
/* 01D95C 0041D95C 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01D960 0041D960 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D964 0041D964 000FC7C3 */  sra         $t8, $t7, 31
/* 01D968 0041D968 91CF0008 */  lbu         $t7, 0x8($t6)
/* 01D96C 0041D96C 0169082B */  sltu        $at, $t3, $t1
/* 01D970 0041D970 00385021 */  addu        $t2, $at, $t8
/* 01D974 0041D974 24040000 */  addiu       $a0, $zero, 0x0
/* 01D978 0041D978 24060000 */  addiu       $a2, $zero, 0x0
/* 01D97C 0041D97C 24070008 */  addiu       $a3, $zero, 0x8
/* 01D980 0041D980 01485021 */  addu        $t2, $t2, $t0
/* 01D984 0041D984 0320F809 */  jalr        $t9
/* 01D988 0041D988 01E02825 */   move       $a1, $t7
/* 01D98C 0041D98C 8FB80064 */  lw          $t8, 0x64($sp)
/* 01D990 0041D990 AFA20020 */  sw          $v0, 0x20($sp)
/* 01D994 0041D994 AFA30024 */  sw          $v1, 0x24($sp)
/* 01D998 0041D998 93190009 */  lbu         $t9, 0x9($t8)
/* 01D99C 0041D99C 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01D9A0 0041D9A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D9A4 0041D9A4 03204825 */  move        $t1, $t9
/* 01D9A8 0041D9A8 001947C3 */  sra         $t0, $t9, 31
/* 01D9AC 0041D9AC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D9B0 0041D9B0 012B2821 */  addu        $a1, $t1, $t3
/* 01D9B4 0041D9B4 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01D9B8 0041D9B8 00AB082B */  sltu        $at, $a1, $t3
/* 01D9BC 0041D9BC 00282021 */  addu        $a0, $at, $t0
/* 01D9C0 0041D9C0 24060000 */  addiu       $a2, $zero, 0x0
/* 01D9C4 0041D9C4 24070008 */  addiu       $a3, $zero, 0x8
/* 01D9C8 0041D9C8 0320F809 */  jalr        $t9
/* 01D9CC 0041D9CC 008A2021 */   addu       $a0, $a0, $t2
/* 01D9D0 0041D9D0 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01D9D4 0041D9D4 AFA20028 */  sw          $v0, 0x28($sp)
/* 01D9D8 0041D9D8 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01D9DC 0041D9DC 918D000A */  lbu         $t5, 0xA($t4)
/* 01D9E0 0041D9E0 8FB9002C */  lw          $t9, 0x2C($sp)
/* 01D9E4 0041D9E4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01D9E8 0041D9E8 01A07825 */  move        $t7, $t5
/* 01D9EC 0041D9EC 01F92821 */  addu        $a1, $t7, $t9
/* 01D9F0 0041D9F0 00B9082B */  sltu        $at, $a1, $t9
/* 01D9F4 0041D9F4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01D9F8 0041D9F8 8FB80028 */  lw          $t8, 0x28($sp)
/* 01D9FC 0041D9FC 000D77C3 */  sra         $t6, $t5, 31
/* 01DA00 0041DA00 002E2021 */  addu        $a0, $at, $t6
/* 01DA04 0041DA04 24060000 */  addiu       $a2, $zero, 0x0
/* 01DA08 0041DA08 24070008 */  addiu       $a3, $zero, 0x8
/* 01DA0C 0041DA0C 0320F809 */  jalr        $t9
/* 01DA10 0041DA10 00982021 */   addu       $a0, $a0, $t8
/* 01DA14 0041DA14 8FA80064 */  lw          $t0, 0x64($sp)
/* 01DA18 0041DA18 AFA20030 */  sw          $v0, 0x30($sp)
/* 01DA1C 0041DA1C AFA30034 */  sw          $v1, 0x34($sp)
/* 01DA20 0041DA20 9109000B */  lbu         $t1, 0xB($t0)
/* 01DA24 0041DA24 8FAD0034 */  lw          $t5, 0x34($sp)
/* 01DA28 0041DA28 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DA2C 0041DA2C 01205825 */  move        $t3, $t1
/* 01DA30 0041DA30 016D2821 */  addu        $a1, $t3, $t5
/* 01DA34 0041DA34 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DA38 0041DA38 8FAC0030 */  lw          $t4, 0x30($sp)
/* 01DA3C 0041DA3C 000957C3 */  sra         $t2, $t1, 31
/* 01DA40 0041DA40 00AD082B */  sltu        $at, $a1, $t5
/* 01DA44 0041DA44 002A2021 */  addu        $a0, $at, $t2
/* 01DA48 0041DA48 24060000 */  addiu       $a2, $zero, 0x0
/* 01DA4C 0041DA4C 24070008 */  addiu       $a3, $zero, 0x8
/* 01DA50 0041DA50 0320F809 */  jalr        $t9
/* 01DA54 0041DA54 008C2021 */   addu       $a0, $a0, $t4
/* 01DA58 0041DA58 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01DA5C 0041DA5C AFA20038 */  sw          $v0, 0x38($sp)
/* 01DA60 0041DA60 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01DA64 0041DA64 91CF000C */  lbu         $t7, 0xC($t6)
/* 01DA68 0041DA68 8FA9003C */  lw          $t1, 0x3C($sp)
/* 01DA6C 0041DA6C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DA70 0041DA70 01E0C825 */  move        $t9, $t7
/* 01DA74 0041DA74 03292821 */  addu        $a1, $t9, $t1
/* 01DA78 0041DA78 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DA7C 0041DA7C 8FA80038 */  lw          $t0, 0x38($sp)
/* 01DA80 0041DA80 000FC7C3 */  sra         $t8, $t7, 31
/* 01DA84 0041DA84 00A9082B */  sltu        $at, $a1, $t1
/* 01DA88 0041DA88 00382021 */  addu        $a0, $at, $t8
/* 01DA8C 0041DA8C 24060000 */  addiu       $a2, $zero, 0x0
/* 01DA90 0041DA90 24070008 */  addiu       $a3, $zero, 0x8
/* 01DA94 0041DA94 0320F809 */  jalr        $t9
/* 01DA98 0041DA98 00882021 */   addu       $a0, $a0, $t0
/* 01DA9C 0041DA9C 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01DAA0 0041DAA0 AFA20040 */  sw          $v0, 0x40($sp)
/* 01DAA4 0041DAA4 AFA30044 */  sw          $v1, 0x44($sp)
/* 01DAA8 0041DAA8 914B000D */  lbu         $t3, 0xD($t2)
/* 01DAAC 0041DAAC 8FAF0044 */  lw          $t7, 0x44($sp)
/* 01DAB0 0041DAB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DAB4 0041DAB4 01606825 */  move        $t5, $t3
/* 01DAB8 0041DAB8 01AF2821 */  addu        $a1, $t5, $t7
/* 01DABC 0041DABC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DAC0 0041DAC0 8FAE0040 */  lw          $t6, 0x40($sp)
/* 01DAC4 0041DAC4 000B67C3 */  sra         $t4, $t3, 31
/* 01DAC8 0041DAC8 00AF082B */  sltu        $at, $a1, $t7
/* 01DACC 0041DACC 002C2021 */  addu        $a0, $at, $t4
/* 01DAD0 0041DAD0 24060000 */  addiu       $a2, $zero, 0x0
/* 01DAD4 0041DAD4 24070008 */  addiu       $a3, $zero, 0x8
/* 01DAD8 0041DAD8 0320F809 */  jalr        $t9
/* 01DADC 0041DADC 008E2021 */   addu       $a0, $a0, $t6
/* 01DAE0 0041DAE0 8FB80064 */  lw          $t8, 0x64($sp)
/* 01DAE4 0041DAE4 AFA20048 */  sw          $v0, 0x48($sp)
/* 01DAE8 0041DAE8 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01DAEC 0041DAEC 9319000E */  lbu         $t9, 0xE($t8)
/* 01DAF0 0041DAF0 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01DAF4 0041DAF4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DAF8 0041DAF8 03204825 */  move        $t1, $t9
/* 01DAFC 0041DAFC 001947C3 */  sra         $t0, $t9, 31
/* 01DB00 0041DB00 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01DB04 0041DB04 012B2821 */  addu        $a1, $t1, $t3
/* 01DB08 0041DB08 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01DB0C 0041DB0C 00AB082B */  sltu        $at, $a1, $t3
/* 01DB10 0041DB10 00282021 */  addu        $a0, $at, $t0
/* 01DB14 0041DB14 24060000 */  addiu       $a2, $zero, 0x0
/* 01DB18 0041DB18 24070008 */  addiu       $a3, $zero, 0x8
/* 01DB1C 0041DB1C 0320F809 */  jalr        $t9
/* 01DB20 0041DB20 008A2021 */   addu       $a0, $a0, $t2
/* 01DB24 0041DB24 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01DB28 0041DB28 AFA20050 */  sw          $v0, 0x50($sp)
/* 01DB2C 0041DB2C AFA30054 */  sw          $v1, 0x54($sp)
/* 01DB30 0041DB30 918D000F */  lbu         $t5, 0xF($t4)
/* 01DB34 0041DB34 8FB90054 */  lw          $t9, 0x54($sp)
/* 01DB38 0041DB38 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01DB3C 0041DB3C 01A07825 */  move        $t7, $t5
/* 01DB40 0041DB40 01F94821 */  addu        $t1, $t7, $t9
/* 01DB44 0041DB44 8FB80050 */  lw          $t8, 0x50($sp)
/* 01DB48 0041DB48 01205025 */  move        $t2, $t1
/* 01DB4C 0041DB4C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01DB50 0041DB50 AD6A0004 */  sw          $t2, 0x4($t3)
/* 01DB54 0041DB54 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01DB58 0041DB58 000D77C3 */  sra         $t6, $t5, 31
/* 01DB5C 0041DB5C 0139082B */  sltu        $at, $t1, $t9
/* 01DB60 0041DB60 918D0004 */  lbu         $t5, 0x4($t4)
/* 01DB64 0041DB64 918F0005 */  lbu         $t7, 0x5($t4)
/* 01DB68 0041DB68 002E4021 */  addu        $t0, $at, $t6
/* 01DB6C 0041DB6C 01184021 */  addu        $t0, $t0, $t8
/* 01DB70 0041DB70 91880006 */  lbu         $t0, 0x6($t4)
/* 01DB74 0041DB74 000D7200 */  sll         $t6, $t5, 8
/* 01DB78 0041DB78 01CFC021 */  addu        $t8, $t6, $t7
/* 01DB7C 0041DB7C 918B0007 */  lbu         $t3, 0x7($t4)
/* 01DB80 0041DB80 0018CA00 */  sll         $t9, $t8, 8
/* 01DB84 0041DB84 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01DB88 0041DB88 03284821 */  addu        $t1, $t9, $t0
/* 01DB8C 0041DB8C 00095200 */  sll         $t2, $t1, 8
/* 01DB90 0041DB90 016A6821 */  addu        $t5, $t3, $t2
/* 01DB94 0041DB94 ADCD0018 */  sw          $t5, 0x18($t6)
/* 01DB98 0041DB98 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01DB9C 0041DB9C 91F80000 */  lbu         $t8, 0x0($t7)
/* 01DBA0 0041DBA0 91E80001 */  lbu         $t0, 0x1($t7)
/* 01DBA4 0041DBA4 91EB0002 */  lbu         $t3, 0x2($t7)
/* 01DBA8 0041DBA8 0018CA00 */  sll         $t9, $t8, 8
/* 01DBAC 0041DBAC 03284821 */  addu        $t1, $t9, $t0
/* 01DBB0 0041DBB0 91EE0003 */  lbu         $t6, 0x3($t7)
/* 01DBB4 0041DBB4 00096200 */  sll         $t4, $t1, 8
/* 01DBB8 0041DBB8 8FB90060 */  lw          $t9, 0x60($sp)
/* 01DBBC 0041DBBC 018B5021 */  addu        $t2, $t4, $t3
/* 01DBC0 0041DBC0 000A6A00 */  sll         $t5, $t2, 8
/* 01DBC4 0041DBC4 01CDC021 */  addu        $t8, $t6, $t5
/* 01DBC8 0041DBC8 AF380000 */  sw          $t8, 0x0($t9)
/* 01DBCC 0041DBCC 8FA80060 */  lw          $t0, 0x60($sp)
/* 01DBD0 0041DBD0 8FA9005C */  lw          $t1, 0x5C($sp)
/* 01DBD4 0041DBD4 250CFFE0 */  addiu       $t4, $t0, -0x20
/* 01DBD8 0041DBD8 0128802B */  sltu        $s0, $t1, $t0
/* 01DBDC 0041DBDC 1600FCEB */  bnez        $s0, .L0041CF8C
/* 01DBE0 0041DBE0 AFAC0060 */   sw         $t4, 0x60($sp)
.L0041DBE4:
/* 01DBE4 0041DBE4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01DBE8 0041DBE8 8FB00014 */  lw          $s0, 0x14($sp)
/* 01DBEC 0041DBEC 27BD0060 */  addiu       $sp, $sp, 0x60
/* 01DBF0 0041DBF0 03E00008 */  jr          $ra
/* 01DBF4 0041DBF4 00000000 */   nop
