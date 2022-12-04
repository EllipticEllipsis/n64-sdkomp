glabel case_streq # 623
/* 03D6BC 0043D6BC 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03D6C0 0043D6C0 279C56A4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD56A4
/* 03D6C4 0043D6C4 0399E021 */  addu        $gp, $gp, $t9
/* 03D6C8 0043D6C8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03D6CC 0043D6CC AFBF001C */  sw          $ra, 0x1C($sp)
/* 03D6D0 0043D6D0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03D6D4 0043D6D4 AFA5002C */  sw          $a1, 0x2C($sp)
/* 03D6D8 0043D6D8 14800003 */  bnez        $a0, .L0043D6E8
/* 03D6DC 0043D6DC AFA60030 */   sw         $a2, 0x30($sp)
/* 03D6E0 0043D6E0 10000028 */  b           .L0043D784
/* 03D6E4 0043D6E4 2CA20001 */   sltiu      $v0, $a1, 0x1
.L0043D6E8:
/* 03D6E8 0043D6E8 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 03D6EC 0043D6EC AFA40028 */  sw          $a0, 0x28($sp)
/* 03D6F0 0043D6F0 0320F809 */  jalr        $t9
/* 03D6F4 0043D6F4 00000000 */   nop
/* 03D6F8 0043D6F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03D6FC 0043D6FC AFA20024 */  sw          $v0, 0x24($sp)
/* 03D700 0043D700 8FA4002C */  lw          $a0, 0x2C($sp)
/* 03D704 0043D704 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 03D708 0043D708 0320F809 */  jalr        $t9
/* 03D70C 0043D70C 00000000 */   nop
/* 03D710 0043D710 8FAE0024 */  lw          $t6, 0x24($sp)
/* 03D714 0043D714 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03D718 0043D718 504E0004 */  beql        $v0, $t6, .L0043D72C
/* 03D71C 0043D71C 8FA20030 */   lw         $v0, 0x30($sp)
/* 03D720 0043D720 10000018 */  b           .L0043D784
/* 03D724 0043D724 00001025 */   move       $v0, $zero
/* 03D728 0043D728 8FA20030 */  lw          $v0, 0x30($sp)
.L0043D72C:
/* 03D72C 0043D72C 0002102B */  sltu        $v0, $zero, $v0
/* 03D730 0043D730 5040000A */  beql        $v0, $zero, .L0043D75C
/* 03D734 0043D734 8FA20030 */   lw         $v0, 0x30($sp)
/* 03D738 0043D738 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 03D73C 0043D73C 8FA40028 */  lw          $a0, 0x28($sp)
/* 03D740 0043D740 8FA5002C */  lw          $a1, 0x2C($sp)
/* 03D744 0043D744 0320F809 */  jalr        $t9
/* 03D748 0043D748 00000000 */   nop
/* 03D74C 0043D74C 2C420001 */  sltiu       $v0, $v0, 0x1
/* 03D750 0043D750 1440000C */  bnez        $v0, .L0043D784
/* 03D754 0043D754 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03D758 0043D758 8FA20030 */  lw          $v0, 0x30($sp)
.L0043D75C:
/* 03D75C 0043D75C 2C420001 */  sltiu       $v0, $v0, 0x1
/* 03D760 0043D760 50400009 */  beql        $v0, $zero, .L0043D788
/* 03D764 0043D764 8FBF001C */   lw         $ra, 0x1C($sp)
/* 03D768 0043D768 8F9985A8 */  lw          $t9, %call16(case_strcmp)($gp)
/* 03D76C 0043D76C 8FA40028 */  lw          $a0, 0x28($sp)
/* 03D770 0043D770 8FA5002C */  lw          $a1, 0x2C($sp)
/* 03D774 0043D774 0320F809 */  jalr        $t9
/* 03D778 0043D778 00000000 */   nop
/* 03D77C 0043D77C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03D780 0043D780 2C420001 */  sltiu       $v0, $v0, 0x1
.L0043D784:
/* 03D784 0043D784 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043D788:
/* 03D788 0043D788 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03D78C 0043D78C 03E00008 */  jr          $ra
/* 03D790 0043D790 00000000 */   nop
