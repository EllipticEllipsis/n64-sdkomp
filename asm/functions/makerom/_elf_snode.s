glabel _elf_snode # 180
/* 026AD4 00426AD4 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 026AD8 00426AD8 279CC28C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBEC28C
/* 026ADC 00426ADC 0399E021 */  addu        $gp, $gp, $t9
/* 026AE0 00426AE0 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 026AE4 00426AE4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 026AE8 00426AE8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 026AEC 00426AEC AFBC0018 */  sw          $gp, 0x18($sp)
/* 026AF0 00426AF0 AFB00014 */  sw          $s0, 0x14($sp)
/* 026AF4 00426AF4 0320F809 */  jalr        $t9
/* 026AF8 00426AF8 240400A8 */   addiu      $a0, $zero, 0xA8
/* 026AFC 00426AFC 00408025 */  move        $s0, $v0
/* 026B00 00426B00 16000006 */  bnez        $s0, .L00426B1C
/* 026B04 00426B04 8FBC0018 */   lw         $gp, 0x18($sp)
/* 026B08 00426B08 8F8186EC */  lw          $at, %got(_elf_err)($gp)
/* 026B0C 00426B0C 240E0412 */  addiu       $t6, $zero, 0x412
/* 026B10 00426B10 00001025 */  move        $v0, $zero
/* 026B14 00426B14 10000012 */  b           .L00426B60
/* 026B18 00426B18 AC2E0000 */   sw         $t6, 0x0($at)
.L00426B1C:
/* 026B1C 00426B1C 8F8F86F0 */  lw          $t7, %got(_elf_snode_init)($gp)
/* 026B20 00426B20 02004025 */  move        $t0, $s0
/* 026B24 00426B24 25E900A8 */  addiu       $t1, $t7, 0xA8
.L00426B28:
/* 026B28 00426B28 8DF90000 */  lw          $t9, 0x0($t7)
/* 026B2C 00426B2C 25EF000C */  addiu       $t7, $t7, 0xC
/* 026B30 00426B30 2508000C */  addiu       $t0, $t0, 0xC
/* 026B34 00426B34 AD19FFF4 */  sw          $t9, -0xC($t0)
/* 026B38 00426B38 8DF8FFF8 */  lw          $t8, -0x8($t7)
/* 026B3C 00426B3C AD18FFF8 */  sw          $t8, -0x8($t0)
/* 026B40 00426B40 8DF9FFFC */  lw          $t9, -0x4($t7)
/* 026B44 00426B44 15E9FFF8 */  bne         $t7, $t1, .L00426B28
/* 026B48 00426B48 AD19FFFC */   sw         $t9, -0x4($t0)
/* 026B4C 00426B4C 240A0001 */  addiu       $t2, $zero, 0x1
/* 026B50 00426B50 260B0068 */  addiu       $t3, $s0, 0x68
/* 026B54 00426B54 AE0A0024 */  sw          $t2, 0x24($s0)
/* 026B58 00426B58 AE0B0010 */  sw          $t3, 0x10($s0)
/* 026B5C 00426B5C 02001025 */  move        $v0, $s0
.L00426B60:
/* 026B60 00426B60 8FBF001C */  lw          $ra, 0x1C($sp)
/* 026B64 00426B64 8FB00014 */  lw          $s0, 0x14($sp)
/* 026B68 00426B68 27BD0028 */  addiu       $sp, $sp, 0x28
/* 026B6C 00426B6C 03E00008 */  jr          $ra
/* 026B70 00426B70 00000000 */   nop
