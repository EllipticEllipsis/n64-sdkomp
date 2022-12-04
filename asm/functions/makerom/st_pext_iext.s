.section .rodata
glabel STR_10009034
/* 049034 10009034 */ .asciz "st_pext_iext: index out of range (%d)\n"
                      .balign 4


.section .text
glabel st_pext_iext # 681
/* 0412BC 004412BC 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 0412C0 004412C0 279C1AA4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD1AA4
/* 0412C4 004412C4 0399E021 */  addu        $gp, $gp, $t9
/* 0412C8 004412C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0412CC 004412CC AFBF001C */  sw          $ra, 0x1C($sp)
/* 0412D0 004412D0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0412D4 004412D4 04800007 */  bltz        $a0, .L004412F4
/* 0412D8 004412D8 00802825 */   move       $a1, $a0
/* 0412DC 004412DC 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 0412E0 004412E0 8C630000 */  lw          $v1, 0x0($v1)
/* 0412E4 004412E4 8C6E001C */  lw          $t6, 0x1C($v1)
/* 0412E8 004412E8 01C4082A */  slt         $at, $t6, $a0
/* 0412EC 004412EC 5020000B */  beql        $at, $zero, .L0044131C
/* 0412F0 004412F0 8FBF001C */   lw         $ra, 0x1C($sp)
.L004412F4:
/* 0412F4 004412F4 8F998618 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 0412F8 004412F8 8F848030 */  lw          $a0, %got(STR_10009034)($gp)
/* 0412FC 004412FC AFA50020 */  sw          $a1, 0x20($sp)
/* 041300 00441300 0320F809 */  jalr        $t9
/* 041304 00441304 24849034 */   addiu      $a0, $a0, %lo(STR_10009034)
/* 041308 00441308 8FBC0018 */  lw          $gp, 0x18($sp)
/* 04130C 0044130C 8FA50020 */  lw          $a1, 0x20($sp)
/* 041310 00441310 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 041314 00441314 8C630000 */  lw          $v1, 0x0($v1)
/* 041318 00441318 8FBF001C */  lw          $ra, 0x1C($sp)
.L0044131C:
/* 04131C 0044131C 8C6F0018 */  lw          $t7, 0x18($v1)
/* 041320 00441320 0005C100 */  sll         $t8, $a1, 4
/* 041324 00441324 27BD0020 */  addiu       $sp, $sp, 0x20
/* 041328 00441328 03E00008 */  jr          $ra
/* 04132C 0044132C 01F81021 */   addu       $v0, $t7, $t8
