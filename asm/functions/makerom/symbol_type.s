glabel symbol_type # 591
/* 03AF6C 0043AF6C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03AF70 0043AF70 279C7DF4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD7DF4
/* 03AF74 0043AF74 0399E021 */  addu        $gp, $gp, $t9
/* 03AF78 0043AF78 04A10009 */  bgez        $a1, .L0043AFA0
/* 03AF7C 0043AF7C 00057023 */   negu       $t6, $a1
/* 03AF80 0043AF80 8F9887D4 */  lw          $t8, %got(usersymbol)($gp)
/* 03AF84 0043AF84 000E7880 */  sll         $t7, $t6, 2
/* 03AF88 0043AF88 01EE7823 */  subu        $t7, $t7, $t6
/* 03AF8C 0043AF8C 000F7880 */  sll         $t7, $t7, 2
/* 03AF90 0043AF90 01F8C821 */  addu        $t9, $t7, $t8
/* 03AF94 0043AF94 8F220008 */  lw          $v0, 0x8($t9)
/* 03AF98 0043AF98 03E00008 */  jr          $ra
/* 03AF9C 0043AF9C 00021682 */   srl        $v0, $v0, 26
.L0043AFA0:
/* 03AFA0 0043AFA0 8C8300D8 */  lw          $v1, 0xD8($a0)
/* 03AFA4 0043AFA4 00057880 */  sll         $t7, $a1, 2
/* 03AFA8 0043AFA8 00054900 */  sll         $t1, $a1, 4
/* 03AFAC 0043AFAC 00A3082B */  sltu        $at, $a1, $v1
/* 03AFB0 0043AFB0 14200009 */  bnez        $at, .L0043AFD8
/* 03AFB4 0043AFB4 01E57823 */   subu       $t7, $t7, $a1
/* 03AFB8 0043AFB8 8C8800AC */  lw          $t0, 0xAC($a0)
/* 03AFBC 0043AFBC 00035900 */  sll         $t3, $v1, 4
/* 03AFC0 0043AFC0 000B6023 */  negu        $t4, $t3
/* 03AFC4 0043AFC4 01095021 */  addu        $t2, $t0, $t1
/* 03AFC8 0043AFC8 014C6821 */  addu        $t5, $t2, $t4
/* 03AFCC 0043AFCC 8DA2000C */  lw          $v0, 0xC($t5)
/* 03AFD0 0043AFD0 03E00008 */  jr          $ra
/* 03AFD4 0043AFD4 00021682 */   srl        $v0, $v0, 26
.L0043AFD8:
/* 03AFD8 0043AFD8 8C9900CC */  lw          $t9, 0xCC($a0)
/* 03AFDC 0043AFDC 8C8E00A8 */  lw          $t6, 0xA8($a0)
/* 03AFE0 0043AFE0 000F7880 */  sll         $t7, $t7, 2
/* 03AFE4 0043AFE4 00194080 */  sll         $t0, $t9, 2
/* 03AFE8 0043AFE8 01194023 */  subu        $t0, $t0, $t9
/* 03AFEC 0043AFEC 00084080 */  sll         $t0, $t0, 2
/* 03AFF0 0043AFF0 00084823 */  negu        $t1, $t0
/* 03AFF4 0043AFF4 01CFC021 */  addu        $t8, $t6, $t7
/* 03AFF8 0043AFF8 03095821 */  addu        $t3, $t8, $t1
/* 03AFFC 0043AFFC 8D620008 */  lw          $v0, 0x8($t3)
/* 03B000 0043B000 00021682 */  srl         $v0, $v0, 26
/* 03B004 0043B004 03E00008 */  jr          $ra
/* 03B008 0043B008 00000000 */   nop
