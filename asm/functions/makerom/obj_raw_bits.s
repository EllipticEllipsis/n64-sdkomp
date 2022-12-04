.section .rodata
glabel STR_10007FA8
/* 047FA8 10007FA8 */ .asciz "0"
                      .balign 4

glabel STR_10007FAC
/* 047FAC 10007FAC */ .asciz "obj_elf.c"
                      .balign 4


.section .text
glabel obj_raw_bits # 569
/* 037178 00437178 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 03717C 0043717C 279CBBE8 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDBBE8
/* 037180 00437180 0399E021 */  addu        $gp, $gp, $t9
/* 037184 00437184 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 037188 00437188 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03718C 0043718C AFBC0018 */  sw          $gp, 0x18($sp)
/* 037190 00437190 8C8E008C */  lw          $t6, 0x8C($a0)
/* 037194 00437194 24010003 */  addiu       $at, $zero, 0x3
/* 037198 00437198 00A03025 */  move        $a2, $a1
/* 03719C 0043719C 15C10012 */  bne         $t6, $at, .L004371E8
/* 0371A0 004371A0 00000000 */   nop
/* 0371A4 004371A4 8F998524 */  lw          $t9, %call16(foreach_section)($gp)
/* 0371A8 004371A8 8F858534 */  lw          $a1, %got(find_section_byname)($gp)
/* 0371AC 004371AC AFA40020 */  sw          $a0, 0x20($sp)
/* 0371B0 004371B0 0320F809 */  jalr        $t9
/* 0371B4 004371B4 00000000 */   nop
/* 0371B8 004371B8 2401FFFF */  addiu       $at, $zero, -0x1
/* 0371BC 004371BC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0371C0 004371C0 8FA40020 */  lw          $a0, 0x20($sp)
/* 0371C4 004371C4 14410003 */  bne         $v0, $at, .L004371D4
/* 0371C8 004371C8 00402825 */   move       $a1, $v0
/* 0371CC 004371CC 1000000F */  b           .L0043720C
/* 0371D0 004371D0 00001025 */   move       $v0, $zero
.L004371D4:
/* 0371D4 004371D4 8F998444 */  lw          $t9, %call16(obj_section_bits)($gp)
/* 0371D8 004371D8 0320F809 */  jalr        $t9
/* 0371DC 004371DC 00000000 */   nop
/* 0371E0 004371E0 1000000A */  b           .L0043720C
/* 0371E4 004371E4 8FBC0018 */   lw         $gp, 0x18($sp)
.L004371E8:
/* 0371E8 004371E8 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 0371EC 004371EC 8F84802C */  lw          $a0, %got(STR_10007FA8)($gp)
/* 0371F0 004371F0 8F85802C */  lw          $a1, %got(STR_10007FAC)($gp)
/* 0371F4 004371F4 2406013B */  addiu       $a2, $zero, 0x13B
/* 0371F8 004371F8 24847FA8 */  addiu       $a0, $a0, %lo(STR_10007FA8)
/* 0371FC 004371FC 0320F809 */  jalr        $t9
/* 037200 00437200 24A57FAC */   addiu      $a1, $a1, %lo(STR_10007FAC)
/* 037204 00437204 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037208 00437208 00001025 */  move        $v0, $zero
.L0043720C:
/* 03720C 0043720C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 037210 00437210 27BD0020 */  addiu       $sp, $sp, 0x20
/* 037214 00437214 03E00008 */  jr          $ra
/* 037218 00437218 00000000 */   nop
