.section .rodata
glabel STR_10008B38
/* 048B38 10008B38 */ .asciz "st_pext_dn: rfd field (%d) isn't equal to ST_EXTIFD(%d)\n"
                      .balign 4

glabel STR_10008B74
/* 048B74 10008B74 */ .asciz "st_pext_dn: index out of range (%d)\n"
                      .balign 4


.section .text
glabel st_pext_dn # 646
/* 03F1F4 0043F1F4 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03F1F8 0043F1F8 279C3B6C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3B6C
/* 03F1FC 0043F1FC 0399E021 */  addu        $gp, $gp, $t9
/* 03F200 0043F200 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03F204 0043F204 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 03F208 0043F208 AFA50024 */  sw          $a1, 0x24($sp)
/* 03F20C 0043F20C 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 03F210 0043F210 00802825 */  move        $a1, $a0
/* 03F214 0043F214 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03F218 0043F218 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03F21C 0043F21C 10810008 */  beq         $a0, $at, .L0043F240
/* 03F220 0043F220 AFA40020 */   sw         $a0, 0x20($sp)
/* 03F224 0043F224 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03F228 0043F228 8F848030 */  lw          $a0, %got(STR_10008B38)($gp)
/* 03F22C 0043F22C 3C067FFF */  lui         $a2, (0x7FFFFFFF >> 16)
/* 03F230 0043F230 34C6FFFF */  ori         $a2, $a2, (0x7FFFFFFF & 0xFFFF)
/* 03F234 0043F234 0320F809 */  jalr        $t9
/* 03F238 0043F238 24848B38 */   addiu      $a0, $a0, %lo(STR_10008B38)
/* 03F23C 0043F23C 8FBC0018 */  lw          $gp, 0x18($sp)
.L0043F240:
/* 03F240 0043F240 8FA50024 */  lw          $a1, 0x24($sp)
/* 03F244 0043F244 04A00007 */  bltz        $a1, .L0043F264
/* 03F248 0043F248 00000000 */   nop
/* 03F24C 0043F24C 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03F250 0043F250 8C630000 */  lw          $v1, 0x0($v1)
/* 03F254 0043F254 8C6E001C */  lw          $t6, 0x1C($v1)
/* 03F258 0043F258 01C5082A */  slt         $at, $t6, $a1
/* 03F25C 0043F25C 5020000A */  beql        $at, $zero, .L0043F288
/* 03F260 0043F260 8FBF001C */   lw         $ra, 0x1C($sp)
.L0043F264:
/* 03F264 0043F264 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03F268 0043F268 8F848030 */  lw          $a0, %got(STR_10008B74)($gp)
/* 03F26C 0043F26C 0320F809 */  jalr        $t9
/* 03F270 0043F270 24848B74 */   addiu      $a0, $a0, %lo(STR_10008B74)
/* 03F274 0043F274 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F278 0043F278 8FA50024 */  lw          $a1, 0x24($sp)
/* 03F27C 0043F27C 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03F280 0043F280 8C630000 */  lw          $v1, 0x0($v1)
/* 03F284 0043F284 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043F288:
/* 03F288 0043F288 8C6F0018 */  lw          $t7, 0x18($v1)
/* 03F28C 0043F28C 0005C100 */  sll         $t8, $a1, 4
/* 03F290 0043F290 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03F294 0043F294 03E00008 */  jr          $ra
/* 03F298 0043F298 01F81021 */   addu       $v0, $t7, $t8
