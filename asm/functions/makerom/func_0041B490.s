glabel func_0041B490 # 89
/* 01B490 0041B490 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01B494 0041B494 279C78D0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF78D0
/* 01B498 0041B498 0399E021 */  addu        $gp, $gp, $t9
/* 01B49C 0041B49C 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01B4A0 0041B4A0 AFA40060 */  sw          $a0, 0x60($sp)
/* 01B4A4 0041B4A4 AFA60068 */  sw          $a2, 0x68($sp)
/* 01B4A8 0041B4A8 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01B4AC 0041B4AC 8FAF0068 */  lw          $t7, 0x68($sp)
/* 01B4B0 0041B4B0 AFA50064 */  sw          $a1, 0x64($sp)
/* 01B4B4 0041B4B4 AFAE005C */  sw          $t6, 0x5C($sp)
/* 01B4B8 0041B4B8 000FC180 */  sll         $t8, $t7, 6
/* 01B4BC 0041B4BC 8FA80064 */  lw          $t0, 0x64($sp)
/* 01B4C0 0041B4C0 8FAA005C */  lw          $t2, 0x5C($sp)
/* 01B4C4 0041B4C4 01D8C821 */  addu        $t9, $t6, $t8
/* 01B4C8 0041B4C8 AFB00014 */  sw          $s0, 0x14($sp)
/* 01B4CC 0041B4CC AFB90060 */  sw          $t9, 0x60($sp)
/* 01B4D0 0041B4D0 272BFFC0 */  addiu       $t3, $t9, -0x40
/* 01B4D4 0041B4D4 01184821 */  addu        $t1, $t0, $t8
/* 01B4D8 0041B4D8 0159802B */  sltu        $s0, $t2, $t9
/* 01B4DC 0041B4DC AFBF001C */  sw          $ra, 0x1C($sp)
/* 01B4E0 0041B4E0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01B4E4 0041B4E4 AFA90064 */  sw          $t1, 0x64($sp)
/* 01B4E8 0041B4E8 120001E0 */  beqz        $s0, .L0041BC6C
/* 01B4EC 0041B4EC AFAB0060 */   sw         $t3, 0x60($sp)
.L0041B4F0:
/* 01B4F0 0041B4F0 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01B4F4 0041B4F4 8FA90060 */  lw          $t1, 0x60($sp)
/* 01B4F8 0041B4F8 24040000 */  addiu       $a0, $zero, 0x0
/* 01B4FC 0041B4FC 258DFFC0 */  addiu       $t5, $t4, -0x40
/* 01B500 0041B500 AFAD0064 */  sw          $t5, 0x64($sp)
/* 01B504 0041B504 91AE003E */  lbu         $t6, 0x3E($t5)
/* 01B508 0041B508 91AF003F */  lbu         $t7, 0x3F($t5)
/* 01B50C 0041B50C 24060000 */  addiu       $a2, $zero, 0x0
/* 01B510 0041B510 000E4200 */  sll         $t0, $t6, 8
/* 01B514 0041B514 01E8C021 */  addu        $t8, $t7, $t0
/* 01B518 0041B518 A538003E */  sh          $t8, 0x3E($t1)
/* 01B51C 0041B51C 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01B520 0041B520 8FAE0060 */  lw          $t6, 0x60($sp)
/* 01B524 0041B524 24070008 */  addiu       $a3, $zero, 0x8
/* 01B528 0041B528 914B003C */  lbu         $t3, 0x3C($t2)
/* 01B52C 0041B52C 9159003D */  lbu         $t9, 0x3D($t2)
/* 01B530 0041B530 000B6200 */  sll         $t4, $t3, 8
/* 01B534 0041B534 032C6821 */  addu        $t5, $t9, $t4
/* 01B538 0041B538 A5CD003C */  sh          $t5, 0x3C($t6)
/* 01B53C 0041B53C 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01B540 0041B540 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01B544 0041B544 91F8003A */  lbu         $t8, 0x3A($t7)
/* 01B548 0041B548 91E8003B */  lbu         $t0, 0x3B($t7)
/* 01B54C 0041B54C 00184A00 */  sll         $t1, $t8, 8
/* 01B550 0041B550 01095021 */  addu        $t2, $t0, $t1
/* 01B554 0041B554 A56A003A */  sh          $t2, 0x3A($t3)
/* 01B558 0041B558 8FB90064 */  lw          $t9, 0x64($sp)
/* 01B55C 0041B55C 8FB80060 */  lw          $t8, 0x60($sp)
/* 01B560 0041B560 932D0038 */  lbu         $t5, 0x38($t9)
/* 01B564 0041B564 932C0039 */  lbu         $t4, 0x39($t9)
/* 01B568 0041B568 000D7200 */  sll         $t6, $t5, 8
/* 01B56C 0041B56C 018E7821 */  addu        $t7, $t4, $t6
/* 01B570 0041B570 A70F0038 */  sh          $t7, 0x38($t8)
/* 01B574 0041B574 8FA80064 */  lw          $t0, 0x64($sp)
/* 01B578 0041B578 8FAD0060 */  lw          $t5, 0x60($sp)
/* 01B57C 0041B57C 910A0036 */  lbu         $t2, 0x36($t0)
/* 01B580 0041B580 91090037 */  lbu         $t1, 0x37($t0)
/* 01B584 0041B584 000A5A00 */  sll         $t3, $t2, 8
/* 01B588 0041B588 012BC821 */  addu        $t9, $t1, $t3
/* 01B58C 0041B58C A5B90036 */  sh          $t9, 0x36($t5)
/* 01B590 0041B590 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01B594 0041B594 8FAA0060 */  lw          $t2, 0x60($sp)
/* 01B598 0041B598 918F0034 */  lbu         $t7, 0x34($t4)
/* 01B59C 0041B59C 918E0035 */  lbu         $t6, 0x35($t4)
/* 01B5A0 0041B5A0 000FC200 */  sll         $t8, $t7, 8
/* 01B5A4 0041B5A4 01D84021 */  addu        $t0, $t6, $t8
/* 01B5A8 0041B5A8 A5480034 */  sh          $t0, 0x34($t2)
/* 01B5AC 0041B5AC 8FA90064 */  lw          $t1, 0x64($sp)
/* 01B5B0 0041B5B0 912B0030 */  lbu         $t3, 0x30($t1)
/* 01B5B4 0041B5B4 912D0031 */  lbu         $t5, 0x31($t1)
/* 01B5B8 0041B5B8 912E0032 */  lbu         $t6, 0x32($t1)
/* 01B5BC 0041B5BC 000BCA00 */  sll         $t9, $t3, 8
/* 01B5C0 0041B5C0 032D6021 */  addu        $t4, $t9, $t5
/* 01B5C4 0041B5C4 912A0033 */  lbu         $t2, 0x33($t1)
/* 01B5C8 0041B5C8 000C7A00 */  sll         $t7, $t4, 8
/* 01B5CC 0041B5CC 8FB90060 */  lw          $t9, 0x60($sp)
/* 01B5D0 0041B5D0 01EEC021 */  addu        $t8, $t7, $t6
/* 01B5D4 0041B5D4 00184200 */  sll         $t0, $t8, 8
/* 01B5D8 0041B5D8 01485821 */  addu        $t3, $t2, $t0
/* 01B5DC 0041B5DC AF2B0030 */  sw          $t3, 0x30($t9)
/* 01B5E0 0041B5E0 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01B5E4 0041B5E4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B5E8 0041B5E8 91AC0028 */  lbu         $t4, 0x28($t5)
/* 01B5EC 0041B5EC 0320F809 */  jalr        $t9
/* 01B5F0 0041B5F0 01802825 */   move       $a1, $t4
/* 01B5F4 0041B5F4 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01B5F8 0041B5F8 AFA20020 */  sw          $v0, 0x20($sp)
/* 01B5FC 0041B5FC AFA30024 */  sw          $v1, 0x24($sp)
/* 01B600 0041B600 91EE0029 */  lbu         $t6, 0x29($t7)
/* 01B604 0041B604 8FAB0024 */  lw          $t3, 0x24($sp)
/* 01B608 0041B608 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B60C 0041B60C 01C0C825 */  move        $t9, $t6
/* 01B610 0041B610 032B2821 */  addu        $a1, $t9, $t3
/* 01B614 0041B614 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B618 0041B618 8FAA0020 */  lw          $t2, 0x20($sp)
/* 01B61C 0041B61C 000EC7C3 */  sra         $t8, $t6, 31
/* 01B620 0041B620 00AB082B */  sltu        $at, $a1, $t3
/* 01B624 0041B624 00382021 */  addu        $a0, $at, $t8
/* 01B628 0041B628 24060000 */  addiu       $a2, $zero, 0x0
/* 01B62C 0041B62C 24070008 */  addiu       $a3, $zero, 0x8
/* 01B630 0041B630 0320F809 */  jalr        $t9
/* 01B634 0041B634 008A2021 */   addu       $a0, $a0, $t2
/* 01B638 0041B638 8FA90064 */  lw          $t1, 0x64($sp)
/* 01B63C 0041B63C AFA20028 */  sw          $v0, 0x28($sp)
/* 01B640 0041B640 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01B644 0041B644 9128002A */  lbu         $t0, 0x2A($t1)
/* 01B648 0041B648 8FAF002C */  lw          $t7, 0x2C($sp)
/* 01B64C 0041B64C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B650 0041B650 01006825 */  move        $t5, $t0
/* 01B654 0041B654 01AF2821 */  addu        $a1, $t5, $t7
/* 01B658 0041B658 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B65C 0041B65C 8FAE0028 */  lw          $t6, 0x28($sp)
/* 01B660 0041B660 000867C3 */  sra         $t4, $t0, 31
/* 01B664 0041B664 00AF082B */  sltu        $at, $a1, $t7
/* 01B668 0041B668 002C2021 */  addu        $a0, $at, $t4
/* 01B66C 0041B66C 24060000 */  addiu       $a2, $zero, 0x0
/* 01B670 0041B670 24070008 */  addiu       $a3, $zero, 0x8
/* 01B674 0041B674 0320F809 */  jalr        $t9
/* 01B678 0041B678 008E2021 */   addu       $a0, $a0, $t6
/* 01B67C 0041B67C 8FB80064 */  lw          $t8, 0x64($sp)
/* 01B680 0041B680 AFA20030 */  sw          $v0, 0x30($sp)
/* 01B684 0041B684 AFA30034 */  sw          $v1, 0x34($sp)
/* 01B688 0041B688 9319002B */  lbu         $t9, 0x2B($t8)
/* 01B68C 0041B68C 8FA90034 */  lw          $t1, 0x34($sp)
/* 01B690 0041B690 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B694 0041B694 03205825 */  move        $t3, $t9
/* 01B698 0041B698 001957C3 */  sra         $t2, $t9, 31
/* 01B69C 0041B69C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B6A0 0041B6A0 01692821 */  addu        $a1, $t3, $t1
/* 01B6A4 0041B6A4 8FA80030 */  lw          $t0, 0x30($sp)
/* 01B6A8 0041B6A8 00A9082B */  sltu        $at, $a1, $t1
/* 01B6AC 0041B6AC 002A2021 */  addu        $a0, $at, $t2
/* 01B6B0 0041B6B0 24060000 */  addiu       $a2, $zero, 0x0
/* 01B6B4 0041B6B4 24070008 */  addiu       $a3, $zero, 0x8
/* 01B6B8 0041B6B8 0320F809 */  jalr        $t9
/* 01B6BC 0041B6BC 00882021 */   addu       $a0, $a0, $t0
/* 01B6C0 0041B6C0 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01B6C4 0041B6C4 AFA20038 */  sw          $v0, 0x38($sp)
/* 01B6C8 0041B6C8 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01B6CC 0041B6CC 918D002C */  lbu         $t5, 0x2C($t4)
/* 01B6D0 0041B6D0 8FB9003C */  lw          $t9, 0x3C($sp)
/* 01B6D4 0041B6D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B6D8 0041B6D8 01A07825 */  move        $t7, $t5
/* 01B6DC 0041B6DC 01F92821 */  addu        $a1, $t7, $t9
/* 01B6E0 0041B6E0 00B9082B */  sltu        $at, $a1, $t9
/* 01B6E4 0041B6E4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B6E8 0041B6E8 8FB80038 */  lw          $t8, 0x38($sp)
/* 01B6EC 0041B6EC 000D77C3 */  sra         $t6, $t5, 31
/* 01B6F0 0041B6F0 002E2021 */  addu        $a0, $at, $t6
/* 01B6F4 0041B6F4 24060000 */  addiu       $a2, $zero, 0x0
/* 01B6F8 0041B6F8 24070008 */  addiu       $a3, $zero, 0x8
/* 01B6FC 0041B6FC 0320F809 */  jalr        $t9
/* 01B700 0041B700 00982021 */   addu       $a0, $a0, $t8
/* 01B704 0041B704 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01B708 0041B708 AFA20040 */  sw          $v0, 0x40($sp)
/* 01B70C 0041B70C AFA30044 */  sw          $v1, 0x44($sp)
/* 01B710 0041B710 914B002D */  lbu         $t3, 0x2D($t2)
/* 01B714 0041B714 8FAD0044 */  lw          $t5, 0x44($sp)
/* 01B718 0041B718 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B71C 0041B71C 01604825 */  move        $t1, $t3
/* 01B720 0041B720 012D2821 */  addu        $a1, $t1, $t5
/* 01B724 0041B724 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B728 0041B728 8FAC0040 */  lw          $t4, 0x40($sp)
/* 01B72C 0041B72C 000B47C3 */  sra         $t0, $t3, 31
/* 01B730 0041B730 00AD082B */  sltu        $at, $a1, $t5
/* 01B734 0041B734 00282021 */  addu        $a0, $at, $t0
/* 01B738 0041B738 24060000 */  addiu       $a2, $zero, 0x0
/* 01B73C 0041B73C 24070008 */  addiu       $a3, $zero, 0x8
/* 01B740 0041B740 0320F809 */  jalr        $t9
/* 01B744 0041B744 008C2021 */   addu       $a0, $a0, $t4
/* 01B748 0041B748 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01B74C 0041B74C AFA20048 */  sw          $v0, 0x48($sp)
/* 01B750 0041B750 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01B754 0041B754 91CF002E */  lbu         $t7, 0x2E($t6)
/* 01B758 0041B758 8FAB004C */  lw          $t3, 0x4C($sp)
/* 01B75C 0041B75C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B760 0041B760 01E0C825 */  move        $t9, $t7
/* 01B764 0041B764 032B2821 */  addu        $a1, $t9, $t3
/* 01B768 0041B768 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B76C 0041B76C 8FAA0048 */  lw          $t2, 0x48($sp)
/* 01B770 0041B770 000FC7C3 */  sra         $t8, $t7, 31
/* 01B774 0041B774 00AB082B */  sltu        $at, $a1, $t3
/* 01B778 0041B778 00382021 */  addu        $a0, $at, $t8
/* 01B77C 0041B77C 24060000 */  addiu       $a2, $zero, 0x0
/* 01B780 0041B780 24070008 */  addiu       $a3, $zero, 0x8
/* 01B784 0041B784 0320F809 */  jalr        $t9
/* 01B788 0041B788 008A2021 */   addu       $a0, $a0, $t2
/* 01B78C 0041B78C 8FA80064 */  lw          $t0, 0x64($sp)
/* 01B790 0041B790 AFA20050 */  sw          $v0, 0x50($sp)
/* 01B794 0041B794 AFA30054 */  sw          $v1, 0x54($sp)
/* 01B798 0041B798 9109002F */  lbu         $t1, 0x2F($t0)
/* 01B79C 0041B79C 8FAF0054 */  lw          $t7, 0x54($sp)
/* 01B7A0 0041B7A0 8FAE0050 */  lw          $t6, 0x50($sp)
/* 01B7A4 0041B7A4 01206825 */  move        $t5, $t1
/* 01B7A8 0041B7A8 8FAA0060 */  lw          $t2, 0x60($sp)
/* 01B7AC 0041B7AC 01AFC821 */  addu        $t9, $t5, $t7
/* 01B7B0 0041B7B0 000967C3 */  sra         $t4, $t1, 31
/* 01B7B4 0041B7B4 032F082B */  sltu        $at, $t9, $t7
/* 01B7B8 0041B7B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B7BC 0041B7BC 002CC021 */  addu        $t8, $at, $t4
/* 01B7C0 0041B7C0 030EC021 */  addu        $t8, $t8, $t6
/* 01B7C4 0041B7C4 AD580028 */  sw          $t8, 0x28($t2)
/* 01B7C8 0041B7C8 AD59002C */  sw          $t9, 0x2C($t2)
/* 01B7CC 0041B7CC 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01B7D0 0041B7D0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B7D4 0041B7D4 24040000 */  addiu       $a0, $zero, 0x0
/* 01B7D8 0041B7D8 91680020 */  lbu         $t0, 0x20($t3)
/* 01B7DC 0041B7DC 24060000 */  addiu       $a2, $zero, 0x0
/* 01B7E0 0041B7E0 24070008 */  addiu       $a3, $zero, 0x8
/* 01B7E4 0041B7E4 0320F809 */  jalr        $t9
/* 01B7E8 0041B7E8 01002825 */   move       $a1, $t0
/* 01B7EC 0041B7EC 8FA90064 */  lw          $t1, 0x64($sp)
/* 01B7F0 0041B7F0 AFA20020 */  sw          $v0, 0x20($sp)
/* 01B7F4 0041B7F4 AFA30024 */  sw          $v1, 0x24($sp)
/* 01B7F8 0041B7F8 912C0021 */  lbu         $t4, 0x21($t1)
/* 01B7FC 0041B7FC 8FB90024 */  lw          $t9, 0x24($sp)
/* 01B800 0041B800 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B804 0041B804 01807825 */  move        $t7, $t4
/* 01B808 0041B808 01F92821 */  addu        $a1, $t7, $t9
/* 01B80C 0041B80C 00B9082B */  sltu        $at, $a1, $t9
/* 01B810 0041B810 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B814 0041B814 8FB80020 */  lw          $t8, 0x20($sp)
/* 01B818 0041B818 000C77C3 */  sra         $t6, $t4, 31
/* 01B81C 0041B81C 002E2021 */  addu        $a0, $at, $t6
/* 01B820 0041B820 24060000 */  addiu       $a2, $zero, 0x0
/* 01B824 0041B824 24070008 */  addiu       $a3, $zero, 0x8
/* 01B828 0041B828 0320F809 */  jalr        $t9
/* 01B82C 0041B82C 00982021 */   addu       $a0, $a0, $t8
/* 01B830 0041B830 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01B834 0041B834 AFA20028 */  sw          $v0, 0x28($sp)
/* 01B838 0041B838 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01B83C 0041B83C 91AA0022 */  lbu         $t2, 0x22($t5)
/* 01B840 0041B840 8FAD002C */  lw          $t5, 0x2C($sp)
/* 01B844 0041B844 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B848 0041B848 01404825 */  move        $t1, $t2
/* 01B84C 0041B84C 012D2821 */  addu        $a1, $t1, $t5
/* 01B850 0041B850 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B854 0041B854 8FAC0028 */  lw          $t4, 0x28($sp)
/* 01B858 0041B858 000A47C3 */  sra         $t0, $t2, 31
/* 01B85C 0041B85C 00AD082B */  sltu        $at, $a1, $t5
/* 01B860 0041B860 00282021 */  addu        $a0, $at, $t0
/* 01B864 0041B864 24060000 */  addiu       $a2, $zero, 0x0
/* 01B868 0041B868 24070008 */  addiu       $a3, $zero, 0x8
/* 01B86C 0041B86C 0320F809 */  jalr        $t9
/* 01B870 0041B870 008C2021 */   addu       $a0, $a0, $t4
/* 01B874 0041B874 8FAB0064 */  lw          $t3, 0x64($sp)
/* 01B878 0041B878 AFA20030 */  sw          $v0, 0x30($sp)
/* 01B87C 0041B87C AFA30034 */  sw          $v1, 0x34($sp)
/* 01B880 0041B880 916E0023 */  lbu         $t6, 0x23($t3)
/* 01B884 0041B884 8FAB0034 */  lw          $t3, 0x34($sp)
/* 01B888 0041B888 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B88C 0041B88C 01C0C825 */  move        $t9, $t6
/* 01B890 0041B890 032B2821 */  addu        $a1, $t9, $t3
/* 01B894 0041B894 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B898 0041B898 8FAA0030 */  lw          $t2, 0x30($sp)
/* 01B89C 0041B89C 000EC7C3 */  sra         $t8, $t6, 31
/* 01B8A0 0041B8A0 00AB082B */  sltu        $at, $a1, $t3
/* 01B8A4 0041B8A4 00382021 */  addu        $a0, $at, $t8
/* 01B8A8 0041B8A8 24060000 */  addiu       $a2, $zero, 0x0
/* 01B8AC 0041B8AC 24070008 */  addiu       $a3, $zero, 0x8
/* 01B8B0 0041B8B0 0320F809 */  jalr        $t9
/* 01B8B4 0041B8B4 008A2021 */   addu       $a0, $a0, $t2
/* 01B8B8 0041B8B8 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01B8BC 0041B8BC AFA20038 */  sw          $v0, 0x38($sp)
/* 01B8C0 0041B8C0 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01B8C4 0041B8C4 91E80024 */  lbu         $t0, 0x24($t7)
/* 01B8C8 0041B8C8 8FAF003C */  lw          $t7, 0x3C($sp)
/* 01B8CC 0041B8CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B8D0 0041B8D0 01006825 */  move        $t5, $t0
/* 01B8D4 0041B8D4 01AF2821 */  addu        $a1, $t5, $t7
/* 01B8D8 0041B8D8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B8DC 0041B8DC 8FAE0038 */  lw          $t6, 0x38($sp)
/* 01B8E0 0041B8E0 000867C3 */  sra         $t4, $t0, 31
/* 01B8E4 0041B8E4 00AF082B */  sltu        $at, $a1, $t7
/* 01B8E8 0041B8E8 002C2021 */  addu        $a0, $at, $t4
/* 01B8EC 0041B8EC 24060000 */  addiu       $a2, $zero, 0x0
/* 01B8F0 0041B8F0 24070008 */  addiu       $a3, $zero, 0x8
/* 01B8F4 0041B8F4 0320F809 */  jalr        $t9
/* 01B8F8 0041B8F8 008E2021 */   addu       $a0, $a0, $t6
/* 01B8FC 0041B8FC 8FA90064 */  lw          $t1, 0x64($sp)
/* 01B900 0041B900 AFA20040 */  sw          $v0, 0x40($sp)
/* 01B904 0041B904 AFA30044 */  sw          $v1, 0x44($sp)
/* 01B908 0041B908 91380025 */  lbu         $t8, 0x25($t1)
/* 01B90C 0041B90C 8FA90044 */  lw          $t1, 0x44($sp)
/* 01B910 0041B910 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B914 0041B914 03005825 */  move        $t3, $t8
/* 01B918 0041B918 01692821 */  addu        $a1, $t3, $t1
/* 01B91C 0041B91C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B920 0041B920 8FA80040 */  lw          $t0, 0x40($sp)
/* 01B924 0041B924 001857C3 */  sra         $t2, $t8, 31
/* 01B928 0041B928 00A9082B */  sltu        $at, $a1, $t1
/* 01B92C 0041B92C 002A2021 */  addu        $a0, $at, $t2
/* 01B930 0041B930 24060000 */  addiu       $a2, $zero, 0x0
/* 01B934 0041B934 24070008 */  addiu       $a3, $zero, 0x8
/* 01B938 0041B938 0320F809 */  jalr        $t9
/* 01B93C 0041B93C 00882021 */   addu       $a0, $a0, $t0
/* 01B940 0041B940 8FB90064 */  lw          $t9, 0x64($sp)
/* 01B944 0041B944 AFA20048 */  sw          $v0, 0x48($sp)
/* 01B948 0041B948 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01B94C 0041B94C 932C0026 */  lbu         $t4, 0x26($t9)
/* 01B950 0041B950 8FB9004C */  lw          $t9, 0x4C($sp)
/* 01B954 0041B954 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B958 0041B958 01807825 */  move        $t7, $t4
/* 01B95C 0041B95C 01F92821 */  addu        $a1, $t7, $t9
/* 01B960 0041B960 00B9082B */  sltu        $at, $a1, $t9
/* 01B964 0041B964 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B968 0041B968 8FB80048 */  lw          $t8, 0x48($sp)
/* 01B96C 0041B96C 000C77C3 */  sra         $t6, $t4, 31
/* 01B970 0041B970 002E2021 */  addu        $a0, $at, $t6
/* 01B974 0041B974 24060000 */  addiu       $a2, $zero, 0x0
/* 01B978 0041B978 24070008 */  addiu       $a3, $zero, 0x8
/* 01B97C 0041B97C 0320F809 */  jalr        $t9
/* 01B980 0041B980 00982021 */   addu       $a0, $a0, $t8
/* 01B984 0041B984 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01B988 0041B988 AFA20050 */  sw          $v0, 0x50($sp)
/* 01B98C 0041B98C AFA30054 */  sw          $v1, 0x54($sp)
/* 01B990 0041B990 91AA0027 */  lbu         $t2, 0x27($t5)
/* 01B994 0041B994 8FAD0054 */  lw          $t5, 0x54($sp)
/* 01B998 0041B998 8FAC0050 */  lw          $t4, 0x50($sp)
/* 01B99C 0041B99C 01404825 */  move        $t1, $t2
/* 01B9A0 0041B9A0 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01B9A4 0041B9A4 012D7821 */  addu        $t7, $t1, $t5
/* 01B9A8 0041B9A8 000A47C3 */  sra         $t0, $t2, 31
/* 01B9AC 0041B9AC 01ED082B */  sltu        $at, $t7, $t5
/* 01B9B0 0041B9B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01B9B4 0041B9B4 00287021 */  addu        $t6, $at, $t0
/* 01B9B8 0041B9B8 01CC7021 */  addu        $t6, $t6, $t4
/* 01B9BC 0041B9BC AD6E0020 */  sw          $t6, 0x20($t3)
/* 01B9C0 0041B9C0 AD6F0024 */  sw          $t7, 0x24($t3)
/* 01B9C4 0041B9C4 8FB80064 */  lw          $t8, 0x64($sp)
/* 01B9C8 0041B9C8 24040000 */  addiu       $a0, $zero, 0x0
/* 01B9CC 0041B9CC 24060000 */  addiu       $a2, $zero, 0x0
/* 01B9D0 0041B9D0 93190018 */  lbu         $t9, 0x18($t8)
/* 01B9D4 0041B9D4 24070008 */  addiu       $a3, $zero, 0x8
/* 01B9D8 0041B9D8 03202825 */  move        $a1, $t9
/* 01B9DC 0041B9DC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01B9E0 0041B9E0 0320F809 */  jalr        $t9
/* 01B9E4 0041B9E4 00000000 */   nop
/* 01B9E8 0041B9E8 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01B9EC 0041B9EC AFA20020 */  sw          $v0, 0x20($sp)
/* 01B9F0 0041B9F0 AFA30024 */  sw          $v1, 0x24($sp)
/* 01B9F4 0041B9F4 91480019 */  lbu         $t0, 0x19($t2)
/* 01B9F8 0041B9F8 8FAF0024 */  lw          $t7, 0x24($sp)
/* 01B9FC 0041B9FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01BA00 0041BA00 01006825 */  move        $t5, $t0
/* 01BA04 0041BA04 01AF2821 */  addu        $a1, $t5, $t7
/* 01BA08 0041BA08 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BA0C 0041BA0C 8FAE0020 */  lw          $t6, 0x20($sp)
/* 01BA10 0041BA10 000867C3 */  sra         $t4, $t0, 31
/* 01BA14 0041BA14 00AF082B */  sltu        $at, $a1, $t7
/* 01BA18 0041BA18 002C2021 */  addu        $a0, $at, $t4
/* 01BA1C 0041BA1C 24060000 */  addiu       $a2, $zero, 0x0
/* 01BA20 0041BA20 24070008 */  addiu       $a3, $zero, 0x8
/* 01BA24 0041BA24 0320F809 */  jalr        $t9
/* 01BA28 0041BA28 008E2021 */   addu       $a0, $a0, $t6
/* 01BA2C 0041BA2C 8FA90064 */  lw          $t1, 0x64($sp)
/* 01BA30 0041BA30 AFA20028 */  sw          $v0, 0x28($sp)
/* 01BA34 0041BA34 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01BA38 0041BA38 912B001A */  lbu         $t3, 0x1A($t1)
/* 01BA3C 0041BA3C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01BA40 0041BA40 8FAA0028 */  lw          $t2, 0x28($sp)
/* 01BA44 0041BA44 0160C825 */  move        $t9, $t3
/* 01BA48 0041BA48 000BC7C3 */  sra         $t8, $t3, 31
/* 01BA4C 0041BA4C 8FAB002C */  lw          $t3, 0x2C($sp)
/* 01BA50 0041BA50 24060000 */  addiu       $a2, $zero, 0x0
/* 01BA54 0041BA54 24070008 */  addiu       $a3, $zero, 0x8
/* 01BA58 0041BA58 032B2821 */  addu        $a1, $t9, $t3
/* 01BA5C 0041BA5C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BA60 0041BA60 00AB082B */  sltu        $at, $a1, $t3
/* 01BA64 0041BA64 00382021 */  addu        $a0, $at, $t8
/* 01BA68 0041BA68 0320F809 */  jalr        $t9
/* 01BA6C 0041BA6C 008A2021 */   addu       $a0, $a0, $t2
/* 01BA70 0041BA70 8FA80064 */  lw          $t0, 0x64($sp)
/* 01BA74 0041BA74 AFA20030 */  sw          $v0, 0x30($sp)
/* 01BA78 0041BA78 AFA30034 */  sw          $v1, 0x34($sp)
/* 01BA7C 0041BA7C 910C001B */  lbu         $t4, 0x1B($t0)
/* 01BA80 0041BA80 8FB90034 */  lw          $t9, 0x34($sp)
/* 01BA84 0041BA84 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01BA88 0041BA88 01807825 */  move        $t7, $t4
/* 01BA8C 0041BA8C 01F92821 */  addu        $a1, $t7, $t9
/* 01BA90 0041BA90 00B9082B */  sltu        $at, $a1, $t9
/* 01BA94 0041BA94 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BA98 0041BA98 8FB80030 */  lw          $t8, 0x30($sp)
/* 01BA9C 0041BA9C 000C77C3 */  sra         $t6, $t4, 31
/* 01BAA0 0041BAA0 002E2021 */  addu        $a0, $at, $t6
/* 01BAA4 0041BAA4 24060000 */  addiu       $a2, $zero, 0x0
/* 01BAA8 0041BAA8 24070008 */  addiu       $a3, $zero, 0x8
/* 01BAAC 0041BAAC 0320F809 */  jalr        $t9
/* 01BAB0 0041BAB0 00982021 */   addu       $a0, $a0, $t8
/* 01BAB4 0041BAB4 8FAD0064 */  lw          $t5, 0x64($sp)
/* 01BAB8 0041BAB8 AFA20038 */  sw          $v0, 0x38($sp)
/* 01BABC 0041BABC AFA3003C */  sw          $v1, 0x3C($sp)
/* 01BAC0 0041BAC0 91A9001C */  lbu         $t1, 0x1C($t5)
/* 01BAC4 0041BAC4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01BAC8 0041BAC8 8FA80038 */  lw          $t0, 0x38($sp)
/* 01BACC 0041BACC 01205825 */  move        $t3, $t1
/* 01BAD0 0041BAD0 000957C3 */  sra         $t2, $t1, 31
/* 01BAD4 0041BAD4 8FA9003C */  lw          $t1, 0x3C($sp)
/* 01BAD8 0041BAD8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BADC 0041BADC 24060000 */  addiu       $a2, $zero, 0x0
/* 01BAE0 0041BAE0 01692821 */  addu        $a1, $t3, $t1
/* 01BAE4 0041BAE4 00A9082B */  sltu        $at, $a1, $t1
/* 01BAE8 0041BAE8 002A2021 */  addu        $a0, $at, $t2
/* 01BAEC 0041BAEC 24070008 */  addiu       $a3, $zero, 0x8
/* 01BAF0 0041BAF0 0320F809 */  jalr        $t9
/* 01BAF4 0041BAF4 00882021 */   addu       $a0, $a0, $t0
/* 01BAF8 0041BAF8 8FAC0064 */  lw          $t4, 0x64($sp)
/* 01BAFC 0041BAFC AFA20040 */  sw          $v0, 0x40($sp)
/* 01BB00 0041BB00 AFA30044 */  sw          $v1, 0x44($sp)
/* 01BB04 0041BB04 918E001D */  lbu         $t6, 0x1D($t4)
/* 01BB08 0041BB08 8FAB0044 */  lw          $t3, 0x44($sp)
/* 01BB0C 0041BB0C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01BB10 0041BB10 01C0C825 */  move        $t9, $t6
/* 01BB14 0041BB14 032B2821 */  addu        $a1, $t9, $t3
/* 01BB18 0041BB18 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BB1C 0041BB1C 8FAA0040 */  lw          $t2, 0x40($sp)
/* 01BB20 0041BB20 000EC7C3 */  sra         $t8, $t6, 31
/* 01BB24 0041BB24 00AB082B */  sltu        $at, $a1, $t3
/* 01BB28 0041BB28 00382021 */  addu        $a0, $at, $t8
/* 01BB2C 0041BB2C 24060000 */  addiu       $a2, $zero, 0x0
/* 01BB30 0041BB30 24070008 */  addiu       $a3, $zero, 0x8
/* 01BB34 0041BB34 0320F809 */  jalr        $t9
/* 01BB38 0041BB38 008A2021 */   addu       $a0, $a0, $t2
/* 01BB3C 0041BB3C 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01BB40 0041BB40 AFA20048 */  sw          $v0, 0x48($sp)
/* 01BB44 0041BB44 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01BB48 0041BB48 91ED001E */  lbu         $t5, 0x1E($t7)
/* 01BB4C 0041BB4C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01BB50 0041BB50 8FAC0048 */  lw          $t4, 0x48($sp)
/* 01BB54 0041BB54 01A04825 */  move        $t1, $t5
/* 01BB58 0041BB58 000D47C3 */  sra         $t0, $t5, 31
/* 01BB5C 0041BB5C 8FAD004C */  lw          $t5, 0x4C($sp)
/* 01BB60 0041BB60 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BB64 0041BB64 24060000 */  addiu       $a2, $zero, 0x0
/* 01BB68 0041BB68 012D2821 */  addu        $a1, $t1, $t5
/* 01BB6C 0041BB6C 00AD082B */  sltu        $at, $a1, $t5
/* 01BB70 0041BB70 00282021 */  addu        $a0, $at, $t0
/* 01BB74 0041BB74 24070008 */  addiu       $a3, $zero, 0x8
/* 01BB78 0041BB78 0320F809 */  jalr        $t9
/* 01BB7C 0041BB7C 008C2021 */   addu       $a0, $a0, $t4
/* 01BB80 0041BB80 8FAE0064 */  lw          $t6, 0x64($sp)
/* 01BB84 0041BB84 AFA20050 */  sw          $v0, 0x50($sp)
/* 01BB88 0041BB88 AFA30054 */  sw          $v1, 0x54($sp)
/* 01BB8C 0041BB8C 91D8001F */  lbu         $t8, 0x1F($t6)
/* 01BB90 0041BB90 8FA90054 */  lw          $t1, 0x54($sp)
/* 01BB94 0041BB94 8FA80050 */  lw          $t0, 0x50($sp)
/* 01BB98 0041BB98 03005825 */  move        $t3, $t8
/* 01BB9C 0041BB9C 8FB90060 */  lw          $t9, 0x60($sp)
/* 01BBA0 0041BBA0 01696821 */  addu        $t5, $t3, $t1
/* 01BBA4 0041BBA4 001857C3 */  sra         $t2, $t8, 31
/* 01BBA8 0041BBA8 01A9082B */  sltu        $at, $t5, $t1
/* 01BBAC 0041BBAC 002A6021 */  addu        $t4, $at, $t2
/* 01BBB0 0041BBB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01BBB4 0041BBB4 01886021 */  addu        $t4, $t4, $t0
/* 01BBB8 0041BBB8 AF2C0018 */  sw          $t4, 0x18($t9)
/* 01BBBC 0041BBBC AF2D001C */  sw          $t5, 0x1C($t9)
/* 01BBC0 0041BBC0 8FAF0064 */  lw          $t7, 0x64($sp)
/* 01BBC4 0041BBC4 91EE0014 */  lbu         $t6, 0x14($t7)
/* 01BBC8 0041BBC8 91EA0015 */  lbu         $t2, 0x15($t7)
/* 01BBCC 0041BBCC 91E90016 */  lbu         $t1, 0x16($t7)
/* 01BBD0 0041BBD0 000EC200 */  sll         $t8, $t6, 8
/* 01BBD4 0041BBD4 030A5821 */  addu        $t3, $t8, $t2
/* 01BBD8 0041BBD8 91F90017 */  lbu         $t9, 0x17($t7)
/* 01BBDC 0041BBDC 000B4200 */  sll         $t0, $t3, 8
/* 01BBE0 0041BBE0 8FB80060 */  lw          $t8, 0x60($sp)
/* 01BBE4 0041BBE4 01096021 */  addu        $t4, $t0, $t1
/* 01BBE8 0041BBE8 000C6A00 */  sll         $t5, $t4, 8
/* 01BBEC 0041BBEC 032D7021 */  addu        $t6, $t9, $t5
/* 01BBF0 0041BBF0 AF0E0014 */  sw          $t6, 0x14($t8)
/* 01BBF4 0041BBF4 8FAA0064 */  lw          $t2, 0x64($sp)
/* 01BBF8 0041BBF8 8FAF0060 */  lw          $t7, 0x60($sp)
/* 01BBFC 0041BBFC 91480012 */  lbu         $t0, 0x12($t2)
/* 01BC00 0041BC00 914B0013 */  lbu         $t3, 0x13($t2)
/* 01BC04 0041BC04 00084A00 */  sll         $t1, $t0, 8
/* 01BC08 0041BC08 01696021 */  addu        $t4, $t3, $t1
/* 01BC0C 0041BC0C A5EC0012 */  sh          $t4, 0x12($t7)
/* 01BC10 0041BC10 8FB90064 */  lw          $t9, 0x64($sp)
/* 01BC14 0041BC14 8FA80060 */  lw          $t0, 0x60($sp)
/* 01BC18 0041BC18 932E0010 */  lbu         $t6, 0x10($t9)
/* 01BC1C 0041BC1C 932D0011 */  lbu         $t5, 0x11($t9)
/* 01BC20 0041BC20 000EC200 */  sll         $t8, $t6, 8
/* 01BC24 0041BC24 01B85021 */  addu        $t2, $t5, $t8
/* 01BC28 0041BC28 A50A0010 */  sh          $t2, 0x10($t0)
/* 01BC2C 0041BC2C 8FA90064 */  lw          $t1, 0x64($sp)
/* 01BC30 0041BC30 8FAB0060 */  lw          $t3, 0x60($sp)
/* 01BC34 0041BC34 11690007 */  beq         $t3, $t1, .L0041BC54
/* 01BC38 0041BC38 00000000 */   nop
/* 01BC3C 0041BC3C 8F99810C */  lw          $t9, %call16(memcpy)($gp)
/* 01BC40 0041BC40 01602025 */  move        $a0, $t3
/* 01BC44 0041BC44 01202825 */  move        $a1, $t1
/* 01BC48 0041BC48 0320F809 */  jalr        $t9
/* 01BC4C 0041BC4C 24060010 */   addiu      $a2, $zero, 0x10
/* 01BC50 0041BC50 8FBC0018 */  lw          $gp, 0x18($sp)
.L0041BC54:
/* 01BC54 0041BC54 8FAC0060 */  lw          $t4, 0x60($sp)
/* 01BC58 0041BC58 8FAF005C */  lw          $t7, 0x5C($sp)
/* 01BC5C 0041BC5C 2599FFC0 */  addiu       $t9, $t4, -0x40
/* 01BC60 0041BC60 01EC802B */  sltu        $s0, $t7, $t4
/* 01BC64 0041BC64 1600FE22 */  bnez        $s0, .L0041B4F0
/* 01BC68 0041BC68 AFB90060 */   sw         $t9, 0x60($sp)
.L0041BC6C:
/* 01BC6C 0041BC6C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01BC70 0041BC70 8FB00014 */  lw          $s0, 0x14($sp)
/* 01BC74 0041BC74 27BD0060 */  addiu       $sp, $sp, 0x60
/* 01BC78 0041BC78 03E00008 */  jr          $ra
/* 01BC7C 0041BC7C 00000000 */   nop
