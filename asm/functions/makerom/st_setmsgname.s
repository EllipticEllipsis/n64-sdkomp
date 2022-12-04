.section .rodata
glabel STR_10008BA4
/* 048BA4 10008BA4 */ .asciz "libmld: Internal: cannot allocate to initialize component name for libmld errors\n"
                      .balign 4
/* 048BF8 10008BF8 */ .asciz ""
                      .balign 4
/* 048BFC 10008BFC */ .asciz ""
                      .balign 4


.section .text
glabel st_setmsgname # 648
/* 03F2B8 0043F2B8 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03F2BC 0043F2BC 279C3AA8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3AA8
/* 03F2C0 0043F2C0 0399E021 */  addu        $gp, $gp, $t9
/* 03F2C4 0043F2C4 8F998070 */  lw          $t9, %call16(strlen)($gp)
/* 03F2C8 0043F2C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03F2CC 0043F2CC AFBF001C */  sw          $ra, 0x1C($sp)
/* 03F2D0 0043F2D0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03F2D4 0043F2D4 0320F809 */  jalr        $t9
/* 03F2D8 0043F2D8 AFA40020 */   sw         $a0, 0x20($sp)
/* 03F2DC 0043F2DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F2E0 0043F2E0 24440001 */  addiu       $a0, $v0, 0x1
/* 03F2E4 0043F2E4 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 03F2E8 0043F2E8 0320F809 */  jalr        $t9
/* 03F2EC 0043F2EC 00000000 */   nop
/* 03F2F0 0043F2F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F2F4 0043F2F4 00402025 */  move        $a0, $v0
/* 03F2F8 0043F2F8 8F838704 */  lw          $v1, %got(st_errname)($gp)
/* 03F2FC 0043F2FC 1440000F */  bnez        $v0, .L0043F33C
/* 03F300 0043F300 AC620000 */   sw         $v0, 0x0($v1)
/* 03F304 0043F304 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 03F308 0043F308 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 03F30C 0043F30C 8F858030 */  lw          $a1, %got(STR_10008BA4)($gp)
/* 03F310 0043F310 24840020 */  addiu       $a0, $a0, 0x20
/* 03F314 0043F314 0320F809 */  jalr        $t9
/* 03F318 0043F318 24A58BA4 */   addiu      $a1, $a1, %lo(STR_10008BA4)
/* 03F31C 0043F31C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F320 0043F320 24040001 */  addiu       $a0, $zero, 0x1
/* 03F324 0043F324 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 03F328 0043F328 0320F809 */  jalr        $t9
/* 03F32C 0043F32C 00000000 */   nop
/* 03F330 0043F330 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F334 0043F334 8F848704 */  lw          $a0, %got(st_errname)($gp)
/* 03F338 0043F338 8C840000 */  lw          $a0, 0x0($a0)
.L0043F33C:
/* 03F33C 0043F33C 8F9980A0 */  lw          $t9, %call16(strcpy)($gp)
/* 03F340 0043F340 8FA50020 */  lw          $a1, 0x20($sp)
/* 03F344 0043F344 0320F809 */  jalr        $t9
/* 03F348 0043F348 00000000 */   nop
/* 03F34C 0043F34C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03F350 0043F350 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F354 0043F354 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03F358 0043F358 03E00008 */  jr          $ra
/* 03F35C 0043F35C 00000000 */   nop
