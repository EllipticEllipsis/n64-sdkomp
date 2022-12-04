glabel func_0041BD38 # 92
/* 01BD38 0041BD38 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 01BD3C 0041BD3C 279C7028 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBF7028
/* 01BD40 0041BD40 0399E021 */  addu        $gp, $gp, $t9
/* 01BD44 0041BD44 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 01BD48 0041BD48 AFA60070 */  sw          $a2, 0x70($sp)
/* 01BD4C 0041BD4C 8FAF0070 */  lw          $t7, 0x70($sp)
/* 01BD50 0041BD50 AFA40068 */  sw          $a0, 0x68($sp)
/* 01BD54 0041BD54 8FAE0068 */  lw          $t6, 0x68($sp)
/* 01BD58 0041BD58 AFA5006C */  sw          $a1, 0x6C($sp)
/* 01BD5C 0041BD5C 000FC0C0 */  sll         $t8, $t7, 3
/* 01BD60 0041BD60 8FA8006C */  lw          $t0, 0x6C($sp)
/* 01BD64 0041BD64 01D8C821 */  addu        $t9, $t6, $t8
/* 01BD68 0041BD68 AFB00018 */  sw          $s0, 0x18($sp)
/* 01BD6C 0041BD6C AFB1001C */  sw          $s1, 0x1C($sp)
/* 01BD70 0041BD70 01C08025 */  move        $s0, $t6
/* 01BD74 0041BD74 AFB90068 */  sw          $t9, 0x68($sp)
/* 01BD78 0041BD78 0219882B */  sltu        $s1, $s0, $t9
/* 01BD7C 0041BD7C 272AFFF8 */  addiu       $t2, $t9, -0x8
/* 01BD80 0041BD80 01184821 */  addu        $t1, $t0, $t8
/* 01BD84 0041BD84 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01BD88 0041BD88 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01BD8C 0041BD8C AFA9006C */  sw          $t1, 0x6C($sp)
/* 01BD90 0041BD90 12200086 */  beqz        $s1, .L0041BFAC
/* 01BD94 0041BD94 AFAA0068 */   sw         $t2, 0x68($sp)
.L0041BD98:
/* 01BD98 0041BD98 8FAB006C */  lw          $t3, 0x6C($sp)
/* 01BD9C 0041BD9C 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BDA0 0041BDA0 24040000 */  addiu       $a0, $zero, 0x0
/* 01BDA4 0041BDA4 256CFFF8 */  addiu       $t4, $t3, -0x8
/* 01BDA8 0041BDA8 AFAC006C */  sw          $t4, 0x6C($sp)
/* 01BDAC 0041BDAC 918D0007 */  lbu         $t5, 0x7($t4)
/* 01BDB0 0041BDB0 24060000 */  addiu       $a2, $zero, 0x0
/* 01BDB4 0041BDB4 24070008 */  addiu       $a3, $zero, 0x8
/* 01BDB8 0041BDB8 0320F809 */  jalr        $t9
/* 01BDBC 0041BDBC 01A02825 */   move       $a1, $t5
/* 01BDC0 0041BDC0 8FAF006C */  lw          $t7, 0x6C($sp)
/* 01BDC4 0041BDC4 AFA20028 */  sw          $v0, 0x28($sp)
/* 01BDC8 0041BDC8 AFA3002C */  sw          $v1, 0x2C($sp)
/* 01BDCC 0041BDCC 91EE0006 */  lbu         $t6, 0x6($t7)
/* 01BDD0 0041BDD0 8FB9002C */  lw          $t9, 0x2C($sp)
/* 01BDD4 0041BDD4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BDD8 0041BDD8 01C04825 */  move        $t1, $t6
/* 01BDDC 0041BDDC 01392821 */  addu        $a1, $t1, $t9
/* 01BDE0 0041BDE0 00B9082B */  sltu        $at, $a1, $t9
/* 01BDE4 0041BDE4 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BDE8 0041BDE8 8FB80028 */  lw          $t8, 0x28($sp)
/* 01BDEC 0041BDEC 000E47C3 */  sra         $t0, $t6, 31
/* 01BDF0 0041BDF0 00282021 */  addu        $a0, $at, $t0
/* 01BDF4 0041BDF4 24060000 */  addiu       $a2, $zero, 0x0
/* 01BDF8 0041BDF8 24070008 */  addiu       $a3, $zero, 0x8
/* 01BDFC 0041BDFC 0320F809 */  jalr        $t9
/* 01BE00 0041BE00 00982021 */   addu       $a0, $a0, $t8
/* 01BE04 0041BE04 8FAA006C */  lw          $t2, 0x6C($sp)
/* 01BE08 0041BE08 AFA20030 */  sw          $v0, 0x30($sp)
/* 01BE0C 0041BE0C AFA30034 */  sw          $v1, 0x34($sp)
/* 01BE10 0041BE10 914B0005 */  lbu         $t3, 0x5($t2)
/* 01BE14 0041BE14 8FAF0034 */  lw          $t7, 0x34($sp)
/* 01BE18 0041BE18 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BE1C 0041BE1C 01606825 */  move        $t5, $t3
/* 01BE20 0041BE20 01AF2821 */  addu        $a1, $t5, $t7
/* 01BE24 0041BE24 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BE28 0041BE28 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01BE2C 0041BE2C 000B67C3 */  sra         $t4, $t3, 31
/* 01BE30 0041BE30 00AF082B */  sltu        $at, $a1, $t7
/* 01BE34 0041BE34 002C2021 */  addu        $a0, $at, $t4
/* 01BE38 0041BE38 24060000 */  addiu       $a2, $zero, 0x0
/* 01BE3C 0041BE3C 24070008 */  addiu       $a3, $zero, 0x8
/* 01BE40 0041BE40 0320F809 */  jalr        $t9
/* 01BE44 0041BE44 008E2021 */   addu       $a0, $a0, $t6
/* 01BE48 0041BE48 8FA8006C */  lw          $t0, 0x6C($sp)
/* 01BE4C 0041BE4C AFA20038 */  sw          $v0, 0x38($sp)
/* 01BE50 0041BE50 AFA3003C */  sw          $v1, 0x3C($sp)
/* 01BE54 0041BE54 91090004 */  lbu         $t1, 0x4($t0)
/* 01BE58 0041BE58 8FAB003C */  lw          $t3, 0x3C($sp)
/* 01BE5C 0041BE5C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BE60 0041BE60 0120C825 */  move        $t9, $t1
/* 01BE64 0041BE64 032B2821 */  addu        $a1, $t9, $t3
/* 01BE68 0041BE68 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BE6C 0041BE6C 8FAA0038 */  lw          $t2, 0x38($sp)
/* 01BE70 0041BE70 0009C7C3 */  sra         $t8, $t1, 31
/* 01BE74 0041BE74 00AB082B */  sltu        $at, $a1, $t3
/* 01BE78 0041BE78 00382021 */  addu        $a0, $at, $t8
/* 01BE7C 0041BE7C 24060000 */  addiu       $a2, $zero, 0x0
/* 01BE80 0041BE80 24070008 */  addiu       $a3, $zero, 0x8
/* 01BE84 0041BE84 0320F809 */  jalr        $t9
/* 01BE88 0041BE88 008A2021 */   addu       $a0, $a0, $t2
/* 01BE8C 0041BE8C 8FAC006C */  lw          $t4, 0x6C($sp)
/* 01BE90 0041BE90 AFA20040 */  sw          $v0, 0x40($sp)
/* 01BE94 0041BE94 AFA30044 */  sw          $v1, 0x44($sp)
/* 01BE98 0041BE98 918D0003 */  lbu         $t5, 0x3($t4)
/* 01BE9C 0041BE9C 8FA90044 */  lw          $t1, 0x44($sp)
/* 01BEA0 0041BEA0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BEA4 0041BEA4 01A07825 */  move        $t7, $t5
/* 01BEA8 0041BEA8 01E92821 */  addu        $a1, $t7, $t1
/* 01BEAC 0041BEAC 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BEB0 0041BEB0 8FA80040 */  lw          $t0, 0x40($sp)
/* 01BEB4 0041BEB4 000D77C3 */  sra         $t6, $t5, 31
/* 01BEB8 0041BEB8 00A9082B */  sltu        $at, $a1, $t1
/* 01BEBC 0041BEBC 002E2021 */  addu        $a0, $at, $t6
/* 01BEC0 0041BEC0 24060000 */  addiu       $a2, $zero, 0x0
/* 01BEC4 0041BEC4 24070008 */  addiu       $a3, $zero, 0x8
/* 01BEC8 0041BEC8 0320F809 */  jalr        $t9
/* 01BECC 0041BECC 00882021 */   addu       $a0, $a0, $t0
/* 01BED0 0041BED0 8FB8006C */  lw          $t8, 0x6C($sp)
/* 01BED4 0041BED4 AFA20048 */  sw          $v0, 0x48($sp)
/* 01BED8 0041BED8 AFA3004C */  sw          $v1, 0x4C($sp)
/* 01BEDC 0041BEDC 93190002 */  lbu         $t9, 0x2($t8)
/* 01BEE0 0041BEE0 8FAD004C */  lw          $t5, 0x4C($sp)
/* 01BEE4 0041BEE4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BEE8 0041BEE8 03205825 */  move        $t3, $t9
/* 01BEEC 0041BEEC 001957C3 */  sra         $t2, $t9, 31
/* 01BEF0 0041BEF0 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BEF4 0041BEF4 016D2821 */  addu        $a1, $t3, $t5
/* 01BEF8 0041BEF8 8FAC0048 */  lw          $t4, 0x48($sp)
/* 01BEFC 0041BEFC 00AD082B */  sltu        $at, $a1, $t5
/* 01BF00 0041BF00 002A2021 */  addu        $a0, $at, $t2
/* 01BF04 0041BF04 24060000 */  addiu       $a2, $zero, 0x0
/* 01BF08 0041BF08 24070008 */  addiu       $a3, $zero, 0x8
/* 01BF0C 0041BF0C 0320F809 */  jalr        $t9
/* 01BF10 0041BF10 008C2021 */   addu       $a0, $a0, $t4
/* 01BF14 0041BF14 8FAE006C */  lw          $t6, 0x6C($sp)
/* 01BF18 0041BF18 AFA20050 */  sw          $v0, 0x50($sp)
/* 01BF1C 0041BF1C AFA30054 */  sw          $v1, 0x54($sp)
/* 01BF20 0041BF20 91CF0001 */  lbu         $t7, 0x1($t6)
/* 01BF24 0041BF24 8FB90054 */  lw          $t9, 0x54($sp)
/* 01BF28 0041BF28 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BF2C 0041BF2C 01E04825 */  move        $t1, $t7
/* 01BF30 0041BF30 01392821 */  addu        $a1, $t1, $t9
/* 01BF34 0041BF34 00B9082B */  sltu        $at, $a1, $t9
/* 01BF38 0041BF38 8F998120 */  lw          $t9, %call16(__ll_lshift)($gp)
/* 01BF3C 0041BF3C 8FB80050 */  lw          $t8, 0x50($sp)
/* 01BF40 0041BF40 000F47C3 */  sra         $t0, $t7, 31
/* 01BF44 0041BF44 00282021 */  addu        $a0, $at, $t0
/* 01BF48 0041BF48 24060000 */  addiu       $a2, $zero, 0x0
/* 01BF4C 0041BF4C 24070008 */  addiu       $a3, $zero, 0x8
/* 01BF50 0041BF50 0320F809 */  jalr        $t9
/* 01BF54 0041BF54 00982021 */   addu       $a0, $a0, $t8
/* 01BF58 0041BF58 8FAA006C */  lw          $t2, 0x6C($sp)
/* 01BF5C 0041BF5C AFA20058 */  sw          $v0, 0x58($sp)
/* 01BF60 0041BF60 AFA3005C */  sw          $v1, 0x5C($sp)
/* 01BF64 0041BF64 914B0000 */  lbu         $t3, 0x0($t2)
/* 01BF68 0041BF68 8FAF005C */  lw          $t7, 0x5C($sp)
/* 01BF6C 0041BF6C 8FAE0058 */  lw          $t6, 0x58($sp)
/* 01BF70 0041BF70 01606825 */  move        $t5, $t3
/* 01BF74 0041BF74 8FB80068 */  lw          $t8, 0x68($sp)
/* 01BF78 0041BF78 01AF4821 */  addu        $t1, $t5, $t7
/* 01BF7C 0041BF7C 000B67C3 */  sra         $t4, $t3, 31
/* 01BF80 0041BF80 012F082B */  sltu        $at, $t1, $t7
/* 01BF84 0041BF84 002C4021 */  addu        $t0, $at, $t4
/* 01BF88 0041BF88 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01BF8C 0041BF8C 010E4021 */  addu        $t0, $t0, $t6
/* 01BF90 0041BF90 AF080000 */  sw          $t0, 0x0($t8)
/* 01BF94 0041BF94 AF090004 */  sw          $t1, 0x4($t8)
/* 01BF98 0041BF98 8FB90068 */  lw          $t9, 0x68($sp)
/* 01BF9C 0041BF9C 0219882B */  sltu        $s1, $s0, $t9
/* 01BFA0 0041BFA0 272AFFF8 */  addiu       $t2, $t9, -0x8
/* 01BFA4 0041BFA4 1620FF7C */  bnez        $s1, .L0041BD98
/* 01BFA8 0041BFA8 AFAA0068 */   sw         $t2, 0x68($sp)
.L0041BFAC:
/* 01BFAC 0041BFAC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01BFB0 0041BFB0 8FB00018 */  lw          $s0, 0x18($sp)
/* 01BFB4 0041BFB4 8FB1001C */  lw          $s1, 0x1C($sp)
/* 01BFB8 0041BFB8 03E00008 */  jr          $ra
/* 01BFBC 0041BFBC 27BD0068 */   addiu      $sp, $sp, 0x68
