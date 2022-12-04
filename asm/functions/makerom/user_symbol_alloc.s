glabel user_symbol_alloc # 607
/* 03C02C 0043C02C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03C030 0043C030 279C6D34 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD6D34
/* 03C034 0043C034 0399E021 */  addu        $gp, $gp, $t9
/* 03C038 0043C038 8F8586FC */  lw          $a1, %got(sinx)($gp)
/* 03C03C 0043C03C 8CA30000 */  lw          $v1, 0x0($a1)
/* 03C040 0043C040 00037023 */  negu        $t6, $v1
/* 03C044 0043C044 29C10200 */  slti        $at, $t6, 0x200
/* 03C048 0043C048 14200003 */  bnez        $at, .L0043C058
/* 03C04C 0043C04C 246FFFFF */   addiu      $t7, $v1, -0x1
/* 03C050 0043C050 03E00008 */  jr          $ra
/* 03C054 0043C054 00001025 */   move       $v0, $zero
.L0043C058:
/* 03C058 0043C058 0003C023 */  negu        $t8, $v1
/* 03C05C 0043C05C 8F8887D4 */  lw          $t0, %got(usersymbol)($gp)
/* 03C060 0043C060 0018C880 */  sll         $t9, $t8, 2
/* 03C064 0043C064 0338C823 */  subu        $t9, $t9, $t8
/* 03C068 0043C068 0019C880 */  sll         $t9, $t9, 2
/* 03C06C 0043C06C ACAF0000 */  sw          $t7, 0x0($a1)
/* 03C070 0043C070 03281021 */  addu        $v0, $t9, $t0
/* 03C074 0043C074 03E00008 */  jr          $ra
/* 03C078 0043C078 00000000 */   nop
