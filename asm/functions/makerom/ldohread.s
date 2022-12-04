glabel ldohread # 235
/* 02AC64 0042AC64 8C8E002C */  lw          $t6, 0x2C($a0)
/* 02AC68 0042AC68 00A04025 */  move        $t0, $a1
/* 02AC6C 0042AC6C 00001025 */  move        $v0, $zero
/* 02AC70 0042AC70 8DC30094 */  lw          $v1, 0x94($t6)
/* 02AC74 0042AC74 10600011 */  beqz        $v1, .L0042ACBC
/* 02AC78 0042AC78 24690030 */   addiu      $t1, $v1, 0x30
/* 02AC7C 0042AC7C 0060C825 */  move        $t9, $v1
.L0042AC80:
/* 02AC80 0042AC80 8F380000 */  lw          $t8, 0x0($t9)
/* 02AC84 0042AC84 2739000C */  addiu       $t9, $t9, 0xC
/* 02AC88 0042AC88 2508000C */  addiu       $t0, $t0, 0xC
/* 02AC8C 0042AC8C AD18FFF4 */  sw          $t8, -0xC($t0)
/* 02AC90 0042AC90 8F2FFFF8 */  lw          $t7, -0x8($t9)
/* 02AC94 0042AC94 AD0FFFF8 */  sw          $t7, -0x8($t0)
/* 02AC98 0042AC98 8F38FFFC */  lw          $t8, -0x4($t9)
/* 02AC9C 0042AC9C 1729FFF8 */  bne         $t9, $t1, .L0042AC80
/* 02ACA0 0042ACA0 AD18FFFC */   sw         $t8, -0x4($t0)
/* 02ACA4 0042ACA4 8F380000 */  lw          $t8, 0x0($t9)
/* 02ACA8 0042ACA8 24020001 */  addiu       $v0, $zero, 0x1
/* 02ACAC 0042ACAC AD180000 */  sw          $t8, 0x0($t0)
/* 02ACB0 0042ACB0 8F2F0004 */  lw          $t7, 0x4($t9)
/* 02ACB4 0042ACB4 03E00008 */  jr          $ra
/* 02ACB8 0042ACB8 AD0F0004 */   sw         $t7, 0x4($t0)
.L0042ACBC:
/* 02ACBC 0042ACBC 03E00008 */  jr          $ra
/* 02ACC0 0042ACC0 00000000 */   nop
