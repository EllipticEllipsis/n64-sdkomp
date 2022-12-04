.section .rodata
glabel STR_10008A80
/* 048A80 10008A80 */ .asciz "st_rndx_idn: idn (%d) greater than max (%d)\n"
                      .balign 4

glabel STR_10008AB0
/* 048AB0 10008AB0 */ .asciz "st_rndx_idn: old interface can't put rfd(%d) into rndx, use st_pdn_idn instead\n"
                      .balign 4


.section .text
glabel st_rndx_idn # 644
/* 03F03C 0043F03C 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03F040 0043F040 279C3D24 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3D24
/* 03F044 0043F044 0399E021 */  addu        $gp, $gp, $t9
/* 03F048 0043F048 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03F04C 0043F04C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03F050 0043F050 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03F054 0043F054 8C630000 */  lw          $v1, 0x0($v1)
/* 03F058 0043F058 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03F05C 0043F05C AFA40030 */  sw          $a0, 0x30($sp)
/* 03F060 0043F060 8C66003C */  lw          $a2, 0x3C($v1)
/* 03F064 0043F064 00A03825 */  move        $a3, $a1
/* 03F068 0043F068 00A6082A */  slt         $at, $a1, $a2
/* 03F06C 0043F06C 5420000B */  bnel        $at, $zero, .L0043F09C
/* 03F070 0043F070 8C6E0038 */   lw         $t6, 0x38($v1)
/* 03F074 0043F074 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03F078 0043F078 8F848030 */  lw          $a0, %got(STR_10008A80)($gp)
/* 03F07C 0043F07C AFA70034 */  sw          $a3, 0x34($sp)
/* 03F080 0043F080 0320F809 */  jalr        $t9
/* 03F084 0043F084 24848A80 */   addiu      $a0, $a0, %lo(STR_10008A80)
/* 03F088 0043F088 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F08C 0043F08C 8FA70034 */  lw          $a3, 0x34($sp)
/* 03F090 0043F090 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03F094 0043F094 8C630000 */  lw          $v1, 0x0($v1)
/* 03F098 0043F098 8C6E0038 */  lw          $t6, 0x38($v1)
.L0043F09C:
/* 03F09C 0043F09C 000730C0 */  sll         $a2, $a3, 3
/* 03F0A0 0043F0A0 01C67821 */  addu        $t7, $t6, $a2
/* 03F0A4 0043F0A4 8DE50000 */  lw          $a1, 0x0($t7)
/* 03F0A8 0043F0A8 2CA10FFF */  sltiu       $at, $a1, 0xFFF
/* 03F0AC 0043F0AC 5420000E */  bnel        $at, $zero, .L0043F0E8
/* 03F0B0 0043F0B0 97AB002C */   lhu        $t3, 0x2C($sp)
/* 03F0B4 0043F0B4 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03F0B8 0043F0B8 8F848030 */  lw          $a0, %got(STR_10008AB0)($gp)
/* 03F0BC 0043F0BC AFA60024 */  sw          $a2, 0x24($sp)
/* 03F0C0 0043F0C0 0320F809 */  jalr        $t9
/* 03F0C4 0043F0C4 24848AB0 */   addiu      $a0, $a0, %lo(STR_10008AB0)
/* 03F0C8 0043F0C8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F0CC 0043F0CC 8FA60024 */  lw          $a2, 0x24($sp)
/* 03F0D0 0043F0D0 8F8387C8 */  lw          $v1, %got(st_pchdr)($gp)
/* 03F0D4 0043F0D4 8C630000 */  lw          $v1, 0x0($v1)
/* 03F0D8 0043F0D8 8C780038 */  lw          $t8, 0x38($v1)
/* 03F0DC 0043F0DC 0306C821 */  addu        $t9, $t8, $a2
/* 03F0E0 0043F0E0 8F250000 */  lw          $a1, 0x0($t9)
/* 03F0E4 0043F0E4 97AB002C */  lhu         $t3, 0x2C($sp)
.L0043F0E8:
/* 03F0E8 0043F0E8 00055100 */  sll         $t2, $a1, 4
/* 03F0EC 0043F0EC 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 03F0F0 0043F0F0 316C000F */  andi        $t4, $t3, 0xF
/* 03F0F4 0043F0F4 014C6825 */  or          $t5, $t2, $t4
/* 03F0F8 0043F0F8 A7AD002C */  sh          $t5, 0x2C($sp)
/* 03F0FC 0043F0FC 8C6E0038 */  lw          $t6, 0x38($v1)
/* 03F100 0043F100 8FA8002C */  lw          $t0, 0x2C($sp)
/* 03F104 0043F104 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 03F108 0043F108 01C67821 */  addu        $t7, $t6, $a2
/* 03F10C 0043F10C 8DF80004 */  lw          $t8, 0x4($t7)
/* 03F110 0043F110 27AE002C */  addiu       $t6, $sp, 0x2C
/* 03F114 0043F114 8FAD0030 */  lw          $t5, 0x30($sp)
/* 03F118 0043F118 0301C824 */  and         $t9, $t8, $at
/* 03F11C 0043F11C 03284826 */  xor         $t1, $t9, $t0
/* 03F120 0043F120 00095B00 */  sll         $t3, $t1, 12
/* 03F124 0043F124 000B5302 */  srl         $t2, $t3, 12
/* 03F128 0043F128 01486026 */  xor         $t4, $t2, $t0
/* 03F12C 0043F12C AFAC002C */  sw          $t4, 0x2C($sp)
/* 03F130 0043F130 8DD80000 */  lw          $t8, 0x0($t6)
/* 03F134 0043F134 ADB80000 */  sw          $t8, 0x0($t5)
/* 03F138 0043F138 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03F13C 0043F13C 8FA20030 */  lw          $v0, 0x30($sp)
/* 03F140 0043F140 27BD0030 */  addiu       $sp, $sp, 0x30
/* 03F144 0043F144 03E00008 */  jr          $ra
/* 03F148 0043F148 00000000 */   nop
