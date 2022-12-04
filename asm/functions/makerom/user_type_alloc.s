glabel user_type_alloc # 609
/* 03C0A4 0043C0A4 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03C0A8 0043C0A8 279C6CBC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD6CBC
/* 03C0AC 0043C0AC 0399E021 */  addu        $gp, $gp, $t9
/* 03C0B0 0043C0B0 8F858700 */  lw          $a1, %got(tinx)($gp)
/* 03C0B4 0043C0B4 8CA30000 */  lw          $v1, 0x0($a1)
/* 03C0B8 0043C0B8 00037023 */  negu        $t6, $v1
/* 03C0BC 0043C0BC 29C10200 */  slti        $at, $t6, 0x200
/* 03C0C0 0043C0C0 14200003 */  bnez        $at, .L0043C0D0
/* 03C0C4 0043C0C4 246FFFFF */   addiu      $t7, $v1, -0x1
/* 03C0C8 0043C0C8 03E00008 */  jr          $ra
/* 03C0CC 0043C0CC 00001025 */   move       $v0, $zero
.L0043C0D0:
/* 03C0D0 0043C0D0 8F8887D0 */  lw          $t0, %got(usertype)($gp)
/* 03C0D4 0043C0D4 0003C023 */  negu        $t8, $v1
/* 03C0D8 0043C0D8 0018C880 */  sll         $t9, $t8, 2
/* 03C0DC 0043C0DC ACAF0000 */  sw          $t7, 0x0($a1)
/* 03C0E0 0043C0E0 03281021 */  addu        $v0, $t9, $t0
/* 03C0E4 0043C0E4 03E00008 */  jr          $ra
/* 03C0E8 0043C0E8 00000000 */   nop
