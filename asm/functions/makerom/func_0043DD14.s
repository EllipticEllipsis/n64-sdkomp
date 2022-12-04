glabel func_0043DD14 # 629
/* 03DD14 0043DD14 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03DD18 0043DD18 279C504C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD504C
/* 03DD1C 0043DD1C 0399E021 */  addu        $gp, $gp, $t9
/* 03DD20 0043DD20 8F8E8030 */  lw          $t6, %got(B_100106D4)($gp)
/* 03DD24 0043DD24 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03DD28 0043DD28 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03DD2C 0043DD2C 8DCE06D4 */  lw          $t6, %lo(B_100106D4)($t6)
/* 03DD30 0043DD30 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03DD34 0043DD34 AFA40028 */  sw          $a0, 0x28($sp)
/* 03DD38 0043DD38 AFA60030 */  sw          $a2, 0x30($sp)
/* 03DD3C 0043DD3C 15C0000B */  bnez        $t6, .L0043DD6C
/* 03DD40 0043DD40 AFA70034 */   sw         $a3, 0x34($sp)
/* 03DD44 0043DD44 8F998238 */  lw          $t9, %call16(gethostsex)($gp)
/* 03DD48 0043DD48 8F818030 */  lw          $at, %got(B_100106D4)($gp)
/* 03DD4C 0043DD4C 240F0001 */  addiu       $t7, $zero, 0x1
/* 03DD50 0043DD50 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03DD54 0043DD54 0320F809 */  jalr        $t9
/* 03DD58 0043DD58 AC2F06D4 */   sw         $t7, %lo(B_100106D4)($at)
/* 03DD5C 0043DD5C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DD60 0043DD60 8FA5002C */  lw          $a1, 0x2C($sp)
/* 03DD64 0043DD64 8F818030 */  lw          $at, %got(B_100106D0)($gp)
/* 03DD68 0043DD68 AC2206D0 */  sw          $v0, %lo(B_100106D0)($at)
.L0043DD6C:
/* 03DD6C 0043DD6C 27B80030 */  addiu       $t8, $sp, 0x30
/* 03DD70 0043DD70 8F080000 */  lw          $t0, 0x0($t8)
/* 03DD74 0043DD74 27A40024 */  addiu       $a0, $sp, 0x24
/* 03DD78 0043DD78 10A0000C */  beqz        $a1, .L0043DDAC
/* 03DD7C 0043DD7C AC880000 */   sw         $t0, 0x0($a0)
/* 03DD80 0043DD80 8CA90000 */  lw          $t1, 0x0($a1)
/* 03DD84 0043DD84 000957C3 */  sra         $t2, $t1, 31
/* 03DD88 0043DD88 51400009 */  beql        $t2, $zero, .L0043DDB0
/* 03DD8C 0043DD8C 8FAB0028 */   lw         $t3, 0x28($sp)
/* 03DD90 0043DD90 8F9984B8 */  lw          $t9, %call16(swap_aux)($gp)
/* 03DD94 0043DD94 8F868030 */  lw          $a2, %got(B_100106D0)($gp)
/* 03DD98 0043DD98 8FA50034 */  lw          $a1, 0x34($sp)
/* 03DD9C 0043DD9C 0320F809 */  jalr        $t9
/* 03DDA0 0043DDA0 8CC606D0 */   lw         $a2, %lo(B_100106D0)($a2)
/* 03DDA4 0043DDA4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03DDA8 0043DDA8 27A40024 */  addiu       $a0, $sp, 0x24
.L0043DDAC:
/* 03DDAC 0043DDAC 8FAB0028 */  lw          $t3, 0x28($sp)
.L0043DDB0:
/* 03DDB0 0043DDB0 8C8D0000 */  lw          $t5, 0x0($a0)
/* 03DDB4 0043DDB4 AD6D0000 */  sw          $t5, 0x0($t3)
/* 03DDB8 0043DDB8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03DDBC 0043DDBC 8FA20028 */  lw          $v0, 0x28($sp)
/* 03DDC0 0043DDC0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03DDC4 0043DDC4 03E00008 */  jr          $ra
/* 03DDC8 0043DDC8 00000000 */   nop
