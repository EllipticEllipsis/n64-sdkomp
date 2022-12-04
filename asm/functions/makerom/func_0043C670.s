.section .rodata
glabel STR_10008920
/* 048920 10008920 */ .asciz "_block%x"
                      .balign 4


.section .text
glabel func_0043C670 # 613
/* 03C670 0043C670 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03C674 0043C674 279C66F0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD66F0
/* 03C678 0043C678 0399E021 */  addu        $gp, $gp, $t9
/* 03C67C 0043C67C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03C680 0043C680 AFB1001C */  sw          $s1, 0x1C($sp)
/* 03C684 0043C684 AFB00018 */  sw          $s0, 0x18($sp)
/* 03C688 0043C688 00808025 */  move        $s0, $a0
/* 03C68C 0043C68C 00C08825 */  move        $s1, $a2
/* 03C690 0043C690 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03C694 0043C694 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03C698 0043C698 04C10009 */  bgez        $a2, .L0043C6C0
/* 03C69C 0043C69C AFA5002C */   sw         $a1, 0x2C($sp)
/* 03C6A0 0043C6A0 00067023 */  negu        $t6, $a2
/* 03C6A4 0043C6A4 8F9887D4 */  lw          $t8, %got(usersymbol)($gp)
/* 03C6A8 0043C6A8 000E7880 */  sll         $t7, $t6, 2
/* 03C6AC 0043C6AC 01EE7823 */  subu        $t7, $t7, $t6
/* 03C6B0 0043C6B0 000F7880 */  sll         $t7, $t7, 2
/* 03C6B4 0043C6B4 01F8C821 */  addu        $t9, $t7, $t8
/* 03C6B8 0043C6B8 10000042 */  b           .L0043C7C4
/* 03C6BC 0043C6BC 8F220000 */   lw         $v0, 0x0($t9)
.L0043C6C0:
/* 03C6C0 0043C6C0 8E0300D8 */  lw          $v1, 0xD8($s0)
/* 03C6C4 0043C6C4 00114900 */  sll         $t1, $s1, 4
/* 03C6C8 0043C6C8 0223082B */  sltu        $at, $s1, $v1
/* 03C6CC 0043C6CC 14200009 */  bnez        $at, .L0043C6F4
/* 03C6D0 0043C6D0 00035900 */   sll        $t3, $v1, 4
/* 03C6D4 0043C6D4 8E0800AC */  lw          $t0, 0xAC($s0)
/* 03C6D8 0043C6D8 000B6023 */  negu        $t4, $t3
/* 03C6DC 0043C6DC 8E0F00B0 */  lw          $t7, 0xB0($s0)
/* 03C6E0 0043C6E0 01095021 */  addu        $t2, $t0, $t1
/* 03C6E4 0043C6E4 014C6821 */  addu        $t5, $t2, $t4
/* 03C6E8 0043C6E8 8DAE0004 */  lw          $t6, 0x4($t5)
/* 03C6EC 0043C6EC 10000035 */  b           .L0043C7C4
/* 03C6F0 0043C6F0 01CF1021 */   addu       $v0, $t6, $t7
.L0043C6F4:
/* 03C6F4 0043C6F4 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03C6F8 0043C6F8 02002025 */  move        $a0, $s0
/* 03C6FC 0043C6FC 02202825 */  move        $a1, $s1
/* 03C700 0043C700 0320F809 */  jalr        $t9
/* 03C704 0043C704 00000000 */   nop
/* 03C708 0043C708 24010007 */  addiu       $at, $zero, 0x7
/* 03C70C 0043C70C 1441001A */  bne         $v0, $at, .L0043C778
/* 03C710 0043C710 8FBC0020 */   lw         $gp, 0x20($sp)
/* 03C714 0043C714 8F998560 */  lw          $t9, %call16(symbol_class)($gp)
/* 03C718 0043C718 02002025 */  move        $a0, $s0
/* 03C71C 0043C71C 02202825 */  move        $a1, $s1
/* 03C720 0043C720 0320F809 */  jalr        $t9
/* 03C724 0043C724 00000000 */   nop
/* 03C728 0043C728 24010001 */  addiu       $at, $zero, 0x1
/* 03C72C 0043C72C 14410012 */  bne         $v0, $at, .L0043C778
/* 03C730 0043C730 8FBC0020 */   lw         $gp, 0x20($sp)
/* 03C734 0043C734 8F998568 */  lw          $t9, %call16(symbol_value)($gp)
/* 03C738 0043C738 02002025 */  move        $a0, $s0
/* 03C73C 0043C73C 02202825 */  move        $a1, $s1
/* 03C740 0043C740 0320F809 */  jalr        $t9
/* 03C744 0043C744 00000000 */   nop
/* 03C748 0043C748 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C74C 0043C74C 00403025 */  move        $a2, $v0
/* 03C750 0043C750 8F908030 */  lw          $s0, %got(B_1000F680)($gp)
/* 03C754 0043C754 8F99806C */  lw          $t9, %call16(sprintf)($gp)
/* 03C758 0043C758 8F858030 */  lw          $a1, %got(STR_10008920)($gp)
/* 03C75C 0043C75C 2610F680 */  addiu       $s0, $s0, %lo(B_1000F680)
/* 03C760 0043C760 02002025 */  move        $a0, $s0
/* 03C764 0043C764 0320F809 */  jalr        $t9
/* 03C768 0043C768 24A58920 */   addiu      $a1, $a1, %lo(STR_10008920)
/* 03C76C 0043C76C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C770 0043C770 10000014 */  b           .L0043C7C4
/* 03C774 0043C774 02001025 */   move       $v0, $s0
.L0043C778:
/* 03C778 0043C778 8F99850C */  lw          $t9, %call16(file_string_base)($gp)
/* 03C77C 0043C77C 02002025 */  move        $a0, $s0
/* 03C780 0043C780 8FA5002C */  lw          $a1, 0x2C($sp)
/* 03C784 0043C784 0320F809 */  jalr        $t9
/* 03C788 0043C788 00000000 */   nop
/* 03C78C 0043C78C 8E0900CC */  lw          $t1, 0xCC($s0)
/* 03C790 0043C790 8E1800A8 */  lw          $t8, 0xA8($s0)
/* 03C794 0043C794 0011C880 */  sll         $t9, $s1, 2
/* 03C798 0043C798 00095880 */  sll         $t3, $t1, 2
/* 03C79C 0043C79C 0331C823 */  subu        $t9, $t9, $s1
/* 03C7A0 0043C7A0 01695823 */  subu        $t3, $t3, $t1
/* 03C7A4 0043C7A4 000B5880 */  sll         $t3, $t3, 2
/* 03C7A8 0043C7A8 0019C880 */  sll         $t9, $t9, 2
/* 03C7AC 0043C7AC 000B5023 */  negu        $t2, $t3
/* 03C7B0 0043C7B0 03194021 */  addu        $t0, $t8, $t9
/* 03C7B4 0043C7B4 010A6021 */  addu        $t4, $t0, $t2
/* 03C7B8 0043C7B8 8D8D0000 */  lw          $t5, 0x0($t4)
/* 03C7BC 0043C7BC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C7C0 0043C7C0 01A21021 */  addu        $v0, $t5, $v0
.L0043C7C4:
/* 03C7C4 0043C7C4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03C7C8 0043C7C8 8FB00018 */  lw          $s0, 0x18($sp)
/* 03C7CC 0043C7CC 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03C7D0 0043C7D0 03E00008 */  jr          $ra
/* 03C7D4 0043C7D4 27BD0028 */   addiu      $sp, $sp, 0x28
