.section .rodata
glabel STR_10006F20
/* 046F20 10006F20 */ .asciz "adding obj to objlist"
                      .balign 4


.section .text
glabel add_obj # 250
/* 02C4D0 0042C4D0 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02C4D4 0042C4D4 279C6890 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE6890
/* 02C4D8 0042C4D8 0399E021 */  addu        $gp, $gp, $t9
/* 02C4DC 0042C4DC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02C4E0 0042C4E0 8F9980D8 */  lw          $t9, %call16(calloc)($gp)
/* 02C4E4 0042C4E4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02C4E8 0042C4E8 AFA40020 */  sw          $a0, 0x20($sp)
/* 02C4EC 0042C4EC AFA50024 */  sw          $a1, 0x24($sp)
/* 02C4F0 0042C4F0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02C4F4 0042C4F4 AFB00014 */  sw          $s0, 0x14($sp)
/* 02C4F8 0042C4F8 240501DC */  addiu       $a1, $zero, 0x1DC
/* 02C4FC 0042C4FC 0320F809 */  jalr        $t9
/* 02C500 0042C500 24040001 */   addiu      $a0, $zero, 0x1
/* 02C504 0042C504 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02C508 0042C508 14400003 */  bnez        $v0, .L0042C518
/* 02C50C 0042C50C 00408025 */   move       $s0, $v0
/* 02C510 0042C510 10000042 */  b           .L0042C61C
/* 02C514 0042C514 00001025 */   move       $v0, $zero
.L0042C518:
/* 02C518 0042C518 8F998270 */  lw          $t9, %call16(obj_open)($gp)
/* 02C51C 0042C51C 02002025 */  move        $a0, $s0
/* 02C520 0042C520 8FA50024 */  lw          $a1, 0x24($sp)
/* 02C524 0042C524 0320F809 */  jalr        $t9
/* 02C528 0042C528 24060003 */   addiu      $a2, $zero, 0x3
/* 02C52C 0042C52C 10500003 */  beq         $v0, $s0, .L0042C53C
/* 02C530 0042C530 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02C534 0042C534 10000039 */  b           .L0042C61C
/* 02C538 0042C538 00001025 */   move       $v0, $zero
.L0042C53C:
/* 02C53C 0042C53C 8F998520 */  lw          $t9, %call16(list_last)($gp)
/* 02C540 0042C540 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02C544 0042C544 0320F809 */  jalr        $t9
/* 02C548 0042C548 8DC40000 */   lw         $a0, 0x0($t6)
/* 02C54C 0042C54C 2401FFFF */  addiu       $at, $zero, -0x1
/* 02C550 0042C550 10410021 */  beq         $v0, $at, .L0042C5D8
/* 02C554 0042C554 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02C558 0042C558 8C43009C */  lw          $v1, 0x9C($v0)
/* 02C55C 0042C55C 50600016 */  beql        $v1, $zero, .L0042C5B8
/* 02C560 0042C560 8C4A00D0 */   lw         $t2, 0xD0($v0)
/* 02C564 0042C564 8C4F00D0 */  lw          $t7, 0xD0($v0)
/* 02C568 0042C568 8C780048 */  lw          $t8, 0x48($v1)
/* 02C56C 0042C56C 01F8C821 */  addu        $t9, $t7, $t8
/* 02C570 0042C570 AE1900D0 */  sw          $t9, 0xD0($s0)
/* 02C574 0042C574 8C49009C */  lw          $t1, 0x9C($v0)
/* 02C578 0042C578 8C4800D8 */  lw          $t0, 0xD8($v0)
/* 02C57C 0042C57C 8D2A0058 */  lw          $t2, 0x58($t1)
/* 02C580 0042C580 010A5821 */  addu        $t3, $t0, $t2
/* 02C584 0042C584 AE0B00CC */  sw          $t3, 0xCC($s0)
/* 02C588 0042C588 8C4D009C */  lw          $t5, 0x9C($v0)
/* 02C58C 0042C58C 8C4C00C8 */  lw          $t4, 0xC8($v0)
/* 02C590 0042C590 8DAE0030 */  lw          $t6, 0x30($t5)
/* 02C594 0042C594 018E7821 */  addu        $t7, $t4, $t6
/* 02C598 0042C598 AE0F00C8 */  sw          $t7, 0xC8($s0)
/* 02C59C 0042C59C 8C59009C */  lw          $t9, 0x9C($v0)
/* 02C5A0 0042C5A0 8C5800D4 */  lw          $t8, 0xD4($v0)
/* 02C5A4 0042C5A4 8F290018 */  lw          $t1, 0x18($t9)
/* 02C5A8 0042C5A8 03094021 */  addu        $t0, $t8, $t1
/* 02C5AC 0042C5AC 1000000E */  b           .L0042C5E8
/* 02C5B0 0042C5B0 AE0800D4 */   sw         $t0, 0xD4($s0)
/* 02C5B4 0042C5B4 8C4A00D0 */  lw          $t2, 0xD0($v0)
.L0042C5B8:
/* 02C5B8 0042C5B8 AE0A00D0 */  sw          $t2, 0xD0($s0)
/* 02C5BC 0042C5BC 8C4B00D8 */  lw          $t3, 0xD8($v0)
/* 02C5C0 0042C5C0 AE0B00CC */  sw          $t3, 0xCC($s0)
/* 02C5C4 0042C5C4 8C4D00C8 */  lw          $t5, 0xC8($v0)
/* 02C5C8 0042C5C8 AE0D00C8 */  sw          $t5, 0xC8($s0)
/* 02C5CC 0042C5CC 8C4C00D4 */  lw          $t4, 0xD4($v0)
/* 02C5D0 0042C5D0 10000005 */  b           .L0042C5E8
/* 02C5D4 0042C5D4 AE0C00D4 */   sw         $t4, 0xD4($s0)
.L0042C5D8:
/* 02C5D8 0042C5D8 AE0000CC */  sw          $zero, 0xCC($s0)
/* 02C5DC 0042C5DC AE0000D0 */  sw          $zero, 0xD0($s0)
/* 02C5E0 0042C5E0 AE0000C8 */  sw          $zero, 0xC8($s0)
/* 02C5E4 0042C5E4 AE0000D4 */  sw          $zero, 0xD4($s0)
.L0042C5E8:
/* 02C5E8 0042C5E8 8E0E00D8 */  lw          $t6, 0xD8($s0)
/* 02C5EC 0042C5EC 8E0F00CC */  lw          $t7, 0xCC($s0)
/* 02C5F0 0042C5F0 8F86802C */  lw          $a2, %got(STR_10006F20)($gp)
/* 02C5F4 0042C5F4 02002825 */  move        $a1, $s0
/* 02C5F8 0042C5F8 01CFC821 */  addu        $t9, $t6, $t7
/* 02C5FC 0042C5FC AE1900D8 */  sw          $t9, 0xD8($s0)
/* 02C600 0042C600 8F998518 */  lw          $t9, %call16(objList_add)($gp)
/* 02C604 0042C604 8FA40020 */  lw          $a0, 0x20($sp)
/* 02C608 0042C608 24070001 */  addiu       $a3, $zero, 0x1
/* 02C60C 0042C60C 0320F809 */  jalr        $t9
/* 02C610 0042C610 24C66F20 */   addiu      $a2, $a2, %lo(STR_10006F20)
/* 02C614 0042C614 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02C618 0042C618 02001025 */  move        $v0, $s0
.L0042C61C:
/* 02C61C 0042C61C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02C620 0042C620 8FB00014 */  lw          $s0, 0x14($sp)
/* 02C624 0042C624 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02C628 0042C628 03E00008 */  jr          $ra
/* 02C62C 0042C62C 00000000 */   nop
