glabel st_setfd # 651
/* 03F3CC 0043F3CC 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03F3D0 0043F3D0 279C3994 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD3994
/* 03F3D4 0043F3D4 0399E021 */  addu        $gp, $gp, $t9
/* 03F3D8 0043F3D8 8F8E87C8 */  lw          $t6, %got(st_pchdr)($gp)
/* 03F3DC 0043F3DC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03F3E0 0043F3E0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 03F3E4 0043F3E4 8DCE0000 */  lw          $t6, 0x0($t6)
/* 03F3E8 0043F3E8 AFBC0018 */  sw          $gp, 0x18($sp)
/* 03F3EC 0043F3EC AFA40020 */  sw          $a0, 0x20($sp)
/* 03F3F0 0043F3F0 8DC20004 */  lw          $v0, 0x4($t6)
/* 03F3F4 0043F3F4 5440000A */  bnel        $v0, $zero, .L0043F420
/* 03F3F8 0043F3F8 8FB80020 */   lw         $t8, 0x20($sp)
/* 03F3FC 0043F3FC 8F99863C */  lw          $t9, %call16(st_internal)($gp)
/* 03F400 0043F400 8F848030 */  lw          $a0, %got(D_1000AB80)($gp)
/* 03F404 0043F404 0320F809 */  jalr        $t9
/* 03F408 0043F408 2484AB80 */   addiu      $a0, $a0, %lo(D_1000AB80)
/* 03F40C 0043F40C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 03F410 0043F410 8F8F87C8 */  lw          $t7, %got(st_pchdr)($gp)
/* 03F414 0043F414 8DEF0000 */  lw          $t7, 0x0($t7)
/* 03F418 0043F418 8DE20004 */  lw          $v0, 0x4($t7)
/* 03F41C 0043F41C 8FB80020 */  lw          $t8, 0x20($sp)
.L0043F420:
/* 03F420 0043F420 8FBF001C */  lw          $ra, 0x1C($sp)
/* 03F424 0043F424 8F8187CC */  lw          $at, %got(pcfdcur)($gp)
/* 03F428 0043F428 0018C980 */  sll         $t9, $t8, 6
/* 03F42C 0043F42C 00594021 */  addu        $t0, $v0, $t9
/* 03F430 0043F430 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03F434 0043F434 03E00008 */  jr          $ra
/* 03F438 0043F438 AC280000 */   sw         $t0, 0x0($at)
