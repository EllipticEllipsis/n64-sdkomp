glabel ldnshread # 237
/* 02AF04 0042AF04 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02AF08 0042AF08 279C7E5C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE7E5C
/* 02AF0C 0042AF0C 0399E021 */  addu        $gp, $gp, $t9
/* 02AF10 0042AF10 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02AF14 0042AF14 AFBF002C */  sw          $ra, 0x2C($sp)
/* 02AF18 0042AF18 AFBC0028 */  sw          $gp, 0x28($sp)
/* 02AF1C 0042AF1C AFB30024 */  sw          $s3, 0x24($sp)
/* 02AF20 0042AF20 AFB20020 */  sw          $s2, 0x20($sp)
/* 02AF24 0042AF24 AFB1001C */  sw          $s1, 0x1C($sp)
/* 02AF28 0042AF28 AFB00018 */  sw          $s0, 0x18($sp)
/* 02AF2C 0042AF2C AFA60038 */  sw          $a2, 0x38($sp)
/* 02AF30 0042AF30 948E000E */  lhu         $t6, 0xE($a0)
/* 02AF34 0042AF34 00808825 */  move        $s1, $a0
/* 02AF38 0042AF38 00A09825 */  move        $s3, $a1
/* 02AF3C 0042AF3C 11C0002D */  beqz        $t6, .L0042AFF4
/* 02AF40 0042AF40 00009025 */   move       $s2, $zero
/* 02AF44 0042AF44 00008025 */  move        $s0, $zero
/* 02AF48 0042AF48 8E2F002C */  lw          $t7, 0x2C($s1)
.L0042AF4C:
/* 02AF4C 0042AF4C 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 02AF50 0042AF50 8DF80098 */  lw          $t8, 0x98($t7)
/* 02AF54 0042AF54 0320F809 */  jalr        $t9
/* 02AF58 0042AF58 03102021 */   addu       $a0, $t8, $s0
/* 02AF5C 0042AF5C 28410009 */  slti        $at, $v0, 0x9
/* 02AF60 0042AF60 8FBC0028 */  lw          $gp, 0x28($sp)
/* 02AF64 0042AF64 14200002 */  bnez        $at, .L0042AF70
/* 02AF68 0042AF68 00403025 */   move       $a2, $v0
/* 02AF6C 0042AF6C 24060008 */  addiu       $a2, $zero, 0x8
.L0042AF70:
/* 02AF70 0042AF70 8E39002C */  lw          $t9, 0x2C($s1)
/* 02AF74 0042AF74 02602025 */  move        $a0, $s3
/* 02AF78 0042AF78 8F280098 */  lw          $t0, 0x98($t9)
/* 02AF7C 0042AF7C 8F99814C */  lw          $t9, %call16(strncmp)($gp)
/* 02AF80 0042AF80 01102821 */  addu        $a1, $t0, $s0
/* 02AF84 0042AF84 0320F809 */  jalr        $t9
/* 02AF88 0042AF88 00000000 */   nop
/* 02AF8C 0042AF8C 14400013 */  bnez        $v0, .L0042AFDC
/* 02AF90 0042AF90 8FBC0028 */   lw         $gp, 0x28($sp)
/* 02AF94 0042AF94 8E2A002C */  lw          $t2, 0x2C($s1)
/* 02AF98 0042AF98 8FA90038 */  lw          $t1, 0x38($sp)
/* 02AF9C 0042AF9C 8D4B0098 */  lw          $t3, 0x98($t2)
/* 02AFA0 0042AFA0 01706021 */  addu        $t4, $t3, $s0
/* 02AFA4 0042AFA4 258F0024 */  addiu       $t7, $t4, 0x24
.L0042AFA8:
/* 02AFA8 0042AFA8 8D8E0000 */  lw          $t6, 0x0($t4)
/* 02AFAC 0042AFAC 258C000C */  addiu       $t4, $t4, 0xC
/* 02AFB0 0042AFB0 2529000C */  addiu       $t1, $t1, 0xC
/* 02AFB4 0042AFB4 AD2EFFF4 */  sw          $t6, -0xC($t1)
/* 02AFB8 0042AFB8 8D8DFFF8 */  lw          $t5, -0x8($t4)
/* 02AFBC 0042AFBC AD2DFFF8 */  sw          $t5, -0x8($t1)
/* 02AFC0 0042AFC0 8D8EFFFC */  lw          $t6, -0x4($t4)
/* 02AFC4 0042AFC4 158FFFF8 */  bne         $t4, $t7, .L0042AFA8
/* 02AFC8 0042AFC8 AD2EFFFC */   sw         $t6, -0x4($t1)
/* 02AFCC 0042AFCC 8D8E0000 */  lw          $t6, 0x0($t4)
/* 02AFD0 0042AFD0 24020001 */  addiu       $v0, $zero, 0x1
/* 02AFD4 0042AFD4 10000008 */  b           .L0042AFF8
/* 02AFD8 0042AFD8 AD2E0000 */   sw         $t6, 0x0($t1)
.L0042AFDC:
/* 02AFDC 0042AFDC 9638000E */  lhu         $t8, 0xE($s1)
/* 02AFE0 0042AFE0 26520001 */  addiu       $s2, $s2, 0x1
/* 02AFE4 0042AFE4 26100028 */  addiu       $s0, $s0, 0x28
/* 02AFE8 0042AFE8 0258082B */  sltu        $at, $s2, $t8
/* 02AFEC 0042AFEC 5420FFD7 */  bnel        $at, $zero, .L0042AF4C
/* 02AFF0 0042AFF0 8E2F002C */   lw         $t7, 0x2C($s1)
.L0042AFF4:
/* 02AFF4 0042AFF4 00001025 */  move        $v0, $zero
.L0042AFF8:
/* 02AFF8 0042AFF8 8FBF002C */  lw          $ra, 0x2C($sp)
/* 02AFFC 0042AFFC 8FB00018 */  lw          $s0, 0x18($sp)
/* 02B000 0042B000 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02B004 0042B004 8FB20020 */  lw          $s2, 0x20($sp)
/* 02B008 0042B008 8FB30024 */  lw          $s3, 0x24($sp)
/* 02B00C 0042B00C 03E00008 */  jr          $ra
/* 02B010 0042B010 27BD0030 */   addiu      $sp, $sp, 0x30
