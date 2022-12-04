glabel allocldptr # 204
/* 0292B4 004292B4 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 0292B8 004292B8 279C9AAC */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE9AAC
/* 0292BC 004292BC 0399E021 */  addu        $gp, $gp, $t9
/* 0292C0 004292C0 8F9980D8 */  lw          $t9, %call16(calloc)($gp)
/* 0292C4 004292C4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0292C8 004292C8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0292CC 004292CC AFBC0018 */  sw          $gp, 0x18($sp)
/* 0292D0 004292D0 24040001 */  addiu       $a0, $zero, 0x1
/* 0292D4 004292D4 0320F809 */  jalr        $t9
/* 0292D8 004292D8 2405005C */   addiu      $a1, $zero, 0x5C
/* 0292DC 004292DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0292E0 004292E0 10400007 */  beqz        $v0, .L00429300
/* 0292E4 004292E4 00401825 */   move       $v1, $v0
/* 0292E8 004292E8 8F848030 */  lw          $a0, %got(D_1000AB3C)($gp)
/* 0292EC 004292EC 8F818030 */  lw          $at, %got(D_1000AB3C)($gp)
/* 0292F0 004292F0 8C84AB3C */  lw          $a0, %lo(D_1000AB3C)($a0)
/* 0292F4 004292F4 24840001 */  addiu       $a0, $a0, 0x1
/* 0292F8 004292F8 AC440000 */  sw          $a0, 0x0($v0)
/* 0292FC 004292FC AC24AB3C */  sw          $a0, %lo(D_1000AB3C)($at)
.L00429300:
/* 029300 00429300 8FBF001C */  lw          $ra, 0x1C($sp)
/* 029304 00429304 27BD0020 */  addiu       $sp, $sp, 0x20
/* 029308 00429308 00601025 */  move        $v0, $v1
/* 02930C 0042930C 03E00008 */  jr          $ra
/* 029310 00429310 00000000 */   nop
