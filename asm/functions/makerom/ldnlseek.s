glabel ldnlseek # 223
/* 02A4A4 0042A4A4 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A4A8 0042A4A8 279C88BC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE88BC
/* 02A4AC 0042A4AC 0399E021 */  addu        $gp, $gp, $t9
/* 02A4B0 0042A4B0 8F99825C */  lw          $t9, %call16(ldlseek)($gp)
/* 02A4B4 0042A4B4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A4B8 0042A4B8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A4BC 0042A4BC AFA50024 */  sw          $a1, 0x24($sp)
/* 02A4C0 0042A4C0 00002825 */  move        $a1, $zero
/* 02A4C4 0042A4C4 0320F809 */  jalr        $t9
/* 02A4C8 0042A4C8 AFBC0018 */   sw         $gp, 0x18($sp)
/* 02A4CC 0042A4CC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A4D0 0042A4D0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A4D4 0042A4D4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A4D8 0042A4D8 03E00008 */  jr          $ra
/* 02A4DC 0042A4DC 00000000 */   nop
