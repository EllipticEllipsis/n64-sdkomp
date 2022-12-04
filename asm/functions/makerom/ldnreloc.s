.section .rodata
glabel STR_10006BA4
/* 046BA4 10006BA4 */ .asciz "libmld: ldnreloc:"
                      .balign 4

glabel STR_10006BB8
/* 046BB8 10006BB8 */ .asciz "cannot ldnrseek section %s\n"
                      .balign 4

glabel STR_10006BD4
/* 046BD4 10006BD4 */ .asciz "libmld: ldnreloc:"
                      .balign 4

glabel STR_10006BE8
/* 046BE8 10006BE8 */ .asciz "cannot FREAD relocation for %s\n"
                      .balign 4


.section .text
glabel ldnreloc # 230
/* 02A8E0 0042A8E0 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A8E4 0042A8E4 279C8480 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8480
/* 02A8E8 0042A8E8 0399E021 */  addu        $gp, $gp, $t9
/* 02A8EC 0042A8EC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02A8F0 0042A8F0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A8F4 0042A8F4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A8F8 0042A8F8 AFB00014 */  sw          $s0, 0x14($sp)
/* 02A8FC 0042A8FC 8C86002C */  lw          $a2, 0x2C($a0)
/* 02A900 0042A900 24010003 */  addiu       $at, $zero, 0x3
/* 02A904 0042A904 00A08025 */  move        $s0, $a1
/* 02A908 0042A908 8CCE008C */  lw          $t6, 0x8C($a2)
/* 02A90C 0042A90C 55C10009 */  bnel        $t6, $at, .L0042A934
/* 02A910 0042A910 8E0F0018 */   lw         $t7, 0x18($s0)
/* 02A914 0042A914 8F998544 */  lw          $t9, %call16(elf_nreloc)($gp)
/* 02A918 0042A918 00C02025 */  move        $a0, $a2
/* 02A91C 0042A91C 8CA50024 */  lw          $a1, 0x24($a1)
/* 02A920 0042A920 0320F809 */  jalr        $t9
/* 02A924 0042A924 00000000 */   nop
/* 02A928 0042A928 10000050 */  b           .L0042AA6C
/* 02A92C 0042A92C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02A930 0042A930 8E0F0018 */  lw          $t7, 0x18($s0)
.L0042A934:
/* 02A934 0042A934 55E00004 */  bnel        $t7, $zero, .L0042A948
/* 02A938 0042A938 8E180024 */   lw         $t8, 0x24($s0)
/* 02A93C 0042A93C 1000004B */  b           .L0042AA6C
/* 02A940 0042A940 00001025 */   move       $v0, $zero
/* 02A944 0042A944 8E180024 */  lw          $t8, 0x24($s0)
.L0042A948:
/* 02A948 0042A948 3C012000 */  lui         $at, (0x20000000 >> 16)
/* 02A94C 0042A94C 0301C824 */  and         $t9, $t8, $at
/* 02A950 0042A950 53200046 */  beql        $t9, $zero, .L0042AA6C
/* 02A954 0042A954 96020020 */   lhu        $v0, 0x20($s0)
/* 02A958 0042A958 8F998260 */  lw          $t9, %call16(ldnrseek)($gp)
/* 02A95C 0042A95C 02002825 */  move        $a1, $s0
/* 02A960 0042A960 AFA40030 */  sw          $a0, 0x30($sp)
/* 02A964 0042A964 0320F809 */  jalr        $t9
/* 02A968 0042A968 00000000 */   nop
/* 02A96C 0042A96C 24010001 */  addiu       $at, $zero, 0x1
/* 02A970 0042A970 10410012 */  beq         $v0, $at, .L0042A9BC
/* 02A974 0042A974 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02A978 0042A978 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02A97C 0042A97C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02A980 0042A980 8F85802C */  lw          $a1, %got(STR_10006BA4)($gp)
/* 02A984 0042A984 24840020 */  addiu       $a0, $a0, 0x20
/* 02A988 0042A988 0320F809 */  jalr        $t9
/* 02A98C 0042A98C 24A56BA4 */   addiu      $a1, $a1, %lo(STR_10006BA4)
/* 02A990 0042A990 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A994 0042A994 02003025 */  move        $a2, $s0
/* 02A998 0042A998 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02A99C 0042A99C 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02A9A0 0042A9A0 8F85802C */  lw          $a1, %got(STR_10006BB8)($gp)
/* 02A9A4 0042A9A4 24840020 */  addiu       $a0, $a0, 0x20
/* 02A9A8 0042A9A8 0320F809 */  jalr        $t9
/* 02A9AC 0042A9AC 24A56BB8 */   addiu      $a1, $a1, %lo(STR_10006BB8)
/* 02A9B0 0042A9B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A9B4 0042A9B4 1000002D */  b           .L0042AA6C
/* 02A9B8 0042A9B8 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042A9BC:
/* 02A9BC 0042A9BC 8F998258 */  lw          $t9, %call16(ldfread)($gp)
/* 02A9C0 0042A9C0 27A40028 */  addiu       $a0, $sp, 0x28
/* 02A9C4 0042A9C4 24050008 */  addiu       $a1, $zero, 0x8
/* 02A9C8 0042A9C8 24060001 */  addiu       $a2, $zero, 0x1
/* 02A9CC 0042A9CC 0320F809 */  jalr        $t9
/* 02A9D0 0042A9D0 8FA70030 */   lw         $a3, 0x30($sp)
/* 02A9D4 0042A9D4 24010001 */  addiu       $at, $zero, 0x1
/* 02A9D8 0042A9D8 10410012 */  beq         $v0, $at, .L0042AA24
/* 02A9DC 0042A9DC 8FBC0018 */   lw         $gp, 0x18($sp)
/* 02A9E0 0042A9E0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02A9E4 0042A9E4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02A9E8 0042A9E8 8F85802C */  lw          $a1, %got(STR_10006BD4)($gp)
/* 02A9EC 0042A9EC 24840020 */  addiu       $a0, $a0, 0x20
/* 02A9F0 0042A9F0 0320F809 */  jalr        $t9
/* 02A9F4 0042A9F4 24A56BD4 */   addiu      $a1, $a1, %lo(STR_10006BD4)
/* 02A9F8 0042A9F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A9FC 0042A9FC 02003025 */  move        $a2, $s0
/* 02AA00 0042AA00 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 02AA04 0042AA04 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 02AA08 0042AA08 8F85802C */  lw          $a1, %got(STR_10006BE8)($gp)
/* 02AA0C 0042AA0C 24840020 */  addiu       $a0, $a0, 0x20
/* 02AA10 0042AA10 0320F809 */  jalr        $t9
/* 02AA14 0042AA14 24A56BE8 */   addiu      $a1, $a1, %lo(STR_10006BE8)
/* 02AA18 0042AA18 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AA1C 0042AA1C 10000013 */  b           .L0042AA6C
/* 02AA20 0042AA20 2402FFFF */   addiu      $v0, $zero, -0x1
.L0042AA24:
/* 02AA24 0042AA24 8FA80030 */  lw          $t0, 0x30($sp)
/* 02AA28 0042AA28 850A002A */  lh          $t2, 0x2A($t0)
/* 02AA2C 0042AA2C 0541000C */  bgez        $t2, .L0042AA60
/* 02AA30 0042AA30 00000000 */   nop
/* 02AA34 0042AA34 8F998238 */  lw          $t9, %call16(gethostsex)($gp)
/* 02AA38 0042AA38 0320F809 */  jalr        $t9
/* 02AA3C 0042AA3C 00000000 */   nop
/* 02AA40 0042AA40 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AA44 0042AA44 27A40028 */  addiu       $a0, $sp, 0x28
/* 02AA48 0042AA48 24050001 */  addiu       $a1, $zero, 0x1
/* 02AA4C 0042AA4C 8F9984BC */  lw          $t9, %call16(swap_reloc)($gp)
/* 02AA50 0042AA50 00403025 */  move        $a2, $v0
/* 02AA54 0042AA54 0320F809 */  jalr        $t9
/* 02AA58 0042AA58 00000000 */   nop
/* 02AA5C 0042AA5C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042AA60:
/* 02AA60 0042AA60 10000002 */  b           .L0042AA6C
/* 02AA64 0042AA64 8FA20028 */   lw         $v0, 0x28($sp)
/* 02AA68 0042AA68 96020020 */  lhu         $v0, 0x20($s0)
.L0042AA6C:
/* 02AA6C 0042AA6C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02AA70 0042AA70 8FB00014 */  lw          $s0, 0x14($sp)
/* 02AA74 0042AA74 27BD0030 */  addiu       $sp, $sp, 0x30
/* 02AA78 0042AA78 03E00008 */  jr          $ra
/* 02AA7C 0042AA7C 00000000 */   nop
