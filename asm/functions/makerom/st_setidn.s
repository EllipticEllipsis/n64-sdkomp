.section .rodata
glabel STR_10008B00
/* 048B00 10008B00 */ .asciz "st_setidn: idnsrc (%d) or idndest (%d) out of range\n"
                      .balign 4


.section .text
glabel st_setidn # 645
/* 03F14C 0043F14C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03F150 0043F150 279C3C14 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3C14
/* 03F154 0043F154 0399E021 */  addu        $gp, $gp, $t9
/* 03F158 0043F158 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03F15C 0043F15C AFBF001C */  sw          $ra, 0x1C($sp)
/* 03F160 0043F160 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03F164 0043F164 0480000B */  bltz        $a0, .L0043F194
/* 03F168 0043F168 00803025 */   move       $a2, $a0
/* 03F16C 0043F16C 04A00009 */  bltz        $a1, .L0043F194
/* 03F170 0043F170 00000000 */   nop
/* 03F174 0043F174 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03F178 0043F178 8C630000 */  lw          $v1, 0x0($v1)
/* 03F17C 0043F17C 8C62003C */  lw          $v0, 0x3C($v1)
/* 03F180 0043F180 0082082A */  slt         $at, $a0, $v0
/* 03F184 0043F184 10200003 */  beqz        $at, .L0043F194
/* 03F188 0043F188 00A2082A */   slt        $at, $a1, $v0
/* 03F18C 0043F18C 5420000D */  bnel        $at, $zero, .L0043F1C4
/* 03F190 0043F190 8C620038 */   lw         $v0, 0x38($v1)
.L0043F194:
/* 03F194 0043F194 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03F198 0043F198 8F848030 */  lw          $a0, %got(STR_10008B00)($gp)
/* 03F19C 0043F19C AFA50024 */  sw          $a1, 0x24($sp)
/* 03F1A0 0043F1A0 AFA60020 */  sw          $a2, 0x20($sp)
/* 03F1A4 0043F1A4 0320F809 */  jalr        $t9
/* 03F1A8 0043F1A8 24848B00 */   addiu      $a0, $a0, %lo(STR_10008B00)
/* 03F1AC 0043F1AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F1B0 0043F1B0 8FA50024 */  lw          $a1, 0x24($sp)
/* 03F1B4 0043F1B4 8FA60020 */  lw          $a2, 0x20($sp)
/* 03F1B8 0043F1B8 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03F1BC 0043F1BC 8C630000 */  lw          $v1, 0x0($v1)
/* 03F1C0 0043F1C0 8C620038 */  lw          $v0, 0x38($v1)
.L0043F1C4:
/* 03F1C4 0043F1C4 0005C0C0 */  sll         $t8, $a1, 3
/* 03F1C8 0043F1C8 000670C0 */  sll         $t6, $a2, 3
/* 03F1CC 0043F1CC 0058C821 */  addu        $t9, $v0, $t8
/* 03F1D0 0043F1D0 8F290000 */  lw          $t1, 0x0($t9)
/* 03F1D4 0043F1D4 004E7821 */  addu        $t7, $v0, $t6
/* 03F1D8 0043F1D8 ADE90000 */  sw          $t1, 0x0($t7)
/* 03F1DC 0043F1DC 8F280004 */  lw          $t0, 0x4($t9)
/* 03F1E0 0043F1E0 ADE80004 */  sw          $t0, 0x4($t7)
/* 03F1E4 0043F1E4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03F1E8 0043F1E8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03F1EC 0043F1EC 03E00008 */  jr          $ra
/* 03F1F0 0043F1F0 00000000 */   nop
