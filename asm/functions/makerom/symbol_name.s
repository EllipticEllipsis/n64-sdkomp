.section .rodata
glabel STR_10008700
/* 048700 10008700 */ .asciz "_block%x"
                      .balign 4


.section .text
glabel symbol_name # 606
/* 03BEB0 0043BEB0 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03BEB4 0043BEB4 279C6EB0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD6EB0
/* 03BEB8 0043BEB8 0399E021 */  addu        $gp, $gp, $t9
/* 03BEBC 0043BEBC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03BEC0 0043BEC0 AFB1001C */  sw          $s1, 0x1C($sp)
/* 03BEC4 0043BEC4 AFB00018 */  sw          $s0, 0x18($sp)
/* 03BEC8 0043BEC8 00808025 */  move        $s0, $a0
/* 03BECC 0043BECC 00A08825 */  move        $s1, $a1
/* 03BED0 0043BED0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03BED4 0043BED4 04A10009 */  bgez        $a1, .L0043BEFC
/* 03BED8 0043BED8 AFBC0020 */   sw         $gp, 0x20($sp)
/* 03BEDC 0043BEDC 00057023 */  negu        $t6, $a1
/* 03BEE0 0043BEE0 8F9887D4 */  lw          $t8, %got(usersymbol)($gp)
/* 03BEE4 0043BEE4 000E7880 */  sll         $t7, $t6, 2
/* 03BEE8 0043BEE8 01EE7823 */  subu        $t7, $t7, $t6
/* 03BEEC 0043BEEC 000F7880 */  sll         $t7, $t7, 2
/* 03BEF0 0043BEF0 01F8C821 */  addu        $t9, $t7, $t8
/* 03BEF4 0043BEF4 10000048 */  b           .L0043C018
/* 03BEF8 0043BEF8 8F220000 */   lw         $v0, 0x0($t9)
.L0043BEFC:
/* 03BEFC 0043BEFC 8E0300D8 */  lw          $v1, 0xD8($s0)
/* 03BF00 0043BF00 00114900 */  sll         $t1, $s1, 4
/* 03BF04 0043BF04 0223082B */  sltu        $at, $s1, $v1
/* 03BF08 0043BF08 14200009 */  bnez        $at, .L0043BF30
/* 03BF0C 0043BF0C 00035900 */   sll        $t3, $v1, 4
/* 03BF10 0043BF10 8E0800AC */  lw          $t0, 0xAC($s0)
/* 03BF14 0043BF14 000B6023 */  negu        $t4, $t3
/* 03BF18 0043BF18 8E0F00B0 */  lw          $t7, 0xB0($s0)
/* 03BF1C 0043BF1C 01095021 */  addu        $t2, $t0, $t1
/* 03BF20 0043BF20 014C6821 */  addu        $t5, $t2, $t4
/* 03BF24 0043BF24 8DAE0004 */  lw          $t6, 0x4($t5)
/* 03BF28 0043BF28 1000003B */  b           .L0043C018
/* 03BF2C 0043BF2C 01CF1021 */   addu       $v0, $t6, $t7
.L0043BF30:
/* 03BF30 0043BF30 8F998564 */  lw          $t9, %call16(symbol_type)($gp)
/* 03BF34 0043BF34 02002025 */  move        $a0, $s0
/* 03BF38 0043BF38 02202825 */  move        $a1, $s1
/* 03BF3C 0043BF3C 0320F809 */  jalr        $t9
/* 03BF40 0043BF40 00000000 */   nop
/* 03BF44 0043BF44 24010007 */  addiu       $at, $zero, 0x7
/* 03BF48 0043BF48 1441001A */  bne         $v0, $at, .L0043BFB4
/* 03BF4C 0043BF4C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 03BF50 0043BF50 8F998560 */  lw          $t9, %call16(symbol_class)($gp)
/* 03BF54 0043BF54 02002025 */  move        $a0, $s0
/* 03BF58 0043BF58 02202825 */  move        $a1, $s1
/* 03BF5C 0043BF5C 0320F809 */  jalr        $t9
/* 03BF60 0043BF60 00000000 */   nop
/* 03BF64 0043BF64 24010001 */  addiu       $at, $zero, 0x1
/* 03BF68 0043BF68 14410012 */  bne         $v0, $at, .L0043BFB4
/* 03BF6C 0043BF6C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 03BF70 0043BF70 8F998568 */  lw          $t9, %call16(symbol_value)($gp)
/* 03BF74 0043BF74 02002025 */  move        $a0, $s0
/* 03BF78 0043BF78 02202825 */  move        $a1, $s1
/* 03BF7C 0043BF7C 0320F809 */  jalr        $t9
/* 03BF80 0043BF80 00000000 */   nop
/* 03BF84 0043BF84 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BF88 0043BF88 00403025 */  move        $a2, $v0
/* 03BF8C 0043BF8C 8F908030 */  lw          $s0, %got(B_1000F5F8)($gp)
/* 03BF90 0043BF90 8F99806C */  lw          $t9, %call16(sprintf)($gp)
/* 03BF94 0043BF94 8F858030 */  lw          $a1, %got(STR_10008700)($gp)
/* 03BF98 0043BF98 2610F5F8 */  addiu       $s0, $s0, %lo(B_1000F5F8)
/* 03BF9C 0043BF9C 02002025 */  move        $a0, $s0
/* 03BFA0 0043BFA0 0320F809 */  jalr        $t9
/* 03BFA4 0043BFA4 24A58700 */   addiu      $a1, $a1, %lo(STR_10008700)
/* 03BFA8 0043BFA8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BFAC 0043BFAC 1000001A */  b           .L0043C018
/* 03BFB0 0043BFB0 02001025 */   move       $v0, $s0
.L0043BFB4:
/* 03BFB4 0043BFB4 8F9984F0 */  lw          $t9, %call16(symbol_to_file)($gp)
/* 03BFB8 0043BFB8 02002025 */  move        $a0, $s0
/* 03BFBC 0043BFBC 02202825 */  move        $a1, $s1
/* 03BFC0 0043BFC0 0320F809 */  jalr        $t9
/* 03BFC4 0043BFC4 00000000 */   nop
/* 03BFC8 0043BFC8 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03BFCC 0043BFCC 02002025 */  move        $a0, $s0
/* 03BFD0 0043BFD0 00402825 */  move        $a1, $v0
/* 03BFD4 0043BFD4 8F99850C */  lw          $t9, %call16(file_string_base)($gp)
/* 03BFD8 0043BFD8 0320F809 */  jalr        $t9
/* 03BFDC 0043BFDC 00000000 */   nop
/* 03BFE0 0043BFE0 8E0900CC */  lw          $t1, 0xCC($s0)
/* 03BFE4 0043BFE4 8E1800A8 */  lw          $t8, 0xA8($s0)
/* 03BFE8 0043BFE8 0011C880 */  sll         $t9, $s1, 2
/* 03BFEC 0043BFEC 00095880 */  sll         $t3, $t1, 2
/* 03BFF0 0043BFF0 0331C823 */  subu        $t9, $t9, $s1
/* 03BFF4 0043BFF4 01695823 */  subu        $t3, $t3, $t1
/* 03BFF8 0043BFF8 000B5880 */  sll         $t3, $t3, 2
/* 03BFFC 0043BFFC 0019C880 */  sll         $t9, $t9, 2
/* 03C000 0043C000 000B5023 */  negu        $t2, $t3
/* 03C004 0043C004 03194021 */  addu        $t0, $t8, $t9
/* 03C008 0043C008 010A6021 */  addu        $t4, $t0, $t2
/* 03C00C 0043C00C 8D8D0000 */  lw          $t5, 0x0($t4)
/* 03C010 0043C010 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03C014 0043C014 01A21021 */  addu        $v0, $t5, $v0
.L0043C018:
/* 03C018 0043C018 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03C01C 0043C01C 8FB00018 */  lw          $s0, 0x18($sp)
/* 03C020 0043C020 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03C024 0043C024 03E00008 */  jr          $ra
/* 03C028 0043C028 27BD0028 */   addiu      $sp, $sp, 0x28
