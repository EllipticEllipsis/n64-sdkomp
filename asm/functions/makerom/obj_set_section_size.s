.section .rodata
glabel STR_1000856C
/* 04856C 1000856C */ .asciz "0"
                      .balign 4

glabel STR_10008570
/* 048570 10008570 */ .asciz "obj_rewrite.c"
                      .balign 4


.section .text
glabel obj_set_section_size # 584
/* 03A418 0043A418 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 03A41C 0043A41C 279C8948 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD8948
/* 03A420 0043A420 0399E021 */  addu        $gp, $gp, $t9
/* 03A424 0043A424 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03A428 0043A428 8F998524 */  lw          $t9, %call16(foreach_section)($gp)
/* 03A42C 0043A42C AFA60030 */  sw          $a2, 0x30($sp)
/* 03A430 0043A430 00A03025 */  move        $a2, $a1
/* 03A434 0043A434 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03A438 0043A438 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03A43C 0043A43C AFBC0018 */  sw          $gp, 0x18($sp)
/* 03A440 0043A440 AFA40028 */  sw          $a0, 0x28($sp)
/* 03A444 0043A444 0320F809 */  jalr        $t9
/* 03A448 0043A448 8F858534 */   lw         $a1, %got(find_section_byname)($gp)
/* 03A44C 0043A44C 2401FFFF */  addiu       $at, $zero, -0x1
/* 03A450 0043A450 10410021 */  beq         $v0, $at, .L0043A4D8
/* 03A454 0043A454 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03A458 0043A458 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 03A45C 0043A45C 8FA40028 */  lw          $a0, 0x28($sp)
/* 03A460 0043A460 AFA20024 */  sw          $v0, 0x24($sp)
/* 03A464 0043A464 0320F809 */  jalr        $t9
/* 03A468 0043A468 00000000 */   nop
/* 03A46C 0043A46C 24010002 */  addiu       $at, $zero, 0x2
/* 03A470 0043A470 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A474 0043A474 14410004 */  bne         $v0, $at, .L0043A488
/* 03A478 0043A478 8FA30024 */   lw         $v1, 0x24($sp)
/* 03A47C 0043A47C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 03A480 0043A480 10000015 */  b           .L0043A4D8
/* 03A484 0043A484 AC6E0010 */   sw         $t6, 0x10($v1)
.L0043A488:
/* 03A488 0043A488 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 03A48C 0043A48C 8FA40028 */  lw          $a0, 0x28($sp)
/* 03A490 0043A490 AFA30024 */  sw          $v1, 0x24($sp)
/* 03A494 0043A494 0320F809 */  jalr        $t9
/* 03A498 0043A498 00000000 */   nop
/* 03A49C 0043A49C 24010003 */  addiu       $at, $zero, 0x3
/* 03A4A0 0043A4A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03A4A4 0043A4A4 14410004 */  bne         $v0, $at, .L0043A4B8
/* 03A4A8 0043A4A8 8FA30024 */   lw         $v1, 0x24($sp)
/* 03A4AC 0043A4AC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 03A4B0 0043A4B0 10000009 */  b           .L0043A4D8
/* 03A4B4 0043A4B4 AC6F0014 */   sw         $t7, 0x14($v1)
.L0043A4B8:
/* 03A4B8 0043A4B8 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 03A4BC 0043A4BC 8F848030 */  lw          $a0, %got(STR_1000856C)($gp)
/* 03A4C0 0043A4C0 8F858030 */  lw          $a1, %got(STR_10008570)($gp)
/* 03A4C4 0043A4C4 240602E1 */  addiu       $a2, $zero, 0x2E1
/* 03A4C8 0043A4C8 2484856C */  addiu       $a0, $a0, %lo(STR_1000856C)
/* 03A4CC 0043A4CC 0320F809 */  jalr        $t9
/* 03A4D0 0043A4D0 24A58570 */   addiu      $a1, $a1, %lo(STR_10008570)
/* 03A4D4 0043A4D4 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043A4D8:
/* 03A4D8 0043A4D8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03A4DC 0043A4DC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03A4E0 0043A4E0 03E00008 */  jr          $ra
/* 03A4E4 0043A4E4 00000000 */   nop
