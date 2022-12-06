.section .rodata
glabel STR_10006F90
/* 046F90 10006F90 */ .asciz ".dynamic"
                      .balign 4


.section .text
glabel get_dynamic_offset # 265
/* 02D1EC 0042D1EC 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02D1F0 0042D1F0 279C5B74 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE5B74
/* 02D1F4 0042D1F4 0399E021 */  addu        $gp, $gp, $t9
/* 02D1F8 0042D1F8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02D1FC 0042D1FC AFBF002C */  sw          $ra, 0x2C($sp)
/* 02D200 0042D200 AFBC0028 */  sw          $gp, 0x28($sp)
/* 02D204 0042D204 AFB40024 */  sw          $s4, 0x24($sp)
/* 02D208 0042D208 AFB30020 */  sw          $s3, 0x20($sp)
/* 02D20C 0042D20C AFB2001C */  sw          $s2, 0x1C($sp)
/* 02D210 0042D210 AFB10018 */  sw          $s1, 0x18($sp)
/* 02D214 0042D214 AFB00014 */  sw          $s0, 0x14($sp)
/* 02D218 0042D218 948E0010 */  lhu         $t6, 0x10($a0)
/* 02D21C 0042D21C 948F0002 */  lhu         $t7, 0x2($a0)
/* 02D220 0042D220 00809825 */  move        $s3, $a0
/* 02D224 0042D224 01C51021 */  addu        $v0, $t6, $a1
/* 02D228 0042D228 24420014 */  addiu       $v0, $v0, 0x14
/* 02D22C 0042D22C 11E00014 */  beqz        $t7, .L0042D280
/* 02D230 0042D230 00008025 */   move       $s0, $zero
/* 02D234 0042D234 8F94802C */  lw          $s4, %got(STR_10006F90)($gp)
/* 02D238 0042D238 00408825 */  move        $s1, $v0
/* 02D23C 0042D23C 26946F90 */  addiu       $s4, $s4, %lo(STR_10006F90)
.L0042D240:
/* 02D240 0042D240 8F99814C */  lw          $t9, %call16(strncmp)($gp)
/* 02D244 0042D244 02209025 */  move        $s2, $s1
/* 02D248 0042D248 02202025 */  move        $a0, $s1
/* 02D24C 0042D24C 02802825 */  move        $a1, $s4
/* 02D250 0042D250 0320F809 */  jalr        $t9
/* 02D254 0042D254 24060008 */   addiu      $a2, $zero, 0x8
/* 02D258 0042D258 14400003 */  bnez        $v0, .L0042D268
/* 02D25C 0042D25C 8FBC0028 */   lw         $gp, 0x28($sp)
/* 02D260 0042D260 10000008 */  b           .L0042D284
/* 02D264 0042D264 8E42000C */   lw         $v0, 0xC($s2)
.L0042D268:
/* 02D268 0042D268 96780002 */  lhu         $t8, 0x2($s3)
/* 02D26C 0042D26C 26100001 */  addiu       $s0, $s0, 0x1
/* 02D270 0042D270 26310001 */  addiu       $s1, $s1, 0x1
/* 02D274 0042D274 0218082B */  sltu        $at, $s0, $t8
/* 02D278 0042D278 1420FFF1 */  bnez        $at, .L0042D240
/* 02D27C 0042D27C 00000000 */   nop
.L0042D280:
/* 02D280 0042D280 00001025 */  move        $v0, $zero
.L0042D284:
/* 02D284 0042D284 8FBF002C */  lw          $ra, 0x2C($sp)
/* 02D288 0042D288 8FB00014 */  lw          $s0, 0x14($sp)
/* 02D28C 0042D28C 8FB10018 */  lw          $s1, 0x18($sp)
/* 02D290 0042D290 8FB2001C */  lw          $s2, 0x1C($sp)
/* 02D294 0042D294 8FB30020 */  lw          $s3, 0x20($sp)
/* 02D298 0042D298 8FB40024 */  lw          $s4, 0x24($sp)
/* 02D29C 0042D29C 03E00008 */  jr          $ra
/* 02D2A0 0042D2A0 27BD0030 */   addiu      $sp, $sp, 0x30
