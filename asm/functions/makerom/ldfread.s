glabel ldfread # 221
/* 02A3C4 0042A3C4 3C1C0FBF */  lui         $gp, %hi(_gp_disp)
/* 02A3C8 0042A3C8 279C899C */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE899C
/* 02A3CC 0042A3CC 0399E021 */  addu        $gp, $gp, $t9
/* 02A3D0 0042A3D0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02A3D4 0042A3D4 AFA5002C */  sw          $a1, 0x2C($sp)
/* 02A3D8 0042A3D8 8FB8002C */  lw          $t8, 0x2C($sp)
/* 02A3DC 0042A3DC AFBF001C */  sw          $ra, 0x1C($sp)
/* 02A3E0 0042A3E0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 02A3E4 0042A3E4 03060019 */  multu       $t8, $a2
/* 02A3E8 0042A3E8 AFA60030 */  sw          $a2, 0x30($sp)
/* 02A3EC 0042A3EC AFA70034 */  sw          $a3, 0x34($sp)
/* 02A3F0 0042A3F0 8CEF0004 */  lw          $t7, 0x4($a3)
/* 02A3F4 0042A3F4 8F99810C */  lw          $t9, %call16(memcpy)($gp)
/* 02A3F8 0042A3F8 8DE50004 */  lw          $a1, 0x4($t7)
/* 02A3FC 0042A3FC 00004012 */  mflo        $t0
/* 02A400 0042A400 01003025 */  move        $a2, $t0
/* 02A404 0042A404 0320F809 */  jalr        $t9
/* 02A408 0042A408 AFA80024 */   sw         $t0, 0x24($sp)
/* 02A40C 0042A40C 8FA90034 */  lw          $t1, 0x34($sp)
/* 02A410 0042A410 8FA80024 */  lw          $t0, 0x24($sp)
/* 02A414 0042A414 8FBC0018 */  lw          $gp, 0x18($sp)
/* 02A418 0042A418 8D230004 */  lw          $v1, 0x4($t1)
/* 02A41C 0042A41C 8C6A0004 */  lw          $t2, 0x4($v1)
/* 02A420 0042A420 01485821 */  addu        $t3, $t2, $t0
/* 02A424 0042A424 AC6B0004 */  sw          $t3, 0x4($v1)
/* 02A428 0042A428 8FBF001C */  lw          $ra, 0x1C($sp)
/* 02A42C 0042A42C 8FA20030 */  lw          $v0, 0x30($sp)
/* 02A430 0042A430 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02A434 0042A434 03E00008 */  jr          $ra
/* 02A438 0042A438 00000000 */   nop
