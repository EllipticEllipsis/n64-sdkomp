.section .rodata
glabel STR_10006F9C
/* 046F9C 10006F9C */ .asciz "obj_dynamic:Bad obj type %d\n"
                      .balign 4

glabel STR_10006FBC
/* 046FBC 10006FBC */ .asciz "0"
                      .balign 4

glabel STR_10006FC0
/* 046FC0 10006FC0 */ .asciz "obj.c"
                      .balign 4
/* 046FC8 10006FC8 */ .asciz "get_dynamic_info: dynaddr 0x%x, obj 0x%x, offset 0x%x,0x%x\n"
                      .balign 4
/* 047004 10007004 */ .asciz "get_dynamic_info: obj 0x%x, name %s, dyn 0x%x,offset 0x%x,0x%x\n"
                      .balign 4
/* 047044 10007044 */ .asciz "get_dynamic_info: base addr 0x%x\n"
                      .balign 4
/* 047068 10007068 */ .asciz "get_dynamic_info: init addr 0x%x\n"
                      .balign 4
/* 04708C 1000708C */ .asciz "get_dynamic_info: pixie init addr 0x%x\n"
                      .balign 4
/* 0470B4 100070B4 */ .asciz "get_dynamic_info: fini addr 0x%x\n"
                      .balign 4
/* 0470D8 100070D8 */ .asciz "get_dynamic_info: hash addr 0x%x\n"
                      .balign 4


.section .text
glabel obj_dynamic # 266
/* 02D2A4 0042D2A4 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02D2A8 0042D2A8 279C5ABC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE5ABC
/* 02D2AC 0042D2AC 0399E021 */  addu        $gp, $gp, $t9
/* 02D2B0 0042D2B0 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 02D2B4 0042D2B4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02D2B8 0042D2B8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02D2BC 0042D2BC AFB00014 */  sw          $s0, 0x14($sp)
/* 02D2C0 0042D2C0 00808025 */  move        $s0, $a0
/* 02D2C4 0042D2C4 0320F809 */  jalr        $t9
/* 02D2C8 0042D2C8 AFBC0018 */   sw         $gp, 0x18($sp)
/* 02D2CC 0042D2CC 24010002 */  addiu       $at, $zero, 0x2
/* 02D2D0 0042D2D0 14410003 */  bne         $v0, $at, .L0042D2E0
/* 02D2D4 0042D2D4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02D2D8 0042D2D8 10000017 */  b           .L0042D338
/* 02D2DC 0042D2DC 24062000 */   addiu      $a2, $zero, 0x2000
.L0042D2E0:
/* 02D2E0 0042D2E0 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 02D2E4 0042D2E4 02002025 */  move        $a0, $s0
/* 02D2E8 0042D2E8 0320F809 */  jalr        $t9
/* 02D2EC 0042D2EC 00000000 */   nop
/* 02D2F0 0042D2F0 24010003 */  addiu       $at, $zero, 0x3
/* 02D2F4 0042D2F4 14410003 */  bne         $v0, $at, .L0042D304
/* 02D2F8 0042D2F8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02D2FC 0042D2FC 1000000E */  b           .L0042D338
/* 02D300 0042D300 24060006 */   addiu      $a2, $zero, 0x6
.L0042D304:
/* 02D304 0042D304 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 02D308 0042D308 02002025 */  move        $a0, $s0
/* 02D30C 0042D30C 0320F809 */  jalr        $t9
/* 02D310 0042D310 00000000 */   nop
/* 02D314 0042D314 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02D318 0042D318 00402825 */  move        $a1, $v0
/* 02D31C 0042D31C 8F99853C */  lw          $t9, %call16(st_error)($gp)
/* 02D320 0042D320 8F84802C */  lw          $a0, %got(STR_10006F9C)($gp)
/* 02D324 0042D324 0320F809 */  jalr        $t9
/* 02D328 0042D328 24846F9C */   addiu      $a0, $a0, %lo(STR_10006F9C)
/* 02D32C 0042D32C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02D330 0042D330 10000029 */  b           .L0042D3D8
/* 02D334 0042D334 00001025 */   move       $v0, $zero
.L0042D338:
/* 02D338 0042D338 8F998524 */  lw          $t9, %call16(foreach_section)($gp)
/* 02D33C 0042D33C 02002025 */  move        $a0, $s0
/* 02D340 0042D340 8F858538 */  lw          $a1, %got(find_section_bytype)($gp)
/* 02D344 0042D344 0320F809 */  jalr        $t9
/* 02D348 0042D348 00000000 */   nop
/* 02D34C 0042D34C 2401FFFF */  addiu       $at, $zero, -0x1
/* 02D350 0042D350 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02D354 0042D354 14410003 */  bne         $v0, $at, .L0042D364
/* 02D358 0042D358 00401825 */   move       $v1, $v0
/* 02D35C 0042D35C 1000001E */  b           .L0042D3D8
/* 02D360 0042D360 00001025 */   move       $v0, $zero
.L0042D364:
/* 02D364 0042D364 8E02008C */  lw          $v0, 0x8C($s0)
/* 02D368 0042D368 24010002 */  addiu       $at, $zero, 0x2
/* 02D36C 0042D36C 54410009 */  bnel        $v0, $at, .L0042D394
/* 02D370 0042D370 24010003 */   addiu      $at, $zero, 0x3
/* 02D374 0042D374 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 02D378 0042D378 02002025 */  move        $a0, $s0
/* 02D37C 0042D37C 8C65000C */  lw          $a1, 0xC($v1)
/* 02D380 0042D380 0320F809 */  jalr        $t9
/* 02D384 0042D384 00000000 */   nop
/* 02D388 0042D388 10000013 */  b           .L0042D3D8
/* 02D38C 0042D38C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02D390 0042D390 24010003 */  addiu       $at, $zero, 0x3
.L0042D394:
/* 02D394 0042D394 14410008 */  bne         $v0, $at, .L0042D3B8
/* 02D398 0042D398 00000000 */   nop
/* 02D39C 0042D39C 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 02D3A0 0042D3A0 02002025 */  move        $a0, $s0
/* 02D3A4 0042D3A4 8C65000C */  lw          $a1, 0xC($v1)
/* 02D3A8 0042D3A8 0320F809 */  jalr        $t9
/* 02D3AC 0042D3AC 00000000 */   nop
/* 02D3B0 0042D3B0 10000009 */  b           .L0042D3D8
/* 02D3B4 0042D3B4 8FBC0018 */   lw         $gp, 0x18($sp)
.L0042D3B8:
/* 02D3B8 0042D3B8 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 02D3BC 0042D3BC 8F84802C */  lw          $a0, %got(STR_10006FBC)($gp)
/* 02D3C0 0042D3C0 8F85802C */  lw          $a1, %got(STR_10006FC0)($gp)
/* 02D3C4 0042D3C4 240604AF */  addiu       $a2, $zero, 0x4AF
/* 02D3C8 0042D3C8 24846FBC */  addiu       $a0, $a0, %lo(STR_10006FBC)
/* 02D3CC 0042D3CC 0320F809 */  jalr        $t9
/* 02D3D0 0042D3D0 24A56FC0 */   addiu      $a1, $a1, %lo(STR_10006FC0)
/* 02D3D4 0042D3D4 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042D3D8:
/* 02D3D8 0042D3D8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02D3DC 0042D3DC 8FB00014 */  lw          $s0, 0x14($sp)
/* 02D3E0 0042D3E0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02D3E4 0042D3E4 03E00008 */  jr          $ra
/* 02D3E8 0042D3E8 00000000 */   nop
