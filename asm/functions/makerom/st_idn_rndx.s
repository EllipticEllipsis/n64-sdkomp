.section .rodata
glabel STR_10008A44
/* 048A44 10008A44 */ .asciz "st_idn_rndx: you didn't initialize with cuinit or readst\n"
                      .balign 4


.section .text
glabel st_idn_rndx # 643
/* 03EF18 0043EF18 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03EF1C 0043EF1C 279C3E48 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3E48
/* 03EF20 0043EF20 0399E021 */  addu        $gp, $gp, $t9
/* 03EF24 0043EF24 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03EF28 0043EF28 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03EF2C 0043EF2C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03EF30 0043EF30 8C630000 */  lw          $v1, 0x0($v1)
/* 03EF34 0043EF34 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03EF38 0043EF38 AFA40028 */  sw          $a0, 0x28($sp)
/* 03EF3C 0043EF3C 54600009 */  bnel        $v1, $zero, .L0043EF64
/* 03EF40 0043EF40 8C620040 */   lw         $v0, 0x40($v1)
/* 03EF44 0043EF44 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03EF48 0043EF48 8F848030 */  lw          $a0, %got(STR_10008A44)($gp)
/* 03EF4C 0043EF4C 0320F809 */  jalr        $t9
/* 03EF50 0043EF50 24848A44 */   addiu      $a0, $a0, %lo(STR_10008A44)
/* 03EF54 0043EF54 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EF58 0043EF58 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03EF5C 0043EF5C 8C630000 */  lw          $v1, 0x0($v1)
/* 03EF60 0043EF60 8C620040 */  lw          $v0, 0x40($v1)
.L0043EF64:
/* 03EF64 0043EF64 8C6E003C */  lw          $t6, 0x3C($v1)
/* 03EF68 0043EF68 24650040 */  addiu       $a1, $v1, 0x40
/* 03EF6C 0043EF6C 24060008 */  addiu       $a2, $zero, 0x8
/* 03EF70 0043EF70 01C2082A */  slt         $at, $t6, $v0
/* 03EF74 0043EF74 1420000D */  bnez        $at, .L0043EFAC
/* 03EF78 0043EF78 00404025 */   move       $t0, $v0
/* 03EF7C 0043EF7C 8F9985FC */  lw          $t9, %call16(st_malloc)($gp)
/* 03EF80 0043EF80 8C640038 */  lw          $a0, 0x38($v1)
/* 03EF84 0043EF84 AFA20024 */  sw          $v0, 0x24($sp)
/* 03EF88 0043EF88 0320F809 */  jalr        $t9
/* 03EF8C 0043EF8C 24070080 */   addiu      $a3, $zero, 0x80
/* 03EF90 0043EF90 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EF94 0043EF94 8FA80024 */  lw          $t0, 0x24($sp)
/* 03EF98 0043EF98 8F8F87C8 */  lw          $t7, %got(st_pchdr)($gp)
/* 03EF9C 0043EF9C 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03EFA0 0043EFA0 8DEF0000 */  lw          $t7, 0x0($t7)
/* 03EFA4 0043EFA4 ADE20038 */  sw          $v0, 0x38($t7)
/* 03EFA8 0043EFA8 8C630000 */  lw          $v1, 0x0($v1)
.L0043EFAC:
/* 03EFAC 0043EFAC 5500000A */  bnel        $t0, $zero, .L0043EFD8
/* 03EFB0 0043EFB0 8C69003C */   lw         $t1, 0x3C($v1)
/* 03EFB4 0043EFB4 8F998174 */  lw          $t9, %call16(bzero)($gp)
/* 03EFB8 0043EFB8 8C640038 */  lw          $a0, 0x38($v1)
/* 03EFBC 0043EFBC 24050010 */  addiu       $a1, $zero, 0x10
/* 03EFC0 0043EFC0 0320F809 */  jalr        $t9
/* 03EFC4 0043EFC4 00000000 */   nop
/* 03EFC8 0043EFC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EFCC 0043EFCC 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03EFD0 0043EFD0 8C630000 */  lw          $v1, 0x0($v1)
/* 03EFD4 0043EFD4 8C69003C */  lw          $t1, 0x3C($v1)
.L0043EFD8:
/* 03EFD8 0043EFD8 8FA60028 */  lw          $a2, 0x28($sp)
/* 03EFDC 0043EFDC 8C790038 */  lw          $t9, 0x38($v1)
/* 03EFE0 0043EFE0 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03EFE4 0043EFE4 000950C0 */  sll         $t2, $t1, 3
/* 03EFE8 0043EFE8 0006C502 */  srl         $t8, $a2, 20
/* 03EFEC 0043EFEC 032A5821 */  addu        $t3, $t9, $t2
/* 03EFF0 0043EFF0 AD780000 */  sw          $t8, 0x0($t3)
/* 03EFF4 0043EFF4 8C630000 */  lw          $v1, 0x0($v1)
/* 03EFF8 0043EFF8 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03EFFC 0043EFFC 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03F000 0043F000 8C6E003C */  lw          $t6, 0x3C($v1)
/* 03F004 0043F004 8C6D0038 */  lw          $t5, 0x38($v1)
/* 03F008 0043F008 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03F00C 0043F00C 000E78C0 */  sll         $t7, $t6, 3
/* 03F010 0043F010 00C16024 */  and         $t4, $a2, $at
/* 03F014 0043F014 01AF4821 */  addu        $t1, $t5, $t7
/* 03F018 0043F018 AD2C0004 */  sw          $t4, 0x4($t1)
/* 03F01C 0043F01C 8C630000 */  lw          $v1, 0x0($v1)
/* 03F020 0043F020 8C62003C */  lw          $v0, 0x3C($v1)
/* 03F024 0043F024 24590001 */  addiu       $t9, $v0, 0x1
/* 03F028 0043F028 AC79003C */  sw          $t9, 0x3C($v1)
/* 03F02C 0043F02C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03F030 0043F030 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03F034 0043F034 03E00008 */  jr          $ra
/* 03F038 0043F038 00000000 */   nop
