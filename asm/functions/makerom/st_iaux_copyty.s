glabel st_iaux_copyty # 709
/* 043088 00443088 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 04308C 0044308C 279CFCD8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBCFCD8
/* 043090 00443090 0399E021 */  addu        $gp, $gp, $t9
/* 043094 00443094 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 043098 00443098 8F9985F4 */  lw          $t9, %call16(st_paux_ifd_iaux)($gp)
/* 04309C 0044309C AFBF0024 */  sw          $ra, 0x24($sp)
/* 0430A0 004430A0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 0430A4 004430A4 AFB2001C */  sw          $s2, 0x1C($sp)
/* 0430A8 004430A8 AFB10018 */  sw          $s1, 0x18($sp)
/* 0430AC 004430AC AFB00014 */  sw          $s0, 0x14($sp)
/* 0430B0 004430B0 AFA5003C */  sw          $a1, 0x3C($sp)
/* 0430B4 004430B4 8CA50008 */  lw          $a1, 0x8($a1)
/* 0430B8 004430B8 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 0430BC 004430BC 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 0430C0 004430C0 00809025 */  move        $s2, $a0
/* 0430C4 004430C4 00008825 */  move        $s1, $zero
/* 0430C8 004430C8 0320F809 */  jalr        $t9
/* 0430CC 004430CC 00A12824 */   and        $a1, $a1, $at
/* 0430D0 004430D0 8FA7003C */  lw          $a3, 0x3C($sp)
/* 0430D4 004430D4 24010006 */  addiu       $at, $zero, 0x6
/* 0430D8 004430D8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0430DC 004430DC 8CEF0008 */  lw          $t7, 0x8($a3)
/* 0430E0 004430E0 000FC682 */  srl         $t8, $t7, 26
/* 0430E4 004430E4 57010003 */  bnel        $t8, $at, .L004430F4
/* 0430E8 004430E8 00111880 */   sll        $v1, $s1, 2
/* 0430EC 004430EC 24110001 */  addiu       $s1, $zero, 0x1
/* 0430F0 004430F0 00111880 */  sll         $v1, $s1, 2
.L004430F4:
/* 0430F4 004430F4 00623021 */  addu        $a2, $v1, $v0
/* 0430F8 004430F8 90C40000 */  lbu         $a0, 0x0($a2)
/* 0430FC 004430FC 24010025 */  addiu       $at, $zero, 0x25
/* 043100 00443100 24630004 */  addiu       $v1, $v1, 0x4
/* 043104 00443104 3084003F */  andi        $a0, $a0, 0x3F
/* 043108 00443108 1481000C */  bne         $a0, $at, .L0044313C
/* 04310C 0044310C 26310001 */   addiu      $s1, $s1, 0x1
/* 043110 00443110 0043C821 */  addu        $t9, $v0, $v1
/* 043114 00443114 8F290000 */  lw          $t1, 0x0($t9)
/* 043118 00443118 24080FFF */  addiu       $t0, $zero, 0xFFF
/* 04311C 0044311C 00095502 */  srl         $t2, $t1, 20
/* 043120 00443120 550A0004 */  bnel        $t0, $t2, .L00443134
/* 043124 00443124 26310001 */   addiu      $s1, $s1, 0x1
/* 043128 00443128 26310001 */  addiu       $s1, $s1, 0x1
/* 04312C 0044312C 24630004 */  addiu       $v1, $v1, 0x4
/* 043130 00443130 26310001 */  addiu       $s1, $s1, 0x1
.L00443134:
/* 043134 00443134 10000025 */  b           .L004431CC
/* 043138 00443138 24630004 */   addiu      $v1, $v1, 0x4
.L0044313C:
/* 04313C 0044313C 24010011 */  addiu       $at, $zero, 0x11
/* 043140 00443140 1081000C */  beq         $a0, $at, .L00443174
/* 043144 00443144 00435821 */   addu       $t3, $v0, $v1
/* 043148 00443148 24010014 */  addiu       $at, $zero, 0x14
/* 04314C 0044314C 10810009 */  beq         $a0, $at, .L00443174
/* 043150 00443150 2401000C */   addiu      $at, $zero, 0xC
/* 043154 00443154 10810007 */  beq         $a0, $at, .L00443174
/* 043158 00443158 2401000D */   addiu      $at, $zero, 0xD
/* 04315C 0044315C 10810005 */  beq         $a0, $at, .L00443174
/* 043160 00443160 2401000F */   addiu      $at, $zero, 0xF
/* 043164 00443164 10810003 */  beq         $a0, $at, .L00443174
/* 043168 00443168 2401000E */   addiu      $at, $zero, 0xE
/* 04316C 0044316C 5481000C */  bnel        $a0, $at, .L004431A0
/* 043170 00443170 24010010 */   addiu      $at, $zero, 0x10
.L00443174:
/* 043174 00443174 8D6C0000 */  lw          $t4, 0x0($t3)
/* 043178 00443178 24080FFF */  addiu       $t0, $zero, 0xFFF
/* 04317C 0044317C 000C6D02 */  srl         $t5, $t4, 20
/* 043180 00443180 550D0004 */  bnel        $t0, $t5, .L00443194
/* 043184 00443184 26310001 */   addiu      $s1, $s1, 0x1
/* 043188 00443188 26310001 */  addiu       $s1, $s1, 0x1
/* 04318C 0044318C 24630004 */  addiu       $v1, $v1, 0x4
/* 043190 00443190 26310001 */  addiu       $s1, $s1, 0x1
.L00443194:
/* 043194 00443194 1000000D */  b           .L004431CC
/* 043198 00443198 24630004 */   addiu      $v1, $v1, 0x4
/* 04319C 0044319C 24010010 */  addiu       $at, $zero, 0x10
.L004431A0:
/* 0431A0 004431A0 1481000A */  bne         $a0, $at, .L004431CC
/* 0431A4 004431A4 00437021 */   addu       $t6, $v0, $v1
/* 0431A8 004431A8 8DCF0000 */  lw          $t7, 0x0($t6)
/* 0431AC 004431AC 24080FFF */  addiu       $t0, $zero, 0xFFF
/* 0431B0 004431B0 000FC502 */  srl         $t8, $t7, 20
/* 0431B4 004431B4 55180004 */  bnel        $t0, $t8, .L004431C8
/* 0431B8 004431B8 26310003 */   addiu      $s1, $s1, 0x3
/* 0431BC 004431BC 26310001 */  addiu       $s1, $s1, 0x1
/* 0431C0 004431C0 24630004 */  addiu       $v1, $v1, 0x4
/* 0431C4 004431C4 26310003 */  addiu       $s1, $s1, 0x3
.L004431C8:
/* 0431C8 004431C8 2463000C */  addiu       $v1, $v1, 0xC
.L004431CC:
/* 0431CC 004431CC 94D90002 */  lhu         $t9, 0x2($a2)
/* 0431D0 004431D0 24040003 */  addiu       $a0, $zero, 0x3
/* 0431D4 004431D4 24080FFF */  addiu       $t0, $zero, 0xFFF
/* 0431D8 004431D8 00194B02 */  srl         $t1, $t9, 12
/* 0431DC 004431DC 14890009 */  bne         $a0, $t1, .L00443204
/* 0431E0 004431E0 00435021 */   addu       $t2, $v0, $v1
/* 0431E4 004431E4 8D4B0000 */  lw          $t3, 0x0($t2)
/* 0431E8 004431E8 000B6502 */  srl         $t4, $t3, 20
/* 0431EC 004431EC 550C0004 */  bnel        $t0, $t4, .L00443200
/* 0431F0 004431F0 26310004 */   addiu      $s1, $s1, 0x4
/* 0431F4 004431F4 26310001 */  addiu       $s1, $s1, 0x1
/* 0431F8 004431F8 24630004 */  addiu       $v1, $v1, 0x4
/* 0431FC 004431FC 26310004 */  addiu       $s1, $s1, 0x4
.L00443200:
/* 043200 00443200 24630010 */  addiu       $v1, $v1, 0x10
.L00443204:
/* 043204 00443204 90CD0002 */  lbu         $t5, 0x2($a2)
/* 043208 00443208 00437821 */  addu        $t7, $v0, $v1
/* 04320C 0044320C 31AE000F */  andi        $t6, $t5, 0xF
/* 043210 00443210 548E000A */  bnel        $a0, $t6, .L0044323C
/* 043214 00443214 90C90003 */   lbu        $t1, 0x3($a2)
/* 043218 00443218 8DF80000 */  lw          $t8, 0x0($t7)
/* 04321C 0044321C 0018CD02 */  srl         $t9, $t8, 20
/* 043220 00443220 55190004 */  bnel        $t0, $t9, .L00443234
/* 043224 00443224 26310004 */   addiu      $s1, $s1, 0x4
/* 043228 00443228 26310001 */  addiu       $s1, $s1, 0x1
/* 04322C 0044322C 24630004 */  addiu       $v1, $v1, 0x4
/* 043230 00443230 26310004 */  addiu       $s1, $s1, 0x4
.L00443234:
/* 043234 00443234 24630010 */  addiu       $v1, $v1, 0x10
/* 043238 00443238 90C90003 */  lbu         $t1, 0x3($a2)
.L0044323C:
/* 04323C 0044323C 00435821 */  addu        $t3, $v0, $v1
/* 043240 00443240 00095102 */  srl         $t2, $t1, 4
/* 043244 00443244 548A000A */  bnel        $a0, $t2, .L00443270
/* 043248 00443248 8CC50000 */   lw         $a1, 0x0($a2)
/* 04324C 0044324C 8D6C0000 */  lw          $t4, 0x0($t3)
/* 043250 00443250 000C6D02 */  srl         $t5, $t4, 20
/* 043254 00443254 550D0004 */  bnel        $t0, $t5, .L00443268
/* 043258 00443258 26310004 */   addiu      $s1, $s1, 0x4
/* 04325C 0044325C 26310001 */  addiu       $s1, $s1, 0x1
/* 043260 00443260 24630004 */  addiu       $v1, $v1, 0x4
/* 043264 00443264 26310004 */  addiu       $s1, $s1, 0x4
.L00443268:
/* 043268 00443268 24630010 */  addiu       $v1, $v1, 0x10
/* 04326C 0044326C 8CC50000 */  lw          $a1, 0x0($a2)
.L00443270:
/* 043270 00443270 00437821 */  addu        $t7, $v0, $v1
/* 043274 00443274 30AE000F */  andi        $t6, $a1, 0xF
/* 043278 00443278 548E000A */  bnel        $a0, $t6, .L004432A4
/* 04327C 0044327C 90C90001 */   lbu        $t1, 0x1($a2)
/* 043280 00443280 8DF80000 */  lw          $t8, 0x0($t7)
/* 043284 00443284 0018CD02 */  srl         $t9, $t8, 20
/* 043288 00443288 55190004 */  bnel        $t0, $t9, .L0044329C
/* 04328C 0044328C 26310004 */   addiu      $s1, $s1, 0x4
/* 043290 00443290 26310001 */  addiu       $s1, $s1, 0x1
/* 043294 00443294 24630004 */  addiu       $v1, $v1, 0x4
/* 043298 00443298 26310004 */  addiu       $s1, $s1, 0x4
.L0044329C:
/* 04329C 0044329C 24630010 */  addiu       $v1, $v1, 0x10
/* 0432A0 004432A0 90C90001 */  lbu         $t1, 0x1($a2)
.L004432A4:
/* 0432A4 004432A4 00435821 */  addu        $t3, $v0, $v1
/* 0432A8 004432A8 00095102 */  srl         $t2, $t1, 4
/* 0432AC 004432AC 548A000A */  bnel        $a0, $t2, .L004432D8
/* 0432B0 004432B0 94CE0000 */   lhu        $t6, 0x0($a2)
/* 0432B4 004432B4 8D6C0000 */  lw          $t4, 0x0($t3)
/* 0432B8 004432B8 000C6D02 */  srl         $t5, $t4, 20
/* 0432BC 004432BC 550D0004 */  bnel        $t0, $t5, .L004432D0
/* 0432C0 004432C0 26310004 */   addiu      $s1, $s1, 0x4
/* 0432C4 004432C4 26310001 */  addiu       $s1, $s1, 0x1
/* 0432C8 004432C8 24630004 */  addiu       $v1, $v1, 0x4
/* 0432CC 004432CC 26310004 */  addiu       $s1, $s1, 0x4
.L004432D0:
/* 0432D0 004432D0 24630010 */  addiu       $v1, $v1, 0x10
/* 0432D4 004432D4 94CE0000 */  lhu         $t6, 0x0($a2)
.L004432D8:
/* 0432D8 004432D8 0043C021 */  addu        $t8, $v0, $v1
/* 0432DC 004432DC 000557C2 */  srl         $t2, $a1, 31
/* 0432E0 004432E0 31CF000F */  andi        $t7, $t6, 0xF
/* 0432E4 004432E4 148F0007 */  bne         $a0, $t7, .L00443304
/* 0432E8 004432E8 00000000 */   nop
/* 0432EC 004432EC 8F190000 */  lw          $t9, 0x0($t8)
/* 0432F0 004432F0 00194D02 */  srl         $t1, $t9, 20
/* 0432F4 004432F4 55090003 */  bnel        $t0, $t1, .L00443304
/* 0432F8 004432F8 26310004 */   addiu      $s1, $s1, 0x4
/* 0432FC 004432FC 26310001 */  addiu       $s1, $s1, 0x1
/* 043300 00443300 26310004 */  addiu       $s1, $s1, 0x4
.L00443304:
/* 043304 00443304 11400002 */  beqz        $t2, .L00443310
/* 043308 00443308 00000000 */   nop
/* 04330C 0044330C 26310001 */  addiu       $s1, $s1, 0x1
.L00443310:
/* 043310 00443310 1A200025 */  blez        $s1, .L004433A8
/* 043314 00443314 00008025 */   move       $s0, $zero
/* 043318 00443318 8FA7003C */  lw          $a3, 0x3C($sp)
.L0044331C:
/* 04331C 0044331C 02402025 */  move        $a0, $s2
/* 043320 00443320 16000011 */  bnez        $s0, .L00443368
/* 043324 00443324 8CE20008 */   lw         $v0, 0x8($a3)
/* 043328 00443328 8F9985F4 */  lw          $t9, %call16(st_paux_ifd_iaux)($gp)
/* 04332C 0044332C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 043330 00443330 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 043334 00443334 00415824 */  and         $t3, $v0, $at
/* 043338 00443338 01702821 */  addu        $a1, $t3, $s0
/* 04333C 0044333C 0320F809 */  jalr        $t9
/* 043340 00443340 02402025 */   move       $a0, $s2
/* 043344 00443344 8FBC0020 */  lw          $gp, 0x20($sp)
/* 043348 00443348 8C440000 */  lw          $a0, 0x0($v0)
/* 04334C 0044334C 8F9985E8 */  lw          $t9, %call16(st_auxadd)($gp)
/* 043350 00443350 AFA40000 */  sw          $a0, 0x0($sp)
/* 043354 00443354 0320F809 */  jalr        $t9
/* 043358 00443358 00000000 */   nop
/* 04335C 0044335C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 043360 00443360 1000000E */  b           .L0044339C
/* 043364 00443364 AFA2002C */   sw         $v0, 0x2C($sp)
.L00443368:
/* 043368 00443368 8F9985F4 */  lw          $t9, %call16(st_paux_ifd_iaux)($gp)
/* 04336C 0044336C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 043370 00443370 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 043374 00443374 00417024 */  and         $t6, $v0, $at
/* 043378 00443378 0320F809 */  jalr        $t9
/* 04337C 0044337C 01D02821 */   addu       $a1, $t6, $s0
/* 043380 00443380 8FBC0020 */  lw          $gp, 0x20($sp)
/* 043384 00443384 8C440000 */  lw          $a0, 0x0($v0)
/* 043388 00443388 8F9985E8 */  lw          $t9, %call16(st_auxadd)($gp)
/* 04338C 0044338C AFA40000 */  sw          $a0, 0x0($sp)
/* 043390 00443390 0320F809 */  jalr        $t9
/* 043394 00443394 00000000 */   nop
/* 043398 00443398 8FBC0020 */  lw          $gp, 0x20($sp)
.L0044339C:
/* 04339C 0044339C 26100001 */  addiu       $s0, $s0, 0x1
/* 0433A0 004433A0 5611FFDE */  bnel        $s0, $s1, .L0044331C
/* 0433A4 004433A4 8FA7003C */   lw         $a3, 0x3C($sp)
.L004433A8:
/* 0433A8 004433A8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0433AC 004433AC 8FA2002C */  lw          $v0, 0x2C($sp)
/* 0433B0 004433B0 8FB00014 */  lw          $s0, 0x14($sp)
/* 0433B4 004433B4 8FB10018 */  lw          $s1, 0x18($sp)
/* 0433B8 004433B8 8FB2001C */  lw          $s2, 0x1C($sp)
/* 0433BC 004433BC 03E00008 */  jr          $ra
/* 0433C0 004433C0 27BD0038 */   addiu      $sp, $sp, 0x38