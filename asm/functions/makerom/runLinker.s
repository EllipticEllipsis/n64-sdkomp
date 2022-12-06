.section .rodata
glabel STR_10004EBC
/* 044EBC 10004EBC */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10004ECC
/* 044ECC 10004ECC */ .asciz "$ROOT/usr/lib/PR/nld -g -non_shared -G 0 -elspec "
                      .balign 4

glabel STR_10004F00
/* 044F00 10004F00 */ .asciz " -rom "
                      .balign 4

glabel STR_10004F08
/* 044F08 10004F08 */ .asciz " -m "
                      .balign 4

glabel STR_10004F10
/* 044F10 10004F10 */ .asciz " -o "
                      .balign 4

glabel STR_10004F18
/* 044F18 10004F18 */ .asciz " "
                      .balign 4

glabel STR_10004F1C
/* 044F1C 10004F1C */ .asciz " -objectlist "
                      .balign 4

glabel STR_10004F2C
/* 044F2C 10004F2C */ .asciz "w"
                      .balign 4

glabel STR_10004F30
/* 044F30 10004F30 */ .asciz "%s\n"
                      .balign 4

glabel STR_10004F34
/* 044F34 10004F34 */ .asciz "Linking to ELF wave file\n"
                      .balign 4

glabel STR_10004F50
/* 044F50 10004F50 */ .asciz "  %s\n"
                      .balign 4
/* 044F58 10004F58 */ .asciz ""
                      .balign 4
/* 044F5C 10004F5C */ .asciz ""
                      .balign 4


.section .text
glabel runLinker # 18
/* 00C644 0040C644 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00C648 0040C648 279C671C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC0671C
/* 00C64C 0040C64C 0399E021 */  addu        $gp, $gp, $t9
/* 00C650 0040C650 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00C654 0040C654 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00C658 0040C658 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00C65C 0040C65C AFA40038 */  sw          $a0, 0x38($sp)
/* 00C660 0040C660 AFA5003C */  sw          $a1, 0x3C($sp)
/* 00C664 0040C664 AFA60040 */  sw          $a2, 0x40($sp)
/* 00C668 0040C668 AFB00014 */  sw          $s0, 0x14($sp)
/* 00C66C 0040C66C 8F998060 */  lw          $t9, %call16(sysconf)($gp)
/* 00C670 0040C670 24040001 */  addiu       $a0, $zero, 0x1
/* 00C674 0040C674 0320F809 */  jalr        $t9
/* 00C678 0040C678 00000000 */   nop
/* 00C67C 0040C67C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C680 0040C680 00408025 */  move        $s0, $v0
/* 00C684 0040C684 02002025 */  move        $a0, $s0
/* 00C688 0040C688 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 00C68C 0040C68C 0320F809 */  jalr        $t9
/* 00C690 0040C690 00000000 */   nop
/* 00C694 0040C694 AFA20034 */  sw          $v0, 0x34($sp)
/* 00C698 0040C698 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00C69C 0040C69C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C6A0 0040C6A0 15C0000A */  bnez        $t6, .L0040C6CC
/* 00C6A4 0040C6A4 00000000 */   nop
/* 00C6A8 0040C6A8 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00C6AC 0040C6AC 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00C6B0 0040C6B0 8F85802C */  lw          $a1, %got(STR_10004EBC)($gp)
/* 00C6B4 0040C6B4 24840020 */  addiu       $a0, $a0, 0x20
/* 00C6B8 0040C6B8 0320F809 */  jalr        $t9
/* 00C6BC 0040C6BC 24A54EBC */   addiu      $a1, $a1, %lo(STR_10004EBC)
/* 00C6C0 0040C6C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C6C4 0040C6C4 10000097 */  b           .L0040C924
/* 00C6C8 0040C6C8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0040C6CC:
/* 00C6CC 0040C6CC 8F98802C */  lw          $t8, %got(STR_10004ECC)($gp)
/* 00C6D0 0040C6D0 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00C6D4 0040C6D4 27184ECC */  addiu       $t8, $t8, %lo(STR_10004ECC)
/* 00C6D8 0040C6D8 27090030 */  addiu       $t1, $t8, 0x30
.L0040C6DC:
/* 00C6DC 0040C6DC 8B080000 */  lwl         $t0, 0x0($t8)
/* 00C6E0 0040C6E0 9B080003 */  lwr         $t0, 0x3($t8)
/* 00C6E4 0040C6E4 2718000C */  addiu       $t8, $t8, 0xC
/* 00C6E8 0040C6E8 25EF000C */  addiu       $t7, $t7, 0xC
/* 00C6EC 0040C6EC A9E8FFF4 */  swl         $t0, -0xC($t7)
/* 00C6F0 0040C6F0 B9E8FFF7 */  swr         $t0, -0x9($t7)
/* 00C6F4 0040C6F4 8B19FFF8 */  lwl         $t9, -0x8($t8)
/* 00C6F8 0040C6F8 9B19FFFB */  lwr         $t9, -0x5($t8)
/* 00C6FC 0040C6FC A9F9FFF8 */  swl         $t9, -0x8($t7)
/* 00C700 0040C700 B9F9FFFB */  swr         $t9, -0x5($t7)
/* 00C704 0040C704 8B08FFFC */  lwl         $t0, -0x4($t8)
/* 00C708 0040C708 9B08FFFF */  lwr         $t0, -0x1($t8)
/* 00C70C 0040C70C A9E8FFFC */  swl         $t0, -0x4($t7)
/* 00C710 0040C710 1709FFF2 */  bne         $t8, $t1, .L0040C6DC
/* 00C714 0040C714 B9E8FFFF */   swr        $t0, -0x1($t7)
/* 00C718 0040C718 93080000 */  lbu         $t0, 0x0($t8)
/* 00C71C 0040C71C A1E80000 */  sb          $t0, 0x0($t7)
/* 00C720 0040C720 93190001 */  lbu         $t9, 0x1($t8)
/* 00C724 0040C724 A1F90001 */  sb          $t9, 0x1($t7)
/* 00C728 0040C728 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00C72C 0040C72C 8FA50038 */  lw          $a1, 0x38($sp)
/* 00C730 0040C730 8FA40034 */  lw          $a0, 0x34($sp)
/* 00C734 0040C734 0320F809 */  jalr        $t9
/* 00C738 0040C738 24A50014 */   addiu      $a1, $a1, 0x14
/* 00C73C 0040C73C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C740 0040C740 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00C744 0040C744 8F85802C */  lw          $a1, %got(STR_10004F00)($gp)
/* 00C748 0040C748 8FA40034 */  lw          $a0, 0x34($sp)
/* 00C74C 0040C74C 0320F809 */  jalr        $t9
/* 00C750 0040C750 24A54F00 */   addiu      $a1, $a1, %lo(STR_10004F00)
/* 00C754 0040C754 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C758 0040C758 8F8A871C */  lw          $t2, %got(loadMap)($gp)
/* 00C75C 0040C75C 8D4A0000 */  lw          $t2, 0x0($t2)
/* 00C760 0040C760 11400007 */  beqz        $t2, .L0040C780
/* 00C764 0040C764 00000000 */   nop
/* 00C768 0040C768 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00C76C 0040C76C 8F85802C */  lw          $a1, %got(STR_10004F08)($gp)
/* 00C770 0040C770 8FA40034 */  lw          $a0, 0x34($sp)
/* 00C774 0040C774 0320F809 */  jalr        $t9
/* 00C778 0040C778 24A54F08 */   addiu      $a1, $a1, %lo(STR_10004F08)
/* 00C77C 0040C77C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040C780:
/* 00C780 0040C780 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00C784 0040C784 8F85802C */  lw          $a1, %got(STR_10004F10)($gp)
/* 00C788 0040C788 8FA40034 */  lw          $a0, 0x34($sp)
/* 00C78C 0040C78C 0320F809 */  jalr        $t9
/* 00C790 0040C790 24A54F10 */   addiu      $a1, $a1, %lo(STR_10004F10)
/* 00C794 0040C794 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C798 0040C798 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00C79C 0040C79C 8FAB0038 */  lw          $t3, 0x38($sp)
/* 00C7A0 0040C7A0 8FA40034 */  lw          $a0, 0x34($sp)
/* 00C7A4 0040C7A4 0320F809 */  jalr        $t9
/* 00C7A8 0040C7A8 8D650004 */   lw         $a1, 0x4($t3)
/* 00C7AC 0040C7AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C7B0 0040C7B0 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00C7B4 0040C7B4 8F85802C */  lw          $a1, %got(STR_10004F18)($gp)
/* 00C7B8 0040C7B8 8FA40034 */  lw          $a0, 0x34($sp)
/* 00C7BC 0040C7BC 0320F809 */  jalr        $t9
/* 00C7C0 0040C7C0 24A54F18 */   addiu      $a1, $a1, %lo(STR_10004F18)
/* 00C7C4 0040C7C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C7C8 0040C7C8 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00C7CC 0040C7CC 8FA40034 */  lw          $a0, 0x34($sp)
/* 00C7D0 0040C7D0 8FA5003C */  lw          $a1, 0x3C($sp)
/* 00C7D4 0040C7D4 0320F809 */  jalr        $t9
/* 00C7D8 0040C7D8 00000000 */   nop
/* 00C7DC 0040C7DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C7E0 0040C7E0 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00C7E4 0040C7E4 8F85802C */  lw          $a1, %got(STR_10004F1C)($gp)
/* 00C7E8 0040C7E8 8FA40034 */  lw          $a0, 0x34($sp)
/* 00C7EC 0040C7EC 0320F809 */  jalr        $t9
/* 00C7F0 0040C7F0 24A54F1C */   addiu      $a1, $a1, %lo(STR_10004F1C)
/* 00C7F4 0040C7F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C7F8 0040C7F8 8F99809C */  lw          $t9, %call16(strcat)($gp)
/* 00C7FC 0040C7FC 8FA40034 */  lw          $a0, 0x34($sp)
/* 00C800 0040C800 8FA50040 */  lw          $a1, 0x40($sp)
/* 00C804 0040C804 0320F809 */  jalr        $t9
/* 00C808 0040C808 00000000 */   nop
/* 00C80C 0040C80C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C810 0040C810 8F998080 */  lw          $t9, %call16(fopen)($gp)
/* 00C814 0040C814 8F85802C */  lw          $a1, %got(STR_10004F2C)($gp)
/* 00C818 0040C818 8FA40040 */  lw          $a0, 0x40($sp)
/* 00C81C 0040C81C 0320F809 */  jalr        $t9
/* 00C820 0040C820 24A54F2C */   addiu      $a1, $a1, %lo(STR_10004F2C)
/* 00C824 0040C824 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C828 0040C828 AFA20024 */  sw          $v0, 0x24($sp)
/* 00C82C 0040C82C 8FAC0038 */  lw          $t4, 0x38($sp)
/* 00C830 0040C830 8D8D0008 */  lw          $t5, 0x8($t4)
/* 00C834 0040C834 11A0001F */  beqz        $t5, .L0040C8B4
/* 00C838 0040C838 AFAD0030 */   sw         $t5, 0x30($sp)
.L0040C83C:
/* 00C83C 0040C83C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00C840 0040C840 8DC90004 */  lw          $t1, 0x4($t6)
/* 00C844 0040C844 AFA9002C */  sw          $t1, 0x2C($sp)
/* 00C848 0040C848 8FB8002C */  lw          $t8, 0x2C($sp)
/* 00C84C 0040C84C 8F0F0028 */  lw          $t7, 0x28($t8)
/* 00C850 0040C850 31F90002 */  andi        $t9, $t7, 0x2
/* 00C854 0040C854 17200003 */  bnez        $t9, .L0040C864
/* 00C858 0040C858 00000000 */   nop
/* 00C85C 0040C85C 10000011 */  b           .L0040C8A4
/* 00C860 0040C860 00000000 */   nop
.L0040C864:
/* 00C864 0040C864 8FA8002C */  lw          $t0, 0x2C($sp)
/* 00C868 0040C868 8D0A0008 */  lw          $t2, 0x8($t0)
/* 00C86C 0040C86C 1140000D */  beqz        $t2, .L0040C8A4
/* 00C870 0040C870 AFAA0028 */   sw         $t2, 0x28($sp)
.L0040C874:
/* 00C874 0040C874 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00C878 0040C878 8F85802C */  lw          $a1, %got(STR_10004F30)($gp)
/* 00C87C 0040C87C 8FAB0028 */  lw          $t3, 0x28($sp)
/* 00C880 0040C880 8FA40024 */  lw          $a0, 0x24($sp)
/* 00C884 0040C884 24A54F30 */  addiu       $a1, $a1, %lo(STR_10004F30)
/* 00C888 0040C888 0320F809 */  jalr        $t9
/* 00C88C 0040C88C 8D660004 */   lw         $a2, 0x4($t3)
/* 00C890 0040C890 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C894 0040C894 8FAC0028 */  lw          $t4, 0x28($sp)
/* 00C898 0040C898 8D8D0000 */  lw          $t5, 0x0($t4)
/* 00C89C 0040C89C 15A0FFF5 */  bnez        $t5, .L0040C874
/* 00C8A0 0040C8A0 AFAD0028 */   sw         $t5, 0x28($sp)
.L0040C8A4:
/* 00C8A4 0040C8A4 8FAE0030 */  lw          $t6, 0x30($sp)
/* 00C8A8 0040C8A8 8DC90000 */  lw          $t1, 0x0($t6)
/* 00C8AC 0040C8AC 1520FFE3 */  bnez        $t1, .L0040C83C
/* 00C8B0 0040C8B0 AFA90030 */   sw         $t1, 0x30($sp)
.L0040C8B4:
/* 00C8B4 0040C8B4 8F998084 */  lw          $t9, %call16(fclose)($gp)
/* 00C8B8 0040C8B8 8FA40024 */  lw          $a0, 0x24($sp)
/* 00C8BC 0040C8BC 0320F809 */  jalr        $t9
/* 00C8C0 0040C8C0 00000000 */   nop
/* 00C8C4 0040C8C4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C8C8 0040C8C8 8F988660 */  lw          $t8, %got(debug)($gp)
/* 00C8CC 0040C8CC 8F180000 */  lw          $t8, 0x0($t8)
/* 00C8D0 0040C8D0 1300000C */  beqz        $t8, .L0040C904
/* 00C8D4 0040C8D4 00000000 */   nop
/* 00C8D8 0040C8D8 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00C8DC 0040C8DC 8F84802C */  lw          $a0, %got(STR_10004F34)($gp)
/* 00C8E0 0040C8E0 0320F809 */  jalr        $t9
/* 00C8E4 0040C8E4 24844F34 */   addiu      $a0, $a0, %lo(STR_10004F34)
/* 00C8E8 0040C8E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C8EC 0040C8EC 8F998094 */  lw          $t9, %call16(printf)($gp)
/* 00C8F0 0040C8F0 8F84802C */  lw          $a0, %got(STR_10004F50)($gp)
/* 00C8F4 0040C8F4 8FA50034 */  lw          $a1, 0x34($sp)
/* 00C8F8 0040C8F8 0320F809 */  jalr        $t9
/* 00C8FC 0040C8FC 24844F50 */   addiu      $a0, $a0, %lo(STR_10004F50)
/* 00C900 0040C900 8FBC0018 */  lw          $gp, 0x18($sp)
.L0040C904:
/* 00C904 0040C904 8F99818C */  lw          $t9, %call16(execCommand)($gp)
/* 00C908 0040C908 8FA40034 */  lw          $a0, 0x34($sp)
/* 00C90C 0040C90C 0320F809 */  jalr        $t9
/* 00C910 0040C910 00000000 */   nop
/* 00C914 0040C914 10000003 */  b           .L0040C924
/* 00C918 0040C918 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00C91C 0040C91C 10000001 */  b           .L0040C924
/* 00C920 0040C920 00000000 */   nop
.L0040C924:
/* 00C924 0040C924 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00C928 0040C928 8FB00014 */  lw          $s0, 0x14($sp)
/* 00C92C 0040C92C 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00C930 0040C930 03E00008 */  jr          $ra
/* 00C934 0040C934 00000000 */   nop
/* 00C938 0040C938 00000000 */  nop
/* 00C93C 0040C93C 00000000 */  nop