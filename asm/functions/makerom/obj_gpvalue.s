.section .rodata
glabel STR_100085EC
/* 0485EC 100085EC */ .asciz "0"
                      .balign 4

glabel STR_100085F0
/* 0485F0 100085F0 */ .asciz "obj_rewrite.c"
                      .balign 4


.section .text
glabel obj_gpvalue # 586
/* 03A938 0043A938 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 03A93C 0043A93C 279C8428 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD8428
/* 03A940 0043A940 0399E021 */  addu        $gp, $gp, $t9
/* 03A944 0043A944 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03A948 0043A948 8F9982B8 */  lw          $t9, %call16(obj_paouthdr)($gp)
/* 03A94C 0043A94C AFBF002C */  sw          $ra, 0x2C($sp)
/* 03A950 0043A950 AFB40024 */  sw          $s4, 0x24($sp)
/* 03A954 0043A954 0080A025 */  move        $s4, $a0
/* 03A958 0043A958 AFBC0028 */  sw          $gp, 0x28($sp)
/* 03A95C 0043A95C AFB30020 */  sw          $s3, 0x20($sp)
/* 03A960 0043A960 AFB2001C */  sw          $s2, 0x1C($sp)
/* 03A964 0043A964 AFB10018 */  sw          $s1, 0x18($sp)
/* 03A968 0043A968 0320F809 */  jalr        $t9
/* 03A96C 0043A96C AFB00014 */   sw         $s0, 0x14($sp)
/* 03A970 0043A970 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A974 0043A974 00408025 */  move        $s0, $v0
/* 03A978 0043A978 02802025 */  move        $a0, $s4
/* 03A97C 0043A97C 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 03A980 0043A980 0320F809 */  jalr        $t9
/* 03A984 0043A984 00000000 */   nop
/* 03A988 0043A988 24010002 */  addiu       $at, $zero, 0x2
/* 03A98C 0043A98C 14410003 */  bne         $v0, $at, .L0043A99C
/* 03A990 0043A990 8FBC0028 */   lw         $gp, 0x28($sp)
/* 03A994 0043A994 1000002B */  b           .L0043AA44
/* 03A998 0043A998 8E020034 */   lw         $v0, 0x34($s0)
.L0043A99C:
/* 03A99C 0043A99C 8F99842C */  lw          $t9, %call16(obj_pelfhdr)($gp)
/* 03A9A0 0043A9A0 02802025 */  move        $a0, $s4
/* 03A9A4 0043A9A4 0320F809 */  jalr        $t9
/* 03A9A8 0043A9A8 00000000 */   nop
/* 03A9AC 0043A9AC 944E002C */  lhu         $t6, 0x2C($v0)
/* 03A9B0 0043A9B0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A9B4 0043A9B4 00409025 */  move        $s2, $v0
/* 03A9B8 0043A9B8 11C0001A */  beqz        $t6, .L0043AA24
/* 03A9BC 0043A9BC 00008825 */   move       $s1, $zero
/* 03A9C0 0043A9C0 00008025 */  move        $s0, $zero
/* 03A9C4 0043A9C4 3C137000 */  lui         $s3, (0x70000000 >> 16)
.L0043A9C8:
/* 03A9C8 0043A9C8 8F998430 */  lw          $t9, %call16(obj_pproghdr)($gp)
/* 03A9CC 0043A9CC 02802025 */  move        $a0, $s4
/* 03A9D0 0043A9D0 0320F809 */  jalr        $t9
/* 03A9D4 0043A9D4 00000000 */   nop
/* 03A9D8 0043A9D8 00507821 */  addu        $t7, $v0, $s0
/* 03A9DC 0043A9DC 8DF80000 */  lw          $t8, 0x0($t7)
/* 03A9E0 0043A9E0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03A9E4 0043A9E4 16780009 */  bne         $s3, $t8, .L0043AA0C
/* 03A9E8 0043A9E8 0050C821 */   addu       $t9, $v0, $s0
/* 03A9EC 0043A9EC 8F250008 */  lw          $a1, 0x8($t9)
/* 03A9F0 0043A9F0 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 03A9F4 0043A9F4 02802025 */  move        $a0, $s4
/* 03A9F8 0043A9F8 0320F809 */  jalr        $t9
/* 03A9FC 0043A9FC 00000000 */   nop
/* 03AA00 0043AA00 8FBC0028 */  lw          $gp, 0x28($sp)
/* 03AA04 0043AA04 1000000F */  b           .L0043AA44
/* 03AA08 0043AA08 8C420014 */   lw         $v0, 0x14($v0)
.L0043AA0C:
/* 03AA0C 0043AA0C 9648002C */  lhu         $t0, 0x2C($s2)
/* 03AA10 0043AA10 26310001 */  addiu       $s1, $s1, 0x1
/* 03AA14 0043AA14 26100020 */  addiu       $s0, $s0, 0x20
/* 03AA18 0043AA18 0228082B */  sltu        $at, $s1, $t0
/* 03AA1C 0043AA1C 1420FFEA */  bnez        $at, .L0043A9C8
/* 03AA20 0043AA20 00000000 */   nop
.L0043AA24:
/* 03AA24 0043AA24 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 03AA28 0043AA28 8F848030 */  lw          $a0, %got(STR_100085EC)($gp)
/* 03AA2C 0043AA2C 8F858030 */  lw          $a1, %got(STR_100085F0)($gp)
/* 03AA30 0043AA30 24060336 */  addiu       $a2, $zero, 0x336
/* 03AA34 0043AA34 248485EC */  addiu       $a0, $a0, %lo(STR_100085EC)
/* 03AA38 0043AA38 0320F809 */  jalr        $t9
/* 03AA3C 0043AA3C 24A585F0 */   addiu      $a1, $a1, %lo(STR_100085F0)
/* 03AA40 0043AA40 8FBC0028 */  lw          $gp, 0x28($sp)
.L0043AA44:
/* 03AA44 0043AA44 8FBF002C */  lw          $ra, 0x2C($sp)
/* 03AA48 0043AA48 8FB00014 */  lw          $s0, 0x14($sp)
/* 03AA4C 0043AA4C 8FB10018 */  lw          $s1, 0x18($sp)
/* 03AA50 0043AA50 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03AA54 0043AA54 8FB30020 */  lw          $s3, 0x20($sp)
/* 03AA58 0043AA58 8FB40024 */  lw          $s4, 0x24($sp)
/* 03AA5C 0043AA5C 03E00008 */  jr          $ra
/* 03AA60 0043AA60 27BD0030 */   addiu      $sp, $sp, 0x30
