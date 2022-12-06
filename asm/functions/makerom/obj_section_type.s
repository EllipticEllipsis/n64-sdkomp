glabel obj_section_type # 564
/* 035614 00435614 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 035618 00435618 279CD74C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDD74C
/* 03561C 0043561C 0399E021 */  addu        $gp, $gp, $t9
/* 035620 00435620 8F99851C */  lw          $t9, %call16(foreach_obj)($gp)
/* 035624 00435624 00A03025 */  move        $a2, $a1
/* 035628 00435628 8F858020 */  lw          $a1, %got(check_obj_sections)($gp)
/* 03562C 0043562C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 035630 00435630 AFBF001C */  sw          $ra, 0x1C($sp)
/* 035634 00435634 AFBC0018 */  sw          $gp, 0x18($sp)
/* 035638 00435638 0320F809 */  jalr        $t9
/* 03563C 0043563C 24A555A0 */   addiu      $a1, $a1, %lo(check_obj_sections)
/* 035640 00435640 2401FFFF */  addiu       $at, $zero, -0x1
/* 035644 00435644 10410003 */  beq         $v0, $at, .L00435654
/* 035648 00435648 8FBC0018 */   lw         $gp, 0x18($sp)
/* 03564C 0043564C 10000003 */  b           .L0043565C
/* 035650 00435650 8FBF001C */   lw         $ra, 0x1C($sp)
.L00435654:
/* 035654 00435654 00001025 */  move        $v0, $zero
/* 035658 00435658 8FBF001C */  lw          $ra, 0x1C($sp)
.L0043565C:
/* 03565C 0043565C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 035660 00435660 03E00008 */  jr          $ra
/* 035664 00435664 00000000 */   nop
/* 035668 00435668 00000000 */  nop
/* 03566C 0043566C 00000000 */  nop
