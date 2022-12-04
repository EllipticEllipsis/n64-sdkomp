glabel func_0041A398 # 86
/* 01A398 0041A398 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 01A39C 0041A39C 279C89C8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF89C8
/* 01A3A0 0041A3A0 0399E021 */  addu        $gp, $gp, $t9
/* 01A3A4 0041A3A4 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01A3A8 0041A3A8 AFA40060 */  sw          $a0, 0x60($sp)
/* 01A3AC 0041A3AC AFA60068 */  sw          $a2, 0x68($sp)
/* 01A3B0 0041A3B0 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01A3B4 0041A3B4 8FAF0068 */  lw          $t7, 0x68($sp)
/* 01A3B8 0041A3B8 AFA50064 */  sw          $a1, 0x64($sp)
/* 01A3BC 0041A3BC AFAE005C */  sw          $t6, 0x5C($sp)
/* 01A3C0 0041A3C0 000FC100 */  sll         $t8, $t7, 4
/* 01A3C4 0041A3C4 8FA80064 */  lw          $t0, 0x64($sp)
/* 01A3C8 0041A3C8 8FAA005C */  lw          $t2, 0x5C($sp)
/* 01A3CC 0041A3CC 01D8C821 */  addu        $t9, $t6, $t8
/* 01A3D0 0041A3D0 AFB00014 */  sw          $s0, 0x14($sp)
/* 01A3D4 0041A3D4 AFB90060 */  sw          $t9, 0x60($sp)
/* 01A3D8 0041A3D8 272BFFF0 */  addiu       $t3, $t9, -0x10
/* 01A3DC 0041A3DC 01184821 */  addu        $t1, $t0, $t8
/* 01A3E0 0041A3E0 0159802B */  sltu        $s0, $t2, $t9
/* 01A3E4 0041A3E4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01A3E8 0041A3E8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01A3EC 0041A3EC AFA90064 */  sw          $t1, 0x64($sp)
/* 01A3F0 0041A3F0 12000105 */  beqz        $s0, .L0041A808
/* 01A3F4 0041A3F4 AFAB0060 */   sw         $t3, 0x60($sp)
.L0041A3F8:
/* 01A3F8 0041A3F8 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01A3FC 0041A3FC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A400 0041A400 24040000 */  addiu       $a0, $zero, 0x0
/* 01A404 0041A404 258DFFF0 */  addiu       $t5, $t4, -0x10
/* 01A408 0041A408 AFAD0064 */  sw          $t5, 0x64($sp)
/* 01A40C 0041A40C 91AF000F */  lbu         $t7, 0xF($t5)
/* 01A410 0041A410 24060000 */  addiu       $a2, $zero, 0x0
/* 01A414 0041A414 24070008 */  addiu       $a3, $zero, 0x8
/* 01A418 0041A418 0320F809 */  jalr        $t9
/* 01A41C 0041A41C 01E02825 */   move       $a1, $t7
/* 01A420 0041A420 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01A424 0041A424 AFA20020 */  sw          $v0, 0x20($sp)
/* 01A428 0041A428 AFA30024 */  sw          $v1, 0x24($sp)
/* 01A42C 0041A42C 91C8000E */  lbu         $t0, 0xE($t6)
/* 01A430 0041A430 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01A434 0041A434 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A438 0041A438 0100C825 */  move        $t9, $t0
/* 01A43C 0041A43C 032B2821 */  addu        $a1, $t9, $t3
/* 01A440 0041A440 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A444 0041A444 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01A448 0041A448 0008C7C3 */  sra         $t8, $t0, 31
/* 01A44C 0041A44C 00AB082B */  sltu        $at, $a1, $t3
/* 01A450 0041A450 00382021 */  addu        $a0, $at, $t8
/* 01A454 0041A454 24060000 */  addiu       $a2, $zero, 0x0
/* 01A458 0041A458 24070008 */  addiu       $a3, $zero, 0x8
/* 01A45C 0041A45C 0320F809 */  jalr        $t9
/* 01A460 0041A460 008A2021 */   addu       $a0, $a0, $t2
/* 01A464 0041A464 8FA90064 */  lw          $t1, 0x64($sp)
/* 01A468 0041A468 AFA20028 */  sw          $v0, 0x28($sp)
/* 01A46C 0041A46C AFA3002C */  sw          $v1, 0x2C($sp)
/* 01A470 0041A470 912C000D */  lbu         $t4, 0xD($t1)
/* 01A474 0041A474 8FA9002C */  lw          $t1, 0x2C($sp)
/* 01A478 0041A478 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A47C 0041A47C 01807825 */  move        $t7, $t4
/* 01A480 0041A480 01E92821 */  addu        $a1, $t7, $t1
/* 01A484 0041A484 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A488 0041A488 8FA80028 */  lw          $t0, 0x28($sp)
/* 01A48C 0041A48C 000C77C3 */  sra         $t6, $t4, 31
/* 01A490 0041A490 00A9082B */  sltu        $at, $a1, $t1
/* 01A494 0041A494 002E2021 */  addu        $a0, $at, $t6
/* 01A498 0041A498 24060000 */  addiu       $a2, $zero, 0x0
/* 01A49C 0041A49C 24070008 */  addiu       $a3, $zero, 0x8
/* 01A4A0 0041A4A0 0320F809 */  jalr        $t9
/* 01A4A4 0041A4A4 00882021 */   addu       $a0, $a0, $t0
/* 01A4A8 0041A4A8 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01A4AC 0041A4AC AFA20030 */  sw          $v0, 0x30($sp)
/* 01A4B0 0041A4B0 AFA30034 */  sw          $v1, 0x34($sp)
/* 01A4B4 0041A4B4 91B8000C */  lbu         $t8, 0xC($t5)
/* 01A4B8 0041A4B8 8FAD0034 */  lw          $t5, 0x34($sp)
/* 01A4BC 0041A4BC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A4C0 0041A4C0 03005825 */  move        $t3, $t8
/* 01A4C4 0041A4C4 016D2821 */  addu        $a1, $t3, $t5
/* 01A4C8 0041A4C8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A4CC 0041A4CC 8FAC0030 */  lw          $t4, 0x30($sp)
/* 01A4D0 0041A4D0 001857C3 */  sra         $t2, $t8, 31
/* 01A4D4 0041A4D4 00AD082B */  sltu        $at, $a1, $t5
/* 01A4D8 0041A4D8 002A2021 */  addu        $a0, $at, $t2
/* 01A4DC 0041A4DC 24060000 */  addiu       $a2, $zero, 0x0
/* 01A4E0 0041A4E0 24070008 */  addiu       $a3, $zero, 0x8
/* 01A4E4 0041A4E4 0320F809 */  jalr        $t9
/* 01A4E8 0041A4E8 008C2021 */   addu       $a0, $a0, $t4
/* 01A4EC 0041A4EC 8FB90064 */  lw          $t9, 0x64($sp)
/* 01A4F0 0041A4F0 AFA20038 */  sw          $v0, 0x38($sp)
/* 01A4F4 0041A4F4 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01A4F8 0041A4F8 932E000B */  lbu         $t6, 0xB($t9)
/* 01A4FC 0041A4FC 8FB9003C */  lw          $t9, 0x3C($sp)
/* 01A500 0041A500 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A504 0041A504 01C04825 */  move        $t1, $t6
/* 01A508 0041A508 01392821 */  addu        $a1, $t1, $t9
/* 01A50C 0041A50C 00B9082B */  sltu        $at, $a1, $t9
/* 01A510 0041A510 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A514 0041A514 8FB80038 */  lw          $t8, 0x38($sp)
/* 01A518 0041A518 000E47C3 */  sra         $t0, $t6, 31
/* 01A51C 0041A51C 00282021 */  addu        $a0, $at, $t0
/* 01A520 0041A520 24060000 */  addiu       $a2, $zero, 0x0
/* 01A524 0041A524 24070008 */  addiu       $a3, $zero, 0x8
/* 01A528 0041A528 0320F809 */  jalr        $t9
/* 01A52C 0041A52C 00982021 */   addu       $a0, $a0, $t8
/* 01A530 0041A530 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01A534 0041A534 AFA20040 */  sw          $v0, 0x40($sp)
/* 01A538 0041A538 AFA30044 */  sw          $v1, 0x44($sp)
/* 01A53C 0041A53C 91EA000A */  lbu         $t2, 0xA($t7)
/* 01A540 0041A540 8FAF0044 */  lw          $t7, 0x44($sp)
/* 01A544 0041A544 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A548 0041A548 01406825 */  move        $t5, $t2
/* 01A54C 0041A54C 01AF2821 */  addu        $a1, $t5, $t7
/* 01A550 0041A550 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A554 0041A554 8FAE0040 */  lw          $t6, 0x40($sp)
/* 01A558 0041A558 000A67C3 */  sra         $t4, $t2, 31
/* 01A55C 0041A55C 00AF082B */  sltu        $at, $a1, $t7
/* 01A560 0041A560 002C2021 */  addu        $a0, $at, $t4
/* 01A564 0041A564 24060000 */  addiu       $a2, $zero, 0x0
/* 01A568 0041A568 24070008 */  addiu       $a3, $zero, 0x8
/* 01A56C 0041A56C 0320F809 */  jalr        $t9
/* 01A570 0041A570 008E2021 */   addu       $a0, $a0, $t6
/* 01A574 0041A574 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01A578 0041A578 AFA20048 */  sw          $v0, 0x48($sp)
/* 01A57C 0041A57C AFA3004C */  sw          $v1, 0x4C($sp)
/* 01A580 0041A580 91680009 */  lbu         $t0, 0x9($t3)
/* 01A584 0041A584 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01A588 0041A588 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A58C 0041A58C 0100C825 */  move        $t9, $t0
/* 01A590 0041A590 032B2821 */  addu        $a1, $t9, $t3
/* 01A594 0041A594 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A598 0041A598 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01A59C 0041A59C 0008C7C3 */  sra         $t8, $t0, 31
/* 01A5A0 0041A5A0 00AB082B */  sltu        $at, $a1, $t3
/* 01A5A4 0041A5A4 00382021 */  addu        $a0, $at, $t8
/* 01A5A8 0041A5A8 24060000 */  addiu       $a2, $zero, 0x0
/* 01A5AC 0041A5AC 24070008 */  addiu       $a3, $zero, 0x8
/* 01A5B0 0041A5B0 0320F809 */  jalr        $t9
/* 01A5B4 0041A5B4 008A2021 */   addu       $a0, $a0, $t2
/* 01A5B8 0041A5B8 8FA90064 */  lw          $t1, 0x64($sp)
/* 01A5BC 0041A5BC AFA20050 */  sw          $v0, 0x50($sp)
/* 01A5C0 0041A5C0 AFA30054 */  sw          $v1, 0x54($sp)
/* 01A5C4 0041A5C4 912C0008 */  lbu         $t4, 0x8($t1)
/* 01A5C8 0041A5C8 8FA90054 */  lw          $t1, 0x54($sp)
/* 01A5CC 0041A5CC 8FA80050 */  lw          $t0, 0x50($sp)
/* 01A5D0 0041A5D0 01807825 */  move        $t7, $t4
/* 01A5D4 0041A5D4 8FAD0060 */  lw          $t5, 0x60($sp)
/* 01A5D8 0041A5D8 01E9C821 */  addu        $t9, $t7, $t1
/* 01A5DC 0041A5DC 000C77C3 */  sra         $t6, $t4, 31
/* 01A5E0 0041A5E0 0329082B */  sltu        $at, $t9, $t1
/* 01A5E4 0041A5E4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A5E8 0041A5E8 002EC021 */  addu        $t8, $at, $t6
/* 01A5EC 0041A5EC 0308C021 */  addu        $t8, $t8, $t0
/* 01A5F0 0041A5F0 ADB80008 */  sw          $t8, 0x8($t5)
/* 01A5F4 0041A5F4 ADB9000C */  sw          $t9, 0xC($t5)
/* 01A5F8 0041A5F8 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01A5FC 0041A5FC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A600 0041A600 24040000 */  addiu       $a0, $zero, 0x0
/* 01A604 0041A604 914B0007 */  lbu         $t3, 0x7($t2)
/* 01A608 0041A608 24060000 */  addiu       $a2, $zero, 0x0
/* 01A60C 0041A60C 24070008 */  addiu       $a3, $zero, 0x8
/* 01A610 0041A610 0320F809 */  jalr        $t9
/* 01A614 0041A614 01602825 */   move       $a1, $t3
/* 01A618 0041A618 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01A61C 0041A61C AFA20020 */  sw          $v0, 0x20($sp)
/* 01A620 0041A620 AFA30024 */  sw          $v1, 0x24($sp)
/* 01A624 0041A624 918E0006 */  lbu         $t6, 0x6($t4)
/* 01A628 0041A628 8FB90024 */  lw          $t9, 0x24($sp)
/* 01A62C 0041A62C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A630 0041A630 01C04825 */  move        $t1, $t6
/* 01A634 0041A634 01392821 */  addu        $a1, $t1, $t9
/* 01A638 0041A638 00B9082B */  sltu        $at, $a1, $t9
/* 01A63C 0041A63C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A640 0041A640 8FB80020 */  lw          $t8, 0x20($sp)
/* 01A644 0041A644 000E47C3 */  sra         $t0, $t6, 31
/* 01A648 0041A648 00282021 */  addu        $a0, $at, $t0
/* 01A64C 0041A64C 24060000 */  addiu       $a2, $zero, 0x0
/* 01A650 0041A650 24070008 */  addiu       $a3, $zero, 0x8
/* 01A654 0041A654 0320F809 */  jalr        $t9
/* 01A658 0041A658 00982021 */   addu       $a0, $a0, $t8
/* 01A65C 0041A65C 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01A660 0041A660 AFA20028 */  sw          $v0, 0x28($sp)
/* 01A664 0041A664 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01A668 0041A668 91ED0005 */  lbu         $t5, 0x5($t7)
/* 01A66C 0041A66C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A670 0041A670 8FAC0028 */  lw          $t4, 0x28($sp)
/* 01A674 0041A674 01A05825 */  move        $t3, $t5
/* 01A678 0041A678 000D57C3 */  sra         $t2, $t5, 31
/* 01A67C 0041A67C 8FAD002C */  lw          $t5, 0x2C($sp)
/* 01A680 0041A680 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A684 0041A684 24060000 */  addiu       $a2, $zero, 0x0
/* 01A688 0041A688 016D2821 */  addu        $a1, $t3, $t5
/* 01A68C 0041A68C 00AD082B */  sltu        $at, $a1, $t5
/* 01A690 0041A690 002A2021 */  addu        $a0, $at, $t2
/* 01A694 0041A694 24070008 */  addiu       $a3, $zero, 0x8
/* 01A698 0041A698 0320F809 */  jalr        $t9
/* 01A69C 0041A69C 008C2021 */   addu       $a0, $a0, $t4
/* 01A6A0 0041A6A0 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01A6A4 0041A6A4 AFA20030 */  sw          $v0, 0x30($sp)
/* 01A6A8 0041A6A8 AFA30034 */  sw          $v1, 0x34($sp)
/* 01A6AC 0041A6AC 91C80004 */  lbu         $t0, 0x4($t6)
/* 01A6B0 0041A6B0 8FAB0034 */  lw          $t3, 0x34($sp)
/* 01A6B4 0041A6B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A6B8 0041A6B8 0100C825 */  move        $t9, $t0
/* 01A6BC 0041A6BC 032B2821 */  addu        $a1, $t9, $t3
/* 01A6C0 0041A6C0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A6C4 0041A6C4 8FAA0030 */  lw          $t2, 0x30($sp)
/* 01A6C8 0041A6C8 0008C7C3 */  sra         $t8, $t0, 31
/* 01A6CC 0041A6CC 00AB082B */  sltu        $at, $a1, $t3
/* 01A6D0 0041A6D0 00382021 */  addu        $a0, $at, $t8
/* 01A6D4 0041A6D4 24060000 */  addiu       $a2, $zero, 0x0
/* 01A6D8 0041A6D8 24070008 */  addiu       $a3, $zero, 0x8
/* 01A6DC 0041A6DC 0320F809 */  jalr        $t9
/* 01A6E0 0041A6E0 008A2021 */   addu       $a0, $a0, $t2
/* 01A6E4 0041A6E4 8FA90064 */  lw          $t1, 0x64($sp)
/* 01A6E8 0041A6E8 AFA20038 */  sw          $v0, 0x38($sp)
/* 01A6EC 0041A6EC AFA3003C */  sw          $v1, 0x3C($sp)
/* 01A6F0 0041A6F0 912F0003 */  lbu         $t7, 0x3($t1)
/* 01A6F4 0041A6F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A6F8 0041A6F8 8FAE0038 */  lw          $t6, 0x38($sp)
/* 01A6FC 0041A6FC 01E06825 */  move        $t5, $t7
/* 01A700 0041A700 000F67C3 */  sra         $t4, $t7, 31
/* 01A704 0041A704 8FAF003C */  lw          $t7, 0x3C($sp)
/* 01A708 0041A708 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A70C 0041A70C 24060000 */  addiu       $a2, $zero, 0x0
/* 01A710 0041A710 01AF2821 */  addu        $a1, $t5, $t7
/* 01A714 0041A714 00AF082B */  sltu        $at, $a1, $t7
/* 01A718 0041A718 002C2021 */  addu        $a0, $at, $t4
/* 01A71C 0041A71C 24070008 */  addiu       $a3, $zero, 0x8
/* 01A720 0041A720 0320F809 */  jalr        $t9
/* 01A724 0041A724 008E2021 */   addu       $a0, $a0, $t6
/* 01A728 0041A728 8FA80064 */  lw          $t0, 0x64($sp)
/* 01A72C 0041A72C AFA20040 */  sw          $v0, 0x40($sp)
/* 01A730 0041A730 AFA30044 */  sw          $v1, 0x44($sp)
/* 01A734 0041A734 91180002 */  lbu         $t8, 0x2($t0)
/* 01A738 0041A738 8FAD0044 */  lw          $t5, 0x44($sp)
/* 01A73C 0041A73C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A740 0041A740 03005825 */  move        $t3, $t8
/* 01A744 0041A744 016D2821 */  addu        $a1, $t3, $t5
/* 01A748 0041A748 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A74C 0041A74C 8FAC0040 */  lw          $t4, 0x40($sp)
/* 01A750 0041A750 001857C3 */  sra         $t2, $t8, 31
/* 01A754 0041A754 00AD082B */  sltu        $at, $a1, $t5
/* 01A758 0041A758 002A2021 */  addu        $a0, $at, $t2
/* 01A75C 0041A75C 24060000 */  addiu       $a2, $zero, 0x0
/* 01A760 0041A760 24070008 */  addiu       $a3, $zero, 0x8
/* 01A764 0041A764 0320F809 */  jalr        $t9
/* 01A768 0041A768 008C2021 */   addu       $a0, $a0, $t4
/* 01A76C 0041A76C 8FB90064 */  lw          $t9, 0x64($sp)
/* 01A770 0041A770 AFA20048 */  sw          $v0, 0x48($sp)
/* 01A774 0041A774 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01A778 0041A778 93290001 */  lbu         $t1, 0x1($t9)
/* 01A77C 0041A77C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A780 0041A780 8FA80048 */  lw          $t0, 0x48($sp)
/* 01A784 0041A784 01207825 */  move        $t7, $t1
/* 01A788 0041A788 000977C3 */  sra         $t6, $t1, 31
/* 01A78C 0041A78C 8FA9004C */  lw          $t1, 0x4C($sp)
/* 01A790 0041A790 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A794 0041A794 24060000 */  addiu       $a2, $zero, 0x0
/* 01A798 0041A798 01E92821 */  addu        $a1, $t7, $t1
/* 01A79C 0041A79C 00A9082B */  sltu        $at, $a1, $t1
/* 01A7A0 0041A7A0 002E2021 */  addu        $a0, $at, $t6
/* 01A7A4 0041A7A4 24070008 */  addiu       $a3, $zero, 0x8
/* 01A7A8 0041A7A8 0320F809 */  jalr        $t9
/* 01A7AC 0041A7AC 00882021 */   addu       $a0, $a0, $t0
/* 01A7B0 0041A7B0 8FB80064 */  lw          $t8, 0x64($sp)
/* 01A7B4 0041A7B4 AFA20050 */  sw          $v0, 0x50($sp)
/* 01A7B8 0041A7B8 AFA30054 */  sw          $v1, 0x54($sp)
/* 01A7BC 0041A7BC 930A0000 */  lbu         $t2, 0x0($t8)
/* 01A7C0 0041A7C0 8FAF0054 */  lw          $t7, 0x54($sp)
/* 01A7C4 0041A7C4 8FAE0050 */  lw          $t6, 0x50($sp)
/* 01A7C8 0041A7C8 01406825 */  move        $t5, $t2
/* 01A7CC 0041A7CC 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01A7D0 0041A7D0 01AF4821 */  addu        $t1, $t5, $t7
/* 01A7D4 0041A7D4 000A67C3 */  sra         $t4, $t2, 31
/* 01A7D8 0041A7D8 012F082B */  sltu        $at, $t1, $t7
/* 01A7DC 0041A7DC 002C4021 */  addu        $t0, $at, $t4
/* 01A7E0 0041A7E0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01A7E4 0041A7E4 010E4021 */  addu        $t0, $t0, $t6
/* 01A7E8 0041A7E8 AD680000 */  sw          $t0, 0x0($t3)
/* 01A7EC 0041A7EC AD690004 */  sw          $t1, 0x4($t3)
/* 01A7F0 0041A7F0 8FB90060 */  lw          $t9, 0x60($sp)
/* 01A7F4 0041A7F4 8FB8005C */  lw          $t8, 0x5C($sp)
/* 01A7F8 0041A7F8 272AFFF0 */  addiu       $t2, $t9, -0x10
/* 01A7FC 0041A7FC 0319802B */  sltu        $s0, $t8, $t9
/* 01A800 0041A800 1600FEFD */  bnez        $s0, .L0041A3F8
/* 01A804 0041A804 AFAA0060 */   sw         $t2, 0x60($sp)
.L0041A808:
/* 01A808 0041A808 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01A80C 0041A80C 8FB00014 */  lw          $s0, 0x14($sp)
/* 01A810 0041A810 27BD0060 */  addiu       $sp, $sp, 0x60
/* 01A814 0041A814 03E00008 */  jr          $ra
/* 01A818 0041A818 00000000 */   nop
