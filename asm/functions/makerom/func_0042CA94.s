glabel func_0042CA94 # 257
/* 02CA94 0042CA94 AFA60008 */  sw          $a2, 0x8($sp)
/* 02CA98 0042CA98 8C82009C */  lw          $v0, 0x9C($a0)
/* 02CA9C 0042CA9C 54400004 */  bnel        $v0, $zero, .L0042CAB0
/* 02CAA0 0042CAA0 8C8300D0 */   lw         $v1, 0xD0($a0)
/* 02CAA4 0042CAA4 03E00008 */  jr          $ra
/* 02CAA8 0042CAA8 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02CAAC 0042CAAC 8C8300D0 */  lw          $v1, 0xD0($a0)
.L0042CAB0:
/* 02CAB0 0042CAB0 00A3082B */  sltu        $at, $a1, $v1
/* 02CAB4 0042CAB4 54200009 */  bnel        $at, $zero, .L0042CADC
/* 02CAB8 0042CAB8 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02CABC 0042CABC 8C4E0048 */  lw          $t6, 0x48($v0)
/* 02CAC0 0042CAC0 006E7821 */  addu        $t7, $v1, $t6
/* 02CAC4 0042CAC4 00AF082B */  sltu        $at, $a1, $t7
/* 02CAC8 0042CAC8 50200004 */  beql        $at, $zero, .L0042CADC
/* 02CACC 0042CACC 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02CAD0 0042CAD0 03E00008 */  jr          $ra
/* 02CAD4 0042CAD4 00801025 */   move       $v0, $a0
/* 02CAD8 0042CAD8 2402FFFF */  addiu       $v0, $zero, -0x1
.L0042CADC:
/* 02CADC 0042CADC 03E00008 */  jr          $ra
/* 02CAE0 0042CAE0 00000000 */   nop
