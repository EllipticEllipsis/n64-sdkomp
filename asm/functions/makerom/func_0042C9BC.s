glabel func_0042C9BC # 255
/* 02C9BC 0042C9BC AFA60008 */  sw          $a2, 0x8($sp)
/* 02C9C0 0042C9C0 8C82009C */  lw          $v0, 0x9C($a0)
/* 02C9C4 0042C9C4 54400004 */  bnel        $v0, $zero, .L0042C9D8
/* 02C9C8 0042C9C8 8C8300D4 */   lw         $v1, 0xD4($a0)
/* 02C9CC 0042C9CC 03E00008 */  jr          $ra
/* 02C9D0 0042C9D0 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02C9D4 0042C9D4 8C8300D4 */  lw          $v1, 0xD4($a0)
.L0042C9D8:
/* 02C9D8 0042C9D8 00A3082B */  sltu        $at, $a1, $v1
/* 02C9DC 0042C9DC 54200009 */  bnel        $at, $zero, .L0042CA04
/* 02C9E0 0042C9E0 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02C9E4 0042C9E4 8C4E0018 */  lw          $t6, 0x18($v0)
/* 02C9E8 0042C9E8 006E7821 */  addu        $t7, $v1, $t6
/* 02C9EC 0042C9EC 00AF082B */  sltu        $at, $a1, $t7
/* 02C9F0 0042C9F0 50200004 */  beql        $at, $zero, .L0042CA04
/* 02C9F4 0042C9F4 2402FFFF */   addiu      $v0, $zero, -0x1
/* 02C9F8 0042C9F8 03E00008 */  jr          $ra
/* 02C9FC 0042C9FC 00801025 */   move       $v0, $a0
/* 02CA00 0042CA00 2402FFFF */  addiu       $v0, $zero, -0x1
.L0042CA04:
/* 02CA04 0042CA04 03E00008 */  jr          $ra
/* 02CA08 0042CA08 00000000 */   nop
