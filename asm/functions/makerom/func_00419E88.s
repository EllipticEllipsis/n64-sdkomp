glabel func_00419E88 # 84
/* 019E88 00419E88 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 019E8C 00419E8C 279C8ED8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF8ED8
/* 019E90 00419E90 0399E021 */  addu        $gp, $gp, $t9
/* 019E94 00419E94 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 019E98 00419E98 AFA60070 */  sw          $a2, 0x70($sp)
/* 019E9C 00419E9C 8FAF0070 */  lw          $t7, 0x70($sp)
/* 019EA0 00419EA0 AFA40068 */  sw          $a0, 0x68($sp)
/* 019EA4 00419EA4 8FAE0068 */  lw          $t6, 0x68($sp)
/* 019EA8 00419EA8 AFA5006C */  sw          $a1, 0x6C($sp)
/* 019EAC 00419EAC 000FC0C0 */  sll         $t8, $t7, 3
/* 019EB0 00419EB0 8FA8006C */  lw          $t0, 0x6C($sp)
/* 019EB4 00419EB4 01D8C821 */  addu        $t9, $t6, $t8
/* 019EB8 00419EB8 AFB00018 */  sw          $s0, 0x18($sp)
/* 019EBC 00419EBC AFB1001C */  sw          $s1, 0x1C($sp)
/* 019EC0 00419EC0 01C08025 */  move        $s0, $t6
/* 019EC4 00419EC4 AFB90068 */  sw          $t9, 0x68($sp)
/* 019EC8 00419EC8 0219882B */  sltu        $s1, $s0, $t9
/* 019ECC 00419ECC 272AFFF8 */  addiu       $t2, $t9, -0x8
/* 019ED0 00419ED0 01184821 */  addu        $t1, $t0, $t8
/* 019ED4 00419ED4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 019ED8 00419ED8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 019EDC 00419EDC AFA9006C */  sw          $t1, 0x6C($sp)
/* 019EE0 00419EE0 12200086 */  beqz        $s1, .L0041A0FC
/* 019EE4 00419EE4 AFAA0068 */   sw         $t2, 0x68($sp)
.L00419EE8:
/* 019EE8 00419EE8 8FAB006C */  lw          $t3, 0x6C($sp)
/* 019EEC 00419EEC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019EF0 00419EF0 24040000 */  addiu       $a0, $zero, 0x0
/* 019EF4 00419EF4 256CFFF8 */  addiu       $t4, $t3, -0x8
/* 019EF8 00419EF8 AFAC006C */  sw          $t4, 0x6C($sp)
/* 019EFC 00419EFC 918D0007 */  lbu         $t5, 0x7($t4)
/* 019F00 00419F00 24060000 */  addiu       $a2, $zero, 0x0
/* 019F04 00419F04 24070008 */  addiu       $a3, $zero, 0x8
/* 019F08 00419F08 0320F809 */  jalr        $t9
/* 019F0C 00419F0C 01A02825 */   move       $a1, $t5
/* 019F10 00419F10 8FAF006C */  lw          $t7, 0x6C($sp)
/* 019F14 00419F14 AFA20028 */  sw          $v0, 0x28($sp)
/* 019F18 00419F18 AFA3002C */  sw          $v1, 0x2C($sp)
/* 019F1C 00419F1C 91EE0006 */  lbu         $t6, 0x6($t7)
/* 019F20 00419F20 8FB9002C */  lw          $t9, 0x2C($sp)
/* 019F24 00419F24 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019F28 00419F28 01C04825 */  move        $t1, $t6
/* 019F2C 00419F2C 01392821 */  addu        $a1, $t1, $t9
/* 019F30 00419F30 00B9082B */  sltu        $at, $a1, $t9
/* 019F34 00419F34 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019F38 00419F38 8FB80028 */  lw          $t8, 0x28($sp)
/* 019F3C 00419F3C 000E47C3 */  sra         $t0, $t6, 31
/* 019F40 00419F40 00282021 */  addu        $a0, $at, $t0
/* 019F44 00419F44 24060000 */  addiu       $a2, $zero, 0x0
/* 019F48 00419F48 24070008 */  addiu       $a3, $zero, 0x8
/* 019F4C 00419F4C 0320F809 */  jalr        $t9
/* 019F50 00419F50 00982021 */   addu       $a0, $a0, $t8
/* 019F54 00419F54 8FAA006C */  lw          $t2, 0x6C($sp)
/* 019F58 00419F58 AFA20030 */  sw          $v0, 0x30($sp)
/* 019F5C 00419F5C AFA30034 */  sw          $v1, 0x34($sp)
/* 019F60 00419F60 914B0005 */  lbu         $t3, 0x5($t2)
/* 019F64 00419F64 8FAF0034 */  lw          $t7, 0x34($sp)
/* 019F68 00419F68 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019F6C 00419F6C 01606825 */  move        $t5, $t3
/* 019F70 00419F70 01AF2821 */  addu        $a1, $t5, $t7
/* 019F74 00419F74 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019F78 00419F78 8FAE0030 */  lw          $t6, 0x30($sp)
/* 019F7C 00419F7C 000B67C3 */  sra         $t4, $t3, 31
/* 019F80 00419F80 00AF082B */  sltu        $at, $a1, $t7
/* 019F84 00419F84 002C2021 */  addu        $a0, $at, $t4
/* 019F88 00419F88 24060000 */  addiu       $a2, $zero, 0x0
/* 019F8C 00419F8C 24070008 */  addiu       $a3, $zero, 0x8
/* 019F90 00419F90 0320F809 */  jalr        $t9
/* 019F94 00419F94 008E2021 */   addu       $a0, $a0, $t6
/* 019F98 00419F98 8FA8006C */  lw          $t0, 0x6C($sp)
/* 019F9C 00419F9C AFA20038 */  sw          $v0, 0x38($sp)
/* 019FA0 00419FA0 AFA3003C */  sw          $v1, 0x3C($sp)
/* 019FA4 00419FA4 91090004 */  lbu         $t1, 0x4($t0)
/* 019FA8 00419FA8 8FAB003C */  lw          $t3, 0x3C($sp)
/* 019FAC 00419FAC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019FB0 00419FB0 0120C825 */  move        $t9, $t1
/* 019FB4 00419FB4 032B2821 */  addu        $a1, $t9, $t3
/* 019FB8 00419FB8 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 019FBC 00419FBC 8FAA0038 */  lw          $t2, 0x38($sp)
/* 019FC0 00419FC0 0009C7C3 */  sra         $t8, $t1, 31
/* 019FC4 00419FC4 00AB082B */  sltu        $at, $a1, $t3
/* 019FC8 00419FC8 00382021 */  addu        $a0, $at, $t8
/* 019FCC 00419FCC 24060000 */  addiu       $a2, $zero, 0x0
/* 019FD0 00419FD0 24070008 */  addiu       $a3, $zero, 0x8
/* 019FD4 00419FD4 0320F809 */  jalr        $t9
/* 019FD8 00419FD8 008A2021 */   addu       $a0, $a0, $t2
/* 019FDC 00419FDC 8FAC006C */  lw          $t4, 0x6C($sp)
/* 019FE0 00419FE0 AFA20040 */  sw          $v0, 0x40($sp)
/* 019FE4 00419FE4 AFA30044 */  sw          $v1, 0x44($sp)
/* 019FE8 00419FE8 918D0003 */  lbu         $t5, 0x3($t4)
/* 019FEC 00419FEC 8FA90044 */  lw          $t1, 0x44($sp)
/* 019FF0 00419FF0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 019FF4 00419FF4 01A07825 */  move        $t7, $t5
/* 019FF8 00419FF8 01E92821 */  addu        $a1, $t7, $t1
/* 019FFC 00419FFC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A000 0041A000 8FA80040 */  lw          $t0, 0x40($sp)
/* 01A004 0041A004 000D77C3 */  sra         $t6, $t5, 31
/* 01A008 0041A008 00A9082B */  sltu        $at, $a1, $t1
/* 01A00C 0041A00C 002E2021 */  addu        $a0, $at, $t6
/* 01A010 0041A010 24060000 */  addiu       $a2, $zero, 0x0
/* 01A014 0041A014 24070008 */  addiu       $a3, $zero, 0x8
/* 01A018 0041A018 0320F809 */  jalr        $t9
/* 01A01C 0041A01C 00882021 */   addu       $a0, $a0, $t0
/* 01A020 0041A020 8FB8006C */  lw          $t8, 0x6C($sp)
/* 01A024 0041A024 AFA20048 */  sw          $v0, 0x48($sp)
/* 01A028 0041A028 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01A02C 0041A02C 93190002 */  lbu         $t9, 0x2($t8)
/* 01A030 0041A030 8FAD004C */  lw          $t5, 0x4C($sp)
/* 01A034 0041A034 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A038 0041A038 03205825 */  move        $t3, $t9
/* 01A03C 0041A03C 001957C3 */  sra         $t2, $t9, 31
/* 01A040 0041A040 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A044 0041A044 016D2821 */  addu        $a1, $t3, $t5
/* 01A048 0041A048 8FAC0048 */  lw          $t4, 0x48($sp)
/* 01A04C 0041A04C 00AD082B */  sltu        $at, $a1, $t5
/* 01A050 0041A050 002A2021 */  addu        $a0, $at, $t2
/* 01A054 0041A054 24060000 */  addiu       $a2, $zero, 0x0
/* 01A058 0041A058 24070008 */  addiu       $a3, $zero, 0x8
/* 01A05C 0041A05C 0320F809 */  jalr        $t9
/* 01A060 0041A060 008C2021 */   addu       $a0, $a0, $t4
/* 01A064 0041A064 8FAE006C */  lw          $t6, 0x6C($sp)
/* 01A068 0041A068 AFA20050 */  sw          $v0, 0x50($sp)
/* 01A06C 0041A06C AFA30054 */  sw          $v1, 0x54($sp)
/* 01A070 0041A070 91CF0001 */  lbu         $t7, 0x1($t6)
/* 01A074 0041A074 8FB90054 */  lw          $t9, 0x54($sp)
/* 01A078 0041A078 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A07C 0041A07C 01E04825 */  move        $t1, $t7
/* 01A080 0041A080 01392821 */  addu        $a1, $t1, $t9
/* 01A084 0041A084 00B9082B */  sltu        $at, $a1, $t9
/* 01A088 0041A088 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01A08C 0041A08C 8FB80050 */  lw          $t8, 0x50($sp)
/* 01A090 0041A090 000F47C3 */  sra         $t0, $t7, 31
/* 01A094 0041A094 00282021 */  addu        $a0, $at, $t0
/* 01A098 0041A098 24060000 */  addiu       $a2, $zero, 0x0
/* 01A09C 0041A09C 24070008 */  addiu       $a3, $zero, 0x8
/* 01A0A0 0041A0A0 0320F809 */  jalr        $t9
/* 01A0A4 0041A0A4 00982021 */   addu       $a0, $a0, $t8
/* 01A0A8 0041A0A8 8FAA006C */  lw          $t2, 0x6C($sp)
/* 01A0AC 0041A0AC AFA20058 */  sw          $v0, 0x58($sp)
/* 01A0B0 0041A0B0 AFA3005C */  sw          $v1, 0x5C($sp)
/* 01A0B4 0041A0B4 914B0000 */  lbu         $t3, 0x0($t2)
/* 01A0B8 0041A0B8 8FAF005C */  lw          $t7, 0x5C($sp)
/* 01A0BC 0041A0BC 8FAE0058 */  lw          $t6, 0x58($sp)
/* 01A0C0 0041A0C0 01606825 */  move        $t5, $t3
/* 01A0C4 0041A0C4 8FB80068 */  lw          $t8, 0x68($sp)
/* 01A0C8 0041A0C8 01AF4821 */  addu        $t1, $t5, $t7
/* 01A0CC 0041A0CC 000B67C3 */  sra         $t4, $t3, 31
/* 01A0D0 0041A0D0 012F082B */  sltu        $at, $t1, $t7
/* 01A0D4 0041A0D4 002C4021 */  addu        $t0, $at, $t4
/* 01A0D8 0041A0D8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01A0DC 0041A0DC 010E4021 */  addu        $t0, $t0, $t6
/* 01A0E0 0041A0E0 AF080000 */  sw          $t0, 0x0($t8)
/* 01A0E4 0041A0E4 AF090004 */  sw          $t1, 0x4($t8)
/* 01A0E8 0041A0E8 8FB90068 */  lw          $t9, 0x68($sp)
/* 01A0EC 0041A0EC 0219882B */  sltu        $s1, $s0, $t9
/* 01A0F0 0041A0F0 272AFFF8 */  addiu       $t2, $t9, -0x8
/* 01A0F4 0041A0F4 1620FF7C */  bnez        $s1, .L00419EE8
/* 01A0F8 0041A0F8 AFAA0068 */   sw         $t2, 0x68($sp)
.L0041A0FC:
/* 01A0FC 0041A0FC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01A100 0041A100 8FB00018 */  lw          $s0, 0x18($sp)
/* 01A104 0041A104 8FB1001C */  lw          $s1, 0x1C($sp)
/* 01A108 0041A108 03E00008 */  jr          $ra
/* 01A10C 0041A10C 27BD0068 */   addiu      $sp, $sp, 0x68
