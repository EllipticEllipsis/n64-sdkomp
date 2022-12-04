.section .rodata
glabel STR_10008EF4
/* 048EF4 10008EF4 */ .asciz "%s: Error: "
                      .balign 4

glabel STR_10008F00
/* 048F00 10008F00 */ .asciz "\n"
                      .balign 4


.section .text
glabel _md_st_error # 671
/* 040C6C 00440C6C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040C70 00440C70 279C20F4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD20F4
/* 040C74 00440C74 0399E021 */  addu        $gp, $gp, $t9
/* 040C78 00440C78 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 040C7C 00440C7C 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 040C80 00440C80 AFA40028 */  sw          $a0, 0x28($sp)
/* 040C84 00440C84 AFA5002C */  sw          $a1, 0x2C($sp)
/* 040C88 00440C88 AFA60030 */  sw          $a2, 0x30($sp)
/* 040C8C 00440C8C 8F868704 */  lw          $a2, %got(st_errname)($gp)
/* 040C90 00440C90 8F858030 */  lw          $a1, %got(STR_10008EF4)($gp)
/* 040C94 00440C94 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 040C98 00440C98 AFBF0024 */  sw          $ra, 0x24($sp)
/* 040C9C 00440C9C AFBC0020 */  sw          $gp, 0x20($sp)
/* 040CA0 00440CA0 AFA70034 */  sw          $a3, 0x34($sp)
/* 040CA4 00440CA4 8CC60000 */  lw          $a2, 0x0($a2)
/* 040CA8 00440CA8 24A58EF4 */  addiu       $a1, $a1, %lo(STR_10008EF4)
/* 040CAC 00440CAC 0320F809 */  jalr        $t9
/* 040CB0 00440CB0 24840020 */   addiu      $a0, $a0, 0x20
/* 040CB4 00440CB4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 040CB8 00440CB8 8FAE0034 */  lw          $t6, 0x34($sp)
/* 040CBC 00440CBC 8FAF0038 */  lw          $t7, 0x38($sp)
/* 040CC0 00440CC0 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 040CC4 00440CC4 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 040CC8 00440CC8 8FA50028 */  lw          $a1, 0x28($sp)
/* 040CCC 00440CCC 8FA6002C */  lw          $a2, 0x2C($sp)
/* 040CD0 00440CD0 8FA70030 */  lw          $a3, 0x30($sp)
/* 040CD4 00440CD4 AFAE0010 */  sw          $t6, 0x10($sp)
/* 040CD8 00440CD8 AFAF0014 */  sw          $t7, 0x14($sp)
/* 040CDC 00440CDC 0320F809 */  jalr        $t9
/* 040CE0 00440CE0 24840020 */   addiu      $a0, $a0, 0x20
/* 040CE4 00440CE4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 040CE8 00440CE8 8F998064 */  lw          $t9, %call16(fprintf)($gp)
/* 040CEC 00440CEC 8F848044 */  lw          $a0, %got(__iob)($gp)
/* 040CF0 00440CF0 8F858030 */  lw          $a1, %got(STR_10008F00)($gp)
/* 040CF4 00440CF4 24840020 */  addiu       $a0, $a0, 0x20
/* 040CF8 00440CF8 0320F809 */  jalr        $t9
/* 040CFC 00440CFC 24A58F00 */   addiu      $a1, $a1, %lo(STR_10008F00)
/* 040D00 00440D00 8FBC0020 */  lw          $gp, 0x20($sp)
/* 040D04 00440D04 24040001 */  addiu       $a0, $zero, 0x1
/* 040D08 00440D08 8F998058 */  lw          $t9, %call16(exit)($gp)
/* 040D0C 00440D0C 0320F809 */  jalr        $t9
/* 040D10 00440D10 00000000 */   nop
/* 040D14 00440D14 8FBF0024 */  lw          $ra, 0x24($sp)
/* 040D18 00440D18 8FBC0020 */  lw          $gp, 0x20($sp)
/* 040D1C 00440D1C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 040D20 00440D20 03E00008 */  jr          $ra
/* 040D24 00440D24 00000000 */   nop
