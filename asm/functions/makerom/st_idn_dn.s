.section .rodata
glabel STR_10008A0C
/* 048A0C 10008A0C */ .asciz "st_idn_dn: you didn't initialize with cuinit or readst\n"
                      .balign 4


.section .text
glabel st_idn_dn # 642
/* 03EE00 0043EE00 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03EE04 0043EE04 279C3F60 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3F60
/* 03EE08 0043EE08 0399E021 */  addu        $gp, $gp, $t9
/* 03EE0C 0043EE0C 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03EE10 0043EE10 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03EE14 0043EE14 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03EE18 0043EE18 8C630000 */  lw          $v1, 0x0($v1)
/* 03EE1C 0043EE1C AFBC0018 */  sw          $gp, 0x18($sp)
/* 03EE20 0043EE20 AFA40028 */  sw          $a0, 0x28($sp)
/* 03EE24 0043EE24 14600008 */  bnez        $v1, .L0043EE48
/* 03EE28 0043EE28 AFA5002C */   sw         $a1, 0x2C($sp)
/* 03EE2C 0043EE2C 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03EE30 0043EE30 8F848030 */  lw          $a0, %got(STR_10008A0C)($gp)
/* 03EE34 0043EE34 0320F809 */  jalr        $t9
/* 03EE38 0043EE38 24848A0C */   addiu      $a0, $a0, %lo(STR_10008A0C)
/* 03EE3C 0043EE3C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EE40 0043EE40 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03EE44 0043EE44 8C630000 */  lw          $v1, 0x0($v1)
.L0043EE48:
/* 03EE48 0043EE48 8C620040 */  lw          $v0, 0x40($v1)
/* 03EE4C 0043EE4C 8C6E003C */  lw          $t6, 0x3C($v1)
/* 03EE50 0043EE50 24650040 */  addiu       $a1, $v1, 0x40
/* 03EE54 0043EE54 24060008 */  addiu       $a2, $zero, 0x8
/* 03EE58 0043EE58 01C2082A */  slt         $at, $t6, $v0
/* 03EE5C 0043EE5C 1420000D */  bnez        $at, .L0043EE94
/* 03EE60 0043EE60 00404025 */   move       $t0, $v0
/* 03EE64 0043EE64 8F9985FC */  lw          $t9, %call16(st_malloc)($gp)
/* 03EE68 0043EE68 8C640038 */  lw          $a0, 0x38($v1)
/* 03EE6C 0043EE6C AFA20024 */  sw          $v0, 0x24($sp)
/* 03EE70 0043EE70 0320F809 */  jalr        $t9
/* 03EE74 0043EE74 24070080 */   addiu      $a3, $zero, 0x80
/* 03EE78 0043EE78 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EE7C 0043EE7C 8FA80024 */  lw          $t0, 0x24($sp)
/* 03EE80 0043EE80 8F8F87C8 */  lw          $t7, %got(st_pchdr)($gp)
/* 03EE84 0043EE84 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03EE88 0043EE88 8DEF0000 */  lw          $t7, 0x0($t7)
/* 03EE8C 0043EE8C ADE20038 */  sw          $v0, 0x38($t7)
/* 03EE90 0043EE90 8C630000 */  lw          $v1, 0x0($v1)
.L0043EE94:
/* 03EE94 0043EE94 5500000A */  bnel        $t0, $zero, .L0043EEC0
/* 03EE98 0043EE98 8C69003C */   lw         $t1, 0x3C($v1)
/* 03EE9C 0043EE9C 8F998174 */  lw          $t9, %call16(bzero)($gp)
/* 03EEA0 0043EEA0 8C640038 */  lw          $a0, 0x38($v1)
/* 03EEA4 0043EEA4 24050010 */  addiu       $a1, $zero, 0x10
/* 03EEA8 0043EEA8 0320F809 */  jalr        $t9
/* 03EEAC 0043EEAC 00000000 */   nop
/* 03EEB0 0043EEB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03EEB4 0043EEB4 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03EEB8 0043EEB8 8C630000 */  lw          $v1, 0x0($v1)
/* 03EEBC 0043EEBC 8C69003C */  lw          $t1, 0x3C($v1)
.L0043EEC0:
/* 03EEC0 0043EEC0 8C790038 */  lw          $t9, 0x38($v1)
/* 03EEC4 0043EEC4 8FB80028 */  lw          $t8, 0x28($sp)
/* 03EEC8 0043EEC8 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03EECC 0043EECC 000950C0 */  sll         $t2, $t1, 3
/* 03EED0 0043EED0 032A5821 */  addu        $t3, $t9, $t2
/* 03EED4 0043EED4 AD780000 */  sw          $t8, 0x0($t3)
/* 03EED8 0043EED8 8C630000 */  lw          $v1, 0x0($v1)
/* 03EEDC 0043EEDC 8FAC002C */  lw          $t4, 0x2C($sp)
/* 03EEE0 0043EEE0 8C6E003C */  lw          $t6, 0x3C($v1)
/* 03EEE4 0043EEE4 8C6D0038 */  lw          $t5, 0x38($v1)
/* 03EEE8 0043EEE8 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03EEEC 0043EEEC 000E78C0 */  sll         $t7, $t6, 3
/* 03EEF0 0043EEF0 01AF4821 */  addu        $t1, $t5, $t7
/* 03EEF4 0043EEF4 AD2C0004 */  sw          $t4, 0x4($t1)
/* 03EEF8 0043EEF8 8C630000 */  lw          $v1, 0x0($v1)
/* 03EEFC 0043EEFC 8C62003C */  lw          $v0, 0x3C($v1)
/* 03EF00 0043EF00 24590001 */  addiu       $t9, $v0, 0x1
/* 03EF04 0043EF04 AC79003C */  sw          $t9, 0x3C($v1)
/* 03EF08 0043EF08 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03EF0C 0043EF0C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03EF10 0043EF10 03E00008 */  jr          $ra
/* 03EF14 0043EF14 00000000 */   nop
