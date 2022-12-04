glabel symbol_value_isym # 597
/* 03B6E4 0043B6E4 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03B6E8 0043B6E8 279C767C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD767C
/* 03B6EC 0043B6EC 0399E021 */  addu        $gp, $gp, $t9
/* 03B6F0 0043B6F0 8F998568 */  lw          $t9, %call16(symbol_value)($gp)
/* 03B6F4 0043B6F4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03B6F8 0043B6F8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B6FC 0043B6FC AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B700 0043B700 AFA40028 */  sw          $a0, 0x28($sp)
/* 03B704 0043B704 0320F809 */  jalr        $t9
/* 03B708 0043B708 AFA5002C */   sw         $a1, 0x2C($sp)
/* 03B70C 0043B70C 8FA40028 */  lw          $a0, 0x28($sp)
/* 03B710 0043B710 8FA5002C */  lw          $a1, 0x2C($sp)
/* 03B714 0043B714 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B718 0043B718 8C8300D8 */  lw          $v1, 0xD8($a0)
/* 03B71C 0043B71C 00403825 */  move        $a3, $v0
/* 03B720 0043B720 00057900 */  sll         $t7, $a1, 4
/* 03B724 0043B724 00A3082B */  sltu        $at, $a1, $v1
/* 03B728 0043B728 14200009 */  bnez        $at, .L0043B750
/* 03B72C 0043B72C 0003C900 */   sll        $t9, $v1, 4
/* 03B730 0043B730 8C8E00AC */  lw          $t6, 0xAC($a0)
/* 03B734 0043B734 00194023 */  negu        $t0, $t9
/* 03B738 0043B738 8C8B00D0 */  lw          $t3, 0xD0($a0)
/* 03B73C 0043B73C 01CFC021 */  addu        $t8, $t6, $t7
/* 03B740 0043B740 03084821 */  addu        $t1, $t8, $t0
/* 03B744 0043B744 952A0002 */  lhu         $t2, 0x2($t1)
/* 03B748 0043B748 1000000A */  b           .L0043B774
/* 03B74C 0043B74C 014B3021 */   addu       $a2, $t2, $t3
.L0043B750:
/* 03B750 0043B750 8F9984F0 */  lw          $t9, %call16(symbol_to_file)($gp)
/* 03B754 0043B754 AFA40028 */  sw          $a0, 0x28($sp)
/* 03B758 0043B758 AFA70020 */  sw          $a3, 0x20($sp)
/* 03B75C 0043B75C 0320F809 */  jalr        $t9
/* 03B760 0043B760 00000000 */   nop
/* 03B764 0043B764 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B768 0043B768 8FA40028 */  lw          $a0, 0x28($sp)
/* 03B76C 0043B76C 8FA70020 */  lw          $a3, 0x20($sp)
/* 03B770 0043B770 00403025 */  move        $a2, $v0
.L0043B774:
/* 03B774 0043B774 8F9984FC */  lw          $t9, %call16(file_symbol)($gp)
/* 03B778 0043B778 00C02825 */  move        $a1, $a2
/* 03B77C 0043B77C AFA70020 */  sw          $a3, 0x20($sp)
/* 03B780 0043B780 0320F809 */  jalr        $t9
/* 03B784 0043B784 00000000 */   nop
/* 03B788 0043B788 8FA70020 */  lw          $a3, 0x20($sp)
/* 03B78C 0043B78C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B790 0043B790 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B794 0043B794 00E23821 */  addu        $a3, $a3, $v0
/* 03B798 0043B798 00E01025 */  move        $v0, $a3
/* 03B79C 0043B79C 03E00008 */  jr          $ra
/* 03B7A0 0043B7A0 27BD0028 */   addiu      $sp, $sp, 0x28
