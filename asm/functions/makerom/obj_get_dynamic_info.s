.section .rodata
glabel STR_100070FC
/* 0470FC 100070FC */ .asciz "obj_nbucket(o) > 0"
                      .balign 4

glabel STR_10007110
/* 047110 10007110 */ .asciz "obj.c"
                      .balign 4
/* 047118 10007118 */ .asciz "get_dynamic_info: strtab addr 0x%x\n"
                      .balign 4
/* 04713C 1000713C */ .asciz "get_dynamic_info: dynsym addr 0x%x\n"
                      .balign 4
/* 047160 10007160 */ .asciz "get_dynamic_info: msym addr 0x%x\n"
                      .balign 4
/* 047184 10007184 */ .asciz "get_dynamic_info: got addr 0x%x\n"
                      .balign 4
/* 0471A8 100071A8 */ .asciz "get_dynamic_info: reloc addr 0x%x\n"
                      .balign 4
/* 0471CC 100071CC */ .asciz "get_dynamic_info: liblist addr 0x%x\n"
                      .balign 4
/* 0471F4 100071F4 */ .asciz "get_dynamic_info: conflict addr 0x%x\n"
                      .balign 4
/* 04721C 1000721C */ .asciz "get_dynamic_info: loc got # %d\n"
                      .balign 4
/* 04723C 1000723C */ .asciz "get_dynamic_info: index of first unreferenced external symbol # %d\n"
                      .balign 4
/* 047280 10007280 */ .asciz "get_dynamic_info: first symbol that has a got # %d\n"
                      .balign 4
/* 0472B4 100072B4 */ .asciz "get_dynamic_info: tstamp 0x%x\n"
                      .balign 4
/* 0472D4 100072D4 */ .asciz "get_dynamic_info: ichksum 0x%x\n"
                      .balign 4
/* 0472F4 100072F4 */ .asciz "get_dynamic_info: iversion 0x%x\n"
                      .balign 4
/* 047318 10007318 */ .asciz "get_dynamic_info: mips flags 0x%x\n"
                      .balign 4
/* 04733C 1000733C */ .asciz "get_dynamic_info: reloc # %d\n"
                      .balign 4
/* 04735C 1000735C */ .asciz "get_dynamic_info: reloc entry 0x%x\n"
                      .balign 4
/* 047380 10007380 */ .asciz "get_dynamic_info: sym tab # %d\n"
                      .balign 4
/* 0473A0 100073A0 */ .asciz "get_dynamic_info: sym entry 0x%x\n"
                      .balign 4
/* 0473C4 100073C4 */ .asciz "get_dynamic_info: str # %d\n"
                      .balign 4
/* 0473E0 100073E0 */ .asciz "get_dynamic_info: liblist # %d\n"
                      .balign 4
/* 047400 10007400 */ .asciz "get_dynamic_info: conflict # %d\n"
                      .balign 4
/* 047424 10007424 */ .asciz "get_dynamic_info: rld_map 0x%x\n"
                      .balign 4
/* 047444 10007444 */ .asciz "get_dynamic_info: DT_SYMBOLIC is present\n"
                      .balign 4
/* 047470 10007470 */ .asciz "get_dynamic_info: stored _rld_text_resolve addr 0x%x\n"
                      .balign 4
/* 0474A8 100074A8 */ .asciz "get_dynamic_info: unknown DT : 0x%x\n"
                      .balign 4
/* 0474D0 100074D0 */ .asciz "get_dynamic_info: external got 0x%x\n"
                      .balign 4
/* 0474F8 100074F8 */ .asciz "get_dynamic_info: rpath %s\n"
                      .balign 4
/* 047514 10007514 */ .asciz "get_dynamic_info: soname %s\n"
                      .balign 4
/* 047534 10007534 */ .asciz "get_dynamic_info: object's liblist is null\n"
                      .balign 4
/* 047560 10007560 */ .asciz "get_dynamic_info: library %s is added to liblist\n"
                      .balign 4

.section .late_rodata
glabel jtbl_10007BE0
/* 047BE0 10007BE0 F041AA98 */ .gpword .L0042D7F8
/* 047BE4 10007BE4 F041AAB4 */ .gpword .L0042D814
/* 047BE8 10007BE8 F041AAD0 */ .gpword .L0042D830
/* 047BEC 10007BEC F041AAEC */ .gpword .L0042D84C
/* 047BF0 10007BF0 F041AB08 */ .gpword .L0042D868
/* 047BF4 10007BF4 F041A834 */ .gpword .L0042D594
/* 047BF8 10007BF8 F041A9A8 */ .gpword .L0042D708
/* 047BFC 10007BFC F041AA1C */ .gpword .L0042D77C
/* 047C00 10007C00 F041A9FC */ .gpword .L0042D75C
/* 047C04 10007C04 F041AA44 */ .gpword .L0042D7A4
/* 047C08 10007C08 F041ABCC */ .gpword .L0042D92C
/* 047C0C 10007C0C F041AD98 */ .gpword .L0042DAF8
/* 047C10 10007C10 F041AD98 */ .gpword .L0042DAF8
/* 047C14 10007C14 F041AD98 */ .gpword .L0042DAF8
/* 047C18 10007C18 F041AD98 */ .gpword .L0042DAF8
/* 047C1C 10007C1C F041ABB0 */ .gpword .L0042D910
/* 047C20 10007C20 F041AB5C */ .gpword .L0042D8BC
/* 047C24 10007C24 F041AA60 */ .gpword .L0042D7C0
/* 047C28 10007C28 F041AA7C */ .gpword .L0042D7DC
/* 047C2C 10007C2C F041AD98 */ .gpword .L0042DAF8
/* 047C30 10007C30 F041AD98 */ .gpword .L0042DAF8
/* 047C34 10007C34 F041ABF4 */ .gpword .L0042D954
/* 047C38 10007C38 F041AC48 */ .gpword .L0042D9A8
/* 047C3C 10007C3C F041AC64 */ .gpword .L0042D9C4
/* 047C40 10007C40 F041AC80 */ .gpword .L0042D9E0
/* 047C44 10007C44 F041AC9C */ .gpword .L0042D9FC
/* 047C48 10007C48 F041ACB8 */ .gpword .L0042DA18
/* 047C4C 10007C4C F041ACD4 */ .gpword .L0042DA34
/* 047C50 10007C50 F041ACF0 */ .gpword .L0042DA50
/* 047C54 10007C54 F041AD0C */ .gpword .L0042DA6C
/* 047C58 10007C58 F041AD98 */ .gpword .L0042DAF8
/* 047C5C 10007C5C F041AD28 */ .gpword .L0042DA88
/* 047C60 10007C60 F041AD44 */ .gpword .L0042DAA4
/* 047C64 10007C64 F041AD60 */ .gpword .L0042DAC0
/* 047C68 10007C68 F041A894 */ .gpword .L0042D5F4
/* 047C6C 10007C6C F041AD7C */ .gpword .L0042DADC
/* 047C70 10007C70 F041AD98 */ .gpword .L0042DAF8
/* 047C74 10007C74 F041AD98 */ .gpword .L0042DAF8
/* 047C78 10007C78 F041AD98 */ .gpword .L0042DAF8
/* 047C7C 10007C7C F041AD98 */ .gpword .L0042DAF8
/* 047C80 10007C80 F041AD98 */ .gpword .L0042DAF8
/* 047C84 10007C84 F041AD98 */ .gpword .L0042DAF8
/* 047C88 10007C88 F041AD98 */ .gpword .L0042DAF8
/* 047C8C 10007C8C F041AD98 */ .gpword .L0042DAF8
/* 047C90 10007C90 F041AC2C */ .gpword .L0042D98C

glabel jtbl_10007C94
/* 047C94 10007C94 F041A7EC */ .gpword .L0042D54C
/* 047C98 10007C98 F041AD98 */ .gpword .L0042DAF8
/* 047C9C 10007C9C F041A9C4 */ .gpword .L0042D724
/* 047CA0 10007CA0 F041A91C */ .gpword .L0042D67C
/* 047CA4 10007CA4 F041A970 */ .gpword .L0042D6D0
/* 047CA8 10007CA8 F041A98C */ .gpword .L0042D6EC
/* 047CAC 10007CAC F041AD98 */ .gpword .L0042DAF8
/* 047CB0 10007CB0 F041AD98 */ .gpword .L0042DAF8
/* 047CB4 10007CB4 F041AD98 */ .gpword .L0042DAF8
/* 047CB8 10007CB8 F041AB94 */ .gpword .L0042D8F4
/* 047CBC 10007CBC F041AB78 */ .gpword .L0042D8D8
/* 047CC0 10007CC0 F041A850 */ .gpword .L0042D5B0
/* 047CC4 10007CC4 F041A8D8 */ .gpword .L0042D638
/* 047CC8 10007CC8 F041AA38 */ .gpword .L0042D798
/* 047CCC 10007CCC F041ABE8 */ .gpword .L0042D948
/* 047CD0 10007CD0 F041AC10 */ .gpword .L0042D970
/* 047CD4 10007CD4 F041A9E0 */ .gpword .L0042D740
/* 047CD8 10007CD8 F041AB24 */ .gpword .L0042D884
/* 047CDC 10007CDC F041AB40 */ .gpword .L0042D8A0


.section .text
glabel obj_get_dynamic_info # 267
/* 02D3EC 0042D3EC 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 02D3F0 0042D3F0 279C5974 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE5974
/* 02D3F4 0042D3F4 0399E021 */  addu        $gp, $gp, $t9
/* 02D3F8 0042D3F8 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 02D3FC 0042D3FC 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 02D400 0042D400 AFB00018 */  sw          $s0, 0x18($sp)
/* 02D404 0042D404 AFBF0034 */  sw          $ra, 0x34($sp)
/* 02D408 0042D408 AFB5002C */  sw          $s5, 0x2C($sp)
/* 02D40C 0042D40C AFB40028 */  sw          $s4, 0x28($sp)
/* 02D410 0042D410 AFB30024 */  sw          $s3, 0x24($sp)
/* 02D414 0042D414 AFB20020 */  sw          $s2, 0x20($sp)
/* 02D418 0042D418 AFB1001C */  sw          $s1, 0x1C($sp)
/* 02D41C 0042D41C AFA40060 */  sw          $a0, 0x60($sp)
/* 02D420 0042D420 00808025 */  move        $s0, $a0
/* 02D424 0042D424 00A08825 */  move        $s1, $a1
/* 02D428 0042D428 00C09025 */  move        $s2, $a2
/* 02D42C 0042D42C 00E0A825 */  move        $s5, $a3
/* 02D430 0042D430 AFBC0030 */  sw          $gp, 0x30($sp)
/* 02D434 0042D434 00009825 */  move        $s3, $zero
/* 02D438 0042D438 2414000A */  addiu       $s4, $zero, 0xA
/* 02D43C 0042D43C 0320F809 */  jalr        $t9
/* 02D440 0042D440 24040028 */   addiu      $a0, $zero, 0x28
/* 02D444 0042D444 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02D448 0042D448 AFA20058 */  sw          $v0, 0x58($sp)
/* 02D44C 0042D44C 02202025 */  move        $a0, $s1
/* 02D450 0042D450 8F998370 */  lw          $t9, %call16(obj_set_conflictcount)($gp)
/* 02D454 0042D454 2405FFFF */  addiu       $a1, $zero, -0x1
/* 02D458 0042D458 0320F809 */  jalr        $t9
/* 02D45C 0042D45C 00000000 */   nop
/* 02D460 0042D460 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02D464 0042D464 02202025 */  move        $a0, $s1
/* 02D468 0042D468 2405FFFF */  addiu       $a1, $zero, -0x1
/* 02D46C 0042D46C 8F998368 */  lw          $t9, %call16(obj_set_liblistcount)($gp)
/* 02D470 0042D470 0320F809 */  jalr        $t9
/* 02D474 0042D474 00000000 */   nop
/* 02D478 0042D478 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02D47C 0042D47C 02202025 */  move        $a0, $s1
/* 02D480 0042D480 00002825 */  move        $a1, $zero
/* 02D484 0042D484 8F9982EC */  lw          $t9, %call16(obj_set_msym_address)($gp)
/* 02D488 0042D488 0320F809 */  jalr        $t9
/* 02D48C 0042D48C 00000000 */   nop
/* 02D490 0042D490 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02D494 0042D494 AE200144 */  sw          $zero, 0x144($s1)
/* 02D498 0042D498 02202025 */  move        $a0, $s1
/* 02D49C 0042D49C 8F9983D8 */  lw          $t9, %call16(obj_unset_rldflag)($gp)
/* 02D4A0 0042D4A0 24050200 */  addiu       $a1, $zero, 0x200
/* 02D4A4 0042D4A4 0320F809 */  jalr        $t9
/* 02D4A8 0042D4A8 00000000 */   nop
/* 02D4AC 0042D4AC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02D4B0 0042D4B0 AE2001D8 */  sw          $zero, 0x1D8($s1)
/* 02D4B4 0042D4B4 02202025 */  move        $a0, $s1
/* 02D4B8 0042D4B8 8F998488 */  lw          $t9, %call16(obj_set_symlib)($gp)
/* 02D4BC 0042D4BC 00002825 */  move        $a1, $zero
/* 02D4C0 0042D4C0 0320F809 */  jalr        $t9
/* 02D4C4 0042D4C4 00000000 */   nop
/* 02D4C8 0042D4C8 8FAE0060 */  lw          $t6, 0x60($sp)
/* 02D4CC 0042D4CC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02D4D0 0042D4D0 8DCF0000 */  lw          $t7, 0x0($t6)
/* 02D4D4 0042D4D4 11E0018C */  beqz        $t7, .L0042DB08
/* 02D4D8 0042D4D8 00000000 */   nop
/* 02D4DC 0042D4DC 8E030000 */  lw          $v1, 0x0($s0)
/* 02D4E0 0042D4E0 28610014 */  slti        $at, $v1, 0x14
.L0042D4E4:
/* 02D4E4 0042D4E4 1420000E */  bnez        $at, .L0042D520
/* 02D4E8 0042D4E8 00601025 */   move       $v0, $v1
/* 02D4EC 0042D4EC 3C018FFF */  lui         $at, (0x8FFFFFFF >> 16)
/* 02D4F0 0042D4F0 3421FFFF */  ori         $at, $at, (0x8FFFFFFF & 0xFFFF)
/* 02D4F4 0042D4F4 0061C021 */  addu        $t8, $v1, $at
/* 02D4F8 0042D4F8 2F01002D */  sltiu       $at, $t8, 0x2D
/* 02D4FC 0042D4FC 5020017F */  beql        $at, $zero, .L0042DAFC
/* 02D500 0042D500 8E030008 */   lw         $v1, 0x8($s0)
/* 02D504 0042D504 8F81802C */  lw          $at, %got(jtbl_10007BE0)($gp)
/* 02D508 0042D508 0018C080 */  sll         $t8, $t8, 2
/* 02D50C 0042D50C 00380821 */  addu        $at, $at, $t8
/* 02D510 0042D510 8C387BE0 */  lw          $t8, %lo(jtbl_10007BE0)($at)
/* 02D514 0042D514 031CC021 */  addu        $t8, $t8, $gp
/* 02D518 0042D518 03000008 */  jr          $t8
/* 02D51C 0042D51C 00000000 */   nop
.L0042D520:
/* 02D520 0042D520 2459FFFF */  addiu       $t9, $v0, -0x1
/* 02D524 0042D524 2F210013 */  sltiu       $at, $t9, 0x13
/* 02D528 0042D528 50200174 */  beql        $at, $zero, .L0042DAFC
/* 02D52C 0042D52C 8E030008 */   lw         $v1, 0x8($s0)
/* 02D530 0042D530 8F81802C */  lw          $at, %got(jtbl_10007C94)($gp)
/* 02D534 0042D534 0019C880 */  sll         $t9, $t9, 2
/* 02D538 0042D538 00390821 */  addu        $at, $at, $t9
/* 02D53C 0042D53C 8C397C94 */  lw          $t9, %lo(jtbl_10007C94)($at)
/* 02D540 0042D540 033CC821 */  addu        $t9, $t9, $gp
/* 02D544 0042D544 03200008 */  jr          $t9
/* 02D548 0042D548 00000000 */   nop
.L0042D54C:
/* 02D54C 0042D54C 0274082A */  slt         $at, $s3, $s4
/* 02D550 0042D550 1420000A */  bnez        $at, .L0042D57C
/* 02D554 0042D554 00131880 */   sll        $v1, $s3, 2
/* 02D558 0042D558 8F998110 */  lw          $t9, %call16(realloc)($gp)
/* 02D55C 0042D55C 2694000A */  addiu       $s4, $s4, 0xA
/* 02D560 0042D560 00142880 */  sll         $a1, $s4, 2
/* 02D564 0042D564 8FA40058 */  lw          $a0, 0x58($sp)
/* 02D568 0042D568 0320F809 */  jalr        $t9
/* 02D56C 0042D56C AFA30038 */   sw         $v1, 0x38($sp)
/* 02D570 0042D570 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02D574 0042D574 8FA30038 */  lw          $v1, 0x38($sp)
/* 02D578 0042D578 AFA20058 */  sw          $v0, 0x58($sp)
.L0042D57C:
/* 02D57C 0042D57C 8FA90058 */  lw          $t1, 0x58($sp)
/* 02D580 0042D580 8E080004 */  lw          $t0, 0x4($s0)
/* 02D584 0042D584 26730001 */  addiu       $s3, $s3, 0x1
/* 02D588 0042D588 01235021 */  addu        $t2, $t1, $v1
/* 02D58C 0042D58C 1000015A */  b           .L0042DAF8
/* 02D590 0042D590 AD480000 */   sw         $t0, 0x0($t2)
.L0042D594:
/* 02D594 0042D594 8F9982CC */  lw          $t9, %call16(obj_set_base_address)($gp)
/* 02D598 0042D598 02202025 */  move        $a0, $s1
/* 02D59C 0042D59C 8E050004 */  lw          $a1, 0x4($s0)
/* 02D5A0 0042D5A0 0320F809 */  jalr        $t9
/* 02D5A4 0042D5A4 00000000 */   nop
/* 02D5A8 0042D5A8 10000153 */  b           .L0042DAF8
/* 02D5AC 0042D5AC 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D5B0:
/* 02D5B0 0042D5B0 8E020004 */  lw          $v0, 0x4($s0)
/* 02D5B4 0042D5B4 10400008 */  beqz        $v0, .L0042D5D8
/* 02D5B8 0042D5B8 00000000 */   nop
/* 02D5BC 0042D5BC 8F9983C0 */  lw          $t9, %call16(obj_set_init_address)($gp)
/* 02D5C0 0042D5C0 02202025 */  move        $a0, $s1
/* 02D5C4 0042D5C4 00522823 */  subu        $a1, $v0, $s2
/* 02D5C8 0042D5C8 0320F809 */  jalr        $t9
/* 02D5CC 0042D5CC 00000000 */   nop
/* 02D5D0 0042D5D0 10000149 */  b           .L0042DAF8
/* 02D5D4 0042D5D4 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D5D8:
/* 02D5D8 0042D5D8 8F9983C0 */  lw          $t9, %call16(obj_set_init_address)($gp)
/* 02D5DC 0042D5DC 02202025 */  move        $a0, $s1
/* 02D5E0 0042D5E0 00002825 */  move        $a1, $zero
/* 02D5E4 0042D5E4 0320F809 */  jalr        $t9
/* 02D5E8 0042D5E8 00000000 */   nop
/* 02D5EC 0042D5EC 10000142 */  b           .L0042DAF8
/* 02D5F0 0042D5F0 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D5F4:
/* 02D5F4 0042D5F4 8E020004 */  lw          $v0, 0x4($s0)
/* 02D5F8 0042D5F8 10400008 */  beqz        $v0, .L0042D61C
/* 02D5FC 0042D5FC 00000000 */   nop
/* 02D600 0042D600 8F9983C4 */  lw          $t9, %call16(obj_set_pixie_init_address)($gp)
/* 02D604 0042D604 02202025 */  move        $a0, $s1
/* 02D608 0042D608 00522823 */  subu        $a1, $v0, $s2
/* 02D60C 0042D60C 0320F809 */  jalr        $t9
/* 02D610 0042D610 00000000 */   nop
/* 02D614 0042D614 10000138 */  b           .L0042DAF8
/* 02D618 0042D618 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D61C:
/* 02D61C 0042D61C 8F9983C4 */  lw          $t9, %call16(obj_set_pixie_init_address)($gp)
/* 02D620 0042D620 02202025 */  move        $a0, $s1
/* 02D624 0042D624 00002825 */  move        $a1, $zero
/* 02D628 0042D628 0320F809 */  jalr        $t9
/* 02D62C 0042D62C 00000000 */   nop
/* 02D630 0042D630 10000131 */  b           .L0042DAF8
/* 02D634 0042D634 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D638:
/* 02D638 0042D638 8E020004 */  lw          $v0, 0x4($s0)
/* 02D63C 0042D63C 10400008 */  beqz        $v0, .L0042D660
/* 02D640 0042D640 00000000 */   nop
/* 02D644 0042D644 8F9983CC */  lw          $t9, %call16(obj_set_fini_address)($gp)
/* 02D648 0042D648 02202025 */  move        $a0, $s1
/* 02D64C 0042D64C 00522823 */  subu        $a1, $v0, $s2
/* 02D650 0042D650 0320F809 */  jalr        $t9
/* 02D654 0042D654 00000000 */   nop
/* 02D658 0042D658 10000127 */  b           .L0042DAF8
/* 02D65C 0042D65C 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D660:
/* 02D660 0042D660 8F9983CC */  lw          $t9, %call16(obj_set_fini_address)($gp)
/* 02D664 0042D664 02202025 */  move        $a0, $s1
/* 02D668 0042D668 00002825 */  move        $a1, $zero
/* 02D66C 0042D66C 0320F809 */  jalr        $t9
/* 02D670 0042D670 00000000 */   nop
/* 02D674 0042D674 10000120 */  b           .L0042DAF8
/* 02D678 0042D678 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D67C:
/* 02D67C 0042D67C 8F9982D8 */  lw          $t9, %call16(obj_set_hash_address)($gp)
/* 02D680 0042D680 8E0B0004 */  lw          $t3, 0x4($s0)
/* 02D684 0042D684 02202025 */  move        $a0, $s1
/* 02D688 0042D688 0320F809 */  jalr        $t9
/* 02D68C 0042D68C 01722823 */   subu       $a1, $t3, $s2
/* 02D690 0042D690 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02D694 0042D694 02202025 */  move        $a0, $s1
/* 02D698 0042D698 8F998400 */  lw          $t9, %call16(obj_nbucket)($gp)
/* 02D69C 0042D69C 0320F809 */  jalr        $t9
/* 02D6A0 0042D6A0 00000000 */   nop
/* 02D6A4 0042D6A4 14400114 */  bnez        $v0, .L0042DAF8
/* 02D6A8 0042D6A8 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02D6AC 0042D6AC 8F998148 */  lw          $t9, %call16(__assert)($gp)
/* 02D6B0 0042D6B0 8F84802C */  lw          $a0, %got(STR_100070FC)($gp)
/* 02D6B4 0042D6B4 8F85802C */  lw          $a1, %got(STR_10007110)($gp)
/* 02D6B8 0042D6B8 24060522 */  addiu       $a2, $zero, 0x522
/* 02D6BC 0042D6BC 248470FC */  addiu       $a0, $a0, %lo(STR_100070FC)
/* 02D6C0 0042D6C0 0320F809 */  jalr        $t9
/* 02D6C4 0042D6C4 24A57110 */   addiu      $a1, $a1, %lo(STR_10007110)
/* 02D6C8 0042D6C8 1000010B */  b           .L0042DAF8
/* 02D6CC 0042D6CC 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D6D0:
/* 02D6D0 0042D6D0 8F9982E0 */  lw          $t9, %call16(obj_set_dynstr_address)($gp)
/* 02D6D4 0042D6D4 8E0C0004 */  lw          $t4, 0x4($s0)
/* 02D6D8 0042D6D8 02202025 */  move        $a0, $s1
/* 02D6DC 0042D6DC 0320F809 */  jalr        $t9
/* 02D6E0 0042D6E0 01922823 */   subu       $a1, $t4, $s2
/* 02D6E4 0042D6E4 10000104 */  b           .L0042DAF8
/* 02D6E8 0042D6E8 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D6EC:
/* 02D6EC 0042D6EC 8F9982E8 */  lw          $t9, %call16(obj_set_dynsym_address)($gp)
/* 02D6F0 0042D6F0 8E0D0004 */  lw          $t5, 0x4($s0)
/* 02D6F4 0042D6F4 02202025 */  move        $a0, $s1
/* 02D6F8 0042D6F8 0320F809 */  jalr        $t9
/* 02D6FC 0042D6FC 01B22823 */   subu       $a1, $t5, $s2
/* 02D700 0042D700 100000FD */  b           .L0042DAF8
/* 02D704 0042D704 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D708:
/* 02D708 0042D708 8F9982EC */  lw          $t9, %call16(obj_set_msym_address)($gp)
/* 02D70C 0042D70C 8E0E0004 */  lw          $t6, 0x4($s0)
/* 02D710 0042D710 02202025 */  move        $a0, $s1
/* 02D714 0042D714 0320F809 */  jalr        $t9
/* 02D718 0042D718 01D22823 */   subu       $a1, $t6, $s2
/* 02D71C 0042D71C 100000F6 */  b           .L0042DAF8
/* 02D720 0042D720 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D724:
/* 02D724 0042D724 8F9982F4 */  lw          $t9, %call16(obj_set_got_address)($gp)
/* 02D728 0042D728 8E0F0004 */  lw          $t7, 0x4($s0)
/* 02D72C 0042D72C 02202025 */  move        $a0, $s1
/* 02D730 0042D730 0320F809 */  jalr        $t9
/* 02D734 0042D734 01F52823 */   subu       $a1, $t7, $s5
/* 02D738 0042D738 100000EF */  b           .L0042DAF8
/* 02D73C 0042D73C 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D740:
/* 02D740 0042D740 8F9982FC */  lw          $t9, %call16(obj_set_dynrel_address)($gp)
/* 02D744 0042D744 8E180004 */  lw          $t8, 0x4($s0)
/* 02D748 0042D748 02202025 */  move        $a0, $s1
/* 02D74C 0042D74C 0320F809 */  jalr        $t9
/* 02D750 0042D750 03122823 */   subu       $a1, $t8, $s2
/* 02D754 0042D754 100000E8 */  b           .L0042DAF8
/* 02D758 0042D758 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D75C:
/* 02D75C 0042D75C 8E190004 */  lw          $t9, 0x4($s0)
/* 02D760 0042D760 02202025 */  move        $a0, $s1
/* 02D764 0042D764 03322823 */  subu        $a1, $t9, $s2
/* 02D768 0042D768 8F998304 */  lw          $t9, %call16(obj_set_liblist_address)($gp)
/* 02D76C 0042D76C 0320F809 */  jalr        $t9
/* 02D770 0042D770 00000000 */   nop
/* 02D774 0042D774 100000E0 */  b           .L0042DAF8
/* 02D778 0042D778 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D77C:
/* 02D77C 0042D77C 8F998308 */  lw          $t9, %call16(obj_set_conflict_address)($gp)
/* 02D780 0042D780 8E090004 */  lw          $t1, 0x4($s0)
/* 02D784 0042D784 02202025 */  move        $a0, $s1
/* 02D788 0042D788 0320F809 */  jalr        $t9
/* 02D78C 0042D78C 01322823 */   subu       $a1, $t1, $s2
/* 02D790 0042D790 100000D9 */  b           .L0042DAF8
/* 02D794 0042D794 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D798:
/* 02D798 0042D798 8E080004 */  lw          $t0, 0x4($s0)
/* 02D79C 0042D79C 100000D6 */  b           .L0042DAF8
/* 02D7A0 0042D7A0 AE2800F0 */   sw         $t0, 0xF0($s1)
.L0042D7A4:
/* 02D7A4 0042D7A4 8F998310 */  lw          $t9, %call16(obj_set_locgotcount)($gp)
/* 02D7A8 0042D7A8 02202025 */  move        $a0, $s1
/* 02D7AC 0042D7AC 8E050004 */  lw          $a1, 0x4($s0)
/* 02D7B0 0042D7B0 0320F809 */  jalr        $t9
/* 02D7B4 0042D7B4 00000000 */   nop
/* 02D7B8 0042D7B8 100000CF */  b           .L0042DAF8
/* 02D7BC 0042D7BC 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D7C0:
/* 02D7C0 0042D7C0 8F998318 */  lw          $t9, %call16(obj_set_unrefextno)($gp)
/* 02D7C4 0042D7C4 02202025 */  move        $a0, $s1
/* 02D7C8 0042D7C8 8E050004 */  lw          $a1, 0x4($s0)
/* 02D7CC 0042D7CC 0320F809 */  jalr        $t9
/* 02D7D0 0042D7D0 00000000 */   nop
/* 02D7D4 0042D7D4 100000C8 */  b           .L0042DAF8
/* 02D7D8 0042D7D8 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D7DC:
/* 02D7DC 0042D7DC 8F998320 */  lw          $t9, %call16(obj_set_gotsym)($gp)
/* 02D7E0 0042D7E0 02202025 */  move        $a0, $s1
/* 02D7E4 0042D7E4 8E050004 */  lw          $a1, 0x4($s0)
/* 02D7E8 0042D7E8 0320F809 */  jalr        $t9
/* 02D7EC 0042D7EC 00000000 */   nop
/* 02D7F0 0042D7F0 100000C1 */  b           .L0042DAF8
/* 02D7F4 0042D7F4 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D7F8:
/* 02D7F8 0042D7F8 8F99838C */  lw          $t9, %call16(obj_set_rldversion)($gp)
/* 02D7FC 0042D7FC 02202025 */  move        $a0, $s1
/* 02D800 0042D800 8E050004 */  lw          $a1, 0x4($s0)
/* 02D804 0042D804 0320F809 */  jalr        $t9
/* 02D808 0042D808 00000000 */   nop
/* 02D80C 0042D80C 100000BA */  b           .L0042DAF8
/* 02D810 0042D810 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D814:
/* 02D814 0042D814 8F998328 */  lw          $t9, %call16(obj_set_timestamp)($gp)
/* 02D818 0042D818 02202025 */  move        $a0, $s1
/* 02D81C 0042D81C 8E050004 */  lw          $a1, 0x4($s0)
/* 02D820 0042D820 0320F809 */  jalr        $t9
/* 02D824 0042D824 00000000 */   nop
/* 02D828 0042D828 100000B3 */  b           .L0042DAF8
/* 02D82C 0042D82C 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D830:
/* 02D830 0042D830 8F998330 */  lw          $t9, %call16(obj_set_ichecksum)($gp)
/* 02D834 0042D834 02202025 */  move        $a0, $s1
/* 02D838 0042D838 8E050004 */  lw          $a1, 0x4($s0)
/* 02D83C 0042D83C 0320F809 */  jalr        $t9
/* 02D840 0042D840 00000000 */   nop
/* 02D844 0042D844 100000AC */  b           .L0042DAF8
/* 02D848 0042D848 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D84C:
/* 02D84C 0042D84C 8F998334 */  lw          $t9, %call16(obj_set_iversion)($gp)
/* 02D850 0042D850 02202025 */  move        $a0, $s1
/* 02D854 0042D854 8E050004 */  lw          $a1, 0x4($s0)
/* 02D858 0042D858 0320F809 */  jalr        $t9
/* 02D85C 0042D85C 00000000 */   nop
/* 02D860 0042D860 100000A5 */  b           .L0042DAF8
/* 02D864 0042D864 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D868:
/* 02D868 0042D868 8F99833C */  lw          $t9, %call16(obj_set_dynflags)($gp)
/* 02D86C 0042D86C 02202025 */  move        $a0, $s1
/* 02D870 0042D870 8E050004 */  lw          $a1, 0x4($s0)
/* 02D874 0042D874 0320F809 */  jalr        $t9
/* 02D878 0042D878 00000000 */   nop
/* 02D87C 0042D87C 1000009E */  b           .L0042DAF8
/* 02D880 0042D880 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D884:
/* 02D884 0042D884 8F998344 */  lw          $t9, %call16(obj_set_dynrelsz)($gp)
/* 02D888 0042D888 02202025 */  move        $a0, $s1
/* 02D88C 0042D88C 8E050004 */  lw          $a1, 0x4($s0)
/* 02D890 0042D890 0320F809 */  jalr        $t9
/* 02D894 0042D894 00000000 */   nop
/* 02D898 0042D898 10000097 */  b           .L0042DAF8
/* 02D89C 0042D89C 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D8A0:
/* 02D8A0 0042D8A0 8F99834C */  lw          $t9, %call16(obj_set_dynrelent)($gp)
/* 02D8A4 0042D8A4 02202025 */  move        $a0, $s1
/* 02D8A8 0042D8A8 8E050004 */  lw          $a1, 0x4($s0)
/* 02D8AC 0042D8AC 0320F809 */  jalr        $t9
/* 02D8B0 0042D8B0 00000000 */   nop
/* 02D8B4 0042D8B4 10000090 */  b           .L0042DAF8
/* 02D8B8 0042D8B8 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D8BC:
/* 02D8BC 0042D8BC 8F998354 */  lw          $t9, %call16(obj_set_dynsymcount)($gp)
/* 02D8C0 0042D8C0 02202025 */  move        $a0, $s1
/* 02D8C4 0042D8C4 8E050004 */  lw          $a1, 0x4($s0)
/* 02D8C8 0042D8C8 0320F809 */  jalr        $t9
/* 02D8CC 0042D8CC 00000000 */   nop
/* 02D8D0 0042D8D0 10000089 */  b           .L0042DAF8
/* 02D8D4 0042D8D4 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D8D8:
/* 02D8D8 0042D8D8 8F998358 */  lw          $t9, %call16(obj_set_dynsyment)($gp)
/* 02D8DC 0042D8DC 02202025 */  move        $a0, $s1
/* 02D8E0 0042D8E0 8E050004 */  lw          $a1, 0x4($s0)
/* 02D8E4 0042D8E4 0320F809 */  jalr        $t9
/* 02D8E8 0042D8E8 00000000 */   nop
/* 02D8EC 0042D8EC 10000082 */  b           .L0042DAF8
/* 02D8F0 0042D8F0 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D8F4:
/* 02D8F4 0042D8F4 8F998360 */  lw          $t9, %call16(obj_set_dynstrsz)($gp)
/* 02D8F8 0042D8F8 02202025 */  move        $a0, $s1
/* 02D8FC 0042D8FC 8E050004 */  lw          $a1, 0x4($s0)
/* 02D900 0042D900 0320F809 */  jalr        $t9
/* 02D904 0042D904 00000000 */   nop
/* 02D908 0042D908 1000007B */  b           .L0042DAF8
/* 02D90C 0042D90C 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D910:
/* 02D910 0042D910 8F998368 */  lw          $t9, %call16(obj_set_liblistcount)($gp)
/* 02D914 0042D914 02202025 */  move        $a0, $s1
/* 02D918 0042D918 8E050004 */  lw          $a1, 0x4($s0)
/* 02D91C 0042D91C 0320F809 */  jalr        $t9
/* 02D920 0042D920 00000000 */   nop
/* 02D924 0042D924 10000074 */  b           .L0042DAF8
/* 02D928 0042D928 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D92C:
/* 02D92C 0042D92C 8F998370 */  lw          $t9, %call16(obj_set_conflictcount)($gp)
/* 02D930 0042D930 02202025 */  move        $a0, $s1
/* 02D934 0042D934 8E050004 */  lw          $a1, 0x4($s0)
/* 02D938 0042D938 0320F809 */  jalr        $t9
/* 02D93C 0042D93C 00000000 */   nop
/* 02D940 0042D940 1000006D */  b           .L0042DAF8
/* 02D944 0042D944 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D948:
/* 02D948 0042D948 8E0A0004 */  lw          $t2, 0x4($s0)
/* 02D94C 0042D94C 1000006A */  b           .L0042DAF8
/* 02D950 0042D950 AE2A0144 */   sw         $t2, 0x144($s1)
.L0042D954:
/* 02D954 0042D954 8F998458 */  lw          $t9, %call16(obj_set_rld_map)($gp)
/* 02D958 0042D958 8E0B0004 */  lw          $t3, 0x4($s0)
/* 02D95C 0042D95C 02202025 */  move        $a0, $s1
/* 02D960 0042D960 0320F809 */  jalr        $t9
/* 02D964 0042D964 01752823 */   subu       $a1, $t3, $s5
/* 02D968 0042D968 10000063 */  b           .L0042DAF8
/* 02D96C 0042D96C 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D970:
/* 02D970 0042D970 8F9983D4 */  lw          $t9, %call16(obj_set_rldflag)($gp)
/* 02D974 0042D974 02202025 */  move        $a0, $s1
/* 02D978 0042D978 24050200 */  addiu       $a1, $zero, 0x200
/* 02D97C 0042D97C 0320F809 */  jalr        $t9
/* 02D980 0042D980 00000000 */   nop
/* 02D984 0042D984 1000005C */  b           .L0042DAF8
/* 02D988 0042D988 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D98C:
/* 02D98C 0042D98C 8F99848C */  lw          $t9, %call16(obj_set_rld_text_resolve_addr)($gp)
/* 02D990 0042D990 02202025 */  move        $a0, $s1
/* 02D994 0042D994 8E050004 */  lw          $a1, 0x4($s0)
/* 02D998 0042D998 0320F809 */  jalr        $t9
/* 02D99C 0042D99C 00000000 */   nop
/* 02D9A0 0042D9A0 10000055 */  b           .L0042DAF8
/* 02D9A4 0042D9A4 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D9A8:
/* 02D9A8 0042D9A8 8F998460 */  lw          $t9, %call16(obj_set_delta_class)($gp)
/* 02D9AC 0042D9AC 8E0C0004 */  lw          $t4, 0x4($s0)
/* 02D9B0 0042D9B0 02202025 */  move        $a0, $s1
/* 02D9B4 0042D9B4 0320F809 */  jalr        $t9
/* 02D9B8 0042D9B8 01922823 */   subu       $a1, $t4, $s2
/* 02D9BC 0042D9BC 1000004E */  b           .L0042DAF8
/* 02D9C0 0042D9C0 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D9C4:
/* 02D9C4 0042D9C4 8F998464 */  lw          $t9, %call16(obj_set_delta_class_no)($gp)
/* 02D9C8 0042D9C8 02202025 */  move        $a0, $s1
/* 02D9CC 0042D9CC 8E050004 */  lw          $a1, 0x4($s0)
/* 02D9D0 0042D9D0 0320F809 */  jalr        $t9
/* 02D9D4 0042D9D4 00000000 */   nop
/* 02D9D8 0042D9D8 10000047 */  b           .L0042DAF8
/* 02D9DC 0042D9DC 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D9E0:
/* 02D9E0 0042D9E0 8F998468 */  lw          $t9, %call16(obj_set_delta_instance)($gp)
/* 02D9E4 0042D9E4 8E0D0004 */  lw          $t5, 0x4($s0)
/* 02D9E8 0042D9E8 02202025 */  move        $a0, $s1
/* 02D9EC 0042D9EC 0320F809 */  jalr        $t9
/* 02D9F0 0042D9F0 01B22823 */   subu       $a1, $t5, $s2
/* 02D9F4 0042D9F4 10000040 */  b           .L0042DAF8
/* 02D9F8 0042D9F8 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042D9FC:
/* 02D9FC 0042D9FC 8F99846C */  lw          $t9, %call16(obj_set_delta_instance_no)($gp)
/* 02DA00 0042DA00 02202025 */  move        $a0, $s1
/* 02DA04 0042DA04 8E050004 */  lw          $a1, 0x4($s0)
/* 02DA08 0042DA08 0320F809 */  jalr        $t9
/* 02DA0C 0042DA0C 00000000 */   nop
/* 02DA10 0042DA10 10000039 */  b           .L0042DAF8
/* 02DA14 0042DA14 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042DA18:
/* 02DA18 0042DA18 8F998470 */  lw          $t9, %call16(obj_set_delta_reloc)($gp)
/* 02DA1C 0042DA1C 8E0E0004 */  lw          $t6, 0x4($s0)
/* 02DA20 0042DA20 02202025 */  move        $a0, $s1
/* 02DA24 0042DA24 0320F809 */  jalr        $t9
/* 02DA28 0042DA28 01D22823 */   subu       $a1, $t6, $s2
/* 02DA2C 0042DA2C 10000032 */  b           .L0042DAF8
/* 02DA30 0042DA30 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042DA34:
/* 02DA34 0042DA34 8F998474 */  lw          $t9, %call16(obj_set_delta_reloc_no)($gp)
/* 02DA38 0042DA38 02202025 */  move        $a0, $s1
/* 02DA3C 0042DA3C 8E050004 */  lw          $a1, 0x4($s0)
/* 02DA40 0042DA40 0320F809 */  jalr        $t9
/* 02DA44 0042DA44 00000000 */   nop
/* 02DA48 0042DA48 1000002B */  b           .L0042DAF8
/* 02DA4C 0042DA4C 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042DA50:
/* 02DA50 0042DA50 8F998478 */  lw          $t9, %call16(obj_set_delta_sym)($gp)
/* 02DA54 0042DA54 8E0F0004 */  lw          $t7, 0x4($s0)
/* 02DA58 0042DA58 02202025 */  move        $a0, $s1
/* 02DA5C 0042DA5C 0320F809 */  jalr        $t9
/* 02DA60 0042DA60 01F22823 */   subu       $a1, $t7, $s2
/* 02DA64 0042DA64 10000024 */  b           .L0042DAF8
/* 02DA68 0042DA68 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042DA6C:
/* 02DA6C 0042DA6C 8F99847C */  lw          $t9, %call16(obj_set_delta_sym_no)($gp)
/* 02DA70 0042DA70 02202025 */  move        $a0, $s1
/* 02DA74 0042DA74 8E050004 */  lw          $a1, 0x4($s0)
/* 02DA78 0042DA78 0320F809 */  jalr        $t9
/* 02DA7C 0042DA7C 00000000 */   nop
/* 02DA80 0042DA80 1000001D */  b           .L0042DAF8
/* 02DA84 0042DA84 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042DA88:
/* 02DA88 0042DA88 8F998480 */  lw          $t9, %call16(obj_set_delta_classsym)($gp)
/* 02DA8C 0042DA8C 8E180004 */  lw          $t8, 0x4($s0)
/* 02DA90 0042DA90 02202025 */  move        $a0, $s1
/* 02DA94 0042DA94 0320F809 */  jalr        $t9
/* 02DA98 0042DA98 03152823 */   subu       $a1, $t8, $s5
/* 02DA9C 0042DA9C 10000016 */  b           .L0042DAF8
/* 02DAA0 0042DAA0 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042DAA4:
/* 02DAA4 0042DAA4 8F998484 */  lw          $t9, %call16(obj_set_delta_classsym_no)($gp)
/* 02DAA8 0042DAA8 02202025 */  move        $a0, $s1
/* 02DAAC 0042DAAC 8E050004 */  lw          $a1, 0x4($s0)
/* 02DAB0 0042DAB0 0320F809 */  jalr        $t9
/* 02DAB4 0042DAB4 00000000 */   nop
/* 02DAB8 0042DAB8 1000000F */  b           .L0042DAF8
/* 02DABC 0042DABC 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042DAC0:
/* 02DAC0 0042DAC0 8F9983DC */  lw          $t9, %call16(obj_set_cxx_flags)($gp)
/* 02DAC4 0042DAC4 02202025 */  move        $a0, $s1
/* 02DAC8 0042DAC8 8E050004 */  lw          $a1, 0x4($s0)
/* 02DACC 0042DACC 0320F809 */  jalr        $t9
/* 02DAD0 0042DAD0 00000000 */   nop
/* 02DAD4 0042DAD4 10000008 */  b           .L0042DAF8
/* 02DAD8 0042DAD8 8FBC0030 */   lw         $gp, 0x30($sp)
.L0042DADC:
/* 02DADC 0042DADC 8E190004 */  lw          $t9, 0x4($s0)
/* 02DAE0 0042DAE0 02202025 */  move        $a0, $s1
/* 02DAE4 0042DAE4 03352823 */  subu        $a1, $t9, $s5
/* 02DAE8 0042DAE8 8F998488 */  lw          $t9, %call16(obj_set_symlib)($gp)
/* 02DAEC 0042DAEC 0320F809 */  jalr        $t9
/* 02DAF0 0042DAF0 00000000 */   nop
/* 02DAF4 0042DAF4 8FBC0030 */  lw          $gp, 0x30($sp)
.L0042DAF8:
/* 02DAF8 0042DAF8 8E030008 */  lw          $v1, 0x8($s0)
.L0042DAFC:
/* 02DAFC 0042DAFC 26100008 */  addiu       $s0, $s0, 0x8
/* 02DB00 0042DB00 5460FE78 */  bnel        $v1, $zero, .L0042D4E4
/* 02DB04 0042DB04 28610014 */   slti       $at, $v1, 0x14
.L0042DB08:
/* 02DB08 0042DB08 8F9982F0 */  lw          $t9, %call16(obj_got)($gp)
/* 02DB0C 0042DB0C 02202025 */  move        $a0, $s1
/* 02DB10 0042DB10 0320F809 */  jalr        $t9
/* 02DB14 0042DB14 00000000 */   nop
/* 02DB18 0042DB18 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02DB1C 0042DB1C 00408025 */  move        $s0, $v0
/* 02DB20 0042DB20 02202025 */  move        $a0, $s1
/* 02DB24 0042DB24 8F99830C */  lw          $t9, %call16(obj_locgotcount)($gp)
/* 02DB28 0042DB28 0320F809 */  jalr        $t9
/* 02DB2C 0042DB2C 00000000 */   nop
/* 02DB30 0042DB30 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02DB34 0042DB34 00024880 */  sll         $t1, $v0, 2
/* 02DB38 0042DB38 01302821 */  addu        $a1, $t1, $s0
/* 02DB3C 0042DB3C 8F998374 */  lw          $t9, %call16(obj_set_extgot)($gp)
/* 02DB40 0042DB40 02202025 */  move        $a0, $s1
/* 02DB44 0042DB44 0320F809 */  jalr        $t9
/* 02DB48 0042DB48 00000000 */   nop
/* 02DB4C 0042DB4C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02DB50 0042DB50 02202025 */  move        $a0, $s1
/* 02DB54 0042DB54 8F998378 */  lw          $t9, %call16(obj_rpath)($gp)
/* 02DB58 0042DB58 0320F809 */  jalr        $t9
/* 02DB5C 0042DB5C 00000000 */   nop
/* 02DB60 0042DB60 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02DB64 0042DB64 02202025 */  move        $a0, $s1
/* 02DB68 0042DB68 00402825 */  move        $a1, $v0
/* 02DB6C 0042DB6C 8F9983E4 */  lw          $t9, %call16(obj_dynstring)($gp)
/* 02DB70 0042DB70 0320F809 */  jalr        $t9
/* 02DB74 0042DB74 00000000 */   nop
/* 02DB78 0042DB78 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02DB7C 0042DB7C 02202025 */  move        $a0, $s1
/* 02DB80 0042DB80 00402825 */  move        $a1, $v0
/* 02DB84 0042DB84 8F99837C */  lw          $t9, %call16(obj_set_rpath)($gp)
/* 02DB88 0042DB88 0320F809 */  jalr        $t9
/* 02DB8C 0042DB8C 00000000 */   nop
/* 02DB90 0042DB90 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02DB94 0042DB94 02202025 */  move        $a0, $s1
/* 02DB98 0042DB98 8F998380 */  lw          $t9, %call16(obj_soname)($gp)
/* 02DB9C 0042DB9C 0320F809 */  jalr        $t9
/* 02DBA0 0042DBA0 00000000 */   nop
/* 02DBA4 0042DBA4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02DBA8 0042DBA8 02202025 */  move        $a0, $s1
/* 02DBAC 0042DBAC 00402825 */  move        $a1, $v0
/* 02DBB0 0042DBB0 8F9983E4 */  lw          $t9, %call16(obj_dynstring)($gp)
/* 02DBB4 0042DBB4 0320F809 */  jalr        $t9
/* 02DBB8 0042DBB8 00000000 */   nop
/* 02DBBC 0042DBBC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02DBC0 0042DBC0 02202025 */  move        $a0, $s1
/* 02DBC4 0042DBC4 00402825 */  move        $a1, $v0
/* 02DBC8 0042DBC8 8F998384 */  lw          $t9, %call16(obj_set_soname)($gp)
/* 02DBCC 0042DBCC 0320F809 */  jalr        $t9
/* 02DBD0 0042DBD0 00000000 */   nop
/* 02DBD4 0042DBD4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02DBD8 0042DBD8 02202025 */  move        $a0, $s1
/* 02DBDC 0042DBDC 8F998300 */  lw          $t9, %call16(obj_liblist)($gp)
/* 02DBE0 0042DBE0 0320F809 */  jalr        $t9
/* 02DBE4 0042DBE4 00000000 */   nop
/* 02DBE8 0042DBE8 1440003D */  bnez        $v0, .L0042DCE0
/* 02DBEC 0042DBEC 8FBC0030 */   lw         $gp, 0x30($sp)
/* 02DBF0 0042DBF0 1260003B */  beqz        $s3, .L0042DCE0
/* 02DBF4 0042DBF4 00138080 */   sll        $s0, $s3, 2
/* 02DBF8 0042DBF8 8F998068 */  lw          $t9, %call16(malloc)($gp)
/* 02DBFC 0042DBFC 02138021 */  addu        $s0, $s0, $s3
/* 02DC00 0042DC00 00108080 */  sll         $s0, $s0, 2
/* 02DC04 0042DC04 0320F809 */  jalr        $t9
/* 02DC08 0042DC08 02002025 */   move       $a0, $s0
/* 02DC0C 0042DC0C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02DC10 0042DC10 00409025 */  move        $s2, $v0
/* 02DC14 0042DC14 00402025 */  move        $a0, $v0
/* 02DC18 0042DC18 8F99813C */  lw          $t9, %call16(memset)($gp)
/* 02DC1C 0042DC1C 00002825 */  move        $a1, $zero
/* 02DC20 0042DC20 02003025 */  move        $a2, $s0
/* 02DC24 0042DC24 0320F809 */  jalr        $t9
/* 02DC28 0042DC28 00000000 */   nop
/* 02DC2C 0042DC2C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 02DC30 0042DC30 1A600024 */  blez        $s3, .L0042DCC4
/* 02DC34 0042DC34 00002025 */   move       $a0, $zero
/* 02DC38 0042DC38 32660003 */  andi        $a2, $s3, 0x3
/* 02DC3C 0042DC3C 10C0000E */  beqz        $a2, .L0042DC78
/* 02DC40 0042DC40 00C02825 */   move       $a1, $a2
/* 02DC44 0042DC44 8FAA0058 */  lw          $t2, 0x58($sp)
/* 02DC48 0042DC48 00004100 */  sll         $t0, $zero, 4
/* 02DC4C 0042DC4C 00005880 */  sll         $t3, $zero, 2
/* 02DC50 0042DC50 02481021 */  addu        $v0, $s2, $t0
/* 02DC54 0042DC54 014B1821 */  addu        $v1, $t2, $t3
.L0042DC58:
/* 02DC58 0042DC58 8C6C0000 */  lw          $t4, 0x0($v1)
/* 02DC5C 0042DC5C 24840001 */  addiu       $a0, $a0, 0x1
/* 02DC60 0042DC60 24420014 */  addiu       $v0, $v0, 0x14
/* 02DC64 0042DC64 24630004 */  addiu       $v1, $v1, 0x4
/* 02DC68 0042DC68 14A4FFFB */  bne         $a1, $a0, .L0042DC58
/* 02DC6C 0042DC6C AC4CFFEC */   sw         $t4, -0x14($v0)
/* 02DC70 0042DC70 50930015 */  beql        $a0, $s3, .L0042DCC8
/* 02DC74 0042DC74 AE320134 */   sw         $s2, 0x134($s1)
.L0042DC78:
/* 02DC78 0042DC78 8FAE0058 */  lw          $t6, 0x58($sp)
/* 02DC7C 0042DC7C 00046880 */  sll         $t5, $a0, 2
/* 02DC80 0042DC80 01A46821 */  addu        $t5, $t5, $a0
/* 02DC84 0042DC84 000D6880 */  sll         $t5, $t5, 2
/* 02DC88 0042DC88 00047880 */  sll         $t7, $a0, 2
/* 02DC8C 0042DC8C 024D1021 */  addu        $v0, $s2, $t5
/* 02DC90 0042DC90 01CF1821 */  addu        $v1, $t6, $t7
.L0042DC94:
/* 02DC94 0042DC94 8C780000 */  lw          $t8, 0x0($v1)
/* 02DC98 0042DC98 24840004 */  addiu       $a0, $a0, 0x4
/* 02DC9C 0042DC9C 24420050 */  addiu       $v0, $v0, 0x50
/* 02DCA0 0042DCA0 AC58FFB0 */  sw          $t8, -0x50($v0)
/* 02DCA4 0042DCA4 8C790004 */  lw          $t9, 0x4($v1)
/* 02DCA8 0042DCA8 24630010 */  addiu       $v1, $v1, 0x10
/* 02DCAC 0042DCAC AC59FFC4 */  sw          $t9, -0x3C($v0)
/* 02DCB0 0042DCB0 8C69FFF8 */  lw          $t1, -0x8($v1)
/* 02DCB4 0042DCB4 AC49FFD8 */  sw          $t1, -0x28($v0)
/* 02DCB8 0042DCB8 8C68FFFC */  lw          $t0, -0x4($v1)
/* 02DCBC 0042DCBC 1493FFF5 */  bne         $a0, $s3, .L0042DC94
/* 02DCC0 0042DCC0 AC48FFEC */   sw         $t0, -0x14($v0)
.L0042DCC4:
/* 02DCC4 0042DCC4 AE320134 */  sw          $s2, 0x134($s1)
.L0042DCC8:
/* 02DCC8 0042DCC8 AE33016C */  sw          $s3, 0x16C($s1)
/* 02DCCC 0042DCCC 8F9980A4 */  lw          $t9, %call16(free)($gp)
/* 02DCD0 0042DCD0 8FA40058 */  lw          $a0, 0x58($sp)
/* 02DCD4 0042DCD4 0320F809 */  jalr        $t9
/* 02DCD8 0042DCD8 00000000 */   nop
/* 02DCDC 0042DCDC 8FBC0030 */  lw          $gp, 0x30($sp)
.L0042DCE0:
/* 02DCE0 0042DCE0 8FBF0034 */  lw          $ra, 0x34($sp)
/* 02DCE4 0042DCE4 8FB00018 */  lw          $s0, 0x18($sp)
/* 02DCE8 0042DCE8 8FB1001C */  lw          $s1, 0x1C($sp)
/* 02DCEC 0042DCEC 8FB20020 */  lw          $s2, 0x20($sp)
/* 02DCF0 0042DCF0 8FB30024 */  lw          $s3, 0x24($sp)
/* 02DCF4 0042DCF4 8FB40028 */  lw          $s4, 0x28($sp)
/* 02DCF8 0042DCF8 8FB5002C */  lw          $s5, 0x2C($sp)
/* 02DCFC 0042DCFC 27BD0060 */  addiu       $sp, $sp, 0x60
/* 02DD00 0042DD00 03E00008 */  jr          $ra
/* 02DD04 0042DD04 24020001 */   addiu      $v0, $zero, 0x1
