.section .rodata
glabel STR_100075A0
/* 0475A0 100075A0 */ .asciz "0"
                      .balign 4

glabel STR_100075A4
/* 0475A4 100075A4 */ .asciz "obj.c"
                      .balign 4


.section .text
glabel obj_call_shared # 270
/* 02DE00 0042DE00 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02DE04 0042DE04 279C4F60 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE4F60
/* 02DE08 0042DE08 0399E021 */  addu        $gp, $gp, $t9
/* 02DE0C 0042DE0C 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 02DE10 0042DE10 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02DE14 0042DE14 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02DE18 0042DE18 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02DE1C 0042DE1C 0320F809 */  jalr        $t9
/* 02DE20 0042DE20 AFA40020 */   sw         $a0, 0x20($sp)
/* 02DE24 0042DE24 24010002 */  addiu       $at, $zero, 0x2
/* 02DE28 0042DE28 14410008 */  bne         $v0, $at, .L0042DE4C
/* 02DE2C 0042DE2C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02DE30 0042DE30 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02DE34 0042DE34 8DCF0090 */  lw          $t7, 0x90($t6)
/* 02DE38 0042DE38 95E20012 */  lhu         $v0, 0x12($t7)
/* 02DE3C 0042DE3C 30423000 */  andi        $v0, $v0, 0x3000
/* 02DE40 0042DE40 38423000 */  xori        $v0, $v0, 0x3000
/* 02DE44 0042DE44 10000015 */  b           .L0042DE9C
/* 02DE48 0042DE48 2C420001 */   sltiu      $v0, $v0, 0x1
.L0042DE4C:
/* 02DE4C 0042DE4C 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 02DE50 0042DE50 8FA40020 */  lw          $a0, 0x20($sp)
/* 02DE54 0042DE54 0320F809 */  jalr        $t9
/* 02DE58 0042DE58 00000000 */   nop
/* 02DE5C 0042DE5C 24010003 */  addiu       $at, $zero, 0x3
/* 02DE60 0042DE60 14410006 */  bne         $v0, $at, .L0042DE7C
/* 02DE64 0042DE64 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02DE68 0042DE68 8FB80020 */  lw          $t8, 0x20($sp)
/* 02DE6C 0042DE6C 8F1900E0 */  lw          $t9, 0xE0($t8)
/* 02DE70 0042DE70 8F220024 */  lw          $v0, 0x24($t9)
/* 02DE74 0042DE74 10000009 */  b           .L0042DE9C
/* 02DE78 0042DE78 30420004 */   andi       $v0, $v0, 0x4
.L0042DE7C:
/* 02DE7C 0042DE7C 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 02DE80 0042DE80 8F84802C */  lw          $a0, %got(STR_100075A0)($gp)
/* 02DE84 0042DE84 8F85802C */  lw          $a1, %got(STR_100075A4)($gp)
/* 02DE88 0042DE88 24060642 */  addiu       $a2, $zero, 0x642
/* 02DE8C 0042DE8C 248475A0 */  addiu       $a0, $a0, %lo(STR_100075A0)
/* 02DE90 0042DE90 0320F809 */  jalr        $t9
/* 02DE94 0042DE94 24A575A4 */   addiu      $a1, $a1, %lo(STR_100075A4)
/* 02DE98 0042DE98 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042DE9C:
/* 02DE9C 0042DE9C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02DEA0 0042DEA0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02DEA4 0042DEA4 03E00008 */  jr          $ra
/* 02DEA8 0042DEA8 00000000 */   nop
