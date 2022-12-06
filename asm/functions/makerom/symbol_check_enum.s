glabel symbol_check_enum # 614
/* 03C7D8 0043C7D8 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03C7DC 0043C7DC 279C6588 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD6588
/* 03C7E0 0043C7E0 0399E021 */  addu        $gp, $gp, $t9
/* 03C7E4 0043C7E4 27BDFF78 */  addiu       $sp, $sp, -0x88
/* 03C7E8 0043C7E8 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03C7EC 0043C7EC AFB00014 */  sw          $s0, 0x14($sp)
/* 03C7F0 0043C7F0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03C7F4 0043C7F4 AFB2001C */  sw          $s2, 0x1C($sp)
/* 03C7F8 0043C7F8 AFA5008C */  sw          $a1, 0x8C($sp)
/* 03C7FC 0043C7FC 24D00001 */  addiu       $s0, $a2, 0x1
/* 03C800 0043C800 00809025 */  move        $s2, $a0
/* 03C804 0043C804 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03C808 0043C808 AFB10018 */  sw          $s1, 0x18($sp)
/* 03C80C 0043C80C 0320F809 */  jalr        $t9
/* 03C810 0043C810 02002825 */   move       $a1, $s0
/* 03C814 0043C814 24110009 */  addiu       $s1, $zero, 0x9
/* 03C818 0043C818 10510008 */  beq         $v0, $s1, .L0043C83C
/* 03C81C 0043C81C 8FBC0020 */   lw         $gp, 0x20($sp)
.L0043C820:
/* 03C820 0043C820 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03C824 0043C824 26100001 */  addiu       $s0, $s0, 0x1
/* 03C828 0043C828 02002825 */  move        $a1, $s0
/* 03C82C 0043C82C 0320F809 */  jalr        $t9
/* 03C830 0043C830 02402025 */   move       $a0, $s2
/* 03C834 0043C834 1451FFFA */  bne         $v0, $s1, .L0043C820
/* 03C838 0043C838 8FBC0020 */   lw         $gp, 0x20($sp)
.L0043C83C:
/* 03C83C 0043C83C 8F998570 */  lw          $t9, %call16(file_symbol_iaux)($gp)
/* 03C840 0043C840 02402025 */  move        $a0, $s2
/* 03C844 0043C844 8FA5008C */  lw          $a1, 0x8C($sp)
/* 03C848 0043C848 0320F809 */  jalr        $t9
/* 03C84C 0043C84C 02003025 */   move       $a2, $s0
/* 03C850 0043C850 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03C854 0043C854 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03C858 0043C858 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C85C 0043C85C 14410003 */  bne         $v0, $at, .L0043C86C
/* 03C860 0043C860 AFA20030 */   sw         $v0, 0x30($sp)
/* 03C864 0043C864 1000000B */  b           .L0043C894
/* 03C868 0043C868 24020001 */   addiu      $v0, $zero, 0x1
.L0043C86C:
/* 03C86C 0043C86C 8F9985C0 */  lw          $t9, %call16(type_deref)($gp)
/* 03C870 0043C870 AFA0002C */  sw          $zero, 0x2C($sp)
/* 03C874 0043C874 AFB20028 */  sw          $s2, 0x28($sp)
/* 03C878 0043C878 02402025 */  move        $a0, $s2
/* 03C87C 0043C87C 0320F809 */  jalr        $t9
/* 03C880 0043C880 27A50028 */   addiu      $a1, $sp, 0x28
/* 03C884 0043C884 93A20034 */  lbu         $v0, 0x34($sp)
/* 03C888 0043C888 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C88C 0043C88C 3042003F */  andi        $v0, $v0, 0x3F
/* 03C890 0043C890 2C420001 */  sltiu       $v0, $v0, 0x1
.L0043C894:
/* 03C894 0043C894 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03C898 0043C898 8FB00014 */  lw          $s0, 0x14($sp)
/* 03C89C 0043C89C 8FB10018 */  lw          $s1, 0x18($sp)
/* 03C8A0 0043C8A0 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03C8A4 0043C8A4 03E00008 */  jr          $ra
/* 03C8A8 0043C8A8 27BD0088 */   addiu      $sp, $sp, 0x88
