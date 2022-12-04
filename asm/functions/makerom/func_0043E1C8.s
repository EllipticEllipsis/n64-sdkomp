.section .late_rodata
glabel jtbl_10008960
/* 048960 10008960 F042B570 */ .gpword .L0043E2D0
/* 048964 10008964 F042B570 */ .gpword .L0043E2D0
/* 048968 10008968 F042B570 */ .gpword .L0043E2D0
/* 04896C 1000896C F042B570 */ .gpword .L0043E2D0
/* 048970 10008970 F042B5D8 */ .gpword .L0043E338
/* 048974 10008974 F042B5B8 */ .gpword .L0043E318
/* 048978 10008978 F042B684 */ .gpword .L0043E3E4
/* 04897C 1000897C F042B684 */ .gpword .L0043E3E4
/* 048980 10008980 F042B598 */ .gpword .L0043E2F8


.section .text
glabel func_0043E1C8 # 633
/* 03E1C8 0043E1C8 3C1C0FBD */  lui         $gp, %hi(_gp_disp)
/* 03E1CC 0043E1CC 279C4B98 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBD4B98
/* 03E1D0 0043E1D0 0399E021 */  addu        $gp, $gp, $t9
/* 03E1D4 0043E1D4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 03E1D8 0043E1D8 8F998024 */  lw          $t9, %got(func_0043DBB0)($gp)
/* 03E1DC 0043E1DC AFB00018 */  sw          $s0, 0x18($sp)
/* 03E1E0 0043E1E0 00A08025 */  move        $s0, $a1
/* 03E1E4 0043E1E4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03E1E8 0043E1E8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 03E1EC 0043E1EC AFB1001C */  sw          $s1, 0x1C($sp)
/* 03E1F0 0043E1F0 2739DBB0 */  addiu       $t9, $t9, %lo(func_0043DBB0)
/* 03E1F4 0043E1F4 00808825 */  move        $s1, $a0
/* 03E1F8 0043E1F8 0320F809 */  jalr        $t9
/* 03E1FC 0043E1FC 8E060028 */   lw         $a2, 0x28($s0)
/* 03E200 0043E200 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E204 0043E204 8C460000 */  lw          $a2, 0x0($v0)
/* 03E208 0043E208 27A4002C */  addiu       $a0, $sp, 0x2C
/* 03E20C 0043E20C 8F998024 */  lw          $t9, %got(func_0043DD14)($gp)
/* 03E210 0043E210 02202825 */  move        $a1, $s1
/* 03E214 0043E214 00003825 */  move        $a3, $zero
/* 03E218 0043E218 2739DD14 */  addiu       $t9, $t9, %lo(func_0043DD14)
/* 03E21C 0043E21C 0320F809 */  jalr        $t9
/* 03E220 0043E220 AFA60008 */   sw         $a2, 0x8($sp)
/* 03E224 0043E224 27B8002C */  addiu       $t8, $sp, 0x2C
/* 03E228 0043E228 8F080000 */  lw          $t0, 0x0($t8)
/* 03E22C 0043E22C 8E090028 */  lw          $t1, 0x28($s0)
/* 03E230 0043E230 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E234 0043E234 000867C2 */  srl         $t4, $t0, 31
/* 03E238 0043E238 252A0001 */  addiu       $t2, $t1, 0x1
/* 03E23C 0043E23C AE0A0028 */  sw          $t2, 0x28($s0)
/* 03E240 0043E240 11800016 */  beqz        $t4, .L0043E29C
/* 03E244 0043E244 AE08000C */   sw         $t0, 0xC($s0)
/* 03E248 0043E248 8F998024 */  lw          $t9, %got(func_0043DBB0)($gp)
/* 03E24C 0043E24C 02202025 */  move        $a0, $s1
/* 03E250 0043E250 02002825 */  move        $a1, $s0
/* 03E254 0043E254 2739DBB0 */  addiu       $t9, $t9, %lo(func_0043DBB0)
/* 03E258 0043E258 0320F809 */  jalr        $t9
/* 03E25C 0043E25C 01403025 */   move       $a2, $t2
/* 03E260 0043E260 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E264 0043E264 8C460000 */  lw          $a2, 0x0($v0)
/* 03E268 0043E268 27A4002C */  addiu       $a0, $sp, 0x2C
/* 03E26C 0043E26C 8F998024 */  lw          $t9, %got(func_0043DD14)($gp)
/* 03E270 0043E270 02202825 */  move        $a1, $s1
/* 03E274 0043E274 24070004 */  addiu       $a3, $zero, 0x4
/* 03E278 0043E278 2739DD14 */  addiu       $t9, $t9, %lo(func_0043DD14)
/* 03E27C 0043E27C 0320F809 */  jalr        $t9
/* 03E280 0043E280 AFA60008 */   sw         $a2, 0x8($sp)
/* 03E284 0043E284 8E180028 */  lw          $t8, 0x28($s0)
/* 03E288 0043E288 8FAF002C */  lw          $t7, 0x2C($sp)
/* 03E28C 0043E28C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E290 0043E290 27190001 */  addiu       $t9, $t8, 0x1
/* 03E294 0043E294 AE190028 */  sw          $t9, 0x28($s0)
/* 03E298 0043E298 AE0F0040 */  sw          $t7, 0x40($s0)
.L0043E29C:
/* 03E29C 0043E29C 9208000C */  lbu         $t0, 0xC($s0)
/* 03E2A0 0043E2A0 3109003F */  andi        $t1, $t0, 0x3F
/* 03E2A4 0043E2A4 252AFFF4 */  addiu       $t2, $t1, -0xC
/* 03E2A8 0043E2A8 2D410009 */  sltiu       $at, $t2, 0x9
/* 03E2AC 0043E2AC 5020004E */  beql        $at, $zero, .L0043E3E8
/* 03E2B0 0043E2B0 8FBF0024 */   lw         $ra, 0x24($sp)
/* 03E2B4 0043E2B4 8F818030 */  lw          $at, %got(jtbl_10008960)($gp)
/* 03E2B8 0043E2B8 000A5080 */  sll         $t2, $t2, 2
/* 03E2BC 0043E2BC 002A0821 */  addu        $at, $at, $t2
/* 03E2C0 0043E2C0 8C2A8960 */  lw          $t2, %lo(jtbl_10008960)($at)
/* 03E2C4 0043E2C4 015C5021 */  addu        $t2, $t2, $gp
/* 03E2C8 0043E2C8 01400008 */  jr          $t2
/* 03E2CC 0043E2CC 00000000 */   nop
.L0043E2D0:
/* 03E2D0 0043E2D0 8F998024 */  lw          $t9, %got(func_0043DDCC)($gp)
/* 03E2D4 0043E2D4 02202025 */  move        $a0, $s1
/* 03E2D8 0043E2D8 02002825 */  move        $a1, $s0
/* 03E2DC 0043E2DC 2739DDCC */  addiu       $t9, $t9, %lo(func_0043DDCC)
/* 03E2E0 0043E2E0 0320F809 */  jalr        $t9
/* 03E2E4 0043E2E4 00003025 */   move       $a2, $zero
/* 03E2E8 0043E2E8 8E0B0030 */  lw          $t3, 0x30($s0)
/* 03E2EC 0043E2EC 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E2F0 0043E2F0 1000003C */  b           .L0043E3E4
/* 03E2F4 0043E2F4 AE0B0014 */   sw         $t3, 0x14($s0)
.L0043E2F8:
/* 03E2F8 0043E2F8 8F998024 */  lw          $t9, %got(func_0043DDCC)($gp)
/* 03E2FC 0043E2FC 02202025 */  move        $a0, $s1
/* 03E300 0043E300 02002825 */  move        $a1, $s0
/* 03E304 0043E304 2739DDCC */  addiu       $t9, $t9, %lo(func_0043DDCC)
/* 03E308 0043E308 0320F809 */  jalr        $t9
/* 03E30C 0043E30C 24060001 */   addiu      $a2, $zero, 0x1
/* 03E310 0043E310 10000034 */  b           .L0043E3E4
/* 03E314 0043E314 8FBC0020 */   lw         $gp, 0x20($sp)
.L0043E318:
/* 03E318 0043E318 8F998024 */  lw          $t9, %got(func_0043DDCC)($gp)
/* 03E31C 0043E31C 02202025 */  move        $a0, $s1
/* 03E320 0043E320 02002825 */  move        $a1, $s0
/* 03E324 0043E324 2739DDCC */  addiu       $t9, $t9, %lo(func_0043DDCC)
/* 03E328 0043E328 0320F809 */  jalr        $t9
/* 03E32C 0043E32C 24060001 */   addiu      $a2, $zero, 0x1
/* 03E330 0043E330 1000002C */  b           .L0043E3E4
/* 03E334 0043E334 8FBC0020 */   lw         $gp, 0x20($sp)
.L0043E338:
/* 03E338 0043E338 8F998024 */  lw          $t9, %got(func_0043DDCC)($gp)
/* 03E33C 0043E33C 02202025 */  move        $a0, $s1
/* 03E340 0043E340 02002825 */  move        $a1, $s0
/* 03E344 0043E344 2739DDCC */  addiu       $t9, $t9, %lo(func_0043DDCC)
/* 03E348 0043E348 0320F809 */  jalr        $t9
/* 03E34C 0043E34C 24060001 */   addiu      $a2, $zero, 0x1
/* 03E350 0043E350 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E354 0043E354 02202025 */  move        $a0, $s1
/* 03E358 0043E358 02002825 */  move        $a1, $s0
/* 03E35C 0043E35C 8F998024 */  lw          $t9, %got(func_0043DBB0)($gp)
/* 03E360 0043E360 8E060028 */  lw          $a2, 0x28($s0)
/* 03E364 0043E364 2739DBB0 */  addiu       $t9, $t9, %lo(func_0043DBB0)
/* 03E368 0043E368 0320F809 */  jalr        $t9
/* 03E36C 0043E36C 00000000 */   nop
/* 03E370 0043E370 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E374 0043E374 8C460000 */  lw          $a2, 0x0($v0)
/* 03E378 0043E378 244E0004 */  addiu       $t6, $v0, 0x4
/* 03E37C 0043E37C 8F998024 */  lw          $t9, %got(func_0043DD14)($gp)
/* 03E380 0043E380 AFAE003C */  sw          $t6, 0x3C($sp)
/* 03E384 0043E384 27A4002C */  addiu       $a0, $sp, 0x2C
/* 03E388 0043E388 2739DD14 */  addiu       $t9, $t9, %lo(func_0043DD14)
/* 03E38C 0043E38C 02202825 */  move        $a1, $s1
/* 03E390 0043E390 24070004 */  addiu       $a3, $zero, 0x4
/* 03E394 0043E394 0320F809 */  jalr        $t9
/* 03E398 0043E398 AFA60008 */   sw         $a2, 0x8($sp)
/* 03E39C 0043E39C 8FAF002C */  lw          $t7, 0x2C($sp)
/* 03E3A0 0043E3A0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E3A4 0043E3A4 27A4002C */  addiu       $a0, $sp, 0x2C
/* 03E3A8 0043E3A8 AE0F001C */  sw          $t7, 0x1C($s0)
/* 03E3AC 0043E3AC 8FB8003C */  lw          $t8, 0x3C($sp)
/* 03E3B0 0043E3B0 8F998024 */  lw          $t9, %got(func_0043DD14)($gp)
/* 03E3B4 0043E3B4 02202825 */  move        $a1, $s1
/* 03E3B8 0043E3B8 8F060000 */  lw          $a2, 0x0($t8)
/* 03E3BC 0043E3BC 2739DD14 */  addiu       $t9, $t9, %lo(func_0043DD14)
/* 03E3C0 0043E3C0 24070004 */  addiu       $a3, $zero, 0x4
/* 03E3C4 0043E3C4 0320F809 */  jalr        $t9
/* 03E3C8 0043E3C8 AFA60008 */   sw         $a2, 0x8($sp)
/* 03E3CC 0043E3CC 8E0A0028 */  lw          $t2, 0x28($s0)
/* 03E3D0 0043E3D0 8FA9002C */  lw          $t1, 0x2C($sp)
/* 03E3D4 0043E3D4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 03E3D8 0043E3D8 254B0002 */  addiu       $t3, $t2, 0x2
/* 03E3DC 0043E3DC AE0B0028 */  sw          $t3, 0x28($s0)
/* 03E3E0 0043E3E0 AE090020 */  sw          $t1, 0x20($s0)
.L0043E3E4:
/* 03E3E4 0043E3E4 8FBF0024 */  lw          $ra, 0x24($sp)
.L0043E3E8:
/* 03E3E8 0043E3E8 8FB00018 */  lw          $s0, 0x18($sp)
/* 03E3EC 0043E3EC 8FB1001C */  lw          $s1, 0x1C($sp)
/* 03E3F0 0043E3F0 03E00008 */  jr          $ra
/* 03E3F4 0043E3F4 27BD0040 */   addiu      $sp, $sp, 0x40
