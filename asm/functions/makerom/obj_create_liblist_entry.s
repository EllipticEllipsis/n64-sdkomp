glabel obj_create_liblist_entry # 315
/* 02F4BC 0042F4BC 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02F4C0 0042F4C0 279C38A4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE38A4
/* 02F4C4 0042F4C4 0399E021 */  addu        $gp, $gp, $t9
/* 02F4C8 0042F4C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02F4CC 0042F4CC 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 02F4D0 0042F4D0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02F4D4 0042F4D4 AFA40020 */  sw          $a0, 0x20($sp)
/* 02F4D8 0042F4D8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02F4DC 0042F4DC AFA50024 */  sw          $a1, 0x24($sp)
/* 02F4E0 0042F4E0 AFA60028 */  sw          $a2, 0x28($sp)
/* 02F4E4 0042F4E4 AFA7002C */  sw          $a3, 0x2C($sp)
/* 02F4E8 0042F4E8 0320F809 */  jalr        $t9
/* 02F4EC 0042F4EC 24040014 */   addiu      $a0, $zero, 0x14
/* 02F4F0 0042F4F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02F4F4 0042F4F4 14400003 */  bnez        $v0, .L0042F504
/* 02F4F8 0042F4F8 00401825 */   move       $v1, $v0
/* 02F4FC 0042F4FC 1000000C */  b           .L0042F530
/* 02F500 0042F500 00001025 */   move       $v0, $zero
.L0042F504:
/* 02F504 0042F504 8FAE0020 */  lw          $t6, 0x20($sp)
/* 02F508 0042F508 00601025 */  move        $v0, $v1
/* 02F50C 0042F50C AC6E0000 */  sw          $t6, 0x0($v1)
/* 02F510 0042F510 8FAF0024 */  lw          $t7, 0x24($sp)
/* 02F514 0042F514 AC6F0004 */  sw          $t7, 0x4($v1)
/* 02F518 0042F518 8FB80028 */  lw          $t8, 0x28($sp)
/* 02F51C 0042F51C AC780008 */  sw          $t8, 0x8($v1)
/* 02F520 0042F520 8FB9002C */  lw          $t9, 0x2C($sp)
/* 02F524 0042F524 AC79000C */  sw          $t9, 0xC($v1)
/* 02F528 0042F528 8FA80030 */  lw          $t0, 0x30($sp)
/* 02F52C 0042F52C AC680010 */  sw          $t0, 0x10($v1)
.L0042F530:
/* 02F530 0042F530 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02F534 0042F534 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02F538 0042F538 03E00008 */  jr          $ra
/* 02F53C 0042F53C 00000000 */   nop
