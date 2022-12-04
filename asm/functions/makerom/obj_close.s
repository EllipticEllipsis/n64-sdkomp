.section .rodata
glabel STR_10006F68
/* 046F68 10006F68 */ .asciz "obj_write failed"
                      .balign 4


.section .text
glabel obj_close # 262
/* 02CF08 0042CF08 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02CF0C 0042CF0C 279C5E58 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE5E58
/* 02CF10 0042CF10 0399E021 */  addu        $gp, $gp, $t9
/* 02CF14 0042CF14 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02CF18 0042CF18 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02CF1C 0042CF1C AFBC0018 */  sw          $gp, 0x18($sp)
/* 02CF20 0042CF20 AFB00014 */  sw          $s0, 0x14($sp)
/* 02CF24 0042CF24 8C820180 */  lw          $v0, 0x180($a0)
/* 02CF28 0042CF28 24010001 */  addiu       $at, $zero, 0x1
/* 02CF2C 0042CF2C 00808025 */  move        $s0, $a0
/* 02CF30 0042CF30 54410034 */  bnel        $v0, $at, .L0042D004
/* 02CF34 0042CF34 24010003 */   addiu      $at, $zero, 0x3
/* 02CF38 0042CF38 8F998150 */  lw          $t9, %call16(getpagesize)($gp)
/* 02CF3C 0042CF3C 0320F809 */  jalr        $t9
/* 02CF40 0042CF40 00000000 */   nop
/* 02CF44 0042CF44 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02CF48 0042CF48 8E0600C4 */  lw          $a2, 0xC4($s0)
/* 02CF4C 0042CF4C 244EFFFF */  addiu       $t6, $v0, -0x1
/* 02CF50 0042CF50 8F988030 */  lw          $t8, %got(D_1000AB40)($gp)
/* 02CF54 0042CF54 01C07827 */  not         $t7, $t6
/* 02CF58 0042CF58 01E62024 */  and         $a0, $t7, $a2
/* 02CF5C 0042CF5C 8F18AB40 */  lw          $t8, %lo(D_1000AB40)($t8)
/* 02CF60 0042CF60 57000008 */  bnel        $t8, $zero, .L0042CF84
/* 02CF64 0042CF64 8E190034 */   lw         $t9, 0x34($s0)
/* 02CF68 0042CF68 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02CF6C 0042CF6C 00C02025 */  move        $a0, $a2
/* 02CF70 0042CF70 0320F809 */  jalr        $t9
/* 02CF74 0042CF74 00000000 */   nop
/* 02CF78 0042CF78 1000000F */  b           .L0042CFB8
/* 02CF7C 0042CF7C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02CF80 0042CF80 8E190034 */  lw          $t9, 0x34($s0)
.L0042CF84:
/* 02CF84 0042CF84 00C44023 */  subu        $t0, $a2, $a0
/* 02CF88 0042CF88 03282821 */  addu        $a1, $t9, $t0
/* 02CF8C 0042CF8C 8F998140 */  lw          $t9, %call16(munmap)($gp)
/* 02CF90 0042CF90 0320F809 */  jalr        $t9
/* 02CF94 0042CF94 00000000 */   nop
/* 02CF98 0042CF98 2401FFFF */  addiu       $at, $zero, -0x1
/* 02CF9C 0042CF9C 14410006 */  bne         $v0, $at, .L0042CFB8
/* 02CFA0 0042CFA0 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02CFA4 0042CFA4 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02CFA8 0042CFA8 8E0400C4 */  lw          $a0, 0xC4($s0)
/* 02CFAC 0042CFAC 0320F809 */  jalr        $t9
/* 02CFB0 0042CFB0 00000000 */   nop
/* 02CFB4 0042CFB4 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042CFB8:
/* 02CFB8 0042CFB8 8E0400DC */  lw          $a0, 0xDC($s0)
/* 02CFBC 0042CFBC AE0000C4 */  sw          $zero, 0xC4($s0)
/* 02CFC0 0042CFC0 50800006 */  beql        $a0, $zero, .L0042CFDC
/* 02CFC4 0042CFC4 8E040198 */   lw         $a0, 0x198($s0)
/* 02CFC8 0042CFC8 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02CFCC 0042CFCC 0320F809 */  jalr        $t9
/* 02CFD0 0042CFD0 00000000 */   nop
/* 02CFD4 0042CFD4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02CFD8 0042CFD8 8E040198 */  lw          $a0, 0x198($s0)
.L0042CFDC:
/* 02CFDC 0042CFDC AE0000DC */  sw          $zero, 0xDC($s0)
/* 02CFE0 0042CFE0 10800016 */  beqz        $a0, .L0042D03C
/* 02CFE4 0042CFE4 00000000 */   nop
/* 02CFE8 0042CFE8 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02CFEC 0042CFEC 0320F809 */  jalr        $t9
/* 02CFF0 0042CFF0 00000000 */   nop
/* 02CFF4 0042CFF4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02CFF8 0042CFF8 10000010 */  b           .L0042D03C
/* 02CFFC 0042CFFC AE000198 */   sw         $zero, 0x198($s0)
/* 02D000 0042D000 24010003 */  addiu       $at, $zero, 0x3
.L0042D004:
/* 02D004 0042D004 1441000D */  bne         $v0, $at, .L0042D03C
/* 02D008 0042D008 00000000 */   nop
/* 02D00C 0042D00C 8F998558 */  lw          $t9, %call16(obj_write)($gp)
/* 02D010 0042D010 02002025 */  move        $a0, $s0
/* 02D014 0042D014 0320F809 */  jalr        $t9
/* 02D018 0042D018 00000000 */   nop
/* 02D01C 0042D01C 14400007 */  bnez        $v0, .L0042D03C
/* 02D020 0042D020 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02D024 0042D024 8F99853C */  lw          $t9, %call16(st_error)($gp)
/* 02D028 0042D028 8F84802C */  lw          $a0, %got(STR_10006F68)($gp)
/* 02D02C 0042D02C 0320F809 */  jalr        $t9
/* 02D030 0042D030 24846F68 */   addiu      $a0, $a0, %lo(STR_10006F68)
/* 02D034 0042D034 10000012 */  b           .L0042D080
/* 02D038 0042D038 8FBC0018 */   lw         $gp, 0x18($sp)
.L0042D03C:
/* 02D03C 0042D03C 8F8987D8 */  lw          $t1, %got(D_10012878)($gp)
/* 02D040 0042D040 25290001 */  addiu       $t1, $t1, 0x1
/* 02D044 0042D044 0209082B */  sltu        $at, $s0, $t1
/* 02D048 0042D048 5420000E */  bnel        $at, $zero, .L0042D084
/* 02D04C 0042D04C 8FBF001C */   lw         $ra, 0x1C($sp)
/* 02D050 0042D050 8F99815C */  lw          $t9, %call16(sbrk)($gp)
/* 02D054 0042D054 00002025 */  move        $a0, $zero
/* 02D058 0042D058 0320F809 */  jalr        $t9
/* 02D05C 0042D05C 00000000 */   nop
/* 02D060 0042D060 0202082B */  sltu        $at, $s0, $v0
/* 02D064 0042D064 10200006 */  beqz        $at, .L0042D080
/* 02D068 0042D068 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02D06C 0042D06C 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02D070 0042D070 02002025 */  move        $a0, $s0
/* 02D074 0042D074 0320F809 */  jalr        $t9
/* 02D078 0042D078 00000000 */   nop
/* 02D07C 0042D07C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042D080:
/* 02D080 0042D080 8FBF001C */  lw          $ra, 0x1C($sp)
.L0042D084:
/* 02D084 0042D084 8FB00014 */  lw          $s0, 0x14($sp)
/* 02D088 0042D088 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02D08C 0042D08C 03E00008 */  jr          $ra
/* 02D090 0042D090 00000000 */   nop
