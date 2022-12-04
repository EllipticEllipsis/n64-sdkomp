.section .rodata
glabel STR_10006F50
/* 046F50 10006F50 */ .asciz "adding obj to objlist"
                      .balign 4


.section .text
glabel dbx_insert_obj # 252
/* 02C7A4 0042C7A4 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02C7A8 0042C7A8 279C65BC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE65BC
/* 02C7AC 0042C7AC 0399E021 */  addu        $gp, $gp, $t9
/* 02C7B0 0042C7B0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02C7B4 0042C7B4 8F998520 */  lw          $t9, %call16(list_last)($gp)
/* 02C7B8 0042C7B8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02C7BC 0042C7BC AFBC0018 */  sw          $gp, 0x18($sp)
/* 02C7C0 0042C7C0 AFB00014 */  sw          $s0, 0x14($sp)
/* 02C7C4 0042C7C4 AFA40020 */  sw          $a0, 0x20($sp)
/* 02C7C8 0042C7C8 00A08025 */  move        $s0, $a1
/* 02C7CC 0042C7CC 0320F809 */  jalr        $t9
/* 02C7D0 0042C7D0 8C840000 */   lw         $a0, 0x0($a0)
/* 02C7D4 0042C7D4 2401FFFF */  addiu       $at, $zero, -0x1
/* 02C7D8 0042C7D8 10410021 */  beq         $v0, $at, .L0042C860
/* 02C7DC 0042C7DC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02C7E0 0042C7E0 8C43009C */  lw          $v1, 0x9C($v0)
/* 02C7E4 0042C7E4 50600016 */  beql        $v1, $zero, .L0042C840
/* 02C7E8 0042C7E8 8C4A00D0 */   lw         $t2, 0xD0($v0)
/* 02C7EC 0042C7EC 8C4F00D0 */  lw          $t7, 0xD0($v0)
/* 02C7F0 0042C7F0 8C780048 */  lw          $t8, 0x48($v1)
/* 02C7F4 0042C7F4 01F8C821 */  addu        $t9, $t7, $t8
/* 02C7F8 0042C7F8 AE1900D0 */  sw          $t9, 0xD0($s0)
/* 02C7FC 0042C7FC 8C49009C */  lw          $t1, 0x9C($v0)
/* 02C800 0042C800 8C4800D8 */  lw          $t0, 0xD8($v0)
/* 02C804 0042C804 8D2A0058 */  lw          $t2, 0x58($t1)
/* 02C808 0042C808 010A5821 */  addu        $t3, $t0, $t2
/* 02C80C 0042C80C AE0B00CC */  sw          $t3, 0xCC($s0)
/* 02C810 0042C810 8C4D009C */  lw          $t5, 0x9C($v0)
/* 02C814 0042C814 8C4C00C8 */  lw          $t4, 0xC8($v0)
/* 02C818 0042C818 8DAE0030 */  lw          $t6, 0x30($t5)
/* 02C81C 0042C81C 018E7821 */  addu        $t7, $t4, $t6
/* 02C820 0042C820 AE0F00C8 */  sw          $t7, 0xC8($s0)
/* 02C824 0042C824 8C59009C */  lw          $t9, 0x9C($v0)
/* 02C828 0042C828 8C5800D4 */  lw          $t8, 0xD4($v0)
/* 02C82C 0042C82C 8F290018 */  lw          $t1, 0x18($t9)
/* 02C830 0042C830 03094021 */  addu        $t0, $t8, $t1
/* 02C834 0042C834 1000000E */  b           .L0042C870
/* 02C838 0042C838 AE0800D4 */   sw         $t0, 0xD4($s0)
/* 02C83C 0042C83C 8C4A00D0 */  lw          $t2, 0xD0($v0)
.L0042C840:
/* 02C840 0042C840 AE0A00D0 */  sw          $t2, 0xD0($s0)
/* 02C844 0042C844 8C4B00D8 */  lw          $t3, 0xD8($v0)
/* 02C848 0042C848 AE0B00CC */  sw          $t3, 0xCC($s0)
/* 02C84C 0042C84C 8C4D00C8 */  lw          $t5, 0xC8($v0)
/* 02C850 0042C850 AE0D00C8 */  sw          $t5, 0xC8($s0)
/* 02C854 0042C854 8C4C00D4 */  lw          $t4, 0xD4($v0)
/* 02C858 0042C858 10000005 */  b           .L0042C870
/* 02C85C 0042C85C AE0C00D4 */   sw         $t4, 0xD4($s0)
.L0042C860:
/* 02C860 0042C860 AE0000CC */  sw          $zero, 0xCC($s0)
/* 02C864 0042C864 AE0000D0 */  sw          $zero, 0xD0($s0)
/* 02C868 0042C868 AE0000C8 */  sw          $zero, 0xC8($s0)
/* 02C86C 0042C86C AE0000D4 */  sw          $zero, 0xD4($s0)
.L0042C870:
/* 02C870 0042C870 8E02009C */  lw          $v0, 0x9C($s0)
/* 02C874 0042C874 50400007 */  beql        $v0, $zero, .L0042C894
/* 02C878 0042C878 8E1800CC */   lw         $t8, 0xCC($s0)
/* 02C87C 0042C87C 8E0E00CC */  lw          $t6, 0xCC($s0)
/* 02C880 0042C880 8C4F0020 */  lw          $t7, 0x20($v0)
/* 02C884 0042C884 01CFC821 */  addu        $t9, $t6, $t7
/* 02C888 0042C888 10000003 */  b           .L0042C898
/* 02C88C 0042C88C AE1900D8 */   sw         $t9, 0xD8($s0)
/* 02C890 0042C890 8E1800CC */  lw          $t8, 0xCC($s0)
.L0042C894:
/* 02C894 0042C894 AE1800D8 */  sw          $t8, 0xD8($s0)
.L0042C898:
/* 02C898 0042C898 8F998268 */  lw          $t9, %call16(change_fortran_names)($gp)
/* 02C89C 0042C89C 02002025 */  move        $a0, $s0
/* 02C8A0 0042C8A0 0320F809 */  jalr        $t9
/* 02C8A4 0042C8A4 00000000 */   nop
/* 02C8A8 0042C8A8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02C8AC 0042C8AC 8FA40020 */  lw          $a0, 0x20($sp)
/* 02C8B0 0042C8B0 02002825 */  move        $a1, $s0
/* 02C8B4 0042C8B4 8F998518 */  lw          $t9, %call16(objList_add)($gp)
/* 02C8B8 0042C8B8 8F86802C */  lw          $a2, %got(STR_10006F50)($gp)
/* 02C8BC 0042C8BC 24070001 */  addiu       $a3, $zero, 0x1
/* 02C8C0 0042C8C0 0320F809 */  jalr        $t9
/* 02C8C4 0042C8C4 24C66F50 */   addiu      $a2, $a2, %lo(STR_10006F50)
/* 02C8C8 0042C8C8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02C8CC 0042C8CC 02001025 */  move        $v0, $s0
/* 02C8D0 0042C8D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02C8D4 0042C8D4 8FB00014 */  lw          $s0, 0x14($sp)
/* 02C8D8 0042C8D8 03E00008 */  jr          $ra
/* 02C8DC 0042C8DC 27BD0020 */   addiu      $sp, $sp, 0x20
