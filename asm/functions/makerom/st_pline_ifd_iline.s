.section .rodata
glabel STR_10008D58
/* 048D58 10008D58 */ .asciz "st_paux_ifd_iaux: ifd (%d) or iline (%d) out of range\n"
                      .balign 4


.section .text
glabel st_pline_ifd_iline # 660
/* 040160 00440160 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 040164 00440164 279C2C00 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD2C00
/* 040168 00440168 0399E021 */  addu        $gp, $gp, $t9
/* 04016C 0044016C 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 040170 00440170 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 040174 00440174 AFBF001C */  sw          $ra, 0x1C($sp)
/* 040178 00440178 8DCE0000 */  lw          $t6, 0x0($t6)
/* 04017C 0044017C AFBC0018 */  sw          $gp, 0x18($sp)
/* 040180 00440180 00803825 */  move        $a3, $a0
/* 040184 00440184 8DCF0004 */  lw          $t7, 0x4($t6)
/* 040188 00440188 00A03025 */  move        $a2, $a1
/* 04018C 0044018C 15E0000A */  bnez        $t7, .L004401B8
/* 040190 00440190 00000000 */   nop
/* 040194 00440194 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 040198 00440198 8F848030 */  lw          $a0, %got(D_1000AB80)($gp)
/* 04019C 0044019C AFA5002C */  sw          $a1, 0x2C($sp)
/* 0401A0 004401A0 AFA70028 */  sw          $a3, 0x28($sp)
/* 0401A4 004401A4 0320F809 */  jalr        $t9
/* 0401A8 004401A8 2484AB80 */   addiu      $a0, $a0, %lo(D_1000AB80)
/* 0401AC 004401AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0401B0 004401B0 8FA6002C */  lw          $a2, 0x2C($sp)
/* 0401B4 004401B4 8FA70028 */  lw          $a3, 0x28($sp)
.L004401B8:
/* 0401B8 004401B8 04E00011 */  bltz        $a3, .L00440200
/* 0401BC 004401BC 00E02825 */   move       $a1, $a3
/* 0401C0 004401C0 04C0000F */  bltz        $a2, .L00440200
/* 0401C4 004401C4 00000000 */   nop
/* 0401C8 004401C8 8F8287C8 */  lw          $v0, %got(st_pchdr)($gp)
/* 0401CC 004401CC 8C420000 */  lw          $v0, 0x0($v0)
/* 0401D0 004401D0 8C58000C */  lw          $t8, 0xC($v0)
/* 0401D4 004401D4 00F8082A */  slt         $at, $a3, $t8
/* 0401D8 004401D8 10200009 */  beqz        $at, .L00440200
/* 0401DC 004401DC 00000000 */   nop
/* 0401E0 004401E0 8C590004 */  lw          $t9, 0x4($v0)
/* 0401E4 004401E4 00074180 */  sll         $t0, $a3, 6
/* 0401E8 004401E8 03281821 */  addu        $v1, $t9, $t0
/* 0401EC 004401EC 8C690000 */  lw          $t1, 0x0($v1)
/* 0401F0 004401F0 8D2A001C */  lw          $t2, 0x1C($t1)
/* 0401F4 004401F4 00CA082A */  slt         $at, $a2, $t2
/* 0401F8 004401F8 54200010 */  bnel        $at, $zero, .L0044023C
/* 0401FC 004401FC 8FBF001C */   lw         $ra, 0x1C($sp)
.L00440200:
/* 040200 00440200 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 040204 00440204 8F848030 */  lw          $a0, %got(STR_10008D58)($gp)
/* 040208 00440208 00075980 */  sll         $t3, $a3, 6
/* 04020C 0044020C AFAB0024 */  sw          $t3, 0x24($sp)
/* 040210 00440210 AFA6002C */  sw          $a2, 0x2C($sp)
/* 040214 00440214 0320F809 */  jalr        $t9
/* 040218 00440218 24848D58 */   addiu      $a0, $a0, %lo(STR_10008D58)
/* 04021C 0044021C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 040220 00440220 8FAE0024 */  lw          $t6, 0x24($sp)
/* 040224 00440224 8FA6002C */  lw          $a2, 0x2C($sp)
/* 040228 00440228 8F8C87C8 */  lw          $t4, %got(st_pchdr)($gp)
/* 04022C 0044022C 8D8C0000 */  lw          $t4, 0x0($t4)
/* 040230 00440230 8D8D0004 */  lw          $t5, 0x4($t4)
/* 040234 00440234 01AE1821 */  addu        $v1, $t5, $t6
/* 040238 00440238 8FBF001C */  lw          $ra, 0x1C($sp)
.L0044023C:
/* 04023C 0044023C 8C6F0024 */  lw          $t7, 0x24($v1)
/* 040240 00440240 0006C080 */  sll         $t8, $a2, 2
/* 040244 00440244 27BD0028 */  addiu       $sp, $sp, 0x28
/* 040248 00440248 03E00008 */  jr          $ra
/* 04024C 0044024C 01F81021 */   addu       $v0, $t7, $t8
