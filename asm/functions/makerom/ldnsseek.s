glabel ldnsseek # 225
/* 02A5C4 0042A5C4 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A5C8 0042A5C8 279C879C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE879C
/* 02A5CC 0042A5CC 0399E021 */  addu        $gp, $gp, $t9
/* 02A5D0 0042A5D0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02A5D4 0042A5D4 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 02A5D8 0042A5D8 AFB2001C */  sw          $s2, 0x1C($sp)
/* 02A5DC 0042A5DC 00809025 */  move        $s2, $a0
/* 02A5E0 0042A5E0 AFBF002C */  sw          $ra, 0x2C($sp)
/* 02A5E4 0042A5E4 AFB30020 */  sw          $s3, 0x20($sp)
/* 02A5E8 0042A5E8 00A09825 */  move        $s3, $a1
/* 02A5EC 0042A5EC AFBC0028 */  sw          $gp, 0x28($sp)
/* 02A5F0 0042A5F0 AFB40024 */  sw          $s4, 0x24($sp)
/* 02A5F4 0042A5F4 AFB10018 */  sw          $s1, 0x18($sp)
/* 02A5F8 0042A5F8 AFB00014 */  sw          $s0, 0x14($sp)
/* 02A5FC 0042A5FC 0320F809 */  jalr        $t9
/* 02A600 0042A600 00A02025 */   move       $a0, $a1
/* 02A604 0042A604 8E43002C */  lw          $v1, 0x2C($s2)
/* 02A608 0042A608 8FBC0028 */  lw          $gp, 0x28($sp)
/* 02A60C 0042A60C 0040A025 */  move        $s4, $v0
/* 02A610 0042A610 8C6E0090 */  lw          $t6, 0x90($v1)
/* 02A614 0042A614 00008825 */  move        $s1, $zero
/* 02A618 0042A618 00008025 */  move        $s0, $zero
/* 02A61C 0042A61C 95CF0002 */  lhu         $t7, 0x2($t6)
/* 02A620 0042A620 51E00021 */  beql        $t7, $zero, .L0042A6A8
/* 02A624 0042A624 00001025 */   move       $v0, $zero
.L0042A628:
/* 02A628 0042A628 8F99814C */  lw          $t9, %call16(strncmp)($gp)
/* 02A62C 0042A62C 8C780098 */  lw          $t8, 0x98($v1)
/* 02A630 0042A630 02602025 */  move        $a0, $s3
/* 02A634 0042A634 02803025 */  move        $a2, $s4
/* 02A638 0042A638 0320F809 */  jalr        $t9
/* 02A63C 0042A63C 03102821 */   addu       $a1, $t8, $s0
/* 02A640 0042A640 14400010 */  bnez        $v0, .L0042A684
/* 02A644 0042A644 8FBC0028 */   lw         $gp, 0x28($sp)
/* 02A648 0042A648 8E59002C */  lw          $t9, 0x2C($s2)
/* 02A64C 0042A64C 8F280098 */  lw          $t0, 0x98($t9)
/* 02A650 0042A650 01104821 */  addu        $t1, $t0, $s0
/* 02A654 0042A654 8D250014 */  lw          $a1, 0x14($t1)
/* 02A658 0042A658 50A0000B */  beql        $a1, $zero, .L0042A688
/* 02A65C 0042A65C 8E43002C */   lw         $v1, 0x2C($s2)
/* 02A660 0042A660 8F998254 */  lw          $t9, %call16(ldfseek)($gp)
/* 02A664 0042A664 02402025 */  move        $a0, $s2
/* 02A668 0042A668 00003025 */  move        $a2, $zero
/* 02A66C 0042A66C 0320F809 */  jalr        $t9
/* 02A670 0042A670 00000000 */   nop
/* 02A674 0042A674 14400003 */  bnez        $v0, .L0042A684
/* 02A678 0042A678 8FBC0028 */   lw         $gp, 0x28($sp)
/* 02A67C 0042A67C 1000000A */  b           .L0042A6A8
/* 02A680 0042A680 24020001 */   addiu      $v0, $zero, 0x1
.L0042A684:
/* 02A684 0042A684 8E43002C */  lw          $v1, 0x2C($s2)
.L0042A688:
/* 02A688 0042A688 26310001 */  addiu       $s1, $s1, 0x1
/* 02A68C 0042A68C 26100028 */  addiu       $s0, $s0, 0x28
/* 02A690 0042A690 8C6A0090 */  lw          $t2, 0x90($v1)
/* 02A694 0042A694 954B0002 */  lhu         $t3, 0x2($t2)
/* 02A698 0042A698 022B082B */  sltu        $at, $s1, $t3
/* 02A69C 0042A69C 1420FFE2 */  bnez        $at, .L0042A628
/* 02A6A0 0042A6A0 00000000 */   nop
/* 02A6A4 0042A6A4 00001025 */  move        $v0, $zero
.L0042A6A8:
/* 02A6A8 0042A6A8 8FBF002C */  lw          $ra, 0x2C($sp)
/* 02A6AC 0042A6AC 8FB00014 */  lw          $s0, 0x14($sp)
/* 02A6B0 0042A6B0 8FB10018 */  lw          $s1, 0x18($sp)
/* 02A6B4 0042A6B4 8FB2001C */  lw          $s2, 0x1C($sp)
/* 02A6B8 0042A6B8 8FB30020 */  lw          $s3, 0x20($sp)
/* 02A6BC 0042A6BC 8FB40024 */  lw          $s4, 0x24($sp)
/* 02A6C0 0042A6C0 03E00008 */  jr          $ra
/* 02A6C4 0042A6C4 27BD0030 */   addiu      $sp, $sp, 0x30
