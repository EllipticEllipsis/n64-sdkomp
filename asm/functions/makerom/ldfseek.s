.section .rodata
glabel STR_10006B64
/* 046B64 10006B64 */ .asciz "Bad  offset in ldfseek\n"
                      .balign 4


.section .text
glabel ldfseek # 220
/* 02A310 0042A310 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A314 0042A314 279C8A50 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8A50
/* 02A318 0042A318 0399E021 */  addu        $gp, $gp, $t9
/* 02A31C 0042A31C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A320 0042A320 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A324 0042A324 10C00008 */  beqz        $a2, .L0042A348
/* 02A328 0042A328 AFBC0018 */   sw         $gp, 0x18($sp)
/* 02A32C 0042A32C 24010001 */  addiu       $at, $zero, 0x1
/* 02A330 0042A330 10C10011 */  beq         $a2, $at, .L0042A378
/* 02A334 0042A334 24010002 */   addiu      $at, $zero, 0x2
/* 02A338 0042A338 50C10009 */  beql        $a2, $at, .L0042A360
/* 02A33C 0042A33C 8C820004 */   lw         $v0, 0x4($a0)
/* 02A340 0042A340 10000012 */  b           .L0042A38C
/* 02A344 0042A344 00000000 */   nop
.L0042A348:
/* 02A348 0042A348 8C820004 */  lw          $v0, 0x4($a0)
/* 02A34C 0042A34C 8C4E0008 */  lw          $t6, 0x8($v0)
/* 02A350 0042A350 01C57821 */  addu        $t7, $t6, $a1
/* 02A354 0042A354 10000016 */  b           .L0042A3B0
/* 02A358 0042A358 AC4F0004 */   sw         $t7, 0x4($v0)
/* 02A35C 0042A35C 8C820004 */  lw          $v0, 0x4($a0)
.L0042A360:
/* 02A360 0042A360 8C580008 */  lw          $t8, 0x8($v0)
/* 02A364 0042A364 8C590000 */  lw          $t9, 0x0($v0)
/* 02A368 0042A368 03194021 */  addu        $t0, $t8, $t9
/* 02A36C 0042A36C 01054823 */  subu        $t1, $t0, $a1
/* 02A370 0042A370 1000000F */  b           .L0042A3B0
/* 02A374 0042A374 AC490004 */   sw         $t1, 0x4($v0)
.L0042A378:
/* 02A378 0042A378 8C820004 */  lw          $v0, 0x4($a0)
/* 02A37C 0042A37C 8C4A0004 */  lw          $t2, 0x4($v0)
/* 02A380 0042A380 01455821 */  addu        $t3, $t2, $a1
/* 02A384 0042A384 1000000A */  b           .L0042A3B0
/* 02A388 0042A388 AC4B0004 */   sw         $t3, 0x4($v0)
.L0042A38C:
/* 02A38C 0042A38C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02A390 0042A390 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02A394 0042A394 8F85802C */  lw          $a1, %got(STR_10006B64)($gp)
/* 02A398 0042A398 24840020 */  addiu       $a0, $a0, 0x20
/* 02A39C 0042A39C 0320F809 */  jalr        $t9
/* 02A3A0 0042A3A0 24A56B64 */   addiu      $a1, $a1, %lo(STR_10006B64)
/* 02A3A4 0042A3A4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A3A8 0042A3A8 10000002 */  b           .L0042A3B4
/* 02A3AC 0042A3AC 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042A3B0:
/* 02A3B0 0042A3B0 00001025 */  move        $v0, $zero
.L0042A3B4:
/* 02A3B4 0042A3B4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A3B8 0042A3B8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A3BC 0042A3BC 03E00008 */  jr          $ra
/* 02A3C0 0042A3C0 00000000 */   nop
