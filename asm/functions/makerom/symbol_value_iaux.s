glabel symbol_value_iaux # 598
/* 03B7A4 0043B7A4 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03B7A8 0043B7A8 279C75BC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD75BC
/* 03B7AC 0043B7AC 0399E021 */  addu        $gp, $gp, $t9
/* 03B7B0 0043B7B0 8F998568 */  lw          $t9, %call16(symbol_value)($gp)
/* 03B7B4 0043B7B4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03B7B8 0043B7B8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03B7BC 0043B7BC AFBC0018 */  sw          $gp, 0x18($sp)
/* 03B7C0 0043B7C0 AFA40028 */  sw          $a0, 0x28($sp)
/* 03B7C4 0043B7C4 0320F809 */  jalr        $t9
/* 03B7C8 0043B7C8 AFA5002C */   sw         $a1, 0x2C($sp)
/* 03B7CC 0043B7CC 8FA40028 */  lw          $a0, 0x28($sp)
/* 03B7D0 0043B7D0 8FA5002C */  lw          $a1, 0x2C($sp)
/* 03B7D4 0043B7D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B7D8 0043B7D8 8C8300D8 */  lw          $v1, 0xD8($a0)
/* 03B7DC 0043B7DC 00403825 */  move        $a3, $v0
/* 03B7E0 0043B7E0 00057900 */  sll         $t7, $a1, 4
/* 03B7E4 0043B7E4 00A3082B */  sltu        $at, $a1, $v1
/* 03B7E8 0043B7E8 14200009 */  bnez        $at, .L0043B810
/* 03B7EC 0043B7EC 0003C900 */   sll        $t9, $v1, 4
/* 03B7F0 0043B7F0 8C8E00AC */  lw          $t6, 0xAC($a0)
/* 03B7F4 0043B7F4 00194023 */  negu        $t0, $t9
/* 03B7F8 0043B7F8 8C8B00D0 */  lw          $t3, 0xD0($a0)
/* 03B7FC 0043B7FC 01CFC021 */  addu        $t8, $t6, $t7
/* 03B800 0043B800 03084821 */  addu        $t1, $t8, $t0
/* 03B804 0043B804 952A0002 */  lhu         $t2, 0x2($t1)
/* 03B808 0043B808 1000000A */  b           .L0043B834
/* 03B80C 0043B80C 014B3021 */   addu       $a2, $t2, $t3
.L0043B810:
/* 03B810 0043B810 8F9984F0 */  lw          $t9, %call16(symbol_to_file)($gp)
/* 03B814 0043B814 AFA40028 */  sw          $a0, 0x28($sp)
/* 03B818 0043B818 AFA70020 */  sw          $a3, 0x20($sp)
/* 03B81C 0043B81C 0320F809 */  jalr        $t9
/* 03B820 0043B820 00000000 */   nop
/* 03B824 0043B824 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B828 0043B828 8FA40028 */  lw          $a0, 0x28($sp)
/* 03B82C 0043B82C 8FA70020 */  lw          $a3, 0x20($sp)
/* 03B830 0043B830 00403025 */  move        $a2, $v0
.L0043B834:
/* 03B834 0043B834 8F998508 */  lw          $t9, %call16(file_type_base)($gp)
/* 03B838 0043B838 00C02825 */  move        $a1, $a2
/* 03B83C 0043B83C AFA70020 */  sw          $a3, 0x20($sp)
/* 03B840 0043B840 0320F809 */  jalr        $t9
/* 03B844 0043B844 00000000 */   nop
/* 03B848 0043B848 8FA70020 */  lw          $a3, 0x20($sp)
/* 03B84C 0043B84C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03B850 0043B850 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03B854 0043B854 00E23821 */  addu        $a3, $a3, $v0
/* 03B858 0043B858 00E01025 */  move        $v0, $a3
/* 03B85C 0043B85C 03E00008 */  jr          $ra
/* 03B860 0043B860 27BD0028 */   addiu      $sp, $sp, 0x28
