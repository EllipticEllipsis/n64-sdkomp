glabel __sgi_mld_st_commonbegin # 686
/* 041640 00441640 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 041644 00441644 279C1720 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD1720
/* 041648 00441648 0399E021 */  addu        $gp, $gp, $t9
/* 04164C 0044164C 8F998640 */  lw          $t9, %call16(st_filebegin)($gp)
/* 041650 00441650 8F818708 */  lw          $at, %got(__sgi_common_dummy_file)($gp)
/* 041654 00441654 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 041658 00441658 AFBF001C */  sw          $ra, 0x1C($sp)
/* 04165C 0044165C 240E0001 */  addiu       $t6, $zero, 0x1
/* 041660 00441660 AFBC0018 */  sw          $gp, 0x18($sp)
/* 041664 00441664 0320F809 */  jalr        $t9
/* 041668 00441668 AC2E0000 */   sw         $t6, 0x0($at)
/* 04166C 0044166C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 041670 00441670 8FBF001C */  lw          $ra, 0x1C($sp)
/* 041674 00441674 8F818708 */  lw          $at, %got(__sgi_common_dummy_file)($gp)
/* 041678 00441678 27BD0020 */  addiu       $sp, $sp, 0x20
/* 04167C 0044167C 03E00008 */  jr          $ra
/* 041680 00441680 AC200000 */   sw         $zero, 0x0($at)
