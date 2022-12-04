.section .rodata
glabel STR_10006F7C
/* 046F7C 10006F7C */ .asciz "obj_write failed"
                      .balign 4


.section .text
glabel dbx_obj_close # 263
/* 02D094 0042D094 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02D098 0042D098 279C5CCC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE5CCC
/* 02D09C 0042D09C 0399E021 */  addu        $gp, $gp, $t9
/* 02D0A0 0042D0A0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02D0A4 0042D0A4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02D0A8 0042D0A8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02D0AC 0042D0AC AFB00014 */  sw          $s0, 0x14($sp)
/* 02D0B0 0042D0B0 8C820180 */  lw          $v0, 0x180($a0)
/* 02D0B4 0042D0B4 24010001 */  addiu       $at, $zero, 0x1
/* 02D0B8 0042D0B8 00808025 */  move        $s0, $a0
/* 02D0BC 0042D0BC 54410018 */  bnel        $v0, $at, .L0042D120
/* 02D0C0 0042D0C0 24010003 */   addiu      $at, $zero, 0x3
/* 02D0C4 0042D0C4 8F998140 */  lw          $t9, %call16(munmap)($gp)
/* 02D0C8 0042D0C8 8C8400C4 */  lw          $a0, 0xC4($a0)
/* 02D0CC 0042D0CC 8E050034 */  lw          $a1, 0x34($s0)
/* 02D0D0 0042D0D0 0320F809 */  jalr        $t9
/* 02D0D4 0042D0D4 00000000 */   nop
/* 02D0D8 0042D0D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02D0DC 0042D0DC AE0000C4 */  sw          $zero, 0xC4($s0)
/* 02D0E0 0042D0E0 8E0400DC */  lw          $a0, 0xDC($s0)
/* 02D0E4 0042D0E4 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02D0E8 0042D0E8 0320F809 */  jalr        $t9
/* 02D0EC 0042D0EC 00000000 */   nop
/* 02D0F0 0042D0F0 8E040198 */  lw          $a0, 0x198($s0)
/* 02D0F4 0042D0F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02D0F8 0042D0F8 AE0000DC */  sw          $zero, 0xDC($s0)
/* 02D0FC 0042D0FC 10800016 */  beqz        $a0, .L0042D158
/* 02D100 0042D100 00000000 */   nop
/* 02D104 0042D104 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02D108 0042D108 0320F809 */  jalr        $t9
/* 02D10C 0042D10C 00000000 */   nop
/* 02D110 0042D110 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02D114 0042D114 10000010 */  b           .L0042D158
/* 02D118 0042D118 AE000198 */   sw         $zero, 0x198($s0)
/* 02D11C 0042D11C 24010003 */  addiu       $at, $zero, 0x3
.L0042D120:
/* 02D120 0042D120 1441000D */  bne         $v0, $at, .L0042D158
/* 02D124 0042D124 00000000 */   nop
/* 02D128 0042D128 8F998558 */  lw          $t9, %call16(obj_write)($gp)
/* 02D12C 0042D12C 02002025 */  move        $a0, $s0
/* 02D130 0042D130 0320F809 */  jalr        $t9
/* 02D134 0042D134 00000000 */   nop
/* 02D138 0042D138 14400007 */  bnez        $v0, .L0042D158
/* 02D13C 0042D13C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02D140 0042D140 8F99853C */  lw          $t9, %call16(st_error)($gp)
/* 02D144 0042D144 8F84802C */  lw          $a0, %got(STR_10006F7C)($gp)
/* 02D148 0042D148 0320F809 */  jalr        $t9
/* 02D14C 0042D14C 24846F7C */   addiu      $a0, $a0, %lo(STR_10006F7C)
/* 02D150 0042D150 10000012 */  b           .L0042D19C
/* 02D154 0042D154 8FBC0018 */   lw         $gp, 0x18($sp)
.L0042D158:
/* 02D158 0042D158 8F8E87D8 */  lw          $t6, %got(D_10012878)($gp)
/* 02D15C 0042D15C 25CE0001 */  addiu       $t6, $t6, 0x1
/* 02D160 0042D160 020E082B */  sltu        $at, $s0, $t6
/* 02D164 0042D164 5420000E */  bnel        $at, $zero, .L0042D1A0
/* 02D168 0042D168 8FBF001C */   lw         $ra, 0x1C($sp)
/* 02D16C 0042D16C 8F99815C */  lw          $t9, %call16(sbrk)($gp)
/* 02D170 0042D170 00002025 */  move        $a0, $zero
/* 02D174 0042D174 0320F809 */  jalr        $t9
/* 02D178 0042D178 00000000 */   nop
/* 02D17C 0042D17C 0202082B */  sltu        $at, $s0, $v0
/* 02D180 0042D180 10200006 */  beqz        $at, .L0042D19C
/* 02D184 0042D184 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02D188 0042D188 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02D18C 0042D18C 02002025 */  move        $a0, $s0
/* 02D190 0042D190 0320F809 */  jalr        $t9
/* 02D194 0042D194 00000000 */   nop
/* 02D198 0042D198 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042D19C:
/* 02D19C 0042D19C 8FBF001C */  lw          $ra, 0x1C($sp)
.L0042D1A0:
/* 02D1A0 0042D1A0 8FB00014 */  lw          $s0, 0x14($sp)
/* 02D1A4 0042D1A4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02D1A8 0042D1A8 03E00008 */  jr          $ra
/* 02D1AC 0042D1AC 00000000 */   nop
