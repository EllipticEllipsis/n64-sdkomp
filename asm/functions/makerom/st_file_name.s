glabel st_file_name # 546
/* 0346BC 004346BC 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 0346C0 004346C0 279CE6A4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDE6A4
/* 0346C4 004346C4 0399E021 */  addu        $gp, $gp, $t9
/* 0346C8 004346C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0346CC 004346CC AFBF001C */  sw          $ra, 0x1C($sp)
/* 0346D0 004346D0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0346D4 004346D4 8C9900D0 */  lw          $t9, 0xD0($a0)
/* 0346D8 004346D8 8C8E00A0 */  lw          $t6, 0xA0($a0)
/* 0346DC 004346DC 000578C0 */  sll         $t7, $a1, 3
/* 0346E0 004346E0 001940C0 */  sll         $t0, $t9, 3
/* 0346E4 004346E4 01E57821 */  addu        $t7, $t7, $a1
/* 0346E8 004346E8 01194021 */  addu        $t0, $t0, $t9
/* 0346EC 004346EC 000840C0 */  sll         $t0, $t0, 3
/* 0346F0 004346F0 000F78C0 */  sll         $t7, $t7, 3
/* 0346F4 004346F4 00084823 */  negu        $t1, $t0
/* 0346F8 004346F8 01CFC021 */  addu        $t8, $t6, $t7
/* 0346FC 004346FC 03095021 */  addu        $t2, $t8, $t1
/* 034700 00434700 8D4B000C */  lw          $t3, 0xC($t2)
/* 034704 00434704 15600003 */  bnez        $t3, .L00434714
/* 034708 00434708 00000000 */   nop
/* 03470C 0043470C 10000016 */  b           .L00434768
/* 034710 00434710 00001025 */   move       $v0, $zero
.L00434714:
/* 034714 00434714 8F99850C */  lw          $t9, %call16(file_string_base)($gp)
/* 034718 00434718 AFA40020 */  sw          $a0, 0x20($sp)
/* 03471C 0043471C AFA50024 */  sw          $a1, 0x24($sp)
/* 034720 00434720 0320F809 */  jalr        $t9
/* 034724 00434724 00000000 */   nop
/* 034728 00434728 8FA40020 */  lw          $a0, 0x20($sp)
/* 03472C 0043472C 8FA50024 */  lw          $a1, 0x24($sp)
/* 034730 00434730 8FBC0018 */  lw          $gp, 0x18($sp)
/* 034734 00434734 8C8F00D0 */  lw          $t7, 0xD0($a0)
/* 034738 00434738 8C8C00A0 */  lw          $t4, 0xA0($a0)
/* 03473C 0043473C 000568C0 */  sll         $t5, $a1, 3
/* 034740 00434740 000FC8C0 */  sll         $t9, $t7, 3
/* 034744 00434744 01A56821 */  addu        $t5, $t5, $a1
/* 034748 00434748 032FC821 */  addu        $t9, $t9, $t7
/* 03474C 0043474C 0019C8C0 */  sll         $t9, $t9, 3
/* 034750 00434750 000D68C0 */  sll         $t5, $t5, 3
/* 034754 00434754 00194023 */  negu        $t0, $t9
/* 034758 00434758 018D7021 */  addu        $t6, $t4, $t5
/* 03475C 0043475C 01C8C021 */  addu        $t8, $t6, $t0
/* 034760 00434760 8F090004 */  lw          $t1, 0x4($t8)
/* 034764 00434764 01221021 */  addu        $v0, $t1, $v0
.L00434768:
/* 034768 00434768 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03476C 0043476C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 034770 00434770 03E00008 */  jr          $ra
/* 034774 00434774 00000000 */   nop