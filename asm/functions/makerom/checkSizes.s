.section .rodata
glabel STR_100051E0
/* 0451E0 100051E0 */ .asciz "makerom: segment \"%s\" (text+data) size "
                      .balign 4

glabel STR_10005208
/* 045208 10005208 */ .asciz "(%d+%d) = %d (0x%x)\n         "
                      .balign 4

glabel STR_10005228
/* 045228 10005228 */ .asciz "exceeds maximum BOOT segment size %d (0x%x)\n"
                      .balign 4

glabel STR_10005258
/* 045258 10005258 */ .asciz "makerom: segment \"%s\" (text+data+bss) size "
                      .balign 4

glabel STR_10005284
/* 045284 10005284 */ .asciz "(%d+%d+%d) = %d (0x%x)\n         "
                      .balign 4

glabel STR_100052A8
/* 0452A8 100052A8 */ .asciz "exceeds given maximum segment size %d (0x%x)\n"
                      .balign 4


.section .text
glabel checkSizes # 22
/* 00DDF8 0040DDF8 3C1C0FC0 */  lui         $gp, %hi(_gp_disp)
/* 00DDFC 0040DDFC 279C4F68 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFC04F68
/* 00DE00 0040DE00 0399E021 */  addu        $gp, $gp, $t9
/* 00DE04 0040DE04 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00DE08 0040DE08 AFBF002C */  sw          $ra, 0x2C($sp)
/* 00DE0C 0040DE0C AFBC0028 */  sw          $gp, 0x28($sp)
/* 00DE10 0040DE10 AFA00030 */  sw          $zero, 0x30($sp)
/* 00DE14 0040DE14 8F8E8658 */  lw          $t6, %got(segmentList)($gp)
/* 00DE18 0040DE18 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00DE1C 0040DE1C 11C00069 */  beqz        $t6, .L0040DFC4
/* 00DE20 0040DE20 AFAE0034 */   sw         $t6, 0x34($sp)
.L0040DE24:
/* 00DE24 0040DE24 8FAF0034 */  lw          $t7, 0x34($sp)
/* 00DE28 0040DE28 8DF80028 */  lw          $t8, 0x28($t7)
/* 00DE2C 0040DE2C 33190001 */  andi        $t9, $t8, 0x1
/* 00DE30 0040DE30 13200030 */  beqz        $t9, .L0040DEF4
/* 00DE34 0040DE34 00000000 */   nop
/* 00DE38 0040DE38 8DE8002C */  lw          $t0, 0x2C($t7)
/* 00DE3C 0040DE3C 8DE90030 */  lw          $t1, 0x30($t7)
/* 00DE40 0040DE40 8DEB0034 */  lw          $t3, 0x34($t7)
/* 00DE44 0040DE44 3C010010 */  lui         $at, (0x100001 >> 16)
/* 00DE48 0040DE48 01095021 */  addu        $t2, $t0, $t1
/* 00DE4C 0040DE4C 34210001 */  ori         $at, $at, (0x100001 & 0xFFFF)
/* 00DE50 0040DE50 014B6021 */  addu        $t4, $t2, $t3
/* 00DE54 0040DE54 0181082B */  sltu        $at, $t4, $at
/* 00DE58 0040DE58 14200026 */  bnez        $at, .L0040DEF4
/* 00DE5C 0040DE5C 00000000 */   nop
/* 00DE60 0040DE60 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00DE64 0040DE64 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00DE68 0040DE68 8F85802C */  lw          $a1, %got(STR_100051E0)($gp)
/* 00DE6C 0040DE6C 8FAD0034 */  lw          $t5, 0x34($sp)
/* 00DE70 0040DE70 24840020 */  addiu       $a0, $a0, 0x20
/* 00DE74 0040DE74 24A551E0 */  addiu       $a1, $a1, %lo(STR_100051E0)
/* 00DE78 0040DE78 0320F809 */  jalr        $t9
/* 00DE7C 0040DE7C 8DA60004 */   lw         $a2, 0x4($t5)
/* 00DE80 0040DE80 8FBC0028 */  lw          $gp, 0x28($sp)
/* 00DE84 0040DE84 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00DE88 0040DE88 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00DE8C 0040DE8C 8F85802C */  lw          $a1, %got(STR_10005208)($gp)
/* 00DE90 0040DE90 8DD90030 */  lw          $t9, 0x30($t6)
/* 00DE94 0040DE94 8DD8002C */  lw          $t8, 0x2C($t6)
/* 00DE98 0040DE98 8DC80034 */  lw          $t0, 0x34($t6)
/* 00DE9C 0040DE9C 24840020 */  addiu       $a0, $a0, 0x20
/* 00DEA0 0040DEA0 03194821 */  addu        $t1, $t8, $t9
/* 00DEA4 0040DEA4 03283821 */  addu        $a3, $t9, $t0
/* 00DEA8 0040DEA8 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00DEAC 0040DEAC 01287821 */  addu        $t7, $t1, $t0
/* 00DEB0 0040DEB0 AFAF0010 */  sw          $t7, 0x10($sp)
/* 00DEB4 0040DEB4 AFAF0014 */  sw          $t7, 0x14($sp)
/* 00DEB8 0040DEB8 24A55208 */  addiu       $a1, $a1, %lo(STR_10005208)
/* 00DEBC 0040DEBC 0320F809 */  jalr        $t9
/* 00DEC0 0040DEC0 03003025 */   move       $a2, $t8
/* 00DEC4 0040DEC4 8FBC0028 */  lw          $gp, 0x28($sp)
/* 00DEC8 0040DEC8 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00DECC 0040DECC 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00DED0 0040DED0 8F85802C */  lw          $a1, %got(STR_10005228)($gp)
/* 00DED4 0040DED4 3C060010 */  lui         $a2, (0x100000 >> 16)
/* 00DED8 0040DED8 3C070010 */  lui         $a3, (0x100000 >> 16)
/* 00DEDC 0040DEDC 24840020 */  addiu       $a0, $a0, 0x20
/* 00DEE0 0040DEE0 0320F809 */  jalr        $t9
/* 00DEE4 0040DEE4 24A55228 */   addiu      $a1, $a1, %lo(STR_10005228)
/* 00DEE8 0040DEE8 8FBC0028 */  lw          $gp, 0x28($sp)
/* 00DEEC 0040DEEC 240A0001 */  addiu       $t2, $zero, 0x1
/* 00DEF0 0040DEF0 AFAA0030 */  sw          $t2, 0x30($sp)
.L0040DEF4:
/* 00DEF4 0040DEF4 8FAB0034 */  lw          $t3, 0x34($sp)
/* 00DEF8 0040DEF8 8D6C0040 */  lw          $t4, 0x40($t3)
/* 00DEFC 0040DEFC 8D6D0044 */  lw          $t5, 0x44($t3)
/* 00DF00 0040DF00 01AC082B */  sltu        $at, $t5, $t4
/* 00DF04 0040DF04 1020002B */  beqz        $at, .L0040DFB4
/* 00DF08 0040DF08 00000000 */   nop
/* 00DF0C 0040DF0C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00DF10 0040DF10 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00DF14 0040DF14 8F85802C */  lw          $a1, %got(STR_10005258)($gp)
/* 00DF18 0040DF18 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00DF1C 0040DF1C 24840020 */  addiu       $a0, $a0, 0x20
/* 00DF20 0040DF20 24A55258 */  addiu       $a1, $a1, %lo(STR_10005258)
/* 00DF24 0040DF24 0320F809 */  jalr        $t9
/* 00DF28 0040DF28 8DC60004 */   lw         $a2, 0x4($t6)
/* 00DF2C 0040DF2C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 00DF30 0040DF30 8FB80034 */  lw          $t8, 0x34($sp)
/* 00DF34 0040DF34 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00DF38 0040DF38 8F85802C */  lw          $a1, %got(STR_10005284)($gp)
/* 00DF3C 0040DF3C 8F08003C */  lw          $t0, 0x3C($t8)
/* 00DF40 0040DF40 8F0F0038 */  lw          $t7, 0x38($t8)
/* 00DF44 0040DF44 8F190030 */  lw          $t9, 0x30($t8)
/* 00DF48 0040DF48 8F090034 */  lw          $t1, 0x34($t8)
/* 00DF4C 0040DF4C 8F06002C */  lw          $a2, 0x2C($t8)
/* 00DF50 0040DF50 010F5021 */  addu        $t2, $t0, $t7
/* 00DF54 0040DF54 AFAA0010 */  sw          $t2, 0x10($sp)
/* 00DF58 0040DF58 8F0B0040 */  lw          $t3, 0x40($t8)
/* 00DF5C 0040DF5C 03293821 */  addu        $a3, $t9, $t1
/* 00DF60 0040DF60 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00DF64 0040DF64 AFAB0014 */  sw          $t3, 0x14($sp)
/* 00DF68 0040DF68 8F0C0040 */  lw          $t4, 0x40($t8)
/* 00DF6C 0040DF6C 24840020 */  addiu       $a0, $a0, 0x20
/* 00DF70 0040DF70 24A55284 */  addiu       $a1, $a1, %lo(STR_10005284)
/* 00DF74 0040DF74 0320F809 */  jalr        $t9
/* 00DF78 0040DF78 AFAC0018 */   sw         $t4, 0x18($sp)
/* 00DF7C 0040DF7C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 00DF80 0040DF80 8FAD0034 */  lw          $t5, 0x34($sp)
/* 00DF84 0040DF84 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 00DF88 0040DF88 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 00DF8C 0040DF8C 8DAE0044 */  lw          $t6, 0x44($t5)
/* 00DF90 0040DF90 8F85802C */  lw          $a1, %got(STR_100052A8)($gp)
/* 00DF94 0040DF94 24840020 */  addiu       $a0, $a0, 0x20
/* 00DF98 0040DF98 01C03025 */  move        $a2, $t6
/* 00DF9C 0040DF9C 01C03825 */  move        $a3, $t6
/* 00DFA0 0040DFA0 0320F809 */  jalr        $t9
/* 00DFA4 0040DFA4 24A552A8 */   addiu      $a1, $a1, %lo(STR_100052A8)
/* 00DFA8 0040DFA8 8FBC0028 */  lw          $gp, 0x28($sp)
/* 00DFAC 0040DFAC 24190001 */  addiu       $t9, $zero, 0x1
/* 00DFB0 0040DFB0 AFB90030 */  sw          $t9, 0x30($sp)
.L0040DFB4:
/* 00DFB4 0040DFB4 8FA90034 */  lw          $t1, 0x34($sp)
/* 00DFB8 0040DFB8 8D280000 */  lw          $t0, 0x0($t1)
/* 00DFBC 0040DFBC 1500FF99 */  bnez        $t0, .L0040DE24
/* 00DFC0 0040DFC0 AFA80034 */   sw         $t0, 0x34($sp)
.L0040DFC4:
/* 00DFC4 0040DFC4 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00DFC8 0040DFC8 11E00005 */  beqz        $t7, .L0040DFE0
/* 00DFCC 0040DFCC 00000000 */   nop
/* 00DFD0 0040DFD0 10000007 */  b           .L0040DFF0
/* 00DFD4 0040DFD4 2402FFFF */   addiu      $v0, $zero, -0x1
/* 00DFD8 0040DFD8 10000003 */  b           .L0040DFE8
/* 00DFDC 0040DFDC 00000000 */   nop
.L0040DFE0:
/* 00DFE0 0040DFE0 10000003 */  b           .L0040DFF0
/* 00DFE4 0040DFE4 00001025 */   move       $v0, $zero
.L0040DFE8:
/* 00DFE8 0040DFE8 10000001 */  b           .L0040DFF0
/* 00DFEC 0040DFEC 00000000 */   nop
.L0040DFF0:
/* 00DFF0 0040DFF0 8FBF002C */  lw          $ra, 0x2C($sp)
/* 00DFF4 0040DFF4 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00DFF8 0040DFF8 03E00008 */  jr          $ra
/* 00DFFC 0040DFFC 00000000 */   nop
