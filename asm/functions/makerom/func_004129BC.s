glabel func_004129BC # 45
/* 0129BC 004129BC 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 0129C0 004129C0 279C03A4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC003A4
/* 0129C4 004129C4 0399E021 */  addu        $gp, $gp, $t9
/* 0129C8 004129C8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0129CC 004129CC AFBF001C */  sw          $ra, 0x1C($sp)
/* 0129D0 004129D0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0129D4 004129D4 AFA40028 */  sw          $a0, 0x28($sp)
/* 0129D8 004129D8 AFA5002C */  sw          $a1, 0x2C($sp)
/* 0129DC 004129DC 8FAE0028 */  lw          $t6, 0x28($sp)
/* 0129E0 004129E0 91CF0000 */  lbu         $t7, 0x0($t6)
/* 0129E4 004129E4 11E00043 */  beqz        $t7, .L00412AF4
/* 0129E8 004129E8 00000000 */   nop
.L004129EC:
/* 0129EC 004129EC 8FB80028 */  lw          $t8, 0x28($sp)
/* 0129F0 004129F0 24010024 */  addiu       $at, $zero, 0x24
/* 0129F4 004129F4 93190000 */  lbu         $t9, 0x0($t8)
/* 0129F8 004129F8 17210030 */  bne         $t9, $at, .L00412ABC
/* 0129FC 004129FC 00000000 */   nop
/* 012A00 00412A00 93080001 */  lbu         $t0, 0x1($t8)
/* 012A04 00412A04 24010028 */  addiu       $at, $zero, 0x28
/* 012A08 00412A08 1501002C */  bne         $t0, $at, .L00412ABC
/* 012A0C 00412A0C 00000000 */   nop
/* 012A10 00412A10 8F998108 */  lw          $t9, %call16(strchr)($gp)
/* 012A14 00412A14 27040001 */  addiu       $a0, $t8, 0x1
/* 012A18 00412A18 24050029 */  addiu       $a1, $zero, 0x29
/* 012A1C 00412A1C 0320F809 */  jalr        $t9
/* 012A20 00412A20 00000000 */   nop
/* 012A24 00412A24 AFA20024 */  sw          $v0, 0x24($sp)
/* 012A28 00412A28 8FA90024 */  lw          $t1, 0x24($sp)
/* 012A2C 00412A2C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 012A30 00412A30 11200022 */  beqz        $t1, .L00412ABC
/* 012A34 00412A34 00000000 */   nop
/* 012A38 00412A38 8FAA0024 */  lw          $t2, 0x24($sp)
/* 012A3C 00412A3C A1400000 */  sb          $zero, 0x0($t2)
/* 012A40 00412A40 8F998098 */  lw          $t9, %call16(getenv)($gp)
/* 012A44 00412A44 8FA40028 */  lw          $a0, 0x28($sp)
/* 012A48 00412A48 0320F809 */  jalr        $t9
/* 012A4C 00412A4C 24840002 */   addiu      $a0, $a0, 0x2
/* 012A50 00412A50 AFA20020 */  sw          $v0, 0x20($sp)
/* 012A54 00412A54 8FAB0020 */  lw          $t3, 0x20($sp)
/* 012A58 00412A58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 012A5C 00412A5C 11600013 */  beqz        $t3, .L00412AAC
/* 012A60 00412A60 00000000 */   nop
/* 012A64 00412A64 8FAC0020 */  lw          $t4, 0x20($sp)
/* 012A68 00412A68 918D0000 */  lbu         $t5, 0x0($t4)
/* 012A6C 00412A6C 11A0000F */  beqz        $t5, .L00412AAC
/* 012A70 00412A70 00000000 */   nop
.L00412A74:
/* 012A74 00412A74 8FAE0020 */  lw          $t6, 0x20($sp)
/* 012A78 00412A78 8FB9002C */  lw          $t9, 0x2C($sp)
/* 012A7C 00412A7C 91CF0000 */  lbu         $t7, 0x0($t6)
/* 012A80 00412A80 A32F0000 */  sb          $t7, 0x0($t9)
/* 012A84 00412A84 8FA90020 */  lw          $t1, 0x20($sp)
/* 012A88 00412A88 8FA8002C */  lw          $t0, 0x2C($sp)
/* 012A8C 00412A8C 252A0001 */  addiu       $t2, $t1, 0x1
/* 012A90 00412A90 25180001 */  addiu       $t8, $t0, 0x1
/* 012A94 00412A94 AFB8002C */  sw          $t8, 0x2C($sp)
/* 012A98 00412A98 AFAA0020 */  sw          $t2, 0x20($sp)
/* 012A9C 00412A9C 8FAB0020 */  lw          $t3, 0x20($sp)
/* 012AA0 00412AA0 916C0000 */  lbu         $t4, 0x0($t3)
/* 012AA4 00412AA4 1580FFF3 */  bnez        $t4, .L00412A74
/* 012AA8 00412AA8 00000000 */   nop
.L00412AAC:
/* 012AAC 00412AAC 8FAD0024 */  lw          $t5, 0x24($sp)
/* 012AB0 00412AB0 25AE0001 */  addiu       $t6, $t5, 0x1
/* 012AB4 00412AB4 1000000B */  b           .L00412AE4
/* 012AB8 00412AB8 AFAE0028 */   sw         $t6, 0x28($sp)
.L00412ABC:
/* 012ABC 00412ABC 8FAF0028 */  lw          $t7, 0x28($sp)
/* 012AC0 00412AC0 8FA8002C */  lw          $t0, 0x2C($sp)
/* 012AC4 00412AC4 91F90000 */  lbu         $t9, 0x0($t7)
/* 012AC8 00412AC8 A1190000 */  sb          $t9, 0x0($t0)
/* 012ACC 00412ACC 8FAA0028 */  lw          $t2, 0x28($sp)
/* 012AD0 00412AD0 8FB8002C */  lw          $t8, 0x2C($sp)
/* 012AD4 00412AD4 254B0001 */  addiu       $t3, $t2, 0x1
/* 012AD8 00412AD8 27090001 */  addiu       $t1, $t8, 0x1
/* 012ADC 00412ADC AFA9002C */  sw          $t1, 0x2C($sp)
/* 012AE0 00412AE0 AFAB0028 */  sw          $t3, 0x28($sp)
.L00412AE4:
/* 012AE4 00412AE4 8FAC0028 */  lw          $t4, 0x28($sp)
/* 012AE8 00412AE8 918D0000 */  lbu         $t5, 0x0($t4)
/* 012AEC 00412AEC 15A0FFBF */  bnez        $t5, .L004129EC
/* 012AF0 00412AF0 00000000 */   nop
.L00412AF4:
/* 012AF4 00412AF4 8FAE002C */  lw          $t6, 0x2C($sp)
/* 012AF8 00412AF8 A1C00000 */  sb          $zero, 0x0($t6)
/* 012AFC 00412AFC 10000001 */  b           .L00412B04
/* 012B00 00412B00 00000000 */   nop
.L00412B04:
/* 012B04 00412B04 8FBF001C */  lw          $ra, 0x1C($sp)
/* 012B08 00412B08 27BD0028 */  addiu       $sp, $sp, 0x28
/* 012B0C 00412B0C 03E00008 */  jr          $ra
/* 012B10 00412B10 00000000 */   nop
