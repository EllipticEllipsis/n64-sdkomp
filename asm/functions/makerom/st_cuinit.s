.section .rodata
glabel STR_10008FD0
/* 048FD0 10008FD0 */ .asciz "st_cuinit: cannot allocate current chdr\n"
                      .balign 4


.section .text
glabel st_cuinit # 679
/* 041060 00441060 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 041064 00441064 279C1D00 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD1D00
/* 041068 00441068 0399E021 */  addu        $gp, $gp, $t9
/* 04106C 0044106C 8F9980D8 */  lw          $t9, %call16(calloc)($gp)
/* 041070 00441070 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 041074 00441074 AFBF001C */  sw          $ra, 0x1C($sp)
/* 041078 00441078 AFBC0018 */  sw          $gp, 0x18($sp)
/* 04107C 0044107C 240400BC */  addiu       $a0, $zero, 0xBC
/* 041080 00441080 0320F809 */  jalr        $t9
/* 041084 00441084 24050001 */   addiu      $a1, $zero, 0x1
/* 041088 00441088 8FBC0018 */  lw          $gp, 0x18($sp)
/* 04108C 0044108C 00401825 */  move        $v1, $v0
/* 041090 00441090 8F8587C8 */  lw          $a1, %got(st_pchdr)($gp)
/* 041094 00441094 14400008 */  bnez        $v0, .L004410B8
/* 041098 00441098 ACA20000 */   sw         $v0, 0x0($a1)
/* 04109C 0044109C 8F99861C */  lw          $t9, %call16(_md_st_error)($gp)
/* 0410A0 004410A0 8F848030 */  lw          $a0, %got(STR_10008FD0)($gp)
/* 0410A4 004410A4 0320F809 */  jalr        $t9
/* 0410A8 004410A8 24848FD0 */   addiu      $a0, $a0, %lo(STR_10008FD0)
/* 0410AC 004410AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0410B0 004410B0 8F8587C8 */  lw          $a1, %got(st_pchdr)($gp)
/* 0410B4 004410B4 8CA30000 */  lw          $v1, 0x0($a1)
.L004410B8:
/* 0410B8 004410B8 240E0002 */  addiu       $t6, $zero, 0x2
/* 0410BC 004410BC AC6E003C */  sw          $t6, 0x3C($v1)
/* 0410C0 004410C0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0410C4 004410C4 8CA20000 */  lw          $v0, 0x0($a1)
/* 0410C8 004410C8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0410CC 004410CC 03E00008 */  jr          $ra
/* 0410D0 004410D0 00000000 */   nop
