.section .rodata
glabel STR_10009140
/* 049140 10009140 */ .asciz "st_textblock: block pending set in illegal case\n"
                      .balign 4


.section .text
glabel st_textblock # 690
/* 041C90 00441C90 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 041C94 00441C94 279C10D0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD10D0
/* 041C98 00441C98 0399E021 */  addu        $gp, $gp, $t9
/* 041C9C 00441C9C 8F838030 */  lw          $v1, %got(D_1000AD64)($gp)
/* 041CA0 00441CA0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 041CA4 00441CA4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 041CA8 00441CA8 2463AD64 */  addiu       $v1, $v1, %lo(D_1000AD64)
/* 041CAC 00441CAC 8C620000 */  lw          $v0, 0x0($v1)
/* 041CB0 00441CB0 AFBC0020 */  sw          $gp, 0x20($sp)
/* 041CB4 00441CB4 1040002A */  beqz        $v0, .L00441D60
/* 041CB8 00441CB8 00000000 */   nop
/* 041CBC 00441CBC 8F8E8030 */  lw          $t6, %got(B_10010824)($gp)
/* 041CC0 00441CC0 00002025 */  move        $a0, $zero
/* 041CC4 00441CC4 00002825 */  move        $a1, $zero
/* 041CC8 00441CC8 8DCE0824 */  lw          $t6, %lo(B_10010824)($t6)
/* 041CCC 00441CCC 29C10002 */  slti        $at, $t6, 0x2
/* 041CD0 00441CD0 14200023 */  bnez        $at, .L00441D60
/* 041CD4 00441CD4 00000000 */   nop
/* 041CD8 00441CD8 AC600000 */  sw          $zero, 0x0($v1)
/* 041CDC 00441CDC 8F998600 */  lw          $t9, %call16(st_symadd)($gp)
/* 041CE0 00441CE0 24060007 */  addiu       $a2, $zero, 0x7
/* 041CE4 00441CE4 24070001 */  addiu       $a3, $zero, 0x1
/* 041CE8 00441CE8 0320F809 */  jalr        $t9
/* 041CEC 00441CEC AFA00010 */   sw         $zero, 0x10($sp)
/* 041CF0 00441CF0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041CF4 00441CF4 AFA20034 */  sw          $v0, 0x34($sp)
/* 041CF8 00441CF8 8F9985D8 */  lw          $t9, %call16(st_currentifd)($gp)
/* 041CFC 00441CFC 0320F809 */  jalr        $t9
/* 041D00 00441D00 00000000 */   nop
/* 041D04 00441D04 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041D08 00441D08 8FAF0034 */  lw          $t7, 0x34($sp)
/* 041D0C 00441D0C 27A3002C */  addiu       $v1, $sp, 0x2C
/* 041D10 00441D10 8F998030 */  lw          $t9, %got(B_10010824)($gp)
/* 041D14 00441D14 8F988030 */  lw          $t8, %got(B_10010820)($gp)
/* 041D18 00441D18 AFA2002C */  sw          $v0, 0x2C($sp)
/* 041D1C 00441D1C 8F390824 */  lw          $t9, %lo(B_10010824)($t9)
/* 041D20 00441D20 8F180820 */  lw          $t8, %lo(B_10010820)($t8)
/* 041D24 00441D24 AFAF0030 */  sw          $t7, 0x30($sp)
/* 041D28 00441D28 8C6B0000 */  lw          $t3, 0x0($v1)
/* 041D2C 00441D2C 001940C0 */  sll         $t0, $t9, 3
/* 041D30 00441D30 03084821 */  addu        $t1, $t8, $t0
/* 041D34 00441D34 AD2BFFF8 */  sw          $t3, -0x8($t1)
/* 041D38 00441D38 8C6A0004 */  lw          $t2, 0x4($v1)
/* 041D3C 00441D3C AD2AFFFC */  sw          $t2, -0x4($t1)
/* 041D40 00441D40 8C640000 */  lw          $a0, 0x0($v1)
/* 041D44 00441D44 8F9985D0 */  lw          $t9, %call16(st_idn_dn)($gp)
/* 041D48 00441D48 AFA40000 */  sw          $a0, 0x0($sp)
/* 041D4C 00441D4C 8C650004 */  lw          $a1, 0x4($v1)
/* 041D50 00441D50 0320F809 */  jalr        $t9
/* 041D54 00441D54 AFA50004 */   sw         $a1, 0x4($sp)
/* 041D58 00441D58 10000009 */  b           .L00441D80
/* 041D5C 00441D5C 8FBC0020 */   lw         $gp, 0x20($sp)
.L00441D60:
/* 041D60 00441D60 50400007 */  beql        $v0, $zero, .L00441D80
/* 041D64 00441D64 00001025 */   move       $v0, $zero
/* 041D68 00441D68 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 041D6C 00441D6C 8F848030 */  lw          $a0, %got(STR_10009140)($gp)
/* 041D70 00441D70 0320F809 */  jalr        $t9
/* 041D74 00441D74 24849140 */   addiu      $a0, $a0, %lo(STR_10009140)
/* 041D78 00441D78 8FBC0020 */  lw          $gp, 0x20($sp)
/* 041D7C 00441D7C 00001025 */  move        $v0, $zero
.L00441D80:
/* 041D80 00441D80 8FBF0024 */  lw          $ra, 0x24($sp)
/* 041D84 00441D84 27BD0038 */  addiu       $sp, $sp, 0x38
/* 041D88 00441D88 03E00008 */  jr          $ra
/* 041D8C 00441D8C 00000000 */   nop
