glabel elf_spoof_coffhdrs # 567
/* 036DC8 00436DC8 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 036DCC 00436DCC 279CBF98 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDBF98
/* 036DD0 00436DD0 0399E021 */  addu        $gp, $gp, $t9
/* 036DD4 00436DD4 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 036DD8 00436DD8 8F99842C */  lw          $t9, %call16(obj_pelfhdr)($gp)
/* 036DDC 00436DDC AFBF003C */  sw          $ra, 0x3C($sp)
/* 036DE0 00436DE0 AFB60030 */  sw          $s6, 0x30($sp)
/* 036DE4 00436DE4 AFB20020 */  sw          $s2, 0x20($sp)
/* 036DE8 00436DE8 AFB1001C */  sw          $s1, 0x1C($sp)
/* 036DEC 00436DEC AFB00018 */  sw          $s0, 0x18($sp)
/* 036DF0 00436DF0 00C08025 */  move        $s0, $a2
/* 036DF4 00436DF4 00E08825 */  move        $s1, $a3
/* 036DF8 00436DF8 00A09025 */  move        $s2, $a1
/* 036DFC 00436DFC 0080B025 */  move        $s6, $a0
/* 036E00 00436E00 AFBC0038 */  sw          $gp, 0x38($sp)
/* 036E04 00436E04 AFB70034 */  sw          $s7, 0x34($sp)
/* 036E08 00436E08 AFB5002C */  sw          $s5, 0x2C($sp)
/* 036E0C 00436E0C AFB40028 */  sw          $s4, 0x28($sp)
/* 036E10 00436E10 0320F809 */  jalr        $t9
/* 036E14 00436E14 AFB30024 */   sw         $s3, 0x24($sp)
/* 036E18 00436E18 AFB2005C */  sw          $s2, 0x5C($sp)
/* 036E1C 00436E1C AFB00060 */  sw          $s0, 0x60($sp)
/* 036E20 00436E20 AFB10064 */  sw          $s1, 0x64($sp)
/* 036E24 00436E24 8C430024 */  lw          $v1, 0x24($v0)
/* 036E28 00436E28 904E0005 */  lbu         $t6, 0x5($v0)
/* 036E2C 00436E2C 3C01F000 */  lui         $at, (0xF0000000 >> 16)
/* 036E30 00436E30 00611824 */  and         $v1, $v1, $at
/* 036E34 00436E34 24010002 */  addiu       $at, $zero, 0x2
/* 036E38 00436E38 8FBC0038 */  lw          $gp, 0x38($sp)
/* 036E3C 00436E3C 15C1000D */  bne         $t6, $at, .L00436E74
/* 036E40 00436E40 0040B825 */   move       $s7, $v0
/* 036E44 00436E44 14600004 */  bnez        $v1, .L00436E58
/* 036E48 00436E48 3C011000 */   lui        $at, (0x10000000 >> 16)
/* 036E4C 00436E4C 240F0160 */  addiu       $t7, $zero, 0x160
/* 036E50 00436E50 10000013 */  b           .L00436EA0
/* 036E54 00436E54 A64F0000 */   sh         $t7, 0x0($s2)
.L00436E58:
/* 036E58 00436E58 54610004 */  bnel        $v1, $at, .L00436E6C
/* 036E5C 00436E5C 24030140 */   addiu      $v1, $zero, 0x140
/* 036E60 00436E60 10000002 */  b           .L00436E6C
/* 036E64 00436E64 24030163 */   addiu      $v1, $zero, 0x163
/* 036E68 00436E68 24030140 */  addiu       $v1, $zero, 0x140
.L00436E6C:
/* 036E6C 00436E6C 1000000C */  b           .L00436EA0
/* 036E70 00436E70 A6430000 */   sh         $v1, 0x0($s2)
.L00436E74:
/* 036E74 00436E74 14600004 */  bnez        $v1, .L00436E88
/* 036E78 00436E78 3C011000 */   lui        $at, (0x10000000 >> 16)
/* 036E7C 00436E7C 24180162 */  addiu       $t8, $zero, 0x162
/* 036E80 00436E80 10000007 */  b           .L00436EA0
/* 036E84 00436E84 A6580000 */   sh         $t8, 0x0($s2)
.L00436E88:
/* 036E88 00436E88 54610004 */  bnel        $v1, $at, .L00436E9C
/* 036E8C 00436E8C 24030142 */   addiu      $v1, $zero, 0x142
/* 036E90 00436E90 10000002 */  b           .L00436E9C
/* 036E94 00436E94 24030166 */   addiu      $v1, $zero, 0x166
/* 036E98 00436E98 24030142 */  addiu       $v1, $zero, 0x142
.L00436E9C:
/* 036E9C 00436E9C A6430000 */  sh          $v1, 0x0($s2)
.L00436EA0:
/* 036EA0 00436EA0 24190060 */  addiu       $t9, $zero, 0x60
/* 036EA4 00436EA4 A6400002 */  sh          $zero, 0x2($s2)
/* 036EA8 00436EA8 AE400004 */  sw          $zero, 0x4($s2)
/* 036EAC 00436EAC AE400008 */  sw          $zero, 0x8($s2)
/* 036EB0 00436EB0 AE59000C */  sw          $t9, 0xC($s2)
/* 036EB4 00436EB4 A6400010 */  sh          $zero, 0x10($s2)
/* 036EB8 00436EB8 A6400012 */  sh          $zero, 0x12($s2)
/* 036EBC 00436EBC 9448002C */  lhu         $t0, 0x2C($v0)
/* 036EC0 00436EC0 5100003A */  beql        $t0, $zero, .L00436FAC
/* 036EC4 00436EC4 96EF0030 */   lhu        $t7, 0x30($s7)
/* 036EC8 00436EC8 12000037 */  beqz        $s0, .L00436FA8
/* 036ECC 00436ECC 24090038 */   addiu      $t1, $zero, 0x38
/* 036ED0 00436ED0 A6490010 */  sh          $t1, 0x10($s2)
/* 036ED4 00436ED4 240A010B */  addiu       $t2, $zero, 0x10B
/* 036ED8 00436ED8 A60A0000 */  sh          $t2, 0x0($s0)
/* 036EDC 00436EDC 8C4B0018 */  lw          $t3, 0x18($v0)
/* 036EE0 00436EE0 AE000004 */  sw          $zero, 0x4($s0)
/* 036EE4 00436EE4 AE000008 */  sw          $zero, 0x8($s0)
/* 036EE8 00436EE8 AE00000C */  sw          $zero, 0xC($s0)
/* 036EEC 00436EEC AE000014 */  sw          $zero, 0x14($s0)
/* 036EF0 00436EF0 AE000018 */  sw          $zero, 0x18($s0)
/* 036EF4 00436EF4 AE00001C */  sw          $zero, 0x1C($s0)
/* 036EF8 00436EF8 AE0B0010 */  sw          $t3, 0x10($s0)
/* 036EFC 00436EFC 944C002C */  lhu         $t4, 0x2C($v0)
/* 036F00 00436F00 00009025 */  move        $s2, $zero
/* 036F04 00436F04 00008825 */  move        $s1, $zero
/* 036F08 00436F08 11800027 */  beqz        $t4, .L00436FA8
/* 036F0C 00436F0C 24150006 */   addiu      $s5, $zero, 0x6
/* 036F10 00436F10 24140005 */  addiu       $s4, $zero, 0x5
/* 036F14 00436F14 24130001 */  addiu       $s3, $zero, 0x1
.L00436F18:
/* 036F18 00436F18 8F998430 */  lw          $t9, %call16(obj_pproghdr)($gp)
/* 036F1C 00436F1C 02C02025 */  move        $a0, $s6
/* 036F20 00436F20 0320F809 */  jalr        $t9
/* 036F24 00436F24 00000000 */   nop
/* 036F28 00436F28 00521821 */  addu        $v1, $v0, $s2
/* 036F2C 00436F2C 8C6D0000 */  lw          $t5, 0x0($v1)
/* 036F30 00436F30 8FBC0038 */  lw          $gp, 0x38($sp)
/* 036F34 00436F34 566D0017 */  bnel        $s3, $t5, .L00436F94
/* 036F38 00436F38 96EE002C */   lhu        $t6, 0x2C($s7)
/* 036F3C 00436F3C 8C640018 */  lw          $a0, 0x18($v1)
/* 036F40 00436F40 16840006 */  bne         $s4, $a0, .L00436F5C
/* 036F44 00436F44 00000000 */   nop
/* 036F48 00436F48 8C6E0008 */  lw          $t6, 0x8($v1)
/* 036F4C 00436F4C AE0E0014 */  sw          $t6, 0x14($s0)
/* 036F50 00436F50 8C6F0010 */  lw          $t7, 0x10($v1)
/* 036F54 00436F54 1000000E */  b           .L00436F90
/* 036F58 00436F58 AE0F0004 */   sw         $t7, 0x4($s0)
.L00436F5C:
/* 036F5C 00436F5C 56A4000D */  bnel        $s5, $a0, .L00436F94
/* 036F60 00436F60 96EE002C */   lhu        $t6, 0x2C($s7)
/* 036F64 00436F64 8C780008 */  lw          $t8, 0x8($v1)
/* 036F68 00436F68 8E08001C */  lw          $t0, 0x1C($s0)
/* 036F6C 00436F6C AE180018 */  sw          $t8, 0x18($s0)
/* 036F70 00436F70 8C790010 */  lw          $t9, 0x10($v1)
/* 036F74 00436F74 01195021 */  addu        $t2, $t0, $t9
/* 036F78 00436F78 AE0A001C */  sw          $t2, 0x1C($s0)
/* 036F7C 00436F7C AE190008 */  sw          $t9, 0x8($s0)
/* 036F80 00436F80 8C6C0010 */  lw          $t4, 0x10($v1)
/* 036F84 00436F84 8C6B0014 */  lw          $t3, 0x14($v1)
/* 036F88 00436F88 016C6823 */  subu        $t5, $t3, $t4
/* 036F8C 00436F8C AE0D000C */  sw          $t5, 0xC($s0)
.L00436F90:
/* 036F90 00436F90 96EE002C */  lhu         $t6, 0x2C($s7)
.L00436F94:
/* 036F94 00436F94 26310001 */  addiu       $s1, $s1, 0x1
/* 036F98 00436F98 26520020 */  addiu       $s2, $s2, 0x20
/* 036F9C 00436F9C 022E082B */  sltu        $at, $s1, $t6
/* 036FA0 00436FA0 1420FFDD */  bnez        $at, .L00436F18
/* 036FA4 00436FA4 00000000 */   nop
.L00436FA8:
/* 036FA8 00436FA8 96EF0030 */  lhu         $t7, 0x30($s7)
.L00436FAC:
/* 036FAC 00436FAC 02C02025 */  move        $a0, $s6
/* 036FB0 00436FB0 51E00008 */  beql        $t7, $zero, .L00436FD4
/* 036FB4 00436FB4 8FBF003C */   lw         $ra, 0x3C($sp)
/* 036FB8 00436FB8 8F998524 */  lw          $t9, %call16(foreach_section)($gp)
/* 036FBC 00436FBC 8F858020 */  lw          $a1, %got(spoof_section)($gp)
/* 036FC0 00436FC0 27A6005C */  addiu       $a2, $sp, 0x5C
/* 036FC4 00436FC4 0320F809 */  jalr        $t9
/* 036FC8 00436FC8 24A55730 */   addiu      $a1, $a1, %lo(spoof_section)
/* 036FCC 00436FCC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 036FD0 00436FD0 8FBF003C */  lw          $ra, 0x3C($sp)
.L00436FD4:
/* 036FD4 00436FD4 8FB00018 */  lw          $s0, 0x18($sp)
/* 036FD8 00436FD8 8FB1001C */  lw          $s1, 0x1C($sp)
/* 036FDC 00436FDC 8FB20020 */  lw          $s2, 0x20($sp)
/* 036FE0 00436FE0 8FB30024 */  lw          $s3, 0x24($sp)
/* 036FE4 00436FE4 8FB40028 */  lw          $s4, 0x28($sp)
/* 036FE8 00436FE8 8FB5002C */  lw          $s5, 0x2C($sp)
/* 036FEC 00436FEC 8FB60030 */  lw          $s6, 0x30($sp)
/* 036FF0 00436FF0 8FB70034 */  lw          $s7, 0x34($sp)
/* 036FF4 00436FF4 03E00008 */  jr          $ra
/* 036FF8 00436FF8 27BD0070 */   addiu      $sp, $sp, 0x70
