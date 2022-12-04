.section .rodata
glabel STR_10006B00
/* 046B00 10006B00 */ .asciz "Can only ldmemseek on archives!\n"
                      .balign 4

glabel STR_10006B24
/* 046B24 10006B24 */ .asciz "Can only ldmemseek from BEGINNING\n"
                      .balign 4

glabel STR_10006B48
/* 046B48 10006B48 */ .asciz "Bad  offset in ldmemseek\n"
                      .balign 4


.section .text
glabel __sgi_ldmemseek # 219
/* 02A240 0042A240 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A244 0042A244 279C8B20 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8B20
/* 02A248 0042A248 0399E021 */  addu        $gp, $gp, $t9
/* 02A24C 0042A24C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A250 0042A250 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A254 0042A254 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A258 0042A258 948E0028 */  lhu         $t6, 0x28($a0)
/* 02A25C 0042A25C 3401FF65 */  ori         $at, $zero, 0xFF65
/* 02A260 0042A260 11C1000A */  beq         $t6, $at, .L0042A28C
/* 02A264 0042A264 00000000 */   nop
/* 02A268 0042A268 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02A26C 0042A26C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02A270 0042A270 8F85802C */  lw          $a1, %got(STR_10006B00)($gp)
/* 02A274 0042A274 24840020 */  addiu       $a0, $a0, 0x20
/* 02A278 0042A278 0320F809 */  jalr        $t9
/* 02A27C 0042A27C 24A56B00 */   addiu      $a1, $a1, %lo(STR_10006B00)
/* 02A280 0042A280 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A284 0042A284 1000001E */  b           .L0042A300
/* 02A288 0042A288 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042A28C:
/* 02A28C 0042A28C 10C00008 */  beqz        $a2, .L0042A2B0
/* 02A290 0042A290 00001025 */   move       $v0, $zero
/* 02A294 0042A294 24010001 */  addiu       $at, $zero, 0x1
/* 02A298 0042A298 10C10007 */  beq         $a2, $at, .L0042A2B8
/* 02A29C 0042A29C 24010002 */   addiu      $at, $zero, 0x2
/* 02A2A0 0042A2A0 10C10005 */  beq         $a2, $at, .L0042A2B8
/* 02A2A4 0042A2A4 00000000 */   nop
/* 02A2A8 0042A2A8 1000000C */  b           .L0042A2DC
/* 02A2AC 0042A2AC 00000000 */   nop
.L0042A2B0:
/* 02A2B0 0042A2B0 10000013 */  b           .L0042A300
/* 02A2B4 0042A2B4 AC850034 */   sw         $a1, 0x34($a0)
.L0042A2B8:
/* 02A2B8 0042A2B8 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02A2BC 0042A2BC 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02A2C0 0042A2C0 8F85802C */  lw          $a1, %got(STR_10006B24)($gp)
/* 02A2C4 0042A2C4 24840020 */  addiu       $a0, $a0, 0x20
/* 02A2C8 0042A2C8 0320F809 */  jalr        $t9
/* 02A2CC 0042A2CC 24A56B24 */   addiu      $a1, $a1, %lo(STR_10006B24)
/* 02A2D0 0042A2D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A2D4 0042A2D4 1000000A */  b           .L0042A300
/* 02A2D8 0042A2D8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042A2DC:
/* 02A2DC 0042A2DC 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02A2E0 0042A2E0 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02A2E4 0042A2E4 8F85802C */  lw          $a1, %got(STR_10006B48)($gp)
/* 02A2E8 0042A2E8 24840020 */  addiu       $a0, $a0, 0x20
/* 02A2EC 0042A2EC 0320F809 */  jalr        $t9
/* 02A2F0 0042A2F0 24A56B48 */   addiu      $a1, $a1, %lo(STR_10006B48)
/* 02A2F4 0042A2F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A2F8 0042A2F8 10000001 */  b           .L0042A300
/* 02A2FC 0042A2FC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042A300:
/* 02A300 0042A300 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A304 0042A304 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A308 0042A308 03E00008 */  jr          $ra
/* 02A30C 0042A30C 00000000 */   nop
