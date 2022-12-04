glabel func_0042CB6C # 259
/* 02CB6C 0042CB6C AFA60008 */  sw          $a2, 0x8($sp)
/* 02CB70 0042CB70 8C8200FC */  lw          $v0, 0xFC($a0)
/* 02CB74 0042CB74 00A2082B */  sltu        $at, $a1, $v0
/* 02CB78 0042CB78 54200007 */  bnel        $at, $zero, .L0042CB98
/* 02CB7C 0042CB7C 8C980104 */   lw         $t8, 0x104($a0)
/* 02CB80 0042CB80 8C8E0100 */  lw          $t6, 0x100($a0)
/* 02CB84 0042CB84 004E7821 */  addu        $t7, $v0, $t6
/* 02CB88 0042CB88 00AF082B */  sltu        $at, $a1, $t7
/* 02CB8C 0042CB8C 1420000C */  bnez        $at, .L0042CBC0
/* 02CB90 0042CB90 00000000 */   nop
/* 02CB94 0042CB94 8C980104 */  lw          $t8, 0x104($a0)
.L0042CB98:
/* 02CB98 0042CB98 2402FFFF */  addiu       $v0, $zero, -0x1
/* 02CB9C 0042CB9C 00B8082B */  sltu        $at, $a1, $t8
/* 02CBA0 0042CBA0 14200009 */  bnez        $at, .L0042CBC8
/* 02CBA4 0042CBA4 00000000 */   nop
/* 02CBA8 0042CBA8 8C990108 */  lw          $t9, 0x108($a0)
/* 02CBAC 0042CBAC 8C88010C */  lw          $t0, 0x10C($a0)
/* 02CBB0 0042CBB0 03284821 */  addu        $t1, $t9, $t0
/* 02CBB4 0042CBB4 00A9082B */  sltu        $at, $a1, $t1
/* 02CBB8 0042CBB8 10200003 */  beqz        $at, .L0042CBC8
/* 02CBBC 0042CBBC 00000000 */   nop
.L0042CBC0:
/* 02CBC0 0042CBC0 03E00008 */  jr          $ra
/* 02CBC4 0042CBC4 00801025 */   move       $v0, $a0
.L0042CBC8:
/* 02CBC8 0042CBC8 03E00008 */  jr          $ra
/* 02CBCC 0042CBCC 00000000 */   nop
