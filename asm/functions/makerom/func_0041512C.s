glabel func_0041512C # 59
/* 01512C 0041512C 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 015130 00415130 279CDC34 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBFDC34
/* 015134 00415134 0399E021 */  addu        $gp, $gp, $t9
/* 015138 00415138 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01513C 0041513C AFA60038 */  sw          $a2, 0x38($sp)
/* 015140 00415140 8FAE0038 */  lw          $t6, 0x38($sp)
/* 015144 00415144 AFA50034 */  sw          $a1, 0x34($sp)
/* 015148 00415148 8FB80034 */  lw          $t8, 0x34($sp)
/* 01514C 0041514C 000E7900 */  sll         $t7, $t6, 4
/* 015150 00415150 AFBF001C */  sw          $ra, 0x1C($sp)
/* 015154 00415154 01F8C821 */  addu        $t9, $t7, $t8
/* 015158 00415158 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01515C 0041515C AFA40030 */  sw          $a0, 0x30($sp)
/* 015160 00415160 AFB00014 */  sw          $s0, 0x14($sp)
/* 015164 00415164 AFB9002C */  sw          $t9, 0x2C($sp)
.L00415168:
/* 015168 00415168 8FA80034 */  lw          $t0, 0x34($sp)
/* 01516C 0041516C 8FA90030 */  lw          $t1, 0x30($sp)
/* 015170 00415170 24060000 */  addiu       $a2, $zero, 0x0
/* 015174 00415174 8D0B0004 */  lw          $t3, 0x4($t0)
/* 015178 00415178 8D0A0000 */  lw          $t2, 0x0($t0)
/* 01517C 0041517C 24070008 */  addiu       $a3, $zero, 0x8
/* 015180 00415180 01608025 */  move        $s0, $t3
/* 015184 00415184 A1300007 */  sb          $s0, 0x7($t1)
/* 015188 00415188 8FAD0030 */  lw          $t5, 0x30($sp)
/* 01518C 0041518C 00106202 */  srl         $t4, $s0, 8
/* 015190 00415190 00107402 */  srl         $t6, $s0, 16
/* 015194 00415194 A1AC0006 */  sb          $t4, 0x6($t5)
/* 015198 00415198 8FAF0030 */  lw          $t7, 0x30($sp)
/* 01519C 0041519C 0010C602 */  srl         $t8, $s0, 24
/* 0151A0 004151A0 A1EE0005 */  sb          $t6, 0x5($t7)
/* 0151A4 004151A4 8FB90030 */  lw          $t9, 0x30($sp)
/* 0151A8 004151A8 A3380004 */  sb          $t8, 0x4($t9)
/* 0151AC 004151AC 8FA80034 */  lw          $t0, 0x34($sp)
/* 0151B0 004151B0 8FAC0030 */  lw          $t4, 0x30($sp)
/* 0151B4 004151B4 8D0B000C */  lw          $t3, 0xC($t0)
/* 0151B8 004151B8 8D0A0008 */  lw          $t2, 0x8($t0)
/* 0151BC 004151BC AFAB0024 */  sw          $t3, 0x24($sp)
/* 0151C0 004151C0 01604825 */  move        $t1, $t3
/* 0151C4 004151C4 AFAA0020 */  sw          $t2, 0x20($sp)
/* 0151C8 004151C8 A189000F */  sb          $t1, 0xF($t4)
/* 0151CC 004151CC 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0151D0 004151D0 8FA50024 */  lw          $a1, 0x24($sp)
/* 0151D4 004151D4 8FA40020 */  lw          $a0, 0x20($sp)
/* 0151D8 004151D8 0320F809 */  jalr        $t9
/* 0151DC 004151DC 00000000 */   nop
/* 0151E0 004151E0 8FAE0030 */  lw          $t6, 0x30($sp)
/* 0151E4 004151E4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0151E8 004151E8 00606825 */  move        $t5, $v1
/* 0151EC 004151EC A1CD000E */  sb          $t5, 0xE($t6)
/* 0151F0 004151F0 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0151F4 004151F4 8FA50024 */  lw          $a1, 0x24($sp)
/* 0151F8 004151F8 8FA40020 */  lw          $a0, 0x20($sp)
/* 0151FC 004151FC 24060000 */  addiu       $a2, $zero, 0x0
/* 015200 00415200 0320F809 */  jalr        $t9
/* 015204 00415204 24070010 */   addiu      $a3, $zero, 0x10
/* 015208 00415208 8FB80030 */  lw          $t8, 0x30($sp)
/* 01520C 0041520C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 015210 00415210 00607825 */  move        $t7, $v1
/* 015214 00415214 A30F000D */  sb          $t7, 0xD($t8)
/* 015218 00415218 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 01521C 0041521C 8FA50024 */  lw          $a1, 0x24($sp)
/* 015220 00415220 8FA40020 */  lw          $a0, 0x20($sp)
/* 015224 00415224 24060000 */  addiu       $a2, $zero, 0x0
/* 015228 00415228 0320F809 */  jalr        $t9
/* 01522C 0041522C 24070018 */   addiu      $a3, $zero, 0x18
/* 015230 00415230 8FA80030 */  lw          $t0, 0x30($sp)
/* 015234 00415234 8FBC0018 */  lw          $gp, 0x18($sp)
/* 015238 00415238 0060C825 */  move        $t9, $v1
/* 01523C 0041523C A119000C */  sb          $t9, 0xC($t0)
/* 015240 00415240 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015244 00415244 8FA50024 */  lw          $a1, 0x24($sp)
/* 015248 00415248 8FA40020 */  lw          $a0, 0x20($sp)
/* 01524C 0041524C 24060000 */  addiu       $a2, $zero, 0x0
/* 015250 00415250 0320F809 */  jalr        $t9
/* 015254 00415254 24070020 */   addiu      $a3, $zero, 0x20
/* 015258 00415258 8FAB0030 */  lw          $t3, 0x30($sp)
/* 01525C 0041525C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 015260 00415260 00605025 */  move        $t2, $v1
/* 015264 00415264 A16A000B */  sb          $t2, 0xB($t3)
/* 015268 00415268 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 01526C 0041526C 8FA50024 */  lw          $a1, 0x24($sp)
/* 015270 00415270 8FA40020 */  lw          $a0, 0x20($sp)
/* 015274 00415274 24060000 */  addiu       $a2, $zero, 0x0
/* 015278 00415278 0320F809 */  jalr        $t9
/* 01527C 0041527C 24070028 */   addiu      $a3, $zero, 0x28
/* 015280 00415280 8FAC0030 */  lw          $t4, 0x30($sp)
/* 015284 00415284 8FBC0018 */  lw          $gp, 0x18($sp)
/* 015288 00415288 00604825 */  move        $t1, $v1
/* 01528C 0041528C A189000A */  sb          $t1, 0xA($t4)
/* 015290 00415290 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015294 00415294 8FA50024 */  lw          $a1, 0x24($sp)
/* 015298 00415298 8FA40020 */  lw          $a0, 0x20($sp)
/* 01529C 0041529C 24060000 */  addiu       $a2, $zero, 0x0
/* 0152A0 004152A0 0320F809 */  jalr        $t9
/* 0152A4 004152A4 24070030 */   addiu      $a3, $zero, 0x30
/* 0152A8 004152A8 8FAE0030 */  lw          $t6, 0x30($sp)
/* 0152AC 004152AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0152B0 004152B0 00606825 */  move        $t5, $v1
/* 0152B4 004152B4 A1CD0009 */  sb          $t5, 0x9($t6)
/* 0152B8 004152B8 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0152BC 004152BC 8FA50024 */  lw          $a1, 0x24($sp)
/* 0152C0 004152C0 8FA40020 */  lw          $a0, 0x20($sp)
/* 0152C4 004152C4 24060000 */  addiu       $a2, $zero, 0x0
/* 0152C8 004152C8 0320F809 */  jalr        $t9
/* 0152CC 004152CC 24070038 */   addiu      $a3, $zero, 0x38
/* 0152D0 004152D0 8FB80030 */  lw          $t8, 0x30($sp)
/* 0152D4 004152D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0152D8 004152D8 00607825 */  move        $t7, $v1
/* 0152DC 004152DC A30F0008 */  sb          $t7, 0x8($t8)
/* 0152E0 004152E0 8FAA0034 */  lw          $t2, 0x34($sp)
/* 0152E4 004152E4 8FA9002C */  lw          $t1, 0x2C($sp)
/* 0152E8 004152E8 8FB90030 */  lw          $t9, 0x30($sp)
/* 0152EC 004152EC 254B0010 */  addiu       $t3, $t2, 0x10
/* 0152F0 004152F0 0169082B */  sltu        $at, $t3, $t1
/* 0152F4 004152F4 27280010 */  addiu       $t0, $t9, 0x10
/* 0152F8 004152F8 AFA80030 */  sw          $t0, 0x30($sp)
/* 0152FC 004152FC 1420FF9A */  bnez        $at, .L00415168
/* 015300 00415300 AFAB0034 */   sw         $t3, 0x34($sp)
/* 015304 00415304 8FBF001C */  lw          $ra, 0x1C($sp)
/* 015308 00415308 8FB00014 */  lw          $s0, 0x14($sp)
/* 01530C 0041530C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 015310 00415310 03E00008 */  jr          $ra
/* 015314 00415314 00000000 */   nop