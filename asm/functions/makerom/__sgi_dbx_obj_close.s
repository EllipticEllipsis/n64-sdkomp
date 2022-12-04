.section .rodata
glabel STR_10006CB8
/* 046CB8 10006CB8 */ .asciz "obj_write failed"
                      .balign 4
/* 046CCC 10006CCC */ .asciz "obj_init: obj %s\n"
                      .balign 4
/* 046CE0 10006CE0 */ .asciz "obj_init: gethostsex %d\n"
                      .balign 4
/* 046CFC 10006CFC */ .asciz "obj_init: obj->o_mode %d\n"
                      .balign 4
/* 046D18 10006D18 */ .asciz "obj_init: Elf object\n"
                      .balign 4
/* 046D30 10006D30 */ .asciz "obj_init: Coff object\n"
                      .balign 4


.section .text
glabel __sgi_dbx_obj_close # 244
/* 02B3E0 0042B3E0 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02B3E4 0042B3E4 279C7980 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE7980
/* 02B3E8 0042B3E8 0399E021 */  addu        $gp, $gp, $t9
/* 02B3EC 0042B3EC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02B3F0 0042B3F0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02B3F4 0042B3F4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02B3F8 0042B3F8 AFB00014 */  sw          $s0, 0x14($sp)
/* 02B3FC 0042B3FC 8C820180 */  lw          $v0, 0x180($a0)
/* 02B400 0042B400 24010001 */  addiu       $at, $zero, 0x1
/* 02B404 0042B404 00808025 */  move        $s0, $a0
/* 02B408 0042B408 5441000A */  bnel        $v0, $at, .L0042B434
/* 02B40C 0042B40C 24010003 */   addiu      $at, $zero, 0x3
/* 02B410 0042B410 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02B414 0042B414 8C8400C4 */  lw          $a0, 0xC4($a0)
/* 02B418 0042B418 0320F809 */  jalr        $t9
/* 02B41C 0042B41C 00000000 */   nop
/* 02B420 0042B420 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02B424 0042B424 AE0000C4 */  sw          $zero, 0xC4($s0)
/* 02B428 0042B428 10000010 */  b           .L0042B46C
/* 02B42C 0042B42C AE0000DC */   sw         $zero, 0xDC($s0)
/* 02B430 0042B430 24010003 */  addiu       $at, $zero, 0x3
.L0042B434:
/* 02B434 0042B434 1441000D */  bne         $v0, $at, .L0042B46C
/* 02B438 0042B438 00000000 */   nop
/* 02B43C 0042B43C 8F998558 */  lw          $t9, %call16(obj_write)($gp)
/* 02B440 0042B440 02002025 */  move        $a0, $s0
/* 02B444 0042B444 0320F809 */  jalr        $t9
/* 02B448 0042B448 00000000 */   nop
/* 02B44C 0042B44C 14400007 */  bnez        $v0, .L0042B46C
/* 02B450 0042B450 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02B454 0042B454 8F99853C */  lw          $t9, %call16(st_error)($gp)
/* 02B458 0042B458 8F84802C */  lw          $a0, %got(STR_10006CB8)($gp)
/* 02B45C 0042B45C 0320F809 */  jalr        $t9
/* 02B460 0042B460 24846CB8 */   addiu      $a0, $a0, %lo(STR_10006CB8)
/* 02B464 0042B464 10000012 */  b           .L0042B4B0
/* 02B468 0042B468 8FBC0018 */   lw         $gp, 0x18($sp)
.L0042B46C:
/* 02B46C 0042B46C 8F8E87D8 */  lw          $t6, %got(D_10012878)($gp)
/* 02B470 0042B470 25CE0001 */  addiu       $t6, $t6, 0x1
/* 02B474 0042B474 020E082B */  sltu        $at, $s0, $t6
/* 02B478 0042B478 5420000E */  bnel        $at, $zero, .L0042B4B4
/* 02B47C 0042B47C 8FBF001C */   lw         $ra, 0x1C($sp)
/* 02B480 0042B480 8F99815C */  lw          $t9, %call16(sbrk)($gp)
/* 02B484 0042B484 00002025 */  move        $a0, $zero
/* 02B488 0042B488 0320F809 */  jalr        $t9
/* 02B48C 0042B48C 00000000 */   nop
/* 02B490 0042B490 0202082B */  sltu        $at, $s0, $v0
/* 02B494 0042B494 10200006 */  beqz        $at, .L0042B4B0
/* 02B498 0042B498 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02B49C 0042B49C 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02B4A0 0042B4A0 02002025 */  move        $a0, $s0
/* 02B4A4 0042B4A4 0320F809 */  jalr        $t9
/* 02B4A8 0042B4A8 00000000 */   nop
/* 02B4AC 0042B4AC 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042B4B0:
/* 02B4B0 0042B4B0 8FBF001C */  lw          $ra, 0x1C($sp)
.L0042B4B4:
/* 02B4B4 0042B4B4 8FB00014 */  lw          $s0, 0x14($sp)
/* 02B4B8 0042B4B8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02B4BC 0042B4BC 03E00008 */  jr          $ra
/* 02B4C0 0042B4C0 00000000 */   nop
