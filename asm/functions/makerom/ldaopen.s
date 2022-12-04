.section .rodata
glabel STR_10006C08
/* 046C08 10006C08 */ .asciz "LIOPTR(nldptr) = (FILE *)calloc(1,sizeof(FILE))"
                      .balign 4

glabel STR_10006C38
/* 046C38 10006C38 */ .asciz "ldfcn.c"
                      .balign 4


.section .text
glabel ldaopen # 232
/* 02AA88 0042AA88 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02AA8C 0042AA8C 279C82D8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE82D8
/* 02AA90 0042AA90 0399E021 */  addu        $gp, $gp, $t9
/* 02AA94 0042AA94 8F99824C */  lw          $t9, %call16(vldldptr)($gp)
/* 02AA98 0042AA98 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02AA9C 0042AA9C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02AAA0 0042AAA0 AFA40028 */  sw          $a0, 0x28($sp)
/* 02AAA4 0042AAA4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02AAA8 0042AAA8 AFA5002C */  sw          $a1, 0x2C($sp)
/* 02AAAC 0042AAAC 0320F809 */  jalr        $t9
/* 02AAB0 0042AAB0 00A02025 */   move       $a0, $a1
/* 02AAB4 0042AAB4 10400007 */  beqz        $v0, .L0042AAD4
/* 02AAB8 0042AAB8 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02AABC 0042AABC 8F99823C */  lw          $t9, %call16(allocldptr)($gp)
/* 02AAC0 0042AAC0 0320F809 */  jalr        $t9
/* 02AAC4 0042AAC4 00000000 */   nop
/* 02AAC8 0042AAC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AACC 0042AACC 14400003 */  bnez        $v0, .L0042AADC
/* 02AAD0 0042AAD0 00401825 */   move       $v1, $v0
.L0042AAD4:
/* 02AAD4 0042AAD4 10000031 */  b           .L0042AB9C
/* 02AAD8 0042AAD8 00001025 */   move       $v0, $zero
.L0042AADC:
/* 02AADC 0042AADC 8FAE002C */  lw          $t6, 0x2C($sp)
/* 02AAE0 0042AAE0 0060C825 */  move        $t9, $v1
/* 02AAE4 0042AAE4 25C80054 */  addiu       $t0, $t6, 0x54
.L0042AAE8:
/* 02AAE8 0042AAE8 8DD80000 */  lw          $t8, 0x0($t6)
/* 02AAEC 0042AAEC 25CE000C */  addiu       $t6, $t6, 0xC
/* 02AAF0 0042AAF0 2739000C */  addiu       $t9, $t9, 0xC
/* 02AAF4 0042AAF4 AF38FFF4 */  sw          $t8, -0xC($t9)
/* 02AAF8 0042AAF8 8DCFFFF8 */  lw          $t7, -0x8($t6)
/* 02AAFC 0042AAFC AF2FFFF8 */  sw          $t7, -0x8($t9)
/* 02AB00 0042AB00 8DD8FFFC */  lw          $t8, -0x4($t6)
/* 02AB04 0042AB04 15C8FFF8 */  bne         $t6, $t0, .L0042AAE8
/* 02AB08 0042AB08 AF38FFFC */   sw         $t8, -0x4($t9)
/* 02AB0C 0042AB0C 8DD80000 */  lw          $t8, 0x0($t6)
/* 02AB10 0042AB10 24040001 */  addiu       $a0, $zero, 0x1
/* 02AB14 0042AB14 24050010 */  addiu       $a1, $zero, 0x10
/* 02AB18 0042AB18 AF380000 */  sw          $t8, 0x0($t9)
/* 02AB1C 0042AB1C 8DCF0004 */  lw          $t7, 0x4($t6)
/* 02AB20 0042AB20 AF2F0004 */  sw          $t7, 0x4($t9)
/* 02AB24 0042AB24 8F9980D8 */  lw          $t9, %call16(calloc)($gp)
/* 02AB28 0042AB28 AFA30024 */  sw          $v1, 0x24($sp)
/* 02AB2C 0042AB2C 0320F809 */  jalr        $t9
/* 02AB30 0042AB30 00000000 */   nop
/* 02AB34 0042AB34 8FA30024 */  lw          $v1, 0x24($sp)
/* 02AB38 0042AB38 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AB3C 0042AB3C 1440000B */  bnez        $v0, .L0042AB6C
/* 02AB40 0042AB40 AC620004 */   sw         $v0, 0x4($v1)
/* 02AB44 0042AB44 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 02AB48 0042AB48 8F84802C */  lw          $a0, %got(STR_10006C08)($gp)
/* 02AB4C 0042AB4C 8F85802C */  lw          $a1, %got(STR_10006C38)($gp)
/* 02AB50 0042AB50 240602B3 */  addiu       $a2, $zero, 0x2B3
/* 02AB54 0042AB54 AFA30024 */  sw          $v1, 0x24($sp)
/* 02AB58 0042AB58 24846C08 */  addiu       $a0, $a0, %lo(STR_10006C08)
/* 02AB5C 0042AB5C 0320F809 */  jalr        $t9
/* 02AB60 0042AB60 24A56C38 */   addiu      $a1, $a1, %lo(STR_10006C38)
/* 02AB64 0042AB64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AB68 0042AB68 8FA30024 */  lw          $v1, 0x24($sp)
.L0042AB6C:
/* 02AB6C 0042AB6C 8FAA002C */  lw          $t2, 0x2C($sp)
/* 02AB70 0042AB70 8C690004 */  lw          $t1, 0x4($v1)
/* 02AB74 0042AB74 00601025 */  move        $v0, $v1
/* 02AB78 0042AB78 8D4B0004 */  lw          $t3, 0x4($t2)
/* 02AB7C 0042AB7C 8D6D0000 */  lw          $t5, 0x0($t3)
/* 02AB80 0042AB80 AD2D0000 */  sw          $t5, 0x0($t1)
/* 02AB84 0042AB84 8D6C0004 */  lw          $t4, 0x4($t3)
/* 02AB88 0042AB88 AD2C0004 */  sw          $t4, 0x4($t1)
/* 02AB8C 0042AB8C 8D6D0008 */  lw          $t5, 0x8($t3)
/* 02AB90 0042AB90 AD2D0008 */  sw          $t5, 0x8($t1)
/* 02AB94 0042AB94 8D6C000C */  lw          $t4, 0xC($t3)
/* 02AB98 0042AB98 AD2C000C */  sw          $t4, 0xC($t1)
.L0042AB9C:
/* 02AB9C 0042AB9C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02ABA0 0042ABA0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02ABA4 0042ABA4 03E00008 */  jr          $ra
/* 02ABA8 0042ABA8 00000000 */   nop
