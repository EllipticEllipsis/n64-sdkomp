glabel func_00415318 # 60
/* 015318 00415318 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 01531C 0041531C 279CDA48 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBFDA48
/* 015320 00415320 0399E021 */  addu        $gp, $gp, $t9
/* 015324 00415324 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 015328 00415328 AFA60080 */  sw          $a2, 0x80($sp)
/* 01532C 0041532C 8FAE0080 */  lw          $t6, 0x80($sp)
/* 015330 00415330 AFA5007C */  sw          $a1, 0x7C($sp)
/* 015334 00415334 8FB8007C */  lw          $t8, 0x7C($sp)
/* 015338 00415338 000E7980 */  sll         $t7, $t6, 6
/* 01533C 0041533C AFBF003C */  sw          $ra, 0x3C($sp)
/* 015340 00415340 01F8C821 */  addu        $t9, $t7, $t8
/* 015344 00415344 AFBC0038 */  sw          $gp, 0x38($sp)
/* 015348 00415348 AFA40078 */  sw          $a0, 0x78($sp)
/* 01534C 0041534C AFB70034 */  sw          $s7, 0x34($sp)
/* 015350 00415350 AFB60030 */  sw          $s6, 0x30($sp)
/* 015354 00415354 AFB5002C */  sw          $s5, 0x2C($sp)
/* 015358 00415358 AFB40028 */  sw          $s4, 0x28($sp)
/* 01535C 0041535C AFB30024 */  sw          $s3, 0x24($sp)
/* 015360 00415360 AFB20020 */  sw          $s2, 0x20($sp)
/* 015364 00415364 AFB1001C */  sw          $s1, 0x1C($sp)
/* 015368 00415368 AFB00018 */  sw          $s0, 0x18($sp)
/* 01536C 0041536C AFB90074 */  sw          $t9, 0x74($sp)
.L00415370:
/* 015370 00415370 8FA80078 */  lw          $t0, 0x78($sp)
/* 015374 00415374 8FA9007C */  lw          $t1, 0x7C($sp)
/* 015378 00415378 11090007 */  beq         $t0, $t1, .L00415398
/* 01537C 0041537C 00000000 */   nop
/* 015380 00415380 8F99810C */  lw          $t9, %call16(memcpy)($gp)
/* 015384 00415384 01002025 */  move        $a0, $t0
/* 015388 00415388 01202825 */  move        $a1, $t1
/* 01538C 0041538C 0320F809 */  jalr        $t9
/* 015390 00415390 24060010 */   addiu      $a2, $zero, 0x10
/* 015394 00415394 8FBC0038 */  lw          $gp, 0x38($sp)
.L00415398:
/* 015398 00415398 8FAA007C */  lw          $t2, 0x7C($sp)
/* 01539C 0041539C 8FAB0078 */  lw          $t3, 0x78($sp)
/* 0153A0 004153A0 24060000 */  addiu       $a2, $zero, 0x0
/* 0153A4 004153A4 95500010 */  lhu         $s0, 0x10($t2)
/* 0153A8 004153A8 24070008 */  addiu       $a3, $zero, 0x8
/* 0153AC 004153AC A1700010 */  sb          $s0, 0x10($t3)
/* 0153B0 004153B0 8FAD0078 */  lw          $t5, 0x78($sp)
/* 0153B4 004153B4 00106203 */  sra         $t4, $s0, 8
/* 0153B8 004153B8 A1AC0011 */  sb          $t4, 0x11($t5)
/* 0153BC 004153BC 8FAE007C */  lw          $t6, 0x7C($sp)
/* 0153C0 004153C0 8FAF0078 */  lw          $t7, 0x78($sp)
/* 0153C4 004153C4 95D10012 */  lhu         $s1, 0x12($t6)
/* 0153C8 004153C8 A1F10012 */  sb          $s1, 0x12($t7)
/* 0153CC 004153CC 8FB90078 */  lw          $t9, 0x78($sp)
/* 0153D0 004153D0 0011C203 */  sra         $t8, $s1, 8
/* 0153D4 004153D4 A3380013 */  sb          $t8, 0x13($t9)
/* 0153D8 004153D8 8FA8007C */  lw          $t0, 0x7C($sp)
/* 0153DC 004153DC 8FA90078 */  lw          $t1, 0x78($sp)
/* 0153E0 004153E0 8D120014 */  lw          $s2, 0x14($t0)
/* 0153E4 004153E4 A1320014 */  sb          $s2, 0x14($t1)
/* 0153E8 004153E8 8FAB0078 */  lw          $t3, 0x78($sp)
/* 0153EC 004153EC 00125202 */  srl         $t2, $s2, 8
/* 0153F0 004153F0 00126402 */  srl         $t4, $s2, 16
/* 0153F4 004153F4 A16A0015 */  sb          $t2, 0x15($t3)
/* 0153F8 004153F8 8FAD0078 */  lw          $t5, 0x78($sp)
/* 0153FC 004153FC 00127602 */  srl         $t6, $s2, 24
/* 015400 00415400 A1AC0016 */  sb          $t4, 0x16($t5)
/* 015404 00415404 8FAF0078 */  lw          $t7, 0x78($sp)
/* 015408 00415408 A1EE0017 */  sb          $t6, 0x17($t7)
/* 01540C 0041540C 8FB8007C */  lw          $t8, 0x7C($sp)
/* 015410 00415410 8FAA0078 */  lw          $t2, 0x78($sp)
/* 015414 00415414 8F09001C */  lw          $t1, 0x1C($t8)
/* 015418 00415418 8F080018 */  lw          $t0, 0x18($t8)
/* 01541C 0041541C AFA90064 */  sw          $t1, 0x64($sp)
/* 015420 00415420 0120C825 */  move        $t9, $t1
/* 015424 00415424 AFA80060 */  sw          $t0, 0x60($sp)
/* 015428 00415428 A1590018 */  sb          $t9, 0x18($t2)
/* 01542C 0041542C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015430 00415430 8FA50064 */  lw          $a1, 0x64($sp)
/* 015434 00415434 8FA40060 */  lw          $a0, 0x60($sp)
/* 015438 00415438 0320F809 */  jalr        $t9
/* 01543C 0041543C 00000000 */   nop
/* 015440 00415440 8FAC0078 */  lw          $t4, 0x78($sp)
/* 015444 00415444 8FBC0038 */  lw          $gp, 0x38($sp)
/* 015448 00415448 00605825 */  move        $t3, $v1
/* 01544C 0041544C A18B0019 */  sb          $t3, 0x19($t4)
/* 015450 00415450 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015454 00415454 8FA50064 */  lw          $a1, 0x64($sp)
/* 015458 00415458 8FA40060 */  lw          $a0, 0x60($sp)
/* 01545C 0041545C 24060000 */  addiu       $a2, $zero, 0x0
/* 015460 00415460 0320F809 */  jalr        $t9
/* 015464 00415464 24070010 */   addiu      $a3, $zero, 0x10
/* 015468 00415468 8FAE0078 */  lw          $t6, 0x78($sp)
/* 01546C 0041546C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 015470 00415470 00606825 */  move        $t5, $v1
/* 015474 00415474 A1CD001A */  sb          $t5, 0x1A($t6)
/* 015478 00415478 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 01547C 0041547C 8FA50064 */  lw          $a1, 0x64($sp)
/* 015480 00415480 8FA40060 */  lw          $a0, 0x60($sp)
/* 015484 00415484 24060000 */  addiu       $a2, $zero, 0x0
/* 015488 00415488 0320F809 */  jalr        $t9
/* 01548C 0041548C 24070018 */   addiu      $a3, $zero, 0x18
/* 015490 00415490 8FB80078 */  lw          $t8, 0x78($sp)
/* 015494 00415494 8FBC0038 */  lw          $gp, 0x38($sp)
/* 015498 00415498 00607825 */  move        $t7, $v1
/* 01549C 0041549C A30F001B */  sb          $t7, 0x1B($t8)
/* 0154A0 004154A0 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0154A4 004154A4 8FA50064 */  lw          $a1, 0x64($sp)
/* 0154A8 004154A8 8FA40060 */  lw          $a0, 0x60($sp)
/* 0154AC 004154AC 24060000 */  addiu       $a2, $zero, 0x0
/* 0154B0 004154B0 0320F809 */  jalr        $t9
/* 0154B4 004154B4 24070020 */   addiu      $a3, $zero, 0x20
/* 0154B8 004154B8 8FA90078 */  lw          $t1, 0x78($sp)
/* 0154BC 004154BC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0154C0 004154C0 00604025 */  move        $t0, $v1
/* 0154C4 004154C4 A128001C */  sb          $t0, 0x1C($t1)
/* 0154C8 004154C8 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0154CC 004154CC 8FA50064 */  lw          $a1, 0x64($sp)
/* 0154D0 004154D0 8FA40060 */  lw          $a0, 0x60($sp)
/* 0154D4 004154D4 24060000 */  addiu       $a2, $zero, 0x0
/* 0154D8 004154D8 0320F809 */  jalr        $t9
/* 0154DC 004154DC 24070028 */   addiu      $a3, $zero, 0x28
/* 0154E0 004154E0 8FAA0078 */  lw          $t2, 0x78($sp)
/* 0154E4 004154E4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0154E8 004154E8 0060C825 */  move        $t9, $v1
/* 0154EC 004154EC A159001D */  sb          $t9, 0x1D($t2)
/* 0154F0 004154F0 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0154F4 004154F4 8FA50064 */  lw          $a1, 0x64($sp)
/* 0154F8 004154F8 8FA40060 */  lw          $a0, 0x60($sp)
/* 0154FC 004154FC 24060000 */  addiu       $a2, $zero, 0x0
/* 015500 00415500 0320F809 */  jalr        $t9
/* 015504 00415504 24070030 */   addiu      $a3, $zero, 0x30
/* 015508 00415508 8FAC0078 */  lw          $t4, 0x78($sp)
/* 01550C 0041550C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 015510 00415510 00605825 */  move        $t3, $v1
/* 015514 00415514 A18B001E */  sb          $t3, 0x1E($t4)
/* 015518 00415518 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 01551C 0041551C 8FA50064 */  lw          $a1, 0x64($sp)
/* 015520 00415520 8FA40060 */  lw          $a0, 0x60($sp)
/* 015524 00415524 24060000 */  addiu       $a2, $zero, 0x0
/* 015528 00415528 0320F809 */  jalr        $t9
/* 01552C 0041552C 24070038 */   addiu      $a3, $zero, 0x38
/* 015530 00415530 8FAE0078 */  lw          $t6, 0x78($sp)
/* 015534 00415534 8FBC0038 */  lw          $gp, 0x38($sp)
/* 015538 00415538 00606825 */  move        $t5, $v1
/* 01553C 0041553C A1CD001F */  sb          $t5, 0x1F($t6)
/* 015540 00415540 8FAF007C */  lw          $t7, 0x7C($sp)
/* 015544 00415544 8FA90078 */  lw          $t1, 0x78($sp)
/* 015548 00415548 24060000 */  addiu       $a2, $zero, 0x0
/* 01554C 0041554C 8DF90024 */  lw          $t9, 0x24($t7)
/* 015550 00415550 8DF80020 */  lw          $t8, 0x20($t7)
/* 015554 00415554 24070008 */  addiu       $a3, $zero, 0x8
/* 015558 00415558 AFB9005C */  sw          $t9, 0x5C($sp)
/* 01555C 0041555C 03204025 */  move        $t0, $t9
/* 015560 00415560 AFB80058 */  sw          $t8, 0x58($sp)
/* 015564 00415564 A1280020 */  sb          $t0, 0x20($t1)
/* 015568 00415568 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 01556C 0041556C 8FA5005C */  lw          $a1, 0x5C($sp)
/* 015570 00415570 8FA40058 */  lw          $a0, 0x58($sp)
/* 015574 00415574 0320F809 */  jalr        $t9
/* 015578 00415578 00000000 */   nop
/* 01557C 0041557C 8FAB0078 */  lw          $t3, 0x78($sp)
/* 015580 00415580 8FBC0038 */  lw          $gp, 0x38($sp)
/* 015584 00415584 00605025 */  move        $t2, $v1
/* 015588 00415588 A16A0021 */  sb          $t2, 0x21($t3)
/* 01558C 0041558C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015590 00415590 8FA5005C */  lw          $a1, 0x5C($sp)
/* 015594 00415594 8FA40058 */  lw          $a0, 0x58($sp)
/* 015598 00415598 24060000 */  addiu       $a2, $zero, 0x0
/* 01559C 0041559C 0320F809 */  jalr        $t9
/* 0155A0 004155A0 24070010 */   addiu      $a3, $zero, 0x10
/* 0155A4 004155A4 8FAD0078 */  lw          $t5, 0x78($sp)
/* 0155A8 004155A8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0155AC 004155AC 00606025 */  move        $t4, $v1
/* 0155B0 004155B0 A1AC0022 */  sb          $t4, 0x22($t5)
/* 0155B4 004155B4 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0155B8 004155B8 8FA5005C */  lw          $a1, 0x5C($sp)
/* 0155BC 004155BC 8FA40058 */  lw          $a0, 0x58($sp)
/* 0155C0 004155C0 24060000 */  addiu       $a2, $zero, 0x0
/* 0155C4 004155C4 0320F809 */  jalr        $t9
/* 0155C8 004155C8 24070018 */   addiu      $a3, $zero, 0x18
/* 0155CC 004155CC 8FAF0078 */  lw          $t7, 0x78($sp)
/* 0155D0 004155D0 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0155D4 004155D4 00607025 */  move        $t6, $v1
/* 0155D8 004155D8 A1EE0023 */  sb          $t6, 0x23($t7)
/* 0155DC 004155DC 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0155E0 004155E0 8FA5005C */  lw          $a1, 0x5C($sp)
/* 0155E4 004155E4 8FA40058 */  lw          $a0, 0x58($sp)
/* 0155E8 004155E8 24060000 */  addiu       $a2, $zero, 0x0
/* 0155EC 004155EC 0320F809 */  jalr        $t9
/* 0155F0 004155F0 24070020 */   addiu      $a3, $zero, 0x20
/* 0155F4 004155F4 8FB90078 */  lw          $t9, 0x78($sp)
/* 0155F8 004155F8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0155FC 004155FC 0060C025 */  move        $t8, $v1
/* 015600 00415600 A3380024 */  sb          $t8, 0x24($t9)
/* 015604 00415604 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015608 00415608 8FA5005C */  lw          $a1, 0x5C($sp)
/* 01560C 0041560C 8FA40058 */  lw          $a0, 0x58($sp)
/* 015610 00415610 24060000 */  addiu       $a2, $zero, 0x0
/* 015614 00415614 0320F809 */  jalr        $t9
/* 015618 00415618 24070028 */   addiu      $a3, $zero, 0x28
/* 01561C 0041561C 8FA90078 */  lw          $t1, 0x78($sp)
/* 015620 00415620 8FBC0038 */  lw          $gp, 0x38($sp)
/* 015624 00415624 00604025 */  move        $t0, $v1
/* 015628 00415628 A1280025 */  sb          $t0, 0x25($t1)
/* 01562C 0041562C 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015630 00415630 8FA5005C */  lw          $a1, 0x5C($sp)
/* 015634 00415634 8FA40058 */  lw          $a0, 0x58($sp)
/* 015638 00415638 24060000 */  addiu       $a2, $zero, 0x0
/* 01563C 0041563C 0320F809 */  jalr        $t9
/* 015640 00415640 24070030 */   addiu      $a3, $zero, 0x30
/* 015644 00415644 8FAB0078 */  lw          $t3, 0x78($sp)
/* 015648 00415648 8FBC0038 */  lw          $gp, 0x38($sp)
/* 01564C 0041564C 00605025 */  move        $t2, $v1
/* 015650 00415650 A16A0026 */  sb          $t2, 0x26($t3)
/* 015654 00415654 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015658 00415658 8FA5005C */  lw          $a1, 0x5C($sp)
/* 01565C 0041565C 8FA40058 */  lw          $a0, 0x58($sp)
/* 015660 00415660 24060000 */  addiu       $a2, $zero, 0x0
/* 015664 00415664 0320F809 */  jalr        $t9
/* 015668 00415668 24070038 */   addiu      $a3, $zero, 0x38
/* 01566C 0041566C 8FAD0078 */  lw          $t5, 0x78($sp)
/* 015670 00415670 8FBC0038 */  lw          $gp, 0x38($sp)
/* 015674 00415674 00606025 */  move        $t4, $v1
/* 015678 00415678 A1AC0027 */  sb          $t4, 0x27($t5)
/* 01567C 0041567C 8FAE007C */  lw          $t6, 0x7C($sp)
/* 015680 00415680 8FA80078 */  lw          $t0, 0x78($sp)
/* 015684 00415684 24060000 */  addiu       $a2, $zero, 0x0
/* 015688 00415688 8DD9002C */  lw          $t9, 0x2C($t6)
/* 01568C 0041568C 8DD80028 */  lw          $t8, 0x28($t6)
/* 015690 00415690 24070008 */  addiu       $a3, $zero, 0x8
/* 015694 00415694 AFB90054 */  sw          $t9, 0x54($sp)
/* 015698 00415698 03207825 */  move        $t7, $t9
/* 01569C 0041569C AFB80050 */  sw          $t8, 0x50($sp)
/* 0156A0 004156A0 A10F0028 */  sb          $t7, 0x28($t0)
/* 0156A4 004156A4 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0156A8 004156A8 8FA50054 */  lw          $a1, 0x54($sp)
/* 0156AC 004156AC 8FA40050 */  lw          $a0, 0x50($sp)
/* 0156B0 004156B0 0320F809 */  jalr        $t9
/* 0156B4 004156B4 00000000 */   nop
/* 0156B8 004156B8 8FAA0078 */  lw          $t2, 0x78($sp)
/* 0156BC 004156BC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0156C0 004156C0 00604825 */  move        $t1, $v1
/* 0156C4 004156C4 A1490029 */  sb          $t1, 0x29($t2)
/* 0156C8 004156C8 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0156CC 004156CC 8FA50054 */  lw          $a1, 0x54($sp)
/* 0156D0 004156D0 8FA40050 */  lw          $a0, 0x50($sp)
/* 0156D4 004156D4 24060000 */  addiu       $a2, $zero, 0x0
/* 0156D8 004156D8 0320F809 */  jalr        $t9
/* 0156DC 004156DC 24070010 */   addiu      $a3, $zero, 0x10
/* 0156E0 004156E0 8FAC0078 */  lw          $t4, 0x78($sp)
/* 0156E4 004156E4 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0156E8 004156E8 00605825 */  move        $t3, $v1
/* 0156EC 004156EC A18B002A */  sb          $t3, 0x2A($t4)
/* 0156F0 004156F0 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 0156F4 004156F4 8FA50054 */  lw          $a1, 0x54($sp)
/* 0156F8 004156F8 8FA40050 */  lw          $a0, 0x50($sp)
/* 0156FC 004156FC 24060000 */  addiu       $a2, $zero, 0x0
/* 015700 00415700 0320F809 */  jalr        $t9
/* 015704 00415704 24070018 */   addiu      $a3, $zero, 0x18
/* 015708 00415708 8FAE0078 */  lw          $t6, 0x78($sp)
/* 01570C 0041570C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 015710 00415710 00606825 */  move        $t5, $v1
/* 015714 00415714 A1CD002B */  sb          $t5, 0x2B($t6)
/* 015718 00415718 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 01571C 0041571C 8FA50054 */  lw          $a1, 0x54($sp)
/* 015720 00415720 8FA40050 */  lw          $a0, 0x50($sp)
/* 015724 00415724 24060000 */  addiu       $a2, $zero, 0x0
/* 015728 00415728 0320F809 */  jalr        $t9
/* 01572C 0041572C 24070020 */   addiu      $a3, $zero, 0x20
/* 015730 00415730 8FB90078 */  lw          $t9, 0x78($sp)
/* 015734 00415734 8FBC0038 */  lw          $gp, 0x38($sp)
/* 015738 00415738 0060C025 */  move        $t8, $v1
/* 01573C 0041573C A338002C */  sb          $t8, 0x2C($t9)
/* 015740 00415740 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015744 00415744 8FA50054 */  lw          $a1, 0x54($sp)
/* 015748 00415748 8FA40050 */  lw          $a0, 0x50($sp)
/* 01574C 0041574C 24060000 */  addiu       $a2, $zero, 0x0
/* 015750 00415750 0320F809 */  jalr        $t9
/* 015754 00415754 24070028 */   addiu      $a3, $zero, 0x28
/* 015758 00415758 8FA80078 */  lw          $t0, 0x78($sp)
/* 01575C 0041575C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 015760 00415760 00607825 */  move        $t7, $v1
/* 015764 00415764 A10F002D */  sb          $t7, 0x2D($t0)
/* 015768 00415768 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 01576C 0041576C 8FA50054 */  lw          $a1, 0x54($sp)
/* 015770 00415770 8FA40050 */  lw          $a0, 0x50($sp)
/* 015774 00415774 24060000 */  addiu       $a2, $zero, 0x0
/* 015778 00415778 0320F809 */  jalr        $t9
/* 01577C 0041577C 24070030 */   addiu      $a3, $zero, 0x30
/* 015780 00415780 8FAA0078 */  lw          $t2, 0x78($sp)
/* 015784 00415784 8FBC0038 */  lw          $gp, 0x38($sp)
/* 015788 00415788 00604825 */  move        $t1, $v1
/* 01578C 0041578C A149002E */  sb          $t1, 0x2E($t2)
/* 015790 00415790 8F99811C */  lw          $t9, %call16(__ull_rshift)($gp)
/* 015794 00415794 8FA50054 */  lw          $a1, 0x54($sp)
/* 015798 00415798 8FA40050 */  lw          $a0, 0x50($sp)
/* 01579C 0041579C 24060000 */  addiu       $a2, $zero, 0x0
/* 0157A0 004157A0 0320F809 */  jalr        $t9
/* 0157A4 004157A4 24070038 */   addiu      $a3, $zero, 0x38
/* 0157A8 004157A8 8FAC0078 */  lw          $t4, 0x78($sp)
/* 0157AC 004157AC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 0157B0 004157B0 00605825 */  move        $t3, $v1
/* 0157B4 004157B4 A18B002F */  sb          $t3, 0x2F($t4)
/* 0157B8 004157B8 8FAD007C */  lw          $t5, 0x7C($sp)
/* 0157BC 004157BC 8FAE0078 */  lw          $t6, 0x78($sp)
/* 0157C0 004157C0 8DB30030 */  lw          $s3, 0x30($t5)
/* 0157C4 004157C4 A1D30030 */  sb          $s3, 0x30($t6)
/* 0157C8 004157C8 8FB90078 */  lw          $t9, 0x78($sp)
/* 0157CC 004157CC 0013C202 */  srl         $t8, $s3, 8
/* 0157D0 004157D0 00137C02 */  srl         $t7, $s3, 16
/* 0157D4 004157D4 A3380031 */  sb          $t8, 0x31($t9)
/* 0157D8 004157D8 8FA80078 */  lw          $t0, 0x78($sp)
/* 0157DC 004157DC 00134E02 */  srl         $t1, $s3, 24
/* 0157E0 004157E0 A10F0032 */  sb          $t7, 0x32($t0)
/* 0157E4 004157E4 8FAA0078 */  lw          $t2, 0x78($sp)
/* 0157E8 004157E8 A1490033 */  sb          $t1, 0x33($t2)
/* 0157EC 004157EC 8FAB007C */  lw          $t3, 0x7C($sp)
/* 0157F0 004157F0 8FAC0078 */  lw          $t4, 0x78($sp)
/* 0157F4 004157F4 95740034 */  lhu         $s4, 0x34($t3)
/* 0157F8 004157F8 A1940034 */  sb          $s4, 0x34($t4)
/* 0157FC 004157FC 8FAE0078 */  lw          $t6, 0x78($sp)
/* 015800 00415800 00146A03 */  sra         $t5, $s4, 8
/* 015804 00415804 A1CD0035 */  sb          $t5, 0x35($t6)
/* 015808 00415808 8FB8007C */  lw          $t8, 0x7C($sp)
/* 01580C 0041580C 8FB90078 */  lw          $t9, 0x78($sp)
/* 015810 00415810 97150036 */  lhu         $s5, 0x36($t8)
/* 015814 00415814 A3350036 */  sb          $s5, 0x36($t9)
/* 015818 00415818 8FA80078 */  lw          $t0, 0x78($sp)
/* 01581C 0041581C 00157A03 */  sra         $t7, $s5, 8
/* 015820 00415820 A10F0037 */  sb          $t7, 0x37($t0)
/* 015824 00415824 8FA9007C */  lw          $t1, 0x7C($sp)
/* 015828 00415828 8FAA0078 */  lw          $t2, 0x78($sp)
/* 01582C 0041582C 95360038 */  lhu         $s6, 0x38($t1)
/* 015830 00415830 A1560038 */  sb          $s6, 0x38($t2)
/* 015834 00415834 8FAC0078 */  lw          $t4, 0x78($sp)
/* 015838 00415838 00165A03 */  sra         $t3, $s6, 8
/* 01583C 0041583C A18B0039 */  sb          $t3, 0x39($t4)
/* 015840 00415840 8FAD007C */  lw          $t5, 0x7C($sp)
/* 015844 00415844 8FAE0078 */  lw          $t6, 0x78($sp)
/* 015848 00415848 95B7003A */  lhu         $s7, 0x3A($t5)
/* 01584C 0041584C A1D7003A */  sb          $s7, 0x3A($t6)
/* 015850 00415850 8FB90078 */  lw          $t9, 0x78($sp)
/* 015854 00415854 0017C203 */  sra         $t8, $s7, 8
/* 015858 00415858 A338003B */  sb          $t8, 0x3B($t9)
/* 01585C 0041585C 8FAF007C */  lw          $t7, 0x7C($sp)
/* 015860 00415860 8FA90078 */  lw          $t1, 0x78($sp)
/* 015864 00415864 95E8003C */  lhu         $t0, 0x3C($t7)
/* 015868 00415868 A7A80042 */  sh          $t0, 0x42($sp)
/* 01586C 0041586C A128003C */  sb          $t0, 0x3C($t1)
/* 015870 00415870 97AA0042 */  lhu         $t2, 0x42($sp)
/* 015874 00415874 8FAC0078 */  lw          $t4, 0x78($sp)
/* 015878 00415878 000A5A03 */  sra         $t3, $t2, 8
/* 01587C 0041587C A18B003D */  sb          $t3, 0x3D($t4)
/* 015880 00415880 8FAD007C */  lw          $t5, 0x7C($sp)
/* 015884 00415884 8FB80078 */  lw          $t8, 0x78($sp)
/* 015888 00415888 95AE003E */  lhu         $t6, 0x3E($t5)
/* 01588C 0041588C A7AE0040 */  sh          $t6, 0x40($sp)
/* 015890 00415890 A30E003E */  sb          $t6, 0x3E($t8)
/* 015894 00415894 97B90040 */  lhu         $t9, 0x40($sp)
/* 015898 00415898 8FA80078 */  lw          $t0, 0x78($sp)
/* 01589C 0041589C 00197A03 */  sra         $t7, $t9, 8
/* 0158A0 004158A0 A10F003F */  sb          $t7, 0x3F($t0)
/* 0158A4 004158A4 8FAB007C */  lw          $t3, 0x7C($sp)
/* 0158A8 004158A8 8FAD0074 */  lw          $t5, 0x74($sp)
/* 0158AC 004158AC 8FA90078 */  lw          $t1, 0x78($sp)
/* 0158B0 004158B0 256C0040 */  addiu       $t4, $t3, 0x40
/* 0158B4 004158B4 018D082B */  sltu        $at, $t4, $t5
/* 0158B8 004158B8 252A0040 */  addiu       $t2, $t1, 0x40
/* 0158BC 004158BC AFAA0078 */  sw          $t2, 0x78($sp)
/* 0158C0 004158C0 1420FEAB */  bnez        $at, .L00415370
/* 0158C4 004158C4 AFAC007C */   sw         $t4, 0x7C($sp)
/* 0158C8 004158C8 8FBF003C */  lw          $ra, 0x3C($sp)
/* 0158CC 004158CC 8FB00018 */  lw          $s0, 0x18($sp)
/* 0158D0 004158D0 8FB1001C */  lw          $s1, 0x1C($sp)
/* 0158D4 004158D4 8FB20020 */  lw          $s2, 0x20($sp)
/* 0158D8 004158D8 8FB30024 */  lw          $s3, 0x24($sp)
/* 0158DC 004158DC 8FB40028 */  lw          $s4, 0x28($sp)
/* 0158E0 004158E0 8FB5002C */  lw          $s5, 0x2C($sp)
/* 0158E4 004158E4 8FB60030 */  lw          $s6, 0x30($sp)
/* 0158E8 004158E8 8FB70034 */  lw          $s7, 0x34($sp)
/* 0158EC 004158EC 03E00008 */  jr          $ra
/* 0158F0 004158F0 27BD0078 */   addiu      $sp, $sp, 0x78
