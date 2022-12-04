glabel func_0041BFC0 # 93
/* 01BFC0 0041BFC0 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01BFC4 0041BFC4 279C6DA0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF6DA0
/* 01BFC8 0041BFC8 0399E021 */  addu        $gp, $gp, $t9
/* 01BFCC 0041BFCC 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 01BFD0 0041BFD0 AFA60070 */  sw          $a2, 0x70($sp)
/* 01BFD4 0041BFD4 8FAF0070 */  lw          $t7, 0x70($sp)
/* 01BFD8 0041BFD8 AFA40068 */  sw          $a0, 0x68($sp)
/* 01BFDC 0041BFDC 8FAE0068 */  lw          $t6, 0x68($sp)
/* 01BFE0 0041BFE0 AFA5006C */  sw          $a1, 0x6C($sp)
/* 01BFE4 0041BFE4 000FC0C0 */  sll         $t8, $t7, 3
/* 01BFE8 0041BFE8 8FA8006C */  lw          $t0, 0x6C($sp)
/* 01BFEC 0041BFEC 01D8C821 */  addu        $t9, $t6, $t8
/* 01BFF0 0041BFF0 AFB00018 */  sw          $s0, 0x18($sp)
/* 01BFF4 0041BFF4 AFB1001C */  sw          $s1, 0x1C($sp)
/* 01BFF8 0041BFF8 01C08025 */  move        $s0, $t6
/* 01BFFC 0041BFFC AFB90068 */  sw          $t9, 0x68($sp)
/* 01C000 0041C000 0219882B */  sltu        $s1, $s0, $t9
/* 01C004 0041C004 272AFFF8 */  addiu       $t2, $t9, -0x8
/* 01C008 0041C008 01184821 */  addu        $t1, $t0, $t8
/* 01C00C 0041C00C AFBF0024 */  sw          $ra, 0x24($sp)
/* 01C010 0041C010 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01C014 0041C014 AFA9006C */  sw          $t1, 0x6C($sp)
/* 01C018 0041C018 12200086 */  beqz        $s1, .L0041C234
/* 01C01C 0041C01C AFAA0068 */   sw         $t2, 0x68($sp)
.L0041C020:
/* 01C020 0041C020 8FAB006C */  lw          $t3, 0x6C($sp)
/* 01C024 0041C024 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C028 0041C028 24040000 */  addiu       $a0, $zero, 0x0
/* 01C02C 0041C02C 256CFFF8 */  addiu       $t4, $t3, -0x8
/* 01C030 0041C030 AFAC006C */  sw          $t4, 0x6C($sp)
/* 01C034 0041C034 918D0000 */  lbu         $t5, 0x0($t4)
/* 01C038 0041C038 24060000 */  addiu       $a2, $zero, 0x0
/* 01C03C 0041C03C 24070008 */  addiu       $a3, $zero, 0x8
/* 01C040 0041C040 0320F809 */  jalr        $t9
/* 01C044 0041C044 01A02825 */   move       $a1, $t5
/* 01C048 0041C048 8FAF006C */  lw          $t7, 0x6C($sp)
/* 01C04C 0041C04C AFA20028 */  sw          $v0, 0x28($sp)
/* 01C050 0041C050 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01C054 0041C054 91EE0001 */  lbu         $t6, 0x1($t7)
/* 01C058 0041C058 8FB9002C */  lw          $t9, 0x2C($sp)
/* 01C05C 0041C05C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C060 0041C060 01C04825 */  move        $t1, $t6
/* 01C064 0041C064 01392821 */  addu        $a1, $t1, $t9
/* 01C068 0041C068 00B9082B */  sltu        $at, $a1, $t9
/* 01C06C 0041C06C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C070 0041C070 8FB80028 */  lw          $t8, 0x28($sp)
/* 01C074 0041C074 000E47C3 */  sra         $t0, $t6, 31
/* 01C078 0041C078 00282021 */  addu        $a0, $at, $t0
/* 01C07C 0041C07C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C080 0041C080 24070008 */  addiu       $a3, $zero, 0x8
/* 01C084 0041C084 0320F809 */  jalr        $t9
/* 01C088 0041C088 00982021 */   addu       $a0, $a0, $t8
/* 01C08C 0041C08C 8FAA006C */  lw          $t2, 0x6C($sp)
/* 01C090 0041C090 AFA20030 */  sw          $v0, 0x30($sp)
/* 01C094 0041C094 AFA30034 */  sw          $v1, 0x34($sp)
/* 01C098 0041C098 914B0002 */  lbu         $t3, 0x2($t2)
/* 01C09C 0041C09C 8FAF0034 */  lw          $t7, 0x34($sp)
/* 01C0A0 0041C0A0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C0A4 0041C0A4 01606825 */  move        $t5, $t3
/* 01C0A8 0041C0A8 01AF2821 */  addu        $a1, $t5, $t7
/* 01C0AC 0041C0AC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C0B0 0041C0B0 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01C0B4 0041C0B4 000B67C3 */  sra         $t4, $t3, 31
/* 01C0B8 0041C0B8 00AF082B */  sltu        $at, $a1, $t7
/* 01C0BC 0041C0BC 002C2021 */  addu        $a0, $at, $t4
/* 01C0C0 0041C0C0 24060000 */  addiu       $a2, $zero, 0x0
/* 01C0C4 0041C0C4 24070008 */  addiu       $a3, $zero, 0x8
/* 01C0C8 0041C0C8 0320F809 */  jalr        $t9
/* 01C0CC 0041C0CC 008E2021 */   addu       $a0, $a0, $t6
/* 01C0D0 0041C0D0 8FA8006C */  lw          $t0, 0x6C($sp)
/* 01C0D4 0041C0D4 AFA20038 */  sw          $v0, 0x38($sp)
/* 01C0D8 0041C0D8 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01C0DC 0041C0DC 91090003 */  lbu         $t1, 0x3($t0)
/* 01C0E0 0041C0E0 8FAB003C */  lw          $t3, 0x3C($sp)
/* 01C0E4 0041C0E4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C0E8 0041C0E8 0120C825 */  move        $t9, $t1
/* 01C0EC 0041C0EC 032B2821 */  addu        $a1, $t9, $t3
/* 01C0F0 0041C0F0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C0F4 0041C0F4 8FAA0038 */  lw          $t2, 0x38($sp)
/* 01C0F8 0041C0F8 0009C7C3 */  sra         $t8, $t1, 31
/* 01C0FC 0041C0FC 00AB082B */  sltu        $at, $a1, $t3
/* 01C100 0041C100 00382021 */  addu        $a0, $at, $t8
/* 01C104 0041C104 24060000 */  addiu       $a2, $zero, 0x0
/* 01C108 0041C108 24070008 */  addiu       $a3, $zero, 0x8
/* 01C10C 0041C10C 0320F809 */  jalr        $t9
/* 01C110 0041C110 008A2021 */   addu       $a0, $a0, $t2
/* 01C114 0041C114 8FAC006C */  lw          $t4, 0x6C($sp)
/* 01C118 0041C118 AFA20040 */  sw          $v0, 0x40($sp)
/* 01C11C 0041C11C AFA30044 */  sw          $v1, 0x44($sp)
/* 01C120 0041C120 918D0004 */  lbu         $t5, 0x4($t4)
/* 01C124 0041C124 8FA90044 */  lw          $t1, 0x44($sp)
/* 01C128 0041C128 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C12C 0041C12C 01A07825 */  move        $t7, $t5
/* 01C130 0041C130 01E92821 */  addu        $a1, $t7, $t1
/* 01C134 0041C134 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C138 0041C138 8FA80040 */  lw          $t0, 0x40($sp)
/* 01C13C 0041C13C 000D77C3 */  sra         $t6, $t5, 31
/* 01C140 0041C140 00A9082B */  sltu        $at, $a1, $t1
/* 01C144 0041C144 002E2021 */  addu        $a0, $at, $t6
/* 01C148 0041C148 24060000 */  addiu       $a2, $zero, 0x0
/* 01C14C 0041C14C 24070008 */  addiu       $a3, $zero, 0x8
/* 01C150 0041C150 0320F809 */  jalr        $t9
/* 01C154 0041C154 00882021 */   addu       $a0, $a0, $t0
/* 01C158 0041C158 8FB8006C */  lw          $t8, 0x6C($sp)
/* 01C15C 0041C15C AFA20048 */  sw          $v0, 0x48($sp)
/* 01C160 0041C160 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01C164 0041C164 93190005 */  lbu         $t9, 0x5($t8)
/* 01C168 0041C168 8FAD004C */  lw          $t5, 0x4C($sp)
/* 01C16C 0041C16C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C170 0041C170 03205825 */  move        $t3, $t9
/* 01C174 0041C174 001957C3 */  sra         $t2, $t9, 31
/* 01C178 0041C178 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C17C 0041C17C 016D2821 */  addu        $a1, $t3, $t5
/* 01C180 0041C180 8FAC0048 */  lw          $t4, 0x48($sp)
/* 01C184 0041C184 00AD082B */  sltu        $at, $a1, $t5
/* 01C188 0041C188 002A2021 */  addu        $a0, $at, $t2
/* 01C18C 0041C18C 24060000 */  addiu       $a2, $zero, 0x0
/* 01C190 0041C190 24070008 */  addiu       $a3, $zero, 0x8
/* 01C194 0041C194 0320F809 */  jalr        $t9
/* 01C198 0041C198 008C2021 */   addu       $a0, $a0, $t4
/* 01C19C 0041C19C 8FAE006C */  lw          $t6, 0x6C($sp)
/* 01C1A0 0041C1A0 AFA20050 */  sw          $v0, 0x50($sp)
/* 01C1A4 0041C1A4 AFA30054 */  sw          $v1, 0x54($sp)
/* 01C1A8 0041C1A8 91CF0006 */  lbu         $t7, 0x6($t6)
/* 01C1AC 0041C1AC 8FB90054 */  lw          $t9, 0x54($sp)
/* 01C1B0 0041C1B0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C1B4 0041C1B4 01E04825 */  move        $t1, $t7
/* 01C1B8 0041C1B8 01392821 */  addu        $a1, $t1, $t9
/* 01C1BC 0041C1BC 00B9082B */  sltu        $at, $a1, $t9
/* 01C1C0 0041C1C0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01C1C4 0041C1C4 8FB80050 */  lw          $t8, 0x50($sp)
/* 01C1C8 0041C1C8 000F47C3 */  sra         $t0, $t7, 31
/* 01C1CC 0041C1CC 00282021 */  addu        $a0, $at, $t0
/* 01C1D0 0041C1D0 24060000 */  addiu       $a2, $zero, 0x0
/* 01C1D4 0041C1D4 24070008 */  addiu       $a3, $zero, 0x8
/* 01C1D8 0041C1D8 0320F809 */  jalr        $t9
/* 01C1DC 0041C1DC 00982021 */   addu       $a0, $a0, $t8
/* 01C1E0 0041C1E0 8FAA006C */  lw          $t2, 0x6C($sp)
/* 01C1E4 0041C1E4 AFA20058 */  sw          $v0, 0x58($sp)
/* 01C1E8 0041C1E8 AFA3005C */  sw          $v1, 0x5C($sp)
/* 01C1EC 0041C1EC 914B0007 */  lbu         $t3, 0x7($t2)
/* 01C1F0 0041C1F0 8FAF005C */  lw          $t7, 0x5C($sp)
/* 01C1F4 0041C1F4 8FAE0058 */  lw          $t6, 0x58($sp)
/* 01C1F8 0041C1F8 01606825 */  move        $t5, $t3
/* 01C1FC 0041C1FC 8FB80068 */  lw          $t8, 0x68($sp)
/* 01C200 0041C200 01AF4821 */  addu        $t1, $t5, $t7
/* 01C204 0041C204 000B67C3 */  sra         $t4, $t3, 31
/* 01C208 0041C208 012F082B */  sltu        $at, $t1, $t7
/* 01C20C 0041C20C 002C4021 */  addu        $t0, $at, $t4
/* 01C210 0041C210 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01C214 0041C214 010E4021 */  addu        $t0, $t0, $t6
/* 01C218 0041C218 AF080000 */  sw          $t0, 0x0($t8)
/* 01C21C 0041C21C AF090004 */  sw          $t1, 0x4($t8)
/* 01C220 0041C220 8FB90068 */  lw          $t9, 0x68($sp)
/* 01C224 0041C224 0219882B */  sltu        $s1, $s0, $t9
/* 01C228 0041C228 272AFFF8 */  addiu       $t2, $t9, -0x8
/* 01C22C 0041C22C 1620FF7C */  bnez        $s1, .L0041C020
/* 01C230 0041C230 AFAA0068 */   sw         $t2, 0x68($sp)
.L0041C234:
/* 01C234 0041C234 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01C238 0041C238 8FB00018 */  lw          $s0, 0x18($sp)
/* 01C23C 0041C23C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 01C240 0041C240 03E00008 */  jr          $ra
/* 01C244 0041C244 27BD0068 */   addiu      $sp, $sp, 0x68
