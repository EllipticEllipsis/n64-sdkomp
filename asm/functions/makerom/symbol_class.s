glabel symbol_class # 590
/* 03AEC0 0043AEC0 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03AEC4 0043AEC4 279C7EA0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD7EA0
/* 03AEC8 0043AEC8 0399E021 */  addu        $gp, $gp, $t9
/* 03AECC 0043AECC 04A1000A */  bgez        $a1, .L0043AEF8
/* 03AED0 0043AED0 00057023 */   negu       $t6, $a1
/* 03AED4 0043AED4 8F9887D4 */  lw          $t8, %got(usersymbol)($gp)
/* 03AED8 0043AED8 000E7880 */  sll         $t7, $t6, 2
/* 03AEDC 0043AEDC 01EE7823 */  subu        $t7, $t7, $t6
/* 03AEE0 0043AEE0 000F7880 */  sll         $t7, $t7, 2
/* 03AEE4 0043AEE4 01F8C821 */  addu        $t9, $t7, $t8
/* 03AEE8 0043AEE8 8F220008 */  lw          $v0, 0x8($t9)
/* 03AEEC 0043AEEC 00021180 */  sll         $v0, $v0, 6
/* 03AEF0 0043AEF0 03E00008 */  jr          $ra
/* 03AEF4 0043AEF4 000216C2 */   srl        $v0, $v0, 27
.L0043AEF8:
/* 03AEF8 0043AEF8 8C8300D8 */  lw          $v1, 0xD8($a0)
/* 03AEFC 0043AEFC 00057880 */  sll         $t7, $a1, 2
/* 03AF00 0043AF00 00054900 */  sll         $t1, $a1, 4
/* 03AF04 0043AF04 00A3082B */  sltu        $at, $a1, $v1
/* 03AF08 0043AF08 1420000A */  bnez        $at, .L0043AF34
/* 03AF0C 0043AF0C 01E57823 */   subu       $t7, $t7, $a1
/* 03AF10 0043AF10 8C8800AC */  lw          $t0, 0xAC($a0)
/* 03AF14 0043AF14 00035900 */  sll         $t3, $v1, 4
/* 03AF18 0043AF18 000B6023 */  negu        $t4, $t3
/* 03AF1C 0043AF1C 01095021 */  addu        $t2, $t0, $t1
/* 03AF20 0043AF20 014C6821 */  addu        $t5, $t2, $t4
/* 03AF24 0043AF24 8DA2000C */  lw          $v0, 0xC($t5)
/* 03AF28 0043AF28 00021180 */  sll         $v0, $v0, 6
/* 03AF2C 0043AF2C 03E00008 */  jr          $ra
/* 03AF30 0043AF30 000216C2 */   srl        $v0, $v0, 27
.L0043AF34:
/* 03AF34 0043AF34 8C9900CC */  lw          $t9, 0xCC($a0)
/* 03AF38 0043AF38 8C8E00A8 */  lw          $t6, 0xA8($a0)
/* 03AF3C 0043AF3C 000F7880 */  sll         $t7, $t7, 2
/* 03AF40 0043AF40 00194080 */  sll         $t0, $t9, 2
/* 03AF44 0043AF44 01194023 */  subu        $t0, $t0, $t9
/* 03AF48 0043AF48 00084080 */  sll         $t0, $t0, 2
/* 03AF4C 0043AF4C 00084823 */  negu        $t1, $t0
/* 03AF50 0043AF50 01CFC021 */  addu        $t8, $t6, $t7
/* 03AF54 0043AF54 03095821 */  addu        $t3, $t8, $t1
/* 03AF58 0043AF58 8D620008 */  lw          $v0, 0x8($t3)
/* 03AF5C 0043AF5C 00021180 */  sll         $v0, $v0, 6
/* 03AF60 0043AF60 000216C2 */  srl         $v0, $v0, 27
/* 03AF64 0043AF64 03E00008 */  jr          $ra
/* 03AF68 0043AF68 00000000 */   nop
