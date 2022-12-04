.section .rodata
glabel STR_100089B0
/* 0489B0 100089B0 */ .asciz "st_extstradd: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_100089EC
/* 0489EC 100089EC */ .asciz "st_extstradd: argument is nil\n"
                      .balign 4


.section .text
glabel st_extstradd # 640
/* 03ECA4 0043ECA4 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03ECA8 0043ECA8 279C40BC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD40BC
/* 03ECAC 0043ECAC 0399E021 */  addu        $gp, $gp, $t9
/* 03ECB0 0043ECB0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03ECB4 0043ECB4 AFB10018 */  sw          $s1, 0x18($sp)
/* 03ECB8 0043ECB8 8F9187C8 */  lw          $s1, %got(st_pchdr)($gp)
/* 03ECBC 0043ECBC AFBF0024 */  sw          $ra, 0x24($sp)
/* 03ECC0 0043ECC0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03ECC4 0043ECC4 8E2E0000 */  lw          $t6, 0x0($s1)
/* 03ECC8 0043ECC8 AFB2001C */  sw          $s2, 0x1C($sp)
/* 03ECCC 0043ECCC AFB00014 */  sw          $s0, 0x14($sp)
/* 03ECD0 0043ECD0 15C00006 */  bnez        $t6, .L0043ECEC
/* 03ECD4 0043ECD4 AFA40028 */   sw         $a0, 0x28($sp)
/* 03ECD8 0043ECD8 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03ECDC 0043ECDC 8F848030 */  lw          $a0, %got(STR_100089B0)($gp)
/* 03ECE0 0043ECE0 0320F809 */  jalr        $t9
/* 03ECE4 0043ECE4 248489B0 */   addiu      $a0, $a0, %lo(STR_100089B0)
/* 03ECE8 0043ECE8 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043ECEC:
/* 03ECEC 0043ECEC 8FAF0028 */  lw          $t7, 0x28($sp)
/* 03ECF0 0043ECF0 15E00006 */  bnez        $t7, .L0043ED0C
/* 03ECF4 0043ECF4 00000000 */   nop
/* 03ECF8 0043ECF8 8F99853C */  lw          $t9, %call16(st_error)($gp)
/* 03ECFC 0043ECFC 8F848030 */  lw          $a0, %got(STR_100089EC)($gp)
/* 03ED00 0043ED00 0320F809 */  jalr        $t9
/* 03ED04 0043ED04 248489EC */   addiu      $a0, $a0, %lo(STR_100089EC)
/* 03ED08 0043ED08 8FBC0020 */  lw          $gp, 0x20($sp)
.L0043ED0C:
/* 03ED0C 0043ED0C 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 03ED10 0043ED10 8FA40028 */  lw          $a0, 0x28($sp)
/* 03ED14 0043ED14 0320F809 */  jalr        $t9
/* 03ED18 0043ED18 00000000 */   nop
/* 03ED1C 0043ED1C 8E300000 */  lw          $s0, 0x0($s1)
/* 03ED20 0043ED20 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03ED24 0043ED24 24520001 */  addiu       $s2, $v0, 0x1
/* 03ED28 0043ED28 8E030028 */  lw          $v1, 0x28($s0)
/* 03ED2C 0043ED2C 8E18002C */  lw          $t8, 0x2C($s0)
/* 03ED30 0043ED30 0062C821 */  addu        $t9, $v1, $v0
/* 03ED34 0043ED34 0338082A */  slt         $at, $t9, $t8
/* 03ED38 0043ED38 14200011 */  bnez        $at, .L0043ED80
/* 03ED3C 0043ED3C 00000000 */   nop
.L0043ED40:
/* 03ED40 0043ED40 8F9985FC */  lw          $t9, %call16(st_malloc)($gp)
/* 03ED44 0043ED44 8E040024 */  lw          $a0, 0x24($s0)
/* 03ED48 0043ED48 2605002C */  addiu       $a1, $s0, 0x2C
/* 03ED4C 0043ED4C 24060001 */  addiu       $a2, $zero, 0x1
/* 03ED50 0043ED50 0320F809 */  jalr        $t9
/* 03ED54 0043ED54 24070200 */   addiu      $a3, $zero, 0x200
/* 03ED58 0043ED58 8E280000 */  lw          $t0, 0x0($s1)
/* 03ED5C 0043ED5C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03ED60 0043ED60 AD020024 */  sw          $v0, 0x24($t0)
/* 03ED64 0043ED64 8E300000 */  lw          $s0, 0x0($s1)
/* 03ED68 0043ED68 8E030028 */  lw          $v1, 0x28($s0)
/* 03ED6C 0043ED6C 8E09002C */  lw          $t1, 0x2C($s0)
/* 03ED70 0043ED70 00725021 */  addu        $t2, $v1, $s2
/* 03ED74 0043ED74 012A082A */  slt         $at, $t1, $t2
/* 03ED78 0043ED78 1420FFF1 */  bnez        $at, .L0043ED40
/* 03ED7C 0043ED7C 00000000 */   nop
.L0043ED80:
/* 03ED80 0043ED80 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 03ED84 0043ED84 8E0B0024 */  lw          $t3, 0x24($s0)
/* 03ED88 0043ED88 8FA50028 */  lw          $a1, 0x28($sp)
/* 03ED8C 0043ED8C 0320F809 */  jalr        $t9
/* 03ED90 0043ED90 01632021 */   addu       $a0, $t3, $v1
/* 03ED94 0043ED94 8E300000 */  lw          $s0, 0x0($s1)
/* 03ED98 0043ED98 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03ED9C 0043ED9C 8E020028 */  lw          $v0, 0x28($s0)
/* 03EDA0 0043EDA0 00526021 */  addu        $t4, $v0, $s2
/* 03EDA4 0043EDA4 AE0C0028 */  sw          $t4, 0x28($s0)
/* 03EDA8 0043EDA8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03EDAC 0043EDAC 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03EDB0 0043EDB0 8FB10018 */  lw          $s1, 0x18($sp)
/* 03EDB4 0043EDB4 8FB00014 */  lw          $s0, 0x14($sp)
/* 03EDB8 0043EDB8 03E00008 */  jr          $ra
/* 03EDBC 0043EDBC 27BD0028 */   addiu      $sp, $sp, 0x28
