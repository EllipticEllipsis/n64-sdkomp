glabel swap_opt # 505
/* 032320 00432320 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 032324 00432324 279C0A40 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE0A40
/* 032328 00432328 0399E021 */  addu        $gp, $gp, $t9
/* 03232C 0043232C 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 032330 00432330 8F998238 */  lw          $t9, %call16(gethostsex)($gp)
/* 032334 00432334 AFBF0024 */  sw          $ra, 0x24($sp)
/* 032338 00432338 AFB1001C */  sw          $s1, 0x1C($sp)
/* 03233C 0043233C AFB00018 */  sw          $s0, 0x18($sp)
/* 032340 00432340 00A08025 */  move        $s0, $a1
/* 032344 00432344 00C08825 */  move        $s1, $a2
/* 032348 00432348 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03234C 0043234C 0320F809 */  jalr        $t9
/* 032350 00432350 AFA40048 */   sw         $a0, 0x48($sp)
/* 032354 00432354 8FBC0020 */  lw          $gp, 0x20($sp)
/* 032358 00432358 1A00008C */  blez        $s0, .L0043258C
/* 03235C 0043235C 8FA40048 */   lw         $a0, 0x48($sp)
/* 032360 00432360 00107080 */  sll         $t6, $s0, 2
/* 032364 00432364 01D07023 */  subu        $t6, $t6, $s0
/* 032368 00432368 000E7080 */  sll         $t6, $t6, 2
/* 03236C 0043236C 01C44021 */  addu        $t0, $t6, $a0
/* 032370 00432370 00801825 */  move        $v1, $a0
/* 032374 00432374 27A70034 */  addiu       $a3, $sp, 0x34
/* 032378 00432378 3C0600FF */  lui         $a2, (0xFF0000 >> 16)
/* 03237C 0043237C 8C780000 */  lw          $t8, 0x0($v1)
.L00432380:
/* 032380 00432380 ACF80000 */  sw          $t8, 0x0($a3)
/* 032384 00432384 8C6F0004 */  lw          $t7, 0x4($v1)
/* 032388 00432388 ACEF0004 */  sw          $t7, 0x4($a3)
/* 03238C 0043238C 8C780008 */  lw          $t8, 0x8($v1)
/* 032390 00432390 ACF80008 */  sw          $t8, 0x8($a3)
/* 032394 00432394 8FB9003C */  lw          $t9, 0x3C($sp)
/* 032398 00432398 00195200 */  sll         $t2, $t9, 8
/* 03239C 0043239C 01465824 */  and         $t3, $t2, $a2
/* 0323A0 004323A0 00194E00 */  sll         $t1, $t9, 24
/* 0323A4 004323A4 00196A02 */  srl         $t5, $t9, 8
/* 0323A8 004323A8 31AEFF00 */  andi        $t6, $t5, 0xFF00
/* 0323AC 004323AC 012B6025 */  or          $t4, $t1, $t3
/* 0323B0 004323B0 018E7825 */  or          $t7, $t4, $t6
/* 0323B4 004323B4 0019C602 */  srl         $t8, $t9, 24
/* 0323B8 004323B8 01F85025 */  or          $t2, $t7, $t8
/* 0323BC 004323BC 16220038 */  bne         $s1, $v0, .L004324A0
/* 0323C0 004323C0 AFAA003C */   sw         $t2, 0x3C($sp)
/* 0323C4 004323C4 8CEB0000 */  lw          $t3, 0x0($a3)
/* 0323C8 004323C8 3C0100FF */  lui         $at, (0xFFFFFF >> 16)
/* 0323CC 004323CC 3421FFFF */  ori         $at, $at, (0xFFFFFF & 0xFFFF)
/* 0323D0 004323D0 AC6B0000 */  sw          $t3, 0x0($v1)
/* 0323D4 004323D4 8CE90004 */  lw          $t1, 0x4($a3)
/* 0323D8 004323D8 AC690004 */  sw          $t1, 0x4($v1)
/* 0323DC 004323DC 8CEB0008 */  lw          $t3, 0x8($a3)
/* 0323E0 004323E0 AC6B0008 */  sw          $t3, 0x8($v1)
/* 0323E4 004323E4 8FAD0034 */  lw          $t5, 0x34($sp)
/* 0323E8 004323E8 000D7200 */  sll         $t6, $t5, 8
/* 0323EC 004323EC 01C6C824 */  and         $t9, $t6, $a2
/* 0323F0 004323F0 000D6600 */  sll         $t4, $t5, 24
/* 0323F4 004323F4 01997825 */  or          $t7, $t4, $t9
/* 0323F8 004323F8 8FAC0038 */  lw          $t4, 0x38($sp)
/* 0323FC 004323FC 000DC202 */  srl         $t8, $t5, 8
/* 032400 00432400 330AFF00 */  andi        $t2, $t8, 0xFF00
/* 032404 00432404 01EA4825 */  or          $t1, $t7, $t2
/* 032408 00432408 000D5E02 */  srl         $t3, $t5, 24
/* 03240C 0043240C 012B7025 */  or          $t6, $t1, $t3
/* 032410 00432410 000CC200 */  sll         $t8, $t4, 8
/* 032414 00432414 03067824 */  and         $t7, $t8, $a2
/* 032418 00432418 000CCE00 */  sll         $t9, $t4, 24
/* 03241C 0043241C AFAE0034 */  sw          $t6, 0x34($sp)
/* 032420 00432420 032F5025 */  or          $t2, $t9, $t7
/* 032424 00432424 000C6A02 */  srl         $t5, $t4, 8
/* 032428 00432428 31A9FF00 */  andi        $t1, $t5, 0xFF00
/* 03242C 0043242C 93B90034 */  lbu         $t9, 0x34($sp)
/* 032430 00432430 01495825 */  or          $t3, $t2, $t1
/* 032434 00432434 000C7602 */  srl         $t6, $t4, 24
/* 032438 00432438 016EC025 */  or          $t8, $t3, $t6
/* 03243C 0043243C AFB80038 */  sw          $t8, 0x38($sp)
/* 032440 00432440 A0790000 */  sb          $t9, 0x0($v1)
/* 032444 00432444 8FAF0034 */  lw          $t7, 0x34($sp)
/* 032448 00432448 8C640000 */  lw          $a0, 0x0($v1)
/* 03244C 0043244C 8C650004 */  lw          $a1, 0x4($v1)
/* 032450 00432450 01E16824 */  and         $t5, $t7, $at
/* 032454 00432454 01A45026 */  xor         $t2, $t5, $a0
/* 032458 00432458 000A4A00 */  sll         $t1, $t2, 8
/* 03245C 0043245C 00096202 */  srl         $t4, $t1, 8
/* 032460 00432460 01845826 */  xor         $t3, $t4, $a0
/* 032464 00432464 AC6B0000 */  sw          $t3, 0x0($v1)
/* 032468 00432468 8FAE0038 */  lw          $t6, 0x38($sp)
/* 03246C 0043246C 000EC302 */  srl         $t8, $t6, 12
/* 032470 00432470 0305C826 */  xor         $t9, $t8, $a1
/* 032474 00432474 00197B00 */  sll         $t7, $t9, 12
/* 032478 00432478 000F6B02 */  srl         $t5, $t7, 12
/* 03247C 0043247C 01A55026 */  xor         $t2, $t5, $a1
/* 032480 00432480 AC6A0004 */  sw          $t2, 0x4($v1)
/* 032484 00432484 94780004 */  lhu         $t8, 0x4($v1)
/* 032488 00432488 8FAC0038 */  lw          $t4, 0x38($sp)
/* 03248C 0043248C 3319000F */  andi        $t9, $t8, 0xF
/* 032490 00432490 000C7100 */  sll         $t6, $t4, 4
/* 032494 00432494 01D97825 */  or          $t7, $t6, $t9
/* 032498 00432498 10000039 */  b           .L00432580
/* 03249C 0043249C A46F0004 */   sh         $t7, 0x4($v1)
.L004324A0:
/* 0324A0 004324A0 906D0000 */  lbu         $t5, 0x0($v1)
/* 0324A4 004324A4 3C0100FF */  lui         $at, (0xFFFFFF >> 16)
/* 0324A8 004324A8 3421FFFF */  ori         $at, $at, (0xFFFFFF & 0xFFFF)
/* 0324AC 004324AC A3AD0034 */  sb          $t5, 0x34($sp)
/* 0324B0 004324B0 8C6A0000 */  lw          $t2, 0x0($v1)
/* 0324B4 004324B4 8FAC0034 */  lw          $t4, 0x34($sp)
/* 0324B8 004324B8 01414824 */  and         $t1, $t2, $at
/* 0324BC 004324BC 012C5826 */  xor         $t3, $t1, $t4
/* 0324C0 004324C0 000BC200 */  sll         $t8, $t3, 8
/* 0324C4 004324C4 00187202 */  srl         $t6, $t8, 8
/* 0324C8 004324C8 01CCC826 */  xor         $t9, $t6, $t4
/* 0324CC 004324CC AFB90034 */  sw          $t9, 0x34($sp)
/* 0324D0 004324D0 8C6F0004 */  lw          $t7, 0x4($v1)
/* 0324D4 004324D4 8FAA0038 */  lw          $t2, 0x38($sp)
/* 0324D8 004324D8 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 0324DC 004324DC 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 0324E0 004324E0 01E16824 */  and         $t5, $t7, $at
/* 0324E4 004324E4 000A4B02 */  srl         $t1, $t2, 12
/* 0324E8 004324E8 01A95826 */  xor         $t3, $t5, $t1
/* 0324EC 004324EC 000BC300 */  sll         $t8, $t3, 12
/* 0324F0 004324F0 030A7026 */  xor         $t6, $t8, $t2
/* 0324F4 004324F4 AFAE0038 */  sw          $t6, 0x38($sp)
/* 0324F8 004324F8 8C6C0004 */  lw          $t4, 0x4($v1)
/* 0324FC 004324FC 97A9003A */  lhu         $t1, 0x3A($sp)
/* 032500 00432500 00197200 */  sll         $t6, $t9, 8
/* 032504 00432504 000C7D02 */  srl         $t7, $t4, 20
/* 032508 00432508 31ED0FFF */  andi        $t5, $t7, 0xFFF
/* 03250C 0043250C 312BF000 */  andi        $t3, $t1, 0xF000
/* 032510 00432510 01ABC025 */  or          $t8, $t5, $t3
/* 032514 00432514 01C66024 */  and         $t4, $t6, $a2
/* 032518 00432518 00195600 */  sll         $t2, $t9, 24
/* 03251C 0043251C A7B8003A */  sh          $t8, 0x3A($sp)
/* 032520 00432520 014C7825 */  or          $t7, $t2, $t4
/* 032524 00432524 8FAA0038 */  lw          $t2, 0x38($sp)
/* 032528 00432528 00194A02 */  srl         $t1, $t9, 8
/* 03252C 0043252C 312DFF00 */  andi        $t5, $t1, 0xFF00
/* 032530 00432530 01ED5825 */  or          $t3, $t7, $t5
/* 032534 00432534 0019C602 */  srl         $t8, $t9, 24
/* 032538 00432538 01787025 */  or          $t6, $t3, $t8
/* 03253C 0043253C 000A4A00 */  sll         $t1, $t2, 8
/* 032540 00432540 01267824 */  and         $t7, $t1, $a2
/* 032544 00432544 000ACA02 */  srl         $t9, $t2, 8
/* 032548 00432548 000A6600 */  sll         $t4, $t2, 24
/* 03254C 0043254C AFAE0034 */  sw          $t6, 0x34($sp)
/* 032550 00432550 018F6825 */  or          $t5, $t4, $t7
/* 032554 00432554 332BFF00 */  andi        $t3, $t9, 0xFF00
/* 032558 00432558 01ABC025 */  or          $t8, $t5, $t3
/* 03255C 0043255C 000A7602 */  srl         $t6, $t2, 24
/* 032560 00432560 030E4825 */  or          $t1, $t8, $t6
/* 032564 00432564 AFA90038 */  sw          $t1, 0x38($sp)
/* 032568 00432568 8CEF0000 */  lw          $t7, 0x0($a3)
/* 03256C 0043256C AC6F0000 */  sw          $t7, 0x0($v1)
/* 032570 00432570 8CEC0004 */  lw          $t4, 0x4($a3)
/* 032574 00432574 AC6C0004 */  sw          $t4, 0x4($v1)
/* 032578 00432578 8CEF0008 */  lw          $t7, 0x8($a3)
/* 03257C 0043257C AC6F0008 */  sw          $t7, 0x8($v1)
.L00432580:
/* 032580 00432580 2463000C */  addiu       $v1, $v1, 0xC
/* 032584 00432584 5468FF7E */  bnel        $v1, $t0, .L00432380
/* 032588 00432588 8C780000 */   lw         $t8, 0x0($v1)
.L0043258C:
/* 03258C 0043258C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 032590 00432590 8FB00018 */  lw          $s0, 0x18($sp)
/* 032594 00432594 8FB1001C */  lw          $s1, 0x1C($sp)
/* 032598 00432598 03E00008 */  jr          $ra
/* 03259C 0043259C 27BD0048 */   addiu      $sp, $sp, 0x48
