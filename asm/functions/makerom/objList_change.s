.section .late_rodata
glabel jtbl_10007D50
/* 047D50 10007D50 F0421BEC */ .gpword .L0043494C
/* 047D54 10007D54 F0421C48 */ .gpword .L004349A8
/* 047D58 10007D58 F0421C8C */ .gpword .L004349EC
/* 047D5C 10007D5C F0421CD4 */ .gpword .L00434A34
/* 047D60 10007D60 F0421D24 */ .gpword .L00434A84
/* 047D64 10007D64 00000000 */ .word 0x00000000
/* 047D68 10007D68 00000000 */ .word 0x00000000
/* 047D6C 10007D6C 00000000 */ .word 0x00000000


.section .text
glabel objList_change # 549
/* 0348BC 004348BC 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 0348C0 004348C0 279CE4A4 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDE4A4
/* 0348C4 004348C4 0399E021 */  addu        $gp, $gp, $t9
/* 0348C8 004348C8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0348CC 004348CC 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 0348D0 004348D0 AFA7003C */  sw          $a3, 0x3C($sp)
/* 0348D4 004348D4 00803825 */  move        $a3, $a0
/* 0348D8 004348D8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0348DC 004348DC AFA40030 */  sw          $a0, 0x30($sp)
/* 0348E0 004348E0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0348E4 004348E4 AFA60038 */  sw          $a2, 0x38($sp)
/* 0348E8 004348E8 AFA70030 */  sw          $a3, 0x30($sp)
/* 0348EC 004348EC 2404000C */  addiu       $a0, $zero, 0xC
/* 0348F0 004348F0 0320F809 */  jalr        $t9
/* 0348F4 004348F4 AFA50034 */   sw         $a1, 0x34($sp)
/* 0348F8 004348F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0348FC 004348FC 8FA50034 */  lw          $a1, 0x34($sp)
/* 034900 00434900 8FA70030 */  lw          $a3, 0x30($sp)
/* 034904 00434904 14400003 */  bnez        $v0, .L00434914
/* 034908 00434908 AFA2002C */   sw         $v0, 0x2C($sp)
/* 03490C 0043490C 10000076 */  b           .L00434AE8
/* 034910 00434910 00001025 */   move       $v0, $zero
.L00434914:
/* 034914 00434914 8FAE0038 */  lw          $t6, 0x38($sp)
/* 034918 00434918 AC4E0000 */  sw          $t6, 0x0($v0)
/* 03491C 0043491C 8FAF0040 */  lw          $t7, 0x40($sp)
/* 034920 00434920 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 034924 00434924 2F010005 */  sltiu       $at, $t8, 0x5
/* 034928 00434928 5020006F */  beql        $at, $zero, .L00434AE8
/* 03492C 0043492C 27A2002C */   addiu      $v0, $sp, 0x2C
/* 034930 00434930 8F81802C */  lw          $at, %got(jtbl_10007D50)($gp)
/* 034934 00434934 0018C080 */  sll         $t8, $t8, 2
/* 034938 00434938 00380821 */  addu        $at, $at, $t8
/* 03493C 0043493C 8C387D50 */  lw          $t8, %lo(jtbl_10007D50)($at)
/* 034940 00434940 031CC021 */  addu        $t8, $t8, $gp
/* 034944 00434944 03000008 */  jr          $t8
/* 034948 00434948 00000000 */   nop
.L0043494C:
/* 03494C 0043494C 8CE20000 */  lw          $v0, 0x0($a3)
/* 034950 00434950 8FB9002C */  lw          $t9, 0x2C($sp)
/* 034954 00434954 8FAA002C */  lw          $t2, 0x2C($sp)
/* 034958 00434958 54400008 */  bnel        $v0, $zero, .L0043497C
/* 03495C 0043495C 8C4B0008 */   lw         $t3, 0x8($v0)
/* 034960 00434960 AF220004 */  sw          $v0, 0x4($t9)
/* 034964 00434964 8FA8002C */  lw          $t0, 0x2C($sp)
/* 034968 00434968 AD080008 */  sw          $t0, 0x8($t0)
/* 03496C 0043496C 8FA9002C */  lw          $t1, 0x2C($sp)
/* 034970 00434970 1000005C */  b           .L00434AE4
/* 034974 00434974 ACE90000 */   sw         $t1, 0x0($a3)
/* 034978 00434978 8C4B0008 */  lw          $t3, 0x8($v0)
.L0043497C:
/* 03497C 0043497C AD6A0004 */  sw          $t2, 0x4($t3)
/* 034980 00434980 8CEC0000 */  lw          $t4, 0x0($a3)
/* 034984 00434984 8FAE002C */  lw          $t6, 0x2C($sp)
/* 034988 00434988 8D8D0008 */  lw          $t5, 0x8($t4)
/* 03498C 0043498C ADCD0008 */  sw          $t5, 0x8($t6)
/* 034990 00434990 8FAF002C */  lw          $t7, 0x2C($sp)
/* 034994 00434994 8CF80000 */  lw          $t8, 0x0($a3)
/* 034998 00434998 AF0F0008 */  sw          $t7, 0x8($t8)
/* 03499C 0043499C 8FB9002C */  lw          $t9, 0x2C($sp)
/* 0349A0 004349A0 10000050 */  b           .L00434AE4
/* 0349A4 004349A4 AF200004 */   sw         $zero, 0x4($t9)
.L004349A8:
/* 0349A8 004349A8 8CE80000 */  lw          $t0, 0x0($a3)
/* 0349AC 004349AC 8FA9002C */  lw          $t1, 0x2C($sp)
/* 0349B0 004349B0 8FAA002C */  lw          $t2, 0x2C($sp)
/* 0349B4 004349B4 54A80004 */  bnel        $a1, $t0, .L004349C8
/* 0349B8 004349B8 8CAB0008 */   lw         $t3, 0x8($a1)
/* 0349BC 004349BC 10000003 */  b           .L004349CC
/* 0349C0 004349C0 ACE90000 */   sw         $t1, 0x0($a3)
/* 0349C4 004349C4 8CAB0008 */  lw          $t3, 0x8($a1)
.L004349C8:
/* 0349C8 004349C8 AD6A0004 */  sw          $t2, 0x4($t3)
.L004349CC:
/* 0349CC 004349CC 8CAC0008 */  lw          $t4, 0x8($a1)
/* 0349D0 004349D0 8FAD002C */  lw          $t5, 0x2C($sp)
/* 0349D4 004349D4 ADAC0008 */  sw          $t4, 0x8($t5)
/* 0349D8 004349D8 8FAE002C */  lw          $t6, 0x2C($sp)
/* 0349DC 004349DC ACAE0008 */  sw          $t6, 0x8($a1)
/* 0349E0 004349E0 8FAF002C */  lw          $t7, 0x2C($sp)
/* 0349E4 004349E4 1000003F */  b           .L00434AE4
/* 0349E8 004349E8 ADE50004 */   sw         $a1, 0x4($t7)
.L004349EC:
/* 0349EC 004349EC 8CE20000 */  lw          $v0, 0x0($a3)
/* 0349F0 004349F0 8FA8002C */  lw          $t0, 0x2C($sp)
/* 0349F4 004349F4 8C580008 */  lw          $t8, 0x8($v0)
/* 0349F8 004349F8 54B80005 */  bnel        $a1, $t8, .L00434A10
/* 0349FC 004349FC 8CA90004 */   lw         $t1, 0x4($a1)
/* 034A00 00434A00 8FB9002C */  lw          $t9, 0x2C($sp)
/* 034A04 00434A04 10000003 */  b           .L00434A14
/* 034A08 00434A08 AC590008 */   sw         $t9, 0x8($v0)
/* 034A0C 00434A0C 8CA90004 */  lw          $t1, 0x4($a1)
.L00434A10:
/* 034A10 00434A10 AD280008 */  sw          $t0, 0x8($t1)
.L00434A14:
/* 034A14 00434A14 8CAA0004 */  lw          $t2, 0x4($a1)
/* 034A18 00434A18 8FAB002C */  lw          $t3, 0x2C($sp)
/* 034A1C 00434A1C AD6A0004 */  sw          $t2, 0x4($t3)
/* 034A20 00434A20 8FAC002C */  lw          $t4, 0x2C($sp)
/* 034A24 00434A24 ACAC0004 */  sw          $t4, 0x4($a1)
/* 034A28 00434A28 8FAD002C */  lw          $t5, 0x2C($sp)
/* 034A2C 00434A2C 1000002D */  b           .L00434AE4
/* 034A30 00434A30 ADA50008 */   sw         $a1, 0x8($t5)
.L00434A34:
/* 034A34 00434A34 8CAE0008 */  lw          $t6, 0x8($a1)
/* 034A38 00434A38 AFAE002C */  sw          $t6, 0x2C($sp)
/* 034A3C 00434A3C 8CE20000 */  lw          $v0, 0x0($a3)
/* 034A40 00434A40 54A20004 */  bnel        $a1, $v0, .L00434A54
/* 034A44 00434A44 8CAF0004 */   lw         $t7, 0x4($a1)
/* 034A48 00434A48 10000004 */  b           .L00434A5C
/* 034A4C 00434A4C AFA2002C */   sw         $v0, 0x2C($sp)
/* 034A50 00434A50 8CAF0004 */  lw          $t7, 0x4($a1)
.L00434A54:
/* 034A54 00434A54 8CB80008 */  lw          $t8, 0x8($a1)
/* 034A58 00434A58 AF0F0004 */  sw          $t7, 0x4($t8)
.L00434A5C:
/* 034A5C 00434A5C 8CA20004 */  lw          $v0, 0x4($a1)
/* 034A60 00434A60 50400005 */  beql        $v0, $zero, .L00434A78
/* 034A64 00434A64 8CA80008 */   lw         $t0, 0x8($a1)
/* 034A68 00434A68 8CB90008 */  lw          $t9, 0x8($a1)
/* 034A6C 00434A6C 1000001D */  b           .L00434AE4
/* 034A70 00434A70 AC590008 */   sw         $t9, 0x8($v0)
/* 034A74 00434A74 8CA80008 */  lw          $t0, 0x8($a1)
.L00434A78:
/* 034A78 00434A78 8CE90000 */  lw          $t1, 0x0($a3)
/* 034A7C 00434A7C 10000019 */  b           .L00434AE4
/* 034A80 00434A80 AD280008 */   sw         $t0, 0x8($t1)
.L00434A84:
/* 034A84 00434A84 8CEA0000 */  lw          $t2, 0x0($a3)
/* 034A88 00434A88 8FAB002C */  lw          $t3, 0x2C($sp)
/* 034A8C 00434A8C 8FAC002C */  lw          $t4, 0x2C($sp)
/* 034A90 00434A90 54AA0004 */  bnel        $a1, $t2, .L00434AA4
/* 034A94 00434A94 8CAD0008 */   lw         $t5, 0x8($a1)
/* 034A98 00434A98 10000003 */  b           .L00434AA8
/* 034A9C 00434A9C ACEB0000 */   sw         $t3, 0x0($a3)
/* 034AA0 00434AA0 8CAD0008 */  lw          $t5, 0x8($a1)
.L00434AA4:
/* 034AA4 00434AA4 ADAC0004 */  sw          $t4, 0x4($t5)
.L00434AA8:
/* 034AA8 00434AA8 8CA20004 */  lw          $v0, 0x4($a1)
/* 034AAC 00434AAC 8FAE002C */  lw          $t6, 0x2C($sp)
/* 034AB0 00434AB0 8FAF002C */  lw          $t7, 0x2C($sp)
/* 034AB4 00434AB4 50400004 */  beql        $v0, $zero, .L00434AC8
/* 034AB8 00434AB8 8CF80000 */   lw         $t8, 0x0($a3)
/* 034ABC 00434ABC 10000003 */  b           .L00434ACC
/* 034AC0 00434AC0 AC4E0008 */   sw         $t6, 0x8($v0)
/* 034AC4 00434AC4 8CF80000 */  lw          $t8, 0x0($a3)
.L00434AC8:
/* 034AC8 00434AC8 AF0F0008 */  sw          $t7, 0x8($t8)
.L00434ACC:
/* 034ACC 00434ACC 8CB90008 */  lw          $t9, 0x8($a1)
/* 034AD0 00434AD0 8FA8002C */  lw          $t0, 0x2C($sp)
/* 034AD4 00434AD4 AD190008 */  sw          $t9, 0x8($t0)
/* 034AD8 00434AD8 8FAA002C */  lw          $t2, 0x2C($sp)
/* 034ADC 00434ADC 8CA90004 */  lw          $t1, 0x4($a1)
/* 034AE0 00434AE0 AD490004 */  sw          $t1, 0x4($t2)
.L00434AE4:
/* 034AE4 00434AE4 27A2002C */  addiu       $v0, $sp, 0x2C
.L00434AE8:
/* 034AE8 00434AE8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 034AEC 00434AEC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 034AF0 00434AF0 03E00008 */  jr          $ra
/* 034AF4 00434AF4 00000000 */   nop
