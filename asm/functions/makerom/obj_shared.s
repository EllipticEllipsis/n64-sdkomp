.section .rodata
glabel STR_10007594
/* 047594 10007594 */ .asciz "0"
                      .balign 4

glabel STR_10007598
/* 047598 10007598 */ .asciz "obj.c"
                      .balign 4


.section .text
glabel obj_shared # 269
/* 02DD54 0042DD54 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02DD58 0042DD58 279C500C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE500C
/* 02DD5C 0042DD5C 0399E021 */  addu        $gp, $gp, $t9
/* 02DD60 0042DD60 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 02DD64 0042DD64 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02DD68 0042DD68 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02DD6C 0042DD6C AFBC0018 */  sw          $gp, 0x18($sp)
/* 02DD70 0042DD70 0320F809 */  jalr        $t9
/* 02DD74 0042DD74 AFA40020 */   sw         $a0, 0x20($sp)
/* 02DD78 0042DD78 24010002 */  addiu       $at, $zero, 0x2
/* 02DD7C 0042DD7C 14410008 */  bne         $v0, $at, .L0042DDA0
/* 02DD80 0042DD80 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02DD84 0042DD84 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02DD88 0042DD88 8DCF0090 */  lw          $t7, 0x90($t6)
/* 02DD8C 0042DD8C 95E20012 */  lhu         $v0, 0x12($t7)
/* 02DD90 0042DD90 30423000 */  andi        $v0, $v0, 0x3000
/* 02DD94 0042DD94 38422000 */  xori        $v0, $v0, 0x2000
/* 02DD98 0042DD98 10000015 */  b           .L0042DDF0
/* 02DD9C 0042DD9C 2C420001 */   sltiu      $v0, $v0, 0x1
.L0042DDA0:
/* 02DDA0 0042DDA0 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 02DDA4 0042DDA4 8FA40020 */  lw          $a0, 0x20($sp)
/* 02DDA8 0042DDA8 0320F809 */  jalr        $t9
/* 02DDAC 0042DDAC 00000000 */   nop
/* 02DDB0 0042DDB0 24010003 */  addiu       $at, $zero, 0x3
/* 02DDB4 0042DDB4 14410006 */  bne         $v0, $at, .L0042DDD0
/* 02DDB8 0042DDB8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02DDBC 0042DDBC 8FB80020 */  lw          $t8, 0x20($sp)
/* 02DDC0 0042DDC0 8F1900E0 */  lw          $t9, 0xE0($t8)
/* 02DDC4 0042DDC4 8F220024 */  lw          $v0, 0x24($t9)
/* 02DDC8 0042DDC8 10000009 */  b           .L0042DDF0
/* 02DDCC 0042DDCC 30420002 */   andi       $v0, $v0, 0x2
.L0042DDD0:
/* 02DDD0 0042DDD0 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 02DDD4 0042DDD4 8F84802C */  lw          $a0, %got(STR_10007594)($gp)
/* 02DDD8 0042DDD8 8F85802C */  lw          $a1, %got(STR_10007598)($gp)
/* 02DDDC 0042DDDC 24060636 */  addiu       $a2, $zero, 0x636
/* 02DDE0 0042DDE0 24847594 */  addiu       $a0, $a0, %lo(STR_10007594)
/* 02DDE4 0042DDE4 0320F809 */  jalr        $t9
/* 02DDE8 0042DDE8 24A57598 */   addiu      $a1, $a1, %lo(STR_10007598)
/* 02DDEC 0042DDEC 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042DDF0:
/* 02DDF0 0042DDF0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02DDF4 0042DDF4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02DDF8 0042DDF8 03E00008 */  jr          $ra
/* 02DDFC 0042DDFC 00000000 */   nop
