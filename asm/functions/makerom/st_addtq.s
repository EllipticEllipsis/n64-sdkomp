glabel st_addtq # 711
/* 043408 00443408 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 04340C 0044340C 279CF958 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBCF958
/* 043410 00443410 0399E021 */  addu        $gp, $gp, $t9
/* 043414 00443414 8F998610 */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 043418 00443418 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04341C 0044341C AFBF001C */  sw          $ra, 0x1C($sp)
/* 043420 00443420 AFBC0018 */  sw          $gp, 0x18($sp)
/* 043424 00443424 0320F809 */  jalr        $t9
/* 043428 00443428 AFA50024 */   sw         $a1, 0x24($sp)
/* 04342C 0044342C 944E0002 */  lhu         $t6, 0x2($v0)
/* 043430 00443430 8FBC0018 */  lw          $gp, 0x18($sp)
/* 043434 00443434 8FA50024 */  lw          $a1, 0x24($sp)
/* 043438 00443438 000E7B02 */  srl         $t7, $t6, 12
/* 04343C 0044343C 55E00009 */  bnel        $t7, $zero, .L00443464
/* 043440 00443440 90430002 */   lbu        $v1, 0x2($v0)
/* 043444 00443444 90490002 */  lbu         $t1, 0x2($v0)
/* 043448 00443448 30B8000F */  andi        $t8, $a1, 0xF
/* 04344C 0044344C 0018C900 */  sll         $t9, $t8, 4
/* 043450 00443450 312AFF0F */  andi        $t2, $t1, 0xFF0F
/* 043454 00443454 032A5825 */  or          $t3, $t9, $t2
/* 043458 00443458 1000002B */  b           .L00443508
/* 04345C 0044345C A04B0002 */   sb         $t3, 0x2($v0)
/* 043460 00443460 90430002 */  lbu         $v1, 0x2($v0)
.L00443464:
/* 043464 00443464 30AE000F */  andi        $t6, $a1, 0xF
/* 043468 00443468 306C000F */  andi        $t4, $v1, 0xF
/* 04346C 0044346C 15800004 */  bnez        $t4, .L00443480
/* 043470 00443470 306FFFF0 */   andi       $t7, $v1, 0xFFF0
/* 043474 00443474 01CFC025 */  or          $t8, $t6, $t7
/* 043478 00443478 10000023 */  b           .L00443508
/* 04347C 0044347C A0580002 */   sb         $t8, 0x2($v0)
.L00443480:
/* 043480 00443480 90430003 */  lbu         $v1, 0x3($v0)
/* 043484 00443484 00055100 */  sll         $t2, $a1, 4
/* 043488 00443488 0003C902 */  srl         $t9, $v1, 4
/* 04348C 0044348C 17200004 */  bnez        $t9, .L004434A0
/* 043490 00443490 306BFF0F */   andi       $t3, $v1, 0xFF0F
/* 043494 00443494 014B6025 */  or          $t4, $t2, $t3
/* 043498 00443498 1000001B */  b           .L00443508
/* 04349C 0044349C A04C0003 */   sb         $t4, 0x3($v0)
.L004434A0:
/* 0434A0 004434A0 8C4D0000 */  lw          $t5, 0x0($v0)
/* 0434A4 004434A4 30B8000F */  andi        $t8, $a1, 0xF
/* 0434A8 004434A8 31AE000F */  andi        $t6, $t5, 0xF
/* 0434AC 004434AC 55C00006 */  bnel        $t6, $zero, .L004434C8
/* 0434B0 004434B0 90430001 */   lbu        $v1, 0x1($v0)
/* 0434B4 004434B4 3079FFF0 */  andi        $t9, $v1, 0xFFF0
/* 0434B8 004434B8 03194825 */  or          $t1, $t8, $t9
/* 0434BC 004434BC 10000012 */  b           .L00443508
/* 0434C0 004434C0 A0490003 */   sb         $t1, 0x3($v0)
/* 0434C4 004434C4 90430001 */  lbu         $v1, 0x1($v0)
.L004434C8:
/* 0434C8 004434C8 00056100 */  sll         $t4, $a1, 4
/* 0434CC 004434CC 00034102 */  srl         $t0, $v1, 4
/* 0434D0 004434D0 15000004 */  bnez        $t0, .L004434E4
/* 0434D4 004434D4 306DFF0F */   andi       $t5, $v1, 0xFF0F
/* 0434D8 004434D8 018D7025 */  or          $t6, $t4, $t5
/* 0434DC 004434DC 1000000A */  b           .L00443508
/* 0434E0 004434E0 A04E0001 */   sb         $t6, 0x1($v0)
.L004434E4:
/* 0434E4 004434E4 944F0000 */  lhu         $t7, 0x0($v0)
/* 0434E8 004434E8 3068FFF0 */  andi        $t0, $v1, 0xFFF0
/* 0434EC 004434EC 31F8000F */  andi        $t8, $t7, 0xF
/* 0434F0 004434F0 57000006 */  bnel        $t8, $zero, .L0044350C
/* 0434F4 004434F4 8FBF001C */   lw         $ra, 0x1C($sp)
/* 0434F8 004434F8 30B9000F */  andi        $t9, $a1, 0xF
/* 0434FC 004434FC 3329000F */  andi        $t1, $t9, 0xF
/* 043500 00443500 01285025 */  or          $t2, $t1, $t0
/* 043504 00443504 A04A0001 */  sb          $t2, 0x1($v0)
.L00443508:
/* 043508 00443508 8FBF001C */  lw          $ra, 0x1C($sp)
.L0044350C:
/* 04350C 0044350C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 043510 00443510 03E00008 */  jr          $ra
/* 043514 00443514 00000000 */   nop