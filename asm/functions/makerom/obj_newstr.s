.section .rodata
glabel STR_100075AC
/* 0475AC 100075AC */ .asciz "obj_newstr: unable to malloc for new \n"
                      .balign 4
/* 0475D4 100075D4 */ .asciz "split: %s\n"
                      .balign 4


.section .text
glabel obj_newstr # 271
/* 02DEAC 0042DEAC 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02DEB0 0042DEB0 279C4EB4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE4EB4
/* 02DEB4 0042DEB4 0399E021 */  addu        $gp, $gp, $t9
/* 02DEB8 0042DEB8 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 02DEBC 0042DEBC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02DEC0 0042DEC0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02DEC4 0042DEC4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02DEC8 0042DEC8 0320F809 */  jalr        $t9
/* 02DECC 0042DECC AFA40028 */   sw         $a0, 0x28($sp)
/* 02DED0 0042DED0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02DED4 0042DED4 24440001 */  addiu       $a0, $v0, 0x1
/* 02DED8 0042DED8 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 02DEDC 0042DEDC 0320F809 */  jalr        $t9
/* 02DEE0 0042DEE0 00000000 */   nop
/* 02DEE4 0042DEE4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02DEE8 0042DEE8 10400008 */  beqz        $v0, .L0042DF0C
/* 02DEEC 0042DEEC AFA20024 */   sw         $v0, 0x24($sp)
/* 02DEF0 0042DEF0 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 02DEF4 0042DEF4 00402025 */  move        $a0, $v0
/* 02DEF8 0042DEF8 8FA50028 */  lw          $a1, 0x28($sp)
/* 02DEFC 0042DEFC 0320F809 */  jalr        $t9
/* 02DF00 0042DF00 00000000 */   nop
/* 02DF04 0042DF04 10000006 */  b           .L0042DF20
/* 02DF08 0042DF08 8FBC0018 */   lw         $gp, 0x18($sp)
.L0042DF0C:
/* 02DF0C 0042DF0C 8F998638 */  lw          $t9, %call16(fatal)($gp)
/* 02DF10 0042DF10 8F84802C */  lw          $a0, %got(STR_100075AC)($gp)
/* 02DF14 0042DF14 0320F809 */  jalr        $t9
/* 02DF18 0042DF18 248475AC */   addiu      $a0, $a0, %lo(STR_100075AC)
/* 02DF1C 0042DF1C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0042DF20:
/* 02DF20 0042DF20 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02DF24 0042DF24 8FA20024 */  lw          $v0, 0x24($sp)
/* 02DF28 0042DF28 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02DF2C 0042DF2C 03E00008 */  jr          $ra
/* 02DF30 0042DF30 00000000 */   nop
