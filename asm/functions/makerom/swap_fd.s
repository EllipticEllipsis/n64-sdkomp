glabel swap_fd # 498
/* 031010 00431010 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 031014 00431014 279C1D50 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE1D50
/* 031018 00431018 0399E021 */  addu        $gp, $gp, $t9
/* 03101C 0043101C 27BDFF70 */  addiu       $sp, $sp, -0x90
/* 031020 00431020 8F998238 */  lw          $t9, %call16(gethostsex)($gp)
/* 031024 00431024 AFBF0034 */  sw          $ra, 0x34($sp)
/* 031028 00431028 AFB5002C */  sw          $s5, 0x2C($sp)
/* 03102C 0043102C AFB40028 */  sw          $s4, 0x28($sp)
/* 031030 00431030 AFB00018 */  sw          $s0, 0x18($sp)
/* 031034 00431034 00808025 */  move        $s0, $a0
/* 031038 00431038 00A0A025 */  move        $s4, $a1
/* 03103C 0043103C 00C0A825 */  move        $s5, $a2
/* 031040 00431040 AFBC0030 */  sw          $gp, 0x30($sp)
/* 031044 00431044 AFB30024 */  sw          $s3, 0x24($sp)
/* 031048 00431048 AFB20020 */  sw          $s2, 0x20($sp)
/* 03104C 0043104C 0320F809 */  jalr        $t9
/* 031050 00431050 AFB1001C */   sw         $s1, 0x1C($sp)
/* 031054 00431054 1A80015F */  blez        $s4, .L004315D4
/* 031058 00431058 8FBC0030 */   lw         $gp, 0x30($sp)
/* 03105C 0043105C 001470C0 */  sll         $t6, $s4, 3
/* 031060 00431060 01D47021 */  addu        $t6, $t6, $s4
/* 031064 00431064 000E70C0 */  sll         $t6, $t6, 3
/* 031068 00431068 01D09821 */  addu        $s3, $t6, $s0
/* 03106C 0043106C 02001825 */  move        $v1, $s0
/* 031070 00431070 3C1200FF */  lui         $s2, (0xFF0000 >> 16)
/* 031074 00431074 27B10040 */  addiu       $s1, $sp, 0x40
/* 031078 00431078 3C0400FF */  lui         $a0, (0xFF0000 >> 16)
/* 03107C 0043107C 0060C825 */  move        $t9, $v1
.L00431080:
/* 031080 00431080 02207025 */  move        $t6, $s1
/* 031084 00431084 24610048 */  addiu       $at, $v1, 0x48
.L00431088:
/* 031088 00431088 8F380000 */  lw          $t8, 0x0($t9)
/* 03108C 0043108C 2739000C */  addiu       $t9, $t9, 0xC
/* 031090 00431090 25CE000C */  addiu       $t6, $t6, 0xC
/* 031094 00431094 ADD8FFF4 */  sw          $t8, -0xC($t6)
/* 031098 00431098 8F2FFFF8 */  lw          $t7, -0x8($t9)
/* 03109C 0043109C ADCFFFF8 */  sw          $t7, -0x8($t6)
/* 0310A0 004310A0 8F38FFFC */  lw          $t8, -0x4($t9)
/* 0310A4 004310A4 1721FFF8 */  bne         $t9, $at, .L00431088
/* 0310A8 004310A8 ADD8FFFC */   sw         $t8, -0x4($t6)
/* 0310AC 004310AC 8FB90040 */  lw          $t9, 0x40($sp)
/* 0310B0 004310B0 8FA50054 */  lw          $a1, 0x54($sp)
/* 0310B4 004310B4 8FA60058 */  lw          $a2, 0x58($sp)
/* 0310B8 004310B8 00197A00 */  sll         $t7, $t9, 8
/* 0310BC 004310BC 01F2C024 */  and         $t8, $t7, $s2
/* 0310C0 004310C0 00197600 */  sll         $t6, $t9, 24
/* 0310C4 004310C4 01D87825 */  or          $t7, $t6, $t8
/* 0310C8 004310C8 00197202 */  srl         $t6, $t9, 8
/* 0310CC 004310CC 31D8FF00 */  andi        $t8, $t6, 0xFF00
/* 0310D0 004310D0 01F87025 */  or          $t6, $t7, $t8
/* 0310D4 004310D4 00197E02 */  srl         $t7, $t9, 24
/* 0310D8 004310D8 8FB90044 */  lw          $t9, 0x44($sp)
/* 0310DC 004310DC 01CFC025 */  or          $t8, $t6, $t7
/* 0310E0 004310E0 AFB80040 */  sw          $t8, 0x40($sp)
/* 0310E4 004310E4 00197A00 */  sll         $t7, $t9, 8
/* 0310E8 004310E8 01E4C024 */  and         $t8, $t7, $a0
/* 0310EC 004310EC 00197600 */  sll         $t6, $t9, 24
/* 0310F0 004310F0 01D87825 */  or          $t7, $t6, $t8
/* 0310F4 004310F4 00197203 */  sra         $t6, $t9, 8
/* 0310F8 004310F8 31D8FF00 */  andi        $t8, $t6, 0xFF00
/* 0310FC 004310FC 8FAE0044 */  lw          $t6, 0x44($sp)
/* 031100 00431100 01F8C825 */  or          $t9, $t7, $t8
/* 031104 00431104 8FA7005C */  lw          $a3, 0x5C($sp)
/* 031108 00431108 000E7E02 */  srl         $t7, $t6, 24
/* 03110C 0043110C 8FAE0048 */  lw          $t6, 0x48($sp)
/* 031110 00431110 032FC025 */  or          $t8, $t9, $t7
/* 031114 00431114 AFB80044 */  sw          $t8, 0x44($sp)
/* 031118 00431118 000E7A00 */  sll         $t7, $t6, 8
/* 03111C 0043111C 01E4C024 */  and         $t8, $t7, $a0
/* 031120 00431120 000ECE00 */  sll         $t9, $t6, 24
/* 031124 00431124 03387825 */  or          $t7, $t9, $t8
/* 031128 00431128 000ECA03 */  sra         $t9, $t6, 8
/* 03112C 0043112C 3338FF00 */  andi        $t8, $t9, 0xFF00
/* 031130 00431130 8FB90048 */  lw          $t9, 0x48($sp)
/* 031134 00431134 01F87025 */  or          $t6, $t7, $t8
/* 031138 00431138 8FA80060 */  lw          $t0, 0x60($sp)
/* 03113C 0043113C 00197E02 */  srl         $t7, $t9, 24
/* 031140 00431140 8FB9004C */  lw          $t9, 0x4C($sp)
/* 031144 00431144 01CFC025 */  or          $t8, $t6, $t7
/* 031148 00431148 AFB80048 */  sw          $t8, 0x48($sp)
/* 03114C 0043114C 00197A00 */  sll         $t7, $t9, 8
/* 031150 00431150 01E4C024 */  and         $t8, $t7, $a0
/* 031154 00431154 00197600 */  sll         $t6, $t9, 24
/* 031158 00431158 01D87825 */  or          $t7, $t6, $t8
/* 03115C 0043115C 00197203 */  sra         $t6, $t9, 8
/* 031160 00431160 31D8FF00 */  andi        $t8, $t6, 0xFF00
/* 031164 00431164 8FAE004C */  lw          $t6, 0x4C($sp)
/* 031168 00431168 01F8C825 */  or          $t9, $t7, $t8
/* 03116C 0043116C 8FA90064 */  lw          $t1, 0x64($sp)
/* 031170 00431170 000E7E02 */  srl         $t7, $t6, 24
/* 031174 00431174 8FAE0050 */  lw          $t6, 0x50($sp)
/* 031178 00431178 032FC025 */  or          $t8, $t9, $t7
/* 03117C 0043117C AFB8004C */  sw          $t8, 0x4C($sp)
/* 031180 00431180 000E7A00 */  sll         $t7, $t6, 8
/* 031184 00431184 01E4C024 */  and         $t8, $t7, $a0
/* 031188 00431188 000ECE00 */  sll         $t9, $t6, 24
/* 03118C 0043118C 03387825 */  or          $t7, $t9, $t8
/* 031190 00431190 000ECA03 */  sra         $t9, $t6, 8
/* 031194 00431194 3338FF00 */  andi        $t8, $t9, 0xFF00
/* 031198 00431198 8FB90050 */  lw          $t9, 0x50($sp)
/* 03119C 0043119C 01F87025 */  or          $t6, $t7, $t8
/* 0311A0 004311A0 8FAA006C */  lw          $t2, 0x6C($sp)
/* 0311A4 004311A4 00197E02 */  srl         $t7, $t9, 24
/* 0311A8 004311A8 01CFC025 */  or          $t8, $t6, $t7
/* 0311AC 004311AC 00057200 */  sll         $t6, $a1, 8
/* 0311B0 004311B0 01C47824 */  and         $t7, $t6, $a0
/* 0311B4 004311B4 AFB80050 */  sw          $t8, 0x50($sp)
/* 0311B8 004311B8 0005CE00 */  sll         $t9, $a1, 24
/* 0311BC 004311BC 032FC025 */  or          $t8, $t9, $t7
/* 0311C0 004311C0 00057203 */  sra         $t6, $a1, 8
/* 0311C4 004311C4 31D9FF00 */  andi        $t9, $t6, 0xFF00
/* 0311C8 004311C8 03197825 */  or          $t7, $t8, $t9
/* 0311CC 004311CC 00057602 */  srl         $t6, $a1, 24
/* 0311D0 004311D0 01EE2825 */  or          $a1, $t7, $t6
/* 0311D4 004311D4 0006CA00 */  sll         $t9, $a2, 8
/* 0311D8 004311D8 03247824 */  and         $t7, $t9, $a0
/* 0311DC 004311DC 0006C600 */  sll         $t8, $a2, 24
/* 0311E0 004311E0 030F7025 */  or          $t6, $t8, $t7
/* 0311E4 004311E4 0006CA03 */  sra         $t9, $a2, 8
/* 0311E8 004311E8 3338FF00 */  andi        $t8, $t9, 0xFF00
/* 0311EC 004311EC 01D87825 */  or          $t7, $t6, $t8
/* 0311F0 004311F0 0006CE02 */  srl         $t9, $a2, 24
/* 0311F4 004311F4 01F93025 */  or          $a2, $t7, $t9
/* 0311F8 004311F8 0007C200 */  sll         $t8, $a3, 8
/* 0311FC 004311FC 03047824 */  and         $t7, $t8, $a0
/* 031200 00431200 00077600 */  sll         $t6, $a3, 24
/* 031204 00431204 01CFC825 */  or          $t9, $t6, $t7
/* 031208 00431208 0007C203 */  sra         $t8, $a3, 8
/* 03120C 0043120C 330EFF00 */  andi        $t6, $t8, 0xFF00
/* 031210 00431210 032E7825 */  or          $t7, $t9, $t6
/* 031214 00431214 0007C602 */  srl         $t8, $a3, 24
/* 031218 00431218 01F83825 */  or          $a3, $t7, $t8
/* 03121C 0043121C 00087200 */  sll         $t6, $t0, 8
/* 031220 00431220 01C47824 */  and         $t7, $t6, $a0
/* 031224 00431224 0008CE00 */  sll         $t9, $t0, 24
/* 031228 00431228 032FC025 */  or          $t8, $t9, $t7
/* 03122C 0043122C 00087203 */  sra         $t6, $t0, 8
/* 031230 00431230 31D9FF00 */  andi        $t9, $t6, 0xFF00
/* 031234 00431234 03197825 */  or          $t7, $t8, $t9
/* 031238 00431238 00087602 */  srl         $t6, $t0, 24
/* 03123C 0043123C 01EE4025 */  or          $t0, $t7, $t6
/* 031240 00431240 0009CA00 */  sll         $t9, $t1, 8
/* 031244 00431244 03247824 */  and         $t7, $t9, $a0
/* 031248 00431248 0009C600 */  sll         $t8, $t1, 24
/* 03124C 0043124C 030F7025 */  or          $t6, $t8, $t7
/* 031250 00431250 0009CA03 */  sra         $t9, $t1, 8
/* 031254 00431254 3338FF00 */  andi        $t8, $t9, 0xFF00
/* 031258 00431258 01D87825 */  or          $t7, $t6, $t8
/* 03125C 0043125C 0009CE02 */  srl         $t9, $t1, 24
/* 031260 00431260 01F94825 */  or          $t1, $t7, $t9
/* 031264 00431264 97B90068 */  lhu         $t9, 0x68($sp)
/* 031268 00431268 87B80068 */  lh          $t8, 0x68($sp)
/* 03126C 0043126C 8FAB0070 */  lw          $t3, 0x70($sp)
/* 031270 00431270 00197202 */  srl         $t6, $t9, 8
/* 031274 00431274 00187A00 */  sll         $t7, $t8, 8
/* 031278 00431278 01EEC025 */  or          $t8, $t7, $t6
/* 03127C 0043127C A7B80068 */  sh          $t8, 0x68($sp)
/* 031280 00431280 97B8006A */  lhu         $t8, 0x6A($sp)
/* 031284 00431284 87AF006A */  lh          $t7, 0x6A($sp)
/* 031288 00431288 8FAC0074 */  lw          $t4, 0x74($sp)
/* 03128C 0043128C 0018CA02 */  srl         $t9, $t8, 8
/* 031290 00431290 000F7200 */  sll         $t6, $t7, 8
/* 031294 00431294 01D97825 */  or          $t7, $t6, $t9
/* 031298 00431298 000A7200 */  sll         $t6, $t2, 8
/* 03129C 0043129C 01C4C824 */  and         $t9, $t6, $a0
/* 0312A0 004312A0 A7AF006A */  sh          $t7, 0x6A($sp)
/* 0312A4 004312A4 000AC600 */  sll         $t8, $t2, 24
/* 0312A8 004312A8 03197825 */  or          $t7, $t8, $t9
/* 0312AC 004312AC 000A7203 */  sra         $t6, $t2, 8
/* 0312B0 004312B0 31D8FF00 */  andi        $t8, $t6, 0xFF00
/* 0312B4 004312B4 01F8C825 */  or          $t9, $t7, $t8
/* 0312B8 004312B8 000A7602 */  srl         $t6, $t2, 24
/* 0312BC 004312BC 032E5025 */  or          $t2, $t9, $t6
/* 0312C0 004312C0 000BC200 */  sll         $t8, $t3, 8
/* 0312C4 004312C4 0304C824 */  and         $t9, $t8, $a0
/* 0312C8 004312C8 000B7E00 */  sll         $t7, $t3, 24
/* 0312CC 004312CC 01F97025 */  or          $t6, $t7, $t9
/* 0312D0 004312D0 000BC203 */  sra         $t8, $t3, 8
/* 0312D4 004312D4 330FFF00 */  andi        $t7, $t8, 0xFF00
/* 0312D8 004312D8 01CFC825 */  or          $t9, $t6, $t7
/* 0312DC 004312DC 000BC602 */  srl         $t8, $t3, 24
/* 0312E0 004312E0 03385825 */  or          $t3, $t9, $t8
/* 0312E4 004312E4 000C7A00 */  sll         $t7, $t4, 8
/* 0312E8 004312E8 01E4C824 */  and         $t9, $t7, $a0
/* 0312EC 004312EC 000C7600 */  sll         $t6, $t4, 24
/* 0312F0 004312F0 01D9C025 */  or          $t8, $t6, $t9
/* 0312F4 004312F4 000C7A03 */  sra         $t7, $t4, 8
/* 0312F8 004312F8 8FAD0078 */  lw          $t5, 0x78($sp)
/* 0312FC 004312FC 31EEFF00 */  andi        $t6, $t7, 0xFF00
/* 031300 00431300 030EC825 */  or          $t9, $t8, $t6
/* 031304 00431304 000C7E02 */  srl         $t7, $t4, 24
/* 031308 00431308 032F6025 */  or          $t4, $t9, $t7
/* 03130C 0043130C 000D7200 */  sll         $t6, $t5, 8
/* 031310 00431310 01C4C824 */  and         $t9, $t6, $a0
/* 031314 00431314 000DC600 */  sll         $t8, $t5, 24
/* 031318 00431318 03197825 */  or          $t7, $t8, $t9
/* 03131C 0043131C 000D7203 */  sra         $t6, $t5, 8
/* 031320 00431320 8FBF0080 */  lw          $ra, 0x80($sp)
/* 031324 00431324 31D8FF00 */  andi        $t8, $t6, 0xFF00
/* 031328 00431328 01F8C825 */  or          $t9, $t7, $t8
/* 03132C 0043132C 000D7602 */  srl         $t6, $t5, 24
/* 031330 00431330 032E6825 */  or          $t5, $t9, $t6
/* 031334 00431334 001FC200 */  sll         $t8, $ra, 8
/* 031338 00431338 0304C824 */  and         $t9, $t8, $a0
/* 03133C 0043133C 001F7E00 */  sll         $t7, $ra, 24
/* 031340 00431340 01F97025 */  or          $t6, $t7, $t9
/* 031344 00431344 001FC203 */  sra         $t8, $ra, 8
/* 031348 00431348 8FB00084 */  lw          $s0, 0x84($sp)
/* 03134C 0043134C 330FFF00 */  andi        $t7, $t8, 0xFF00
/* 031350 00431350 01CFC825 */  or          $t9, $t6, $t7
/* 031354 00431354 001FC602 */  srl         $t8, $ra, 24
/* 031358 00431358 0338F825 */  or          $ra, $t9, $t8
/* 03135C 0043135C 00107A00 */  sll         $t7, $s0, 8
/* 031360 00431360 01E4C824 */  and         $t9, $t7, $a0
/* 031364 00431364 00107600 */  sll         $t6, $s0, 24
/* 031368 00431368 01D9C025 */  or          $t8, $t6, $t9
/* 03136C 0043136C 00107A03 */  sra         $t7, $s0, 8
/* 031370 00431370 31EEFF00 */  andi        $t6, $t7, 0xFF00
/* 031374 00431374 030EC825 */  or          $t9, $t8, $t6
/* 031378 00431378 00107E02 */  srl         $t7, $s0, 24
/* 03137C 0043137C 032F8025 */  or          $s0, $t9, $t7
/* 031380 00431380 AFB00084 */  sw          $s0, 0x84($sp)
/* 031384 00431384 AFBF0080 */  sw          $ra, 0x80($sp)
/* 031388 00431388 AFAD0078 */  sw          $t5, 0x78($sp)
/* 03138C 0043138C AFAC0074 */  sw          $t4, 0x74($sp)
/* 031390 00431390 AFAB0070 */  sw          $t3, 0x70($sp)
/* 031394 00431394 AFAA006C */  sw          $t2, 0x6C($sp)
/* 031398 00431398 AFA90064 */  sw          $t1, 0x64($sp)
/* 03139C 0043139C AFA80060 */  sw          $t0, 0x60($sp)
/* 0313A0 004313A0 AFA7005C */  sw          $a3, 0x5C($sp)
/* 0313A4 004313A4 AFA60058 */  sw          $a2, 0x58($sp)
/* 0313A8 004313A8 16A20043 */  bne         $s5, $v0, .L004314B8
/* 0313AC 004313AC AFA50054 */   sw         $a1, 0x54($sp)
/* 0313B0 004313B0 0220C825 */  move        $t9, $s1
/* 0313B4 004313B4 00607825 */  move        $t7, $v1
/* 0313B8 004313B8 26210048 */  addiu       $at, $s1, 0x48
.L004313BC:
/* 0313BC 004313BC 8F2E0000 */  lw          $t6, 0x0($t9)
/* 0313C0 004313C0 2739000C */  addiu       $t9, $t9, 0xC
/* 0313C4 004313C4 25EF000C */  addiu       $t7, $t7, 0xC
/* 0313C8 004313C8 ADEEFFF4 */  sw          $t6, -0xC($t7)
/* 0313CC 004313CC 8F38FFF8 */  lw          $t8, -0x8($t9)
/* 0313D0 004313D0 ADF8FFF8 */  sw          $t8, -0x8($t7)
/* 0313D4 004313D4 8F2EFFFC */  lw          $t6, -0x4($t9)
/* 0313D8 004313D8 1721FFF8 */  bne         $t9, $at, .L004313BC
/* 0313DC 004313DC ADEEFFFC */   sw         $t6, -0x4($t7)
/* 0313E0 004313E0 8FB9007C */  lw          $t9, 0x7C($sp)
/* 0313E4 004313E4 0019C200 */  sll         $t8, $t9, 8
/* 0313E8 004313E8 03127024 */  and         $t6, $t8, $s2
/* 0313EC 004313EC 00197E00 */  sll         $t7, $t9, 24
/* 0313F0 004313F0 01EEC025 */  or          $t8, $t7, $t6
/* 0313F4 004313F4 00197A02 */  srl         $t7, $t9, 8
/* 0313F8 004313F8 31EEFF00 */  andi        $t6, $t7, 0xFF00
/* 0313FC 004313FC 030E7825 */  or          $t7, $t8, $t6
/* 031400 00431400 0019C602 */  srl         $t8, $t9, 24
/* 031404 00431404 01F8C825 */  or          $t9, $t7, $t8
/* 031408 00431408 AFB9007C */  sw          $t9, 0x7C($sp)
/* 03140C 0043140C 906E003C */  lbu         $t6, 0x3C($v1)
/* 031410 00431410 0019C0C0 */  sll         $t8, $t9, 3
/* 031414 00431414 31D9FF07 */  andi        $t9, $t6, 0xFF07
/* 031418 00431418 03197825 */  or          $t7, $t8, $t9
/* 03141C 0043141C A06F003C */  sb          $t7, 0x3C($v1)
/* 031420 00431420 8FAE007C */  lw          $t6, 0x7C($sp)
/* 031424 00431424 000EC680 */  sll         $t8, $t6, 26
/* 031428 00431428 0018CFC2 */  srl         $t9, $t8, 31
/* 03142C 0043142C 9078003C */  lbu         $t8, 0x3C($v1)
/* 031430 00431430 00197880 */  sll         $t7, $t9, 2
/* 031434 00431434 31EE0004 */  andi        $t6, $t7, 0x4
/* 031438 00431438 3319FFFB */  andi        $t9, $t8, 0xFFFB
/* 03143C 0043143C 01D97825 */  or          $t7, $t6, $t9
/* 031440 00431440 A06F003C */  sb          $t7, 0x3C($v1)
/* 031444 00431444 8FB8007C */  lw          $t8, 0x7C($sp)
/* 031448 00431448 00187640 */  sll         $t6, $t8, 25
/* 03144C 0043144C 000ECFC2 */  srl         $t9, $t6, 31
/* 031450 00431450 906E003C */  lbu         $t6, 0x3C($v1)
/* 031454 00431454 00197840 */  sll         $t7, $t9, 1
/* 031458 00431458 31F80002 */  andi        $t8, $t7, 0x2
/* 03145C 0043145C 31D9FFFD */  andi        $t9, $t6, 0xFFFD
/* 031460 00431460 03197825 */  or          $t7, $t8, $t9
/* 031464 00431464 A06F003C */  sb          $t7, 0x3C($v1)
/* 031468 00431468 93AE007F */  lbu         $t6, 0x7F($sp)
/* 03146C 0043146C 000EC1C2 */  srl         $t8, $t6, 7
/* 031470 00431470 33190001 */  andi        $t9, $t8, 0x1
/* 031474 00431474 31EEFFFE */  andi        $t6, $t7, 0xFFFE
/* 031478 00431478 032EC025 */  or          $t8, $t9, $t6
/* 03147C 0043147C A078003C */  sb          $t8, 0x3C($v1)
/* 031480 00431480 93B9007E */  lbu         $t9, 0x7E($sp)
/* 031484 00431484 906F003D */  lbu         $t7, 0x3D($v1)
/* 031488 00431488 0019C180 */  sll         $t8, $t9, 6
/* 03148C 0043148C 31F9FF3F */  andi        $t9, $t7, 0xFF3F
/* 031490 00431490 03197025 */  or          $t6, $t8, $t9
/* 031494 00431494 A06E003D */  sb          $t6, 0x3D($v1)
/* 031498 00431498 8FAF007C */  lw          $t7, 0x7C($sp)
/* 03149C 0043149C 000FCA82 */  srl         $t9, $t7, 10
/* 0314A0 004314A0 946F003E */  lhu         $t7, 0x3E($v1)
/* 0314A4 004314A4 332E1FFF */  andi        $t6, $t9, 0x1FFF
/* 0314A8 004314A8 31F8E000 */  andi        $t8, $t7, 0xE000
/* 0314AC 004314AC 01D8C825 */  or          $t9, $t6, $t8
/* 0314B0 004314B0 10000045 */  b           .L004315C8
/* 0314B4 004314B4 A479003E */   sh         $t9, 0x3E($v1)
.L004314B8:
/* 0314B8 004314B8 8C6F003C */  lw          $t7, 0x3C($v1)
/* 0314BC 004314BC 93B9007F */  lbu         $t9, 0x7F($sp)
/* 0314C0 004314C0 26210048 */  addiu       $at, $s1, 0x48
/* 0314C4 004314C4 000F76C2 */  srl         $t6, $t7, 27
/* 0314C8 004314C8 31D8001F */  andi        $t8, $t6, 0x1F
/* 0314CC 004314CC 332FFFE0 */  andi        $t7, $t9, 0xFFE0
/* 0314D0 004314D0 030F7025 */  or          $t6, $t8, $t7
/* 0314D4 004314D4 A3AE007F */  sb          $t6, 0x7F($sp)
/* 0314D8 004314D8 8C79003C */  lw          $t9, 0x3C($v1)
/* 0314DC 004314DC 0019C140 */  sll         $t8, $t9, 5
/* 0314E0 004314E0 00187FC2 */  srl         $t7, $t8, 31
/* 0314E4 004314E4 000FC940 */  sll         $t9, $t7, 5
/* 0314E8 004314E8 33380020 */  andi        $t8, $t9, 0x20
/* 0314EC 004314EC 01C07825 */  move        $t7, $t6
/* 0314F0 004314F0 31F900DF */  andi        $t9, $t7, 0xDF
/* 0314F4 004314F4 03197025 */  or          $t6, $t8, $t9
/* 0314F8 004314F8 A3AE007F */  sb          $t6, 0x7F($sp)
/* 0314FC 004314FC 8C6F003C */  lw          $t7, 0x3C($v1)
/* 031500 00431500 000FC180 */  sll         $t8, $t7, 6
/* 031504 00431504 0018CFC2 */  srl         $t9, $t8, 31
/* 031508 00431508 00197980 */  sll         $t7, $t9, 6
/* 03150C 0043150C 31F80040 */  andi        $t8, $t7, 0x40
/* 031510 00431510 01C0C825 */  move        $t9, $t6
/* 031514 00431514 332F00BF */  andi        $t7, $t9, 0xBF
/* 031518 00431518 030F7025 */  or          $t6, $t8, $t7
/* 03151C 0043151C A3AE007F */  sb          $t6, 0x7F($sp)
/* 031520 00431520 9078003C */  lbu         $t8, 0x3C($v1)
/* 031524 00431524 0018C9C0 */  sll         $t9, $t8, 7
/* 031528 00431528 01C0C025 */  move        $t8, $t6
/* 03152C 0043152C 330F007F */  andi        $t7, $t8, 0x7F
/* 031530 00431530 032F7025 */  or          $t6, $t9, $t7
/* 031534 00431534 A3AE007F */  sb          $t6, 0x7F($sp)
/* 031538 00431538 9078003D */  lbu         $t8, 0x3D($v1)
/* 03153C 0043153C 93AE007E */  lbu         $t6, 0x7E($sp)
/* 031540 00431540 0018C982 */  srl         $t9, $t8, 6
/* 031544 00431544 332F0003 */  andi        $t7, $t9, 0x3
/* 031548 00431548 31D8FFFC */  andi        $t8, $t6, 0xFFFC
/* 03154C 0043154C 01F8C825 */  or          $t9, $t7, $t8
/* 031550 00431550 A3B9007E */  sb          $t9, 0x7E($sp)
/* 031554 00431554 8FB8007C */  lw          $t8, 0x7C($sp)
/* 031558 00431558 8C6E003C */  lw          $t6, 0x3C($v1)
/* 03155C 0043155C 0018CA82 */  srl         $t9, $t8, 10
/* 031560 00431560 31CF1FFF */  andi        $t7, $t6, 0x1FFF
/* 031564 00431564 01F97026 */  xor         $t6, $t7, $t9
/* 031568 00431568 000E7A80 */  sll         $t7, $t6, 10
/* 03156C 0043156C 01F8C826 */  xor         $t9, $t7, $t8
/* 031570 00431570 00197A00 */  sll         $t7, $t9, 8
/* 031574 00431574 01F2C024 */  and         $t8, $t7, $s2
/* 031578 00431578 00197600 */  sll         $t6, $t9, 24
/* 03157C 0043157C 01D87825 */  or          $t7, $t6, $t8
/* 031580 00431580 00197202 */  srl         $t6, $t9, 8
/* 031584 00431584 31D8FF00 */  andi        $t8, $t6, 0xFF00
/* 031588 00431588 01F87025 */  or          $t6, $t7, $t8
/* 03158C 0043158C 00197E02 */  srl         $t7, $t9, 24
/* 031590 00431590 01CFC025 */  or          $t8, $t6, $t7
/* 031594 00431594 AFB9007C */  sw          $t9, 0x7C($sp)
/* 031598 00431598 AFB8007C */  sw          $t8, 0x7C($sp)
/* 03159C 0043159C 0060C025 */  move        $t8, $v1
/* 0315A0 004315A0 02207825 */  move        $t7, $s1
.L004315A4:
/* 0315A4 004315A4 8DEE0000 */  lw          $t6, 0x0($t7)
/* 0315A8 004315A8 25EF000C */  addiu       $t7, $t7, 0xC
/* 0315AC 004315AC 2718000C */  addiu       $t8, $t8, 0xC
/* 0315B0 004315B0 AF0EFFF4 */  sw          $t6, -0xC($t8)
/* 0315B4 004315B4 8DF9FFF8 */  lw          $t9, -0x8($t7)
/* 0315B8 004315B8 AF19FFF8 */  sw          $t9, -0x8($t8)
/* 0315BC 004315BC 8DEEFFFC */  lw          $t6, -0x4($t7)
/* 0315C0 004315C0 15E1FFF8 */  bne         $t7, $at, .L004315A4
/* 0315C4 004315C4 AF0EFFFC */   sw         $t6, -0x4($t8)
.L004315C8:
/* 0315C8 004315C8 24630048 */  addiu       $v1, $v1, 0x48
/* 0315CC 004315CC 5473FEAC */  bnel        $v1, $s3, .L00431080
/* 0315D0 004315D0 0060C825 */   move       $t9, $v1
.L004315D4:
/* 0315D4 004315D4 8FBF0034 */  lw          $ra, 0x34($sp)
/* 0315D8 004315D8 8FB00018 */  lw          $s0, 0x18($sp)
/* 0315DC 004315DC 8FB1001C */  lw          $s1, 0x1C($sp)
/* 0315E0 004315E0 8FB20020 */  lw          $s2, 0x20($sp)
/* 0315E4 004315E4 8FB30024 */  lw          $s3, 0x24($sp)
/* 0315E8 004315E8 8FB40028 */  lw          $s4, 0x28($sp)
/* 0315EC 004315EC 8FB5002C */  lw          $s5, 0x2C($sp)
/* 0315F0 004315F0 03E00008 */  jr          $ra
/* 0315F4 004315F4 27BD0090 */   addiu      $sp, $sp, 0x90
