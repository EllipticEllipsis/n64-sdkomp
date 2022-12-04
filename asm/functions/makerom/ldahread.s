glabel ldahread # 234
/* 02AC1C 0042AC1C 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02AC20 0042AC20 279C8144 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE8144
/* 02AC24 0042AC24 0399E021 */  addu        $gp, $gp, $t9
/* 02AC28 0042AC28 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02AC2C 0042AC2C AFA40020 */  sw          $a0, 0x20($sp)
/* 02AC30 0042AC30 8F99810C */  lw          $t9, %call16(memcpy)($gp)
/* 02AC34 0042AC34 00A02025 */  move        $a0, $a1
/* 02AC38 0042AC38 8FA50020 */  lw          $a1, 0x20($sp)
/* 02AC3C 0042AC3C AFBF001C */  sw          $ra, 0x1C($sp)
/* 02AC40 0042AC40 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02AC44 0042AC44 24060024 */  addiu       $a2, $zero, 0x24
/* 02AC48 0042AC48 0320F809 */  jalr        $t9
/* 02AC4C 0042AC4C 24A50038 */   addiu      $a1, $a1, 0x38
/* 02AC50 0042AC50 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02AC54 0042AC54 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02AC58 0042AC58 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02AC5C 0042AC5C 03E00008 */  jr          $ra
/* 02AC60 0042AC60 24020001 */   addiu      $v0, $zero, 0x1
