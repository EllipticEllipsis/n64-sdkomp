glabel obj_section_offset # 456
/* 030284 00430284 8C82008C */  lw          $v0, 0x8C($a0)
/* 030288 00430288 24010002 */  addiu       $at, $zero, 0x2
/* 03028C 0043028C 54410004 */  bnel        $v0, $at, .L004302A0
/* 030290 00430290 24010003 */   addiu      $at, $zero, 0x3
/* 030294 00430294 03E00008 */  jr          $ra
/* 030298 00430298 8CA20014 */   lw         $v0, 0x14($a1)
/* 03029C 0043029C 24010003 */  addiu       $at, $zero, 0x3
.L004302A0:
/* 0302A0 004302A0 54410004 */  bnel        $v0, $at, .L004302B4
/* 0302A4 004302A4 00001025 */   move       $v0, $zero
/* 0302A8 004302A8 03E00008 */  jr          $ra
/* 0302AC 004302AC 8CA20010 */   lw         $v0, 0x10($a1)
/* 0302B0 004302B0 00001025 */  move        $v0, $zero
.L004302B4:
/* 0302B4 004302B4 03E00008 */  jr          $ra
/* 0302B8 004302B8 00000000 */   nop
