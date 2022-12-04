glabel elfhash # 268
/* 02DD08 0042DD08 80820000 */  lb          $v0, 0x0($a0)
/* 02DD0C 0042DD0C 00001825 */  move        $v1, $zero
/* 02DD10 0042DD10 3C07F000 */  lui         $a3, (0xF0000000 >> 16)
/* 02DD14 0042DD14 1040000D */  beqz        $v0, .L0042DD4C
/* 02DD18 0042DD18 00037100 */   sll        $t6, $v1, 4
.L0042DD1C:
/* 02DD1C 0042DD1C 004E1821 */  addu        $v1, $v0, $t6
/* 02DD20 0042DD20 00673024 */  and         $a2, $v1, $a3
/* 02DD24 0042DD24 24840001 */  addiu       $a0, $a0, 0x1
/* 02DD28 0042DD28 10C00003 */  beqz        $a2, .L0042DD38
/* 02DD2C 0042DD2C 00C02825 */   move       $a1, $a2
/* 02DD30 0042DD30 00067E02 */  srl         $t7, $a2, 24
/* 02DD34 0042DD34 006F1826 */  xor         $v1, $v1, $t7
.L0042DD38:
/* 02DD38 0042DD38 80820000 */  lb          $v0, 0x0($a0)
/* 02DD3C 0042DD3C 00A0C027 */  not         $t8, $a1
/* 02DD40 0042DD40 00781824 */  and         $v1, $v1, $t8
/* 02DD44 0042DD44 5440FFF5 */  bnel        $v0, $zero, .L0042DD1C
/* 02DD48 0042DD48 00037100 */   sll        $t6, $v1, 4
.L0042DD4C:
/* 02DD4C 0042DD4C 03E00008 */  jr          $ra
/* 02DD50 0042DD50 00601025 */   move       $v0, $v1
