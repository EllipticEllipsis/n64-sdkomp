.section .rodata
glabel STR_1000892C
/* 04892C 1000892C */ .asciz "obj_lookup: dbx running out of memory space"
                      .balign 4
/* 048958 10008958 */ .asciz ""
                      .balign 4
/* 04895C 1000895C */ .asciz ""
                      .balign 4


.section .text
glabel func_0043D794 # 624
/* 03D794 0043D794 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03D798 0043D798 279C55CC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD55CC
/* 03D79C 0043D79C 0399E021 */  addu        $gp, $gp, $t9
/* 03D7A0 0043D7A0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 03D7A4 0043D7A4 AFB10018 */  sw          $s1, 0x18($sp)
/* 03D7A8 0043D7A8 8F918030 */  lw          $s1, %got(B_100106CC)($gp)
/* 03D7AC 0043D7AC AFB00014 */  sw          $s0, 0x14($sp)
/* 03D7B0 0043D7B0 AFB50028 */  sw          $s5, 0x28($sp)
/* 03D7B4 0043D7B4 263106CC */  addiu       $s1, $s1, %lo(B_100106CC)
/* 03D7B8 0043D7B8 8E300000 */  lw          $s0, 0x0($s1)
/* 03D7BC 0043D7BC 0080A825 */  move        $s5, $a0
/* 03D7C0 0043D7C0 AFBF003C */  sw          $ra, 0x3C($sp)
/* 03D7C4 0043D7C4 AFBE0038 */  sw          $fp, 0x38($sp)
/* 03D7C8 0043D7C8 AFBC0034 */  sw          $gp, 0x34($sp)
/* 03D7CC 0043D7CC AFB70030 */  sw          $s7, 0x30($sp)
/* 03D7D0 0043D7D0 AFB6002C */  sw          $s6, 0x2C($sp)
/* 03D7D4 0043D7D4 AFB40024 */  sw          $s4, 0x24($sp)
/* 03D7D8 0043D7D8 AFB30020 */  sw          $s3, 0x20($sp)
/* 03D7DC 0043D7DC 12000007 */  beqz        $s0, .L0043D7FC
/* 03D7E0 0043D7E0 AFB2001C */   sw         $s2, 0x1C($sp)
/* 03D7E4 0043D7E4 8E0E0000 */  lw          $t6, 0x0($s0)
.L0043D7E8:
/* 03D7E8 0043D7E8 52AE0067 */  beql        $s5, $t6, .L0043D988
/* 03D7EC 0043D7EC 8FBF003C */   lw         $ra, 0x3C($sp)
/* 03D7F0 0043D7F0 8E100004 */  lw          $s0, 0x4($s0)
/* 03D7F4 0043D7F4 5600FFFC */  bnel        $s0, $zero, .L0043D7E8
/* 03D7F8 0043D7F8 8E0E0000 */   lw         $t6, 0x0($s0)
.L0043D7FC:
/* 03D7FC 0043D7FC 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 03D800 0043D800 24040008 */  addiu       $a0, $zero, 0x8
/* 03D804 0043D804 0320F809 */  jalr        $t9
/* 03D808 0043D808 00000000 */   nop
/* 03D80C 0043D80C 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03D810 0043D810 14400006 */  bnez        $v0, .L0043D82C
/* 03D814 0043D814 00408025 */   move       $s0, $v0
/* 03D818 0043D818 8F9985C4 */  lw          $t9, %call16(panic)($gp)
/* 03D81C 0043D81C 8F848030 */  lw          $a0, %got(STR_1000892C)($gp)
/* 03D820 0043D820 0320F809 */  jalr        $t9
/* 03D824 0043D824 2484892C */   addiu      $a0, $a0, %lo(STR_1000892C)
/* 03D828 0043D828 8FBC0034 */  lw          $gp, 0x34($sp)
.L0043D82C:
/* 03D82C 0043D82C AE150000 */  sw          $s5, 0x0($s0)
/* 03D830 0043D830 8E2F0000 */  lw          $t7, 0x0($s1)
/* 03D834 0043D834 3C163FFF */  lui         $s6, (0x3FFFFFFF >> 16)
/* 03D838 0043D838 36D6FFFF */  ori         $s6, $s6, (0x3FFFFFFF & 0xFFFF)
/* 03D83C 0043D83C AE0F0004 */  sw          $t7, 0x4($s0)
/* 03D840 0043D840 AE300000 */  sw          $s0, 0x0($s1)
/* 03D844 0043D844 8EB8009C */  lw          $t8, 0x9C($s5)
/* 03D848 0043D848 8EB400D8 */  lw          $s4, 0xD8($s5)
/* 03D84C 0043D84C 241703F1 */  addiu       $s7, $zero, 0x3F1
/* 03D850 0043D850 8F190058 */  lw          $t9, 0x58($t8)
/* 03D854 0043D854 02994021 */  addu        $t0, $s4, $t9
/* 03D858 0043D858 0288082B */  sltu        $at, $s4, $t0
/* 03D85C 0043D85C 5020004A */  beql        $at, $zero, .L0043D988
/* 03D860 0043D860 8FBF003C */   lw         $ra, 0x3C($sp)
/* 03D864 0043D864 8F9E8030 */  lw          $fp, %got(B_1000F708)($gp)
/* 03D868 0043D868 24120265 */  addiu       $s2, $zero, 0x265
/* 03D86C 0043D86C 8F918048 */  lw          $s1, %got(__ctype)($gp)
/* 03D870 0043D870 27DEF708 */  addiu       $fp, $fp, %lo(B_1000F708)
.L0043D874:
/* 03D874 0043D874 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 03D878 0043D878 24040014 */  addiu       $a0, $zero, 0x14
/* 03D87C 0043D87C 00008025 */  move        $s0, $zero
/* 03D880 0043D880 0320F809 */  jalr        $t9
/* 03D884 0043D884 00000000 */   nop
/* 03D888 0043D888 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03D88C 0043D88C 00409825 */  move        $s3, $v0
/* 03D890 0043D890 02A02025 */  move        $a0, $s5
/* 03D894 0043D894 8F998590 */  lw          $t9, %call16(symbol_name)($gp)
/* 03D898 0043D898 02802825 */  move        $a1, $s4
/* 03D89C 0043D89C 0320F809 */  jalr        $t9
/* 03D8A0 0043D8A0 00000000 */   nop
/* 03D8A4 0043D8A4 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03D8A8 0043D8A8 AE620004 */  sw          $v0, 0x4($s3)
/* 03D8AC 0043D8AC 02A02025 */  move        $a0, $s5
/* 03D8B0 0043D8B0 8F998560 */  lw          $t9, %call16(symbol_class)($gp)
/* 03D8B4 0043D8B4 02802825 */  move        $a1, $s4
/* 03D8B8 0043D8B8 0320F809 */  jalr        $t9
/* 03D8BC 0043D8BC 00000000 */   nop
/* 03D8C0 0043D8C0 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03D8C4 0043D8C4 AE620008 */  sw          $v0, 0x8($s3)
/* 03D8C8 0043D8C8 AE74000C */  sw          $s4, 0xC($s3)
/* 03D8CC 0043D8CC AE750000 */  sw          $s5, 0x0($s3)
/* 03D8D0 0043D8D0 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 03D8D4 0043D8D4 8E640004 */  lw          $a0, 0x4($s3)
/* 03D8D8 0043D8D8 0320F809 */  jalr        $t9
/* 03D8DC 0043D8DC 00000000 */   nop
/* 03D8E0 0043D8E0 8FBC0034 */  lw          $gp, 0x34($sp)
/* 03D8E4 0043D8E4 00401825 */  move        $v1, $v0
/* 03D8E8 0043D8E8 1840000D */  blez        $v0, .L0043D920
/* 03D8EC 0043D8EC 00402025 */   move       $a0, $v0
/* 03D8F0 0043D8F0 8E620004 */  lw          $v0, 0x4($s3)
.L0043D8F4:
/* 03D8F4 0043D8F4 00720019 */  multu       $v1, $s2
/* 03D8F8 0043D8F8 80490000 */  lb          $t1, 0x0($v0)
/* 03D8FC 0043D8FC 26100001 */  addiu       $s0, $s0, 0x1
/* 03D900 0043D900 0204082A */  slt         $at, $s0, $a0
/* 03D904 0043D904 01315021 */  addu        $t2, $t1, $s1
/* 03D908 0043D908 914B0102 */  lbu         $t3, 0x102($t2)
/* 03D90C 0043D90C 24420001 */  addiu       $v0, $v0, 0x1
/* 03D910 0043D910 00006012 */  mflo        $t4
/* 03D914 0043D914 016C1821 */  addu        $v1, $t3, $t4
/* 03D918 0043D918 1420FFF6 */  bnez        $at, .L0043D8F4
/* 03D91C 0043D91C 00000000 */   nop
.L0043D920:
/* 03D920 0043D920 00761824 */  and         $v1, $v1, $s6
/* 03D924 0043D924 0077001A */  div         $zero, $v1, $s7
/* 03D928 0043D928 16E00002 */  bnez        $s7, .L0043D934
/* 03D92C 0043D92C 00000000 */   nop
/* 03D930 0043D930 0007000D */  break       7
.L0043D934:
/* 03D934 0043D934 2401FFFF */  addiu       $at, $zero, -0x1
/* 03D938 0043D938 16E10004 */  bne         $s7, $at, .L0043D94C
/* 03D93C 0043D93C 3C018000 */   lui        $at, (0x80000000 >> 16)
/* 03D940 0043D940 14610002 */  bne         $v1, $at, .L0043D94C
/* 03D944 0043D944 00000000 */   nop
/* 03D948 0043D948 0006000D */  break       6
.L0043D94C:
/* 03D94C 0043D94C 00001810 */  mfhi        $v1
/* 03D950 0043D950 00036880 */  sll         $t5, $v1, 2
/* 03D954 0043D954 03CD1021 */  addu        $v0, $fp, $t5
/* 03D958 0043D958 8C4E0000 */  lw          $t6, 0x0($v0)
/* 03D95C 0043D95C 26940001 */  addiu       $s4, $s4, 0x1
/* 03D960 0043D960 AE6E0010 */  sw          $t6, 0x10($s3)
/* 03D964 0043D964 AC530000 */  sw          $s3, 0x0($v0)
/* 03D968 0043D968 8EB8009C */  lw          $t8, 0x9C($s5)
/* 03D96C 0043D96C 8EAF00D8 */  lw          $t7, 0xD8($s5)
/* 03D970 0043D970 8F190058 */  lw          $t9, 0x58($t8)
/* 03D974 0043D974 01F94021 */  addu        $t0, $t7, $t9
/* 03D978 0043D978 0288082B */  sltu        $at, $s4, $t0
/* 03D97C 0043D97C 1420FFBD */  bnez        $at, .L0043D874
/* 03D980 0043D980 00000000 */   nop
/* 03D984 0043D984 8FBF003C */  lw          $ra, 0x3C($sp)
.L0043D988:
/* 03D988 0043D988 8FB00014 */  lw          $s0, 0x14($sp)
/* 03D98C 0043D98C 8FB10018 */  lw          $s1, 0x18($sp)
/* 03D990 0043D990 8FB2001C */  lw          $s2, 0x1C($sp)
/* 03D994 0043D994 8FB30020 */  lw          $s3, 0x20($sp)
/* 03D998 0043D998 8FB40024 */  lw          $s4, 0x24($sp)
/* 03D99C 0043D99C 8FB50028 */  lw          $s5, 0x28($sp)
/* 03D9A0 0043D9A0 8FB6002C */  lw          $s6, 0x2C($sp)
/* 03D9A4 0043D9A4 8FB70030 */  lw          $s7, 0x30($sp)
/* 03D9A8 0043D9A8 8FBE0038 */  lw          $fp, 0x38($sp)
/* 03D9AC 0043D9AC 03E00008 */  jr          $ra
/* 03D9B0 0043D9B0 27BD0040 */   addiu      $sp, $sp, 0x40
