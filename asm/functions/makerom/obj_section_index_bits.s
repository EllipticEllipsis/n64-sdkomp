glabel obj_section_index_bits # 453
/* 0301C4 004301C4 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 0301C8 004301C8 279C2B9C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE2B9C
/* 0301CC 004301CC 0399E021 */  addu        $gp, $gp, $t9
/* 0301D0 004301D0 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 0301D4 004301D4 8F998438 */  lw          $t9, %call16(obj_section)($gp)
/* 0301D8 004301D8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0301DC 004301DC AFA40048 */  sw          $a0, 0x48($sp)
/* 0301E0 004301E0 00A03025 */  move        $a2, $a1
/* 0301E4 004301E4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0301E8 004301E8 8FA50048 */  lw          $a1, 0x48($sp)
/* 0301EC 004301EC 0320F809 */  jalr        $t9
/* 0301F0 004301F0 27A40020 */   addiu      $a0, $sp, 0x20
/* 0301F4 004301F4 8FAF0048 */  lw          $t7, 0x48($sp)
/* 0301F8 004301F8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0301FC 004301FC 8FAE0030 */  lw          $t6, 0x30($sp)
/* 030200 00430200 8DF800C4 */  lw          $t8, 0xC4($t7)
/* 030204 00430204 8FBC0018 */  lw          $gp, 0x18($sp)
/* 030208 00430208 27BD0048 */  addiu       $sp, $sp, 0x48
/* 03020C 0043020C 03E00008 */  jr          $ra
/* 030210 00430210 01D81021 */   addu       $v0, $t6, $t8
