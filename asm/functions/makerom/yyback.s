glabel yyback # 39
/* 012560 00412560 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 012564 00412564 279C0800 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC00800
/* 012568 00412568 0399E021 */  addu        $gp, $gp, $t9
/* 01256C 0041256C 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 012570 00412570 14800003 */  bnez        $a0, .L00412580
/* 012574 00412574 00000000 */   nop
/* 012578 00412578 10000013 */  b           .L004125C8
/* 01257C 0041257C 00001025 */   move       $v0, $zero
.L00412580:
/* 012580 00412580 8C8E0000 */  lw          $t6, 0x0($a0)
/* 012584 00412584 11C0000C */  beqz        $t6, .L004125B8
/* 012588 00412588 00000000 */   nop
.L0041258C:
/* 01258C 0041258C 8C8F0000 */  lw          $t7, 0x0($a0)
/* 012590 00412590 24840004 */  addiu       $a0, $a0, 0x4
/* 012594 00412594 01E53026 */  xor         $a2, $t7, $a1
/* 012598 00412598 2CC60001 */  sltiu       $a2, $a2, 0x1
/* 01259C 0041259C 10C00003 */  beqz        $a2, .L004125AC
/* 0125A0 004125A0 00000000 */   nop
/* 0125A4 004125A4 10000008 */  b           .L004125C8
/* 0125A8 004125A8 24020001 */   addiu      $v0, $zero, 0x1
.L004125AC:
/* 0125AC 004125AC 8C980000 */  lw          $t8, 0x0($a0)
/* 0125B0 004125B0 1700FFF6 */  bnez        $t8, .L0041258C
/* 0125B4 004125B4 00000000 */   nop
.L004125B8:
/* 0125B8 004125B8 10000003 */  b           .L004125C8
/* 0125BC 004125BC 00001025 */   move       $v0, $zero
/* 0125C0 004125C0 10000001 */  b           .L004125C8
/* 0125C4 004125C4 00000000 */   nop
.L004125C8:
/* 0125C8 004125C8 03E00008 */  jr          $ra
/* 0125CC 004125CC 27BD0008 */   addiu      $sp, $sp, 0x8