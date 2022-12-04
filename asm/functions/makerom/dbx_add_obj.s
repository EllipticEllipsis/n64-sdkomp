.section .rodata
glabel STR_10006F38
/* 046F38 10006F38 */ .asciz "adding obj to objlist"
                      .balign 4


.section .text
glabel dbx_add_obj # 251
/* 02C630 0042C630 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02C634 0042C634 279C6730 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE6730
/* 02C638 0042C638 0399E021 */  addu        $gp, $gp, $t9
/* 02C63C 0042C63C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02C640 0042C640 8F9980D8 */  lw          $t9, %call16(calloc)($gp)
/* 02C644 0042C644 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02C648 0042C648 AFA40020 */  sw          $a0, 0x20($sp)
/* 02C64C 0042C64C AFA50024 */  sw          $a1, 0x24($sp)
/* 02C650 0042C650 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02C654 0042C654 AFB00014 */  sw          $s0, 0x14($sp)
/* 02C658 0042C658 240501DC */  addiu       $a1, $zero, 0x1DC
/* 02C65C 0042C65C 0320F809 */  jalr        $t9
/* 02C660 0042C660 24040001 */   addiu      $a0, $zero, 0x1
/* 02C664 0042C664 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02C668 0042C668 14400003 */  bnez        $v0, .L0042C678
/* 02C66C 0042C66C 00408025 */   move       $s0, $v0
/* 02C670 0042C670 10000047 */  b           .L0042C790
/* 02C674 0042C674 00001025 */   move       $v0, $zero
.L0042C678:
/* 02C678 0042C678 8F998274 */  lw          $t9, %call16(dbx_obj_open)($gp)
/* 02C67C 0042C67C 02002025 */  move        $a0, $s0
/* 02C680 0042C680 8FA50024 */  lw          $a1, 0x24($sp)
/* 02C684 0042C684 0320F809 */  jalr        $t9
/* 02C688 0042C688 00000000 */   nop
/* 02C68C 0042C68C 10500003 */  beq         $v0, $s0, .L0042C69C
/* 02C690 0042C690 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02C694 0042C694 1000003E */  b           .L0042C790
/* 02C698 0042C698 00001025 */   move       $v0, $zero
.L0042C69C:
/* 02C69C 0042C69C 8F998520 */  lw          $t9, %call16(list_last)($gp)
/* 02C6A0 0042C6A0 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02C6A4 0042C6A4 0320F809 */  jalr        $t9
/* 02C6A8 0042C6A8 8DC40000 */   lw         $a0, 0x0($t6)
/* 02C6AC 0042C6AC 2401FFFF */  addiu       $at, $zero, -0x1
/* 02C6B0 0042C6B0 10410021 */  beq         $v0, $at, .L0042C738
/* 02C6B4 0042C6B4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02C6B8 0042C6B8 8C43009C */  lw          $v1, 0x9C($v0)
/* 02C6BC 0042C6BC 50600016 */  beql        $v1, $zero, .L0042C718
/* 02C6C0 0042C6C0 8C4A00D0 */   lw         $t2, 0xD0($v0)
/* 02C6C4 0042C6C4 8C4F00D0 */  lw          $t7, 0xD0($v0)
/* 02C6C8 0042C6C8 8C780048 */  lw          $t8, 0x48($v1)
/* 02C6CC 0042C6CC 01F8C821 */  addu        $t9, $t7, $t8
/* 02C6D0 0042C6D0 AE1900D0 */  sw          $t9, 0xD0($s0)
/* 02C6D4 0042C6D4 8C49009C */  lw          $t1, 0x9C($v0)
/* 02C6D8 0042C6D8 8C4800D8 */  lw          $t0, 0xD8($v0)
/* 02C6DC 0042C6DC 8D2A0058 */  lw          $t2, 0x58($t1)
/* 02C6E0 0042C6E0 010A5821 */  addu        $t3, $t0, $t2
/* 02C6E4 0042C6E4 AE0B00CC */  sw          $t3, 0xCC($s0)
/* 02C6E8 0042C6E8 8C4D009C */  lw          $t5, 0x9C($v0)
/* 02C6EC 0042C6EC 8C4C00C8 */  lw          $t4, 0xC8($v0)
/* 02C6F0 0042C6F0 8DAE0030 */  lw          $t6, 0x30($t5)
/* 02C6F4 0042C6F4 018E7821 */  addu        $t7, $t4, $t6
/* 02C6F8 0042C6F8 AE0F00C8 */  sw          $t7, 0xC8($s0)
/* 02C6FC 0042C6FC 8C59009C */  lw          $t9, 0x9C($v0)
/* 02C700 0042C700 8C5800D4 */  lw          $t8, 0xD4($v0)
/* 02C704 0042C704 8F290018 */  lw          $t1, 0x18($t9)
/* 02C708 0042C708 03094021 */  addu        $t0, $t8, $t1
/* 02C70C 0042C70C 1000000E */  b           .L0042C748
/* 02C710 0042C710 AE0800D4 */   sw         $t0, 0xD4($s0)
/* 02C714 0042C714 8C4A00D0 */  lw          $t2, 0xD0($v0)
.L0042C718:
/* 02C718 0042C718 AE0A00D0 */  sw          $t2, 0xD0($s0)
/* 02C71C 0042C71C 8C4B00D8 */  lw          $t3, 0xD8($v0)
/* 02C720 0042C720 AE0B00CC */  sw          $t3, 0xCC($s0)
/* 02C724 0042C724 8C4D00C8 */  lw          $t5, 0xC8($v0)
/* 02C728 0042C728 AE0D00C8 */  sw          $t5, 0xC8($s0)
/* 02C72C 0042C72C 8C4C00D4 */  lw          $t4, 0xD4($v0)
/* 02C730 0042C730 10000005 */  b           .L0042C748
/* 02C734 0042C734 AE0C00D4 */   sw         $t4, 0xD4($s0)
.L0042C738:
/* 02C738 0042C738 AE0000CC */  sw          $zero, 0xCC($s0)
/* 02C73C 0042C73C AE0000D0 */  sw          $zero, 0xD0($s0)
/* 02C740 0042C740 AE0000C8 */  sw          $zero, 0xC8($s0)
/* 02C744 0042C744 AE0000D4 */  sw          $zero, 0xD4($s0)
.L0042C748:
/* 02C748 0042C748 8E0E00D8 */  lw          $t6, 0xD8($s0)
/* 02C74C 0042C74C 8E0F00CC */  lw          $t7, 0xCC($s0)
/* 02C750 0042C750 02002025 */  move        $a0, $s0
/* 02C754 0042C754 01CFC821 */  addu        $t9, $t6, $t7
/* 02C758 0042C758 AE1900D8 */  sw          $t9, 0xD8($s0)
/* 02C75C 0042C75C 8F998268 */  lw          $t9, %call16(change_fortran_names)($gp)
/* 02C760 0042C760 0320F809 */  jalr        $t9
/* 02C764 0042C764 00000000 */   nop
/* 02C768 0042C768 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02C76C 0042C76C 8FA40020 */  lw          $a0, 0x20($sp)
/* 02C770 0042C770 02002825 */  move        $a1, $s0
/* 02C774 0042C774 8F998518 */  lw          $t9, %call16(objList_add)($gp)
/* 02C778 0042C778 8F86802C */  lw          $a2, %got(STR_10006F38)($gp)
/* 02C77C 0042C77C 24070001 */  addiu       $a3, $zero, 0x1
/* 02C780 0042C780 0320F809 */  jalr        $t9
/* 02C784 0042C784 24C66F38 */   addiu      $a2, $a2, %lo(STR_10006F38)
/* 02C788 0042C788 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02C78C 0042C78C 02001025 */  move        $v0, $s0
.L0042C790:
/* 02C790 0042C790 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02C794 0042C794 8FB00014 */  lw          $s0, 0x14($sp)
/* 02C798 0042C798 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02C79C 0042C79C 03E00008 */  jr          $ra
/* 02C7A0 0042C7A0 00000000 */   nop
