glabel obj_nsections # 264
/* 02D1B0 0042D1B0 8C82008C */  lw          $v0, 0x8C($a0)
/* 02D1B4 0042D1B4 24010002 */  addiu       $at, $zero, 0x2
/* 02D1B8 0042D1B8 10410006 */  beq         $v0, $at, .L0042D1D4
/* 02D1BC 0042D1BC 24010003 */   addiu      $at, $zero, 0x3
/* 02D1C0 0042D1C0 54410008 */  bnel        $v0, $at, .L0042D1E4
/* 02D1C4 0042D1C4 00001025 */   move       $v0, $zero
/* 02D1C8 0042D1C8 8C8E00E0 */  lw          $t6, 0xE0($a0)
/* 02D1CC 0042D1CC 03E00008 */  jr          $ra
/* 02D1D0 0042D1D0 95C20030 */   lhu        $v0, 0x30($t6)
.L0042D1D4:
/* 02D1D4 0042D1D4 8C8F0090 */  lw          $t7, 0x90($a0)
/* 02D1D8 0042D1D8 03E00008 */  jr          $ra
/* 02D1DC 0042D1DC 95E20002 */   lhu        $v0, 0x2($t7)
/* 02D1E0 0042D1E0 00001025 */  move        $v0, $zero
.L0042D1E4:
/* 02D1E4 0042D1E4 03E00008 */  jr          $ra
/* 02D1E8 0042D1E8 00000000 */   nop
