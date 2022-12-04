.section .rodata
glabel STR_100080B8
/* 0480B8 100080B8 */ .asciz ".dynamic"
                      .balign 4

glabel STR_100080C4
/* 0480C4 100080C4 */ .asciz "obj_rewrite:write_section:write failed"
                      .balign 4

glabel STR_100080EC
/* 0480EC 100080EC */ .asciz "shnamestr"
                      .balign 4

glabel STR_100080F8
/* 0480F8 100080F8 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008108
/* 048108 10008108 */ .asciz ".dynamic"
                      .balign 4

glabel STR_10008114
/* 048114 10008114 */ .asciz "obj_rewrite:write_section:write failed"
                      .balign 4


.section .text
glabel func_0043795C # 574
/* 03795C 0043795C 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 037960 00437960 279CB404 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBDB404
/* 037964 00437964 0399E021 */  addu        $gp, $gp, $t9
/* 037968 00437968 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03796C 0043796C 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 037970 00437970 AFBF001C */  sw          $ra, 0x1C($sp)
/* 037974 00437974 AFB00014 */  sw          $s0, 0x14($sp)
/* 037978 00437978 00A08025 */  move        $s0, $a1
/* 03797C 0043797C AFBC0018 */  sw          $gp, 0x18($sp)
/* 037980 00437980 AFA40038 */  sw          $a0, 0x38($sp)
/* 037984 00437984 0320F809 */  jalr        $t9
/* 037988 00437988 AFA60040 */   sw         $a2, 0x40($sp)
/* 03798C 0043798C 24010002 */  addiu       $at, $zero, 0x2
/* 037990 00437990 14410046 */  bne         $v0, $at, .L00437AAC
/* 037994 00437994 8FBC0018 */   lw         $gp, 0x18($sp)
/* 037998 00437998 8F99814C */  lw          $t9, %call16(strncmp)($gp)
/* 03799C 0043799C 8F858030 */  lw          $a1, %got(STR_100080B8)($gp)
/* 0379A0 004379A0 02002025 */  move        $a0, $s0
/* 0379A4 004379A4 24060008 */  addiu       $a2, $zero, 0x8
/* 0379A8 004379A8 0320F809 */  jalr        $t9
/* 0379AC 004379AC 24A580B8 */   addiu      $a1, $a1, %lo(STR_100080B8)
/* 0379B0 004379B0 1440000D */  bnez        $v0, .L004379E8
/* 0379B4 004379B4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 0379B8 004379B8 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 0379BC 004379BC 8FA40038 */  lw          $a0, 0x38($sp)
/* 0379C0 004379C0 8E05000C */  lw          $a1, 0xC($s0)
/* 0379C4 004379C4 0320F809 */  jalr        $t9
/* 0379C8 004379C8 00000000 */   nop
/* 0379CC 004379CC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0379D0 004379D0 8FA40038 */  lw          $a0, 0x38($sp)
/* 0379D4 004379D4 00402825 */  move        $a1, $v0
/* 0379D8 004379D8 8F99854C */  lw          $t9, %call16(obj_update_dynamic)($gp)
/* 0379DC 004379DC 0320F809 */  jalr        $t9
/* 0379E0 004379E0 00000000 */   nop
/* 0379E4 004379E4 8FBC0018 */  lw          $gp, 0x18($sp)
.L004379E8:
/* 0379E8 004379E8 8E0E000C */  lw          $t6, 0xC($s0)
/* 0379EC 004379EC 11C0002D */  beqz        $t6, .L00437AA4
/* 0379F0 004379F0 00000000 */   nop
/* 0379F4 004379F4 8E0F0010 */  lw          $t7, 0x10($s0)
/* 0379F8 004379F8 11E0002A */  beqz        $t7, .L00437AA4
/* 0379FC 004379FC 00000000 */   nop
/* 037A00 00437A00 8F9983A0 */  lw          $t9, %call16(obj_bss_start)($gp)
/* 037A04 00437A04 8FA40038 */  lw          $a0, 0x38($sp)
/* 037A08 00437A08 0320F809 */  jalr        $t9
/* 037A0C 00437A0C 00000000 */   nop
/* 037A10 00437A10 8E18000C */  lw          $t8, 0xC($s0)
/* 037A14 00437A14 8E190010 */  lw          $t9, 0x10($s0)
/* 037A18 00437A18 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037A1C 00437A1C 03194021 */  addu        $t0, $t8, $t9
/* 037A20 00437A20 0102082B */  sltu        $at, $t0, $v0
/* 037A24 00437A24 1020001F */  beqz        $at, .L00437AA4
/* 037A28 00437A28 00000000 */   nop
/* 037A2C 00437A2C 8E050014 */  lw          $a1, 0x14($s0)
/* 037A30 00437A30 10A0001C */  beqz        $a1, .L00437AA4
/* 037A34 00437A34 00000000 */   nop
/* 037A38 00437A38 8F9980DC */  lw          $t9, %call16(lseek)($gp)
/* 037A3C 00437A3C 8FA40040 */  lw          $a0, 0x40($sp)
/* 037A40 00437A40 00003025 */  move        $a2, $zero
/* 037A44 00437A44 0320F809 */  jalr        $t9
/* 037A48 00437A48 00000000 */   nop
/* 037A4C 00437A4C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037A50 00437A50 8FA40038 */  lw          $a0, 0x38($sp)
/* 037A54 00437A54 8E05000C */  lw          $a1, 0xC($s0)
/* 037A58 00437A58 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 037A5C 00437A5C 0320F809 */  jalr        $t9
/* 037A60 00437A60 00000000 */   nop
/* 037A64 00437A64 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037A68 00437A68 8FA40040 */  lw          $a0, 0x40($sp)
/* 037A6C 00437A6C 00402825 */  move        $a1, $v0
/* 037A70 00437A70 8F99816C */  lw          $t9, %call16(write)($gp)
/* 037A74 00437A74 8E060010 */  lw          $a2, 0x10($s0)
/* 037A78 00437A78 0320F809 */  jalr        $t9
/* 037A7C 00437A7C 00000000 */   nop
/* 037A80 00437A80 8E090010 */  lw          $t1, 0x10($s0)
/* 037A84 00437A84 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037A88 00437A88 10490006 */  beq         $v0, $t1, .L00437AA4
/* 037A8C 00437A8C 00000000 */   nop
/* 037A90 00437A90 8F998638 */  lw          $t9, %call16(fatal)($gp)
/* 037A94 00437A94 8F848030 */  lw          $a0, %got(STR_100080C4)($gp)
/* 037A98 00437A98 0320F809 */  jalr        $t9
/* 037A9C 00437A9C 248480C4 */   addiu      $a0, $a0, %lo(STR_100080C4)
/* 037AA0 00437AA0 8FBC0018 */  lw          $gp, 0x18($sp)
.L00437AA4:
/* 037AA4 00437AA4 10000074 */  b           .L00437C78
/* 037AA8 00437AA8 2402FFFF */   addiu      $v0, $zero, -0x1
.L00437AAC:
/* 037AAC 00437AAC 8F9982B0 */  lw          $t9, %call16(obj_otype)($gp)
/* 037AB0 00437AB0 8FA40038 */  lw          $a0, 0x38($sp)
/* 037AB4 00437AB4 0320F809 */  jalr        $t9
/* 037AB8 00437AB8 00000000 */   nop
/* 037ABC 00437ABC 24010003 */  addiu       $at, $zero, 0x3
/* 037AC0 00437AC0 1441006D */  bne         $v0, $at, .L00437C78
/* 037AC4 00437AC4 8FBC0018 */   lw         $gp, 0x18($sp)
/* 037AC8 00437AC8 8F99842C */  lw          $t9, %call16(obj_pelfhdr)($gp)
/* 037ACC 00437ACC 8FA40038 */  lw          $a0, 0x38($sp)
/* 037AD0 00437AD0 0320F809 */  jalr        $t9
/* 037AD4 00437AD4 00000000 */   nop
/* 037AD8 00437AD8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037ADC 00437ADC AFA2002C */  sw          $v0, 0x2C($sp)
/* 037AE0 00437AE0 8FA40038 */  lw          $a0, 0x38($sp)
/* 037AE4 00437AE4 8F998434 */  lw          $t9, %call16(obj_psecthdr)($gp)
/* 037AE8 00437AE8 0320F809 */  jalr        $t9
/* 037AEC 00437AEC 00000000 */   nop
/* 037AF0 00437AF0 8FAA002C */  lw          $t2, 0x2C($sp)
/* 037AF4 00437AF4 8E0E0008 */  lw          $t6, 0x8($s0)
/* 037AF8 00437AF8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037AFC 00437AFC 954B0032 */  lhu         $t3, 0x32($t2)
/* 037B00 00437B00 31CF0002 */  andi        $t7, $t6, 0x2
/* 037B04 00437B04 000B6080 */  sll         $t4, $t3, 2
/* 037B08 00437B08 018B6021 */  addu        $t4, $t4, $t3
/* 037B0C 00437B0C 000C60C0 */  sll         $t4, $t4, 3
/* 037B10 00437B10 004C6821 */  addu        $t5, $v0, $t4
/* 037B14 00437B14 15E00003 */  bnez        $t7, .L00437B24
/* 037B18 00437B18 8DA3000C */   lw         $v1, 0xC($t5)
/* 037B1C 00437B1C 10000056 */  b           .L00437C78
/* 037B20 00437B20 2402FFFF */   addiu      $v0, $zero, -0x1
.L00437B24:
/* 037B24 00437B24 1460000A */  bnez        $v1, .L00437B50
/* 037B28 00437B28 2406009A */   addiu      $a2, $zero, 0x9A
/* 037B2C 00437B2C 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 037B30 00437B30 8F848030 */  lw          $a0, %got(STR_100080EC)($gp)
/* 037B34 00437B34 8F858030 */  lw          $a1, %got(STR_100080F8)($gp)
/* 037B38 00437B38 AFA30020 */  sw          $v1, 0x20($sp)
/* 037B3C 00437B3C 248480EC */  addiu       $a0, $a0, %lo(STR_100080EC)
/* 037B40 00437B40 0320F809 */  jalr        $t9
/* 037B44 00437B44 24A580F8 */   addiu      $a1, $a1, %lo(STR_100080F8)
/* 037B48 00437B48 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037B4C 00437B4C 8FA30020 */  lw          $v1, 0x20($sp)
.L00437B50:
/* 037B50 00437B50 8F9980AC */  lw          $t9, %call16(strcmp)($gp)
/* 037B54 00437B54 8E180000 */  lw          $t8, 0x0($s0)
/* 037B58 00437B58 8F858030 */  lw          $a1, %got(STR_10008108)($gp)
/* 037B5C 00437B5C 03032021 */  addu        $a0, $t8, $v1
/* 037B60 00437B60 0320F809 */  jalr        $t9
/* 037B64 00437B64 24A58108 */   addiu      $a1, $a1, %lo(STR_10008108)
/* 037B68 00437B68 1440000D */  bnez        $v0, .L00437BA0
/* 037B6C 00437B6C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 037B70 00437B70 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 037B74 00437B74 8FA40038 */  lw          $a0, 0x38($sp)
/* 037B78 00437B78 8E05000C */  lw          $a1, 0xC($s0)
/* 037B7C 00437B7C 0320F809 */  jalr        $t9
/* 037B80 00437B80 00000000 */   nop
/* 037B84 00437B84 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037B88 00437B88 8FA40038 */  lw          $a0, 0x38($sp)
/* 037B8C 00437B8C 00402825 */  move        $a1, $v0
/* 037B90 00437B90 8F99854C */  lw          $t9, %call16(obj_update_dynamic)($gp)
/* 037B94 00437B94 0320F809 */  jalr        $t9
/* 037B98 00437B98 00000000 */   nop
/* 037B9C 00437B9C 8FBC0018 */  lw          $gp, 0x18($sp)
.L00437BA0:
/* 037BA0 00437BA0 8F998550 */  lw          $t9, %call16(obj_vtofo)($gp)
/* 037BA4 00437BA4 8FA40038 */  lw          $a0, 0x38($sp)
/* 037BA8 00437BA8 8E05000C */  lw          $a1, 0xC($s0)
/* 037BAC 00437BAC 0320F809 */  jalr        $t9
/* 037BB0 00437BB0 00000000 */   nop
/* 037BB4 00437BB4 AFA20034 */  sw          $v0, 0x34($sp)
/* 037BB8 00437BB8 8E19000C */  lw          $t9, 0xC($s0)
/* 037BBC 00437BBC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037BC0 00437BC0 5320002B */  beql        $t9, $zero, .L00437C70
/* 037BC4 00437BC4 8FAD0034 */   lw         $t5, 0x34($sp)
/* 037BC8 00437BC8 8F9983A0 */  lw          $t9, %call16(obj_bss_start)($gp)
/* 037BCC 00437BCC 8FA40038 */  lw          $a0, 0x38($sp)
/* 037BD0 00437BD0 0320F809 */  jalr        $t9
/* 037BD4 00437BD4 00000000 */   nop
/* 037BD8 00437BD8 8E08000C */  lw          $t0, 0xC($s0)
/* 037BDC 00437BDC 8E090014 */  lw          $t1, 0x14($s0)
/* 037BE0 00437BE0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037BE4 00437BE4 01095021 */  addu        $t2, $t0, $t1
/* 037BE8 00437BE8 0142082B */  sltu        $at, $t2, $v0
/* 037BEC 00437BEC 50200020 */  beql        $at, $zero, .L00437C70
/* 037BF0 00437BF0 8FAD0034 */   lw         $t5, 0x34($sp)
/* 037BF4 00437BF4 8E0B0010 */  lw          $t3, 0x10($s0)
/* 037BF8 00437BF8 5160001D */  beql        $t3, $zero, .L00437C70
/* 037BFC 00437BFC 8FAD0034 */   lw         $t5, 0x34($sp)
/* 037C00 00437C00 8F9980DC */  lw          $t9, %call16(lseek)($gp)
/* 037C04 00437C04 8FA40040 */  lw          $a0, 0x40($sp)
/* 037C08 00437C08 8FA50034 */  lw          $a1, 0x34($sp)
/* 037C0C 00437C0C 0320F809 */  jalr        $t9
/* 037C10 00437C10 00003025 */   move       $a2, $zero
/* 037C14 00437C14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037C18 00437C18 8FA40038 */  lw          $a0, 0x38($sp)
/* 037C1C 00437C1C 8E05000C */  lw          $a1, 0xC($s0)
/* 037C20 00437C20 8F998554 */  lw          $t9, %call16(obj_vtop)($gp)
/* 037C24 00437C24 0320F809 */  jalr        $t9
/* 037C28 00437C28 00000000 */   nop
/* 037C2C 00437C2C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037C30 00437C30 8FA40040 */  lw          $a0, 0x40($sp)
/* 037C34 00437C34 00402825 */  move        $a1, $v0
/* 037C38 00437C38 8F99816C */  lw          $t9, %call16(write)($gp)
/* 037C3C 00437C3C 8E060014 */  lw          $a2, 0x14($s0)
/* 037C40 00437C40 0320F809 */  jalr        $t9
/* 037C44 00437C44 00000000 */   nop
/* 037C48 00437C48 8E0C0014 */  lw          $t4, 0x14($s0)
/* 037C4C 00437C4C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037C50 00437C50 504C0007 */  beql        $v0, $t4, .L00437C70
/* 037C54 00437C54 8FAD0034 */   lw         $t5, 0x34($sp)
/* 037C58 00437C58 8F998638 */  lw          $t9, %call16(fatal)($gp)
/* 037C5C 00437C5C 8F848030 */  lw          $a0, %got(STR_10008114)($gp)
/* 037C60 00437C60 0320F809 */  jalr        $t9
/* 037C64 00437C64 24848114 */   addiu      $a0, $a0, %lo(STR_10008114)
/* 037C68 00437C68 8FBC0018 */  lw          $gp, 0x18($sp)
/* 037C6C 00437C6C 8FAD0034 */  lw          $t5, 0x34($sp)
.L00437C70:
/* 037C70 00437C70 2402FFFF */  addiu       $v0, $zero, -0x1
/* 037C74 00437C74 AE0D0010 */  sw          $t5, 0x10($s0)
.L00437C78:
/* 037C78 00437C78 8FBF001C */  lw          $ra, 0x1C($sp)
/* 037C7C 00437C7C 8FB00014 */  lw          $s0, 0x14($sp)
/* 037C80 00437C80 27BD0038 */  addiu       $sp, $sp, 0x38
/* 037C84 00437C84 03E00008 */  jr          $ra
/* 037C88 00437C88 00000000 */   nop
