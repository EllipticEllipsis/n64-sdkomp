glabel swap_ext # 501
/* 0319B0 004319B0 3C1C0FBE */  lui         $gp, %hi(_gp_disp)
/* 0319B4 004319B4 279C13B0 */  addiu       $gp, $gp, %lo(_gp_disp)
# _gp_disp: 0xFBE13B0
/* 0319B8 004319B8 0399E021 */  addu        $gp, $gp, $t9
/* 0319BC 004319BC 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 0319C0 004319C0 8F998238 */  lw          $t9, %call16(gethostsex)($gp)
/* 0319C4 004319C4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0319C8 004319C8 AFB1001C */  sw          $s1, 0x1C($sp)
/* 0319CC 004319CC AFB00018 */  sw          $s0, 0x18($sp)
/* 0319D0 004319D0 00A08025 */  move        $s0, $a1
/* 0319D4 004319D4 00C08825 */  move        $s1, $a2
/* 0319D8 004319D8 AFBC0020 */  sw          $gp, 0x20($sp)
/* 0319DC 004319DC 0320F809 */  jalr        $t9
/* 0319E0 004319E0 AFA40048 */   sw         $a0, 0x48($sp)
/* 0319E4 004319E4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0319E8 004319E8 1A0000E6 */  blez        $s0, .L00431D84
/* 0319EC 004319EC 8FA40048 */   lw         $a0, 0x48($sp)
/* 0319F0 004319F0 00107100 */  sll         $t6, $s0, 4
/* 0319F4 004319F4 01C44021 */  addu        $t0, $t6, $a0
/* 0319F8 004319F8 00801825 */  move        $v1, $a0
/* 0319FC 004319FC 3C0700FF */  lui         $a3, (0xFF0000 >> 16)
/* 031A00 00431A00 27A60030 */  addiu       $a2, $sp, 0x30
/* 031A04 00431A04 3C0500FF */  lui         $a1, (0xFF0000 >> 16)
/* 031A08 00431A08 8C780000 */  lw          $t8, 0x0($v1)
.L00431A0C:
/* 031A0C 00431A0C ACD80000 */  sw          $t8, 0x0($a2)
/* 031A10 00431A10 8C6F0004 */  lw          $t7, 0x4($v1)
/* 031A14 00431A14 ACCF0004 */  sw          $t7, 0x4($a2)
/* 031A18 00431A18 8C780008 */  lw          $t8, 0x8($v1)
/* 031A1C 00431A1C ACD80008 */  sw          $t8, 0x8($a2)
/* 031A20 00431A20 8C6F000C */  lw          $t7, 0xC($v1)
/* 031A24 00431A24 ACCF000C */  sw          $t7, 0xC($a2)
/* 031A28 00431A28 8FB90034 */  lw          $t9, 0x34($sp)
/* 031A2C 00431A2C 00195200 */  sll         $t2, $t9, 8
/* 031A30 00431A30 01475824 */  and         $t3, $t2, $a3
/* 031A34 00431A34 00194E00 */  sll         $t1, $t9, 24
/* 031A38 00431A38 012B6025 */  or          $t4, $t1, $t3
/* 031A3C 00431A3C 8FAB0038 */  lw          $t3, 0x38($sp)
/* 031A40 00431A40 00196A03 */  sra         $t5, $t9, 8
/* 031A44 00431A44 31AEFF00 */  andi        $t6, $t5, 0xFF00
/* 031A48 00431A48 018E7825 */  or          $t7, $t4, $t6
/* 031A4C 00431A4C 00195602 */  srl         $t2, $t9, 24
/* 031A50 00431A50 000B6A00 */  sll         $t5, $t3, 8
/* 031A54 00431A54 01EA4825 */  or          $t1, $t7, $t2
/* 031A58 00431A58 01A76024 */  and         $t4, $t5, $a3
/* 031A5C 00431A5C 000BCE00 */  sll         $t9, $t3, 24
/* 031A60 00431A60 000BC203 */  sra         $t8, $t3, 8
/* 031A64 00431A64 330FFF00 */  andi        $t7, $t8, 0xFF00
/* 031A68 00431A68 032C7025 */  or          $t6, $t9, $t4
/* 031A6C 00431A6C 01CF5025 */  or          $t2, $t6, $t7
/* 031A70 00431A70 000B6E02 */  srl         $t5, $t3, 24
/* 031A74 00431A74 014DC825 */  or          $t9, $t2, $t5
/* 031A78 00431A78 AFA90034 */  sw          $t1, 0x34($sp)
/* 031A7C 00431A7C 1622005E */  bne         $s1, $v0, .L00431BF8
/* 031A80 00431A80 AFB90038 */   sw         $t9, 0x38($sp)
/* 031A84 00431A84 8CCB0000 */  lw          $t3, 0x0($a2)
/* 031A88 00431A88 AC6B0000 */  sw          $t3, 0x0($v1)
/* 031A8C 00431A8C 8CCC0004 */  lw          $t4, 0x4($a2)
/* 031A90 00431A90 AC6C0004 */  sw          $t4, 0x4($v1)
/* 031A94 00431A94 8CCB0008 */  lw          $t3, 0x8($a2)
/* 031A98 00431A98 AC6B0008 */  sw          $t3, 0x8($v1)
/* 031A9C 00431A9C 8CCC000C */  lw          $t4, 0xC($a2)
/* 031AA0 00431AA0 AC6C000C */  sw          $t4, 0xC($v1)
/* 031AA4 00431AA4 8FB8003C */  lw          $t8, 0x3C($sp)
/* 031AA8 00431AA8 00187A00 */  sll         $t7, $t8, 8
/* 031AAC 00431AAC 01E54824 */  and         $t1, $t7, $a1
/* 031AB0 00431AB0 00187600 */  sll         $t6, $t8, 24
/* 031AB4 00431AB4 00186A02 */  srl         $t5, $t8, 8
/* 031AB8 00431AB8 31B9FF00 */  andi        $t9, $t5, 0xFF00
/* 031ABC 00431ABC 01C95025 */  or          $t2, $t6, $t1
/* 031AC0 00431AC0 01596025 */  or          $t4, $t2, $t9
/* 031AC4 00431AC4 00185E02 */  srl         $t3, $t8, 24
/* 031AC8 00431AC8 018B7025 */  or          $t6, $t4, $t3
/* 031ACC 00431ACC AFAE003C */  sw          $t6, 0x3C($sp)
/* 031AD0 00431AD0 906A000C */  lbu         $t2, 0xC($v1)
/* 031AD4 00431AD4 000E6880 */  sll         $t5, $t6, 2
/* 031AD8 00431AD8 3159FF03 */  andi        $t9, $t2, 0xFF03
/* 031ADC 00431ADC 01B9C025 */  or          $t8, $t5, $t9
/* 031AE0 00431AE0 A078000C */  sb          $t8, 0xC($v1)
/* 031AE4 00431AE4 8FAC003C */  lw          $t4, 0x3C($sp)
/* 031AE8 00431AE8 946A000C */  lhu         $t2, 0xC($v1)
/* 031AEC 00431AEC 000C5D40 */  sll         $t3, $t4, 21
/* 031AF0 00431AF0 000B7EC2 */  srl         $t7, $t3, 27
/* 031AF4 00431AF4 000F7140 */  sll         $t6, $t7, 5
/* 031AF8 00431AF8 31C903E0 */  andi        $t1, $t6, 0x3E0
/* 031AFC 00431AFC 314DFC1F */  andi        $t5, $t2, 0xFC1F
/* 031B00 00431B00 012DC825 */  or          $t9, $t1, $t5
/* 031B04 00431B04 A479000C */  sh          $t9, 0xC($v1)
/* 031B08 00431B08 8FB8003C */  lw          $t8, 0x3C($sp)
/* 031B0C 00431B0C 906A000D */  lbu         $t2, 0xD($v1)
/* 031B10 00431B10 00186500 */  sll         $t4, $t8, 20
/* 031B14 00431B14 000C5FC2 */  srl         $t3, $t4, 31
/* 031B18 00431B18 000B7900 */  sll         $t7, $t3, 4
/* 031B1C 00431B1C 31EE0010 */  andi        $t6, $t7, 0x10
/* 031B20 00431B20 3149FFEF */  andi        $t1, $t2, 0xFFEF
/* 031B24 00431B24 01C96825 */  or          $t5, $t6, $t1
/* 031B28 00431B28 A06D000D */  sb          $t5, 0xD($v1)
/* 031B2C 00431B2C 8FB9003C */  lw          $t9, 0x3C($sp)
/* 031B30 00431B30 8C64000C */  lw          $a0, 0xC($v1)
/* 031B34 00431B34 0019C302 */  srl         $t8, $t9, 12
/* 031B38 00431B38 03046026 */  xor         $t4, $t8, $a0
/* 031B3C 00431B3C 000C5B00 */  sll         $t3, $t4, 12
/* 031B40 00431B40 000B7B02 */  srl         $t7, $t3, 12
/* 031B44 00431B44 01E45026 */  xor         $t2, $t7, $a0
/* 031B48 00431B48 AC6A000C */  sw          $t2, 0xC($v1)
/* 031B4C 00431B4C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 031B50 00431B50 000E6A00 */  sll         $t5, $t6, 8
/* 031B54 00431B54 01A5C824 */  and         $t9, $t5, $a1
/* 031B58 00431B58 000E4E00 */  sll         $t1, $t6, 24
/* 031B5C 00431B5C 000E6202 */  srl         $t4, $t6, 8
/* 031B60 00431B60 318BFF00 */  andi        $t3, $t4, 0xFF00
/* 031B64 00431B64 0139C025 */  or          $t8, $t1, $t9
/* 031B68 00431B68 030B7825 */  or          $t7, $t8, $t3
/* 031B6C 00431B6C 000E5602 */  srl         $t2, $t6, 24
/* 031B70 00431B70 01EA6825 */  or          $t5, $t7, $t2
/* 031B74 00431B74 AFAD0030 */  sw          $t5, 0x30($sp)
/* 031B78 00431B78 87A90030 */  lh          $t1, 0x30($sp)
/* 031B7C 00431B7C 946E0000 */  lhu         $t6, 0x0($v1)
/* 031B80 00431B80 A4690002 */  sh          $t1, 0x2($v1)
/* 031B84 00431B84 97B90032 */  lhu         $t9, 0x32($sp)
/* 031B88 00431B88 31CFF800 */  andi        $t7, $t6, 0xF800
/* 031B8C 00431B8C 0019C0C2 */  srl         $t8, $t9, 3
/* 031B90 00431B90 330B07FF */  andi        $t3, $t8, 0x7FF
/* 031B94 00431B94 016F5025 */  or          $t2, $t3, $t7
/* 031B98 00431B98 A46A0000 */  sh          $t2, 0x0($v1)
/* 031B9C 00431B9C 90780000 */  lbu         $t8, 0x0($v1)
/* 031BA0 00431BA0 8FA90030 */  lw          $t1, 0x30($sp)
/* 031BA4 00431BA4 330EFF7F */  andi        $t6, $t8, 0xFF7F
/* 031BA8 00431BA8 000961C0 */  sll         $t4, $t1, 7
/* 031BAC 00431BAC 018EC025 */  or          $t8, $t4, $t6
/* 031BB0 00431BB0 A0780000 */  sb          $t8, 0x0($v1)
/* 031BB4 00431BB4 8FAF0030 */  lw          $t7, 0x30($sp)
/* 031BB8 00431BB8 330C00BF */  andi        $t4, $t8, 0xBF
/* 031BBC 00431BBC 000F5780 */  sll         $t2, $t7, 30
/* 031BC0 00431BC0 000A6FC2 */  srl         $t5, $t2, 31
/* 031BC4 00431BC4 000D4980 */  sll         $t1, $t5, 6
/* 031BC8 00431BC8 31390040 */  andi        $t9, $t1, 0x40
/* 031BCC 00431BCC 032CC025 */  or          $t8, $t9, $t4
/* 031BD0 00431BD0 A0780000 */  sb          $t8, 0x0($v1)
/* 031BD4 00431BD4 8FAB0030 */  lw          $t3, 0x30($sp)
/* 031BD8 00431BD8 331900DF */  andi        $t9, $t8, 0xDF
/* 031BDC 00431BDC 000B7F40 */  sll         $t7, $t3, 29
/* 031BE0 00431BE0 000F57C2 */  srl         $t2, $t7, 31
/* 031BE4 00431BE4 000A6940 */  sll         $t5, $t2, 5
/* 031BE8 00431BE8 31A90020 */  andi        $t1, $t5, 0x20
/* 031BEC 00431BEC 01396025 */  or          $t4, $t1, $t9
/* 031BF0 00431BF0 10000061 */  b           .L00431D78
/* 031BF4 00431BF4 A06C0000 */   sb         $t4, 0x0($v1)
.L00431BF8:
/* 031BF8 00431BF8 8C6E000C */  lw          $t6, 0xC($v1)
/* 031BFC 00431BFC 93AA003F */  lbu         $t2, 0x3F($sp)
/* 031C00 00431C00 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 031C04 00431C04 000E5E82 */  srl         $t3, $t6, 26
/* 031C08 00431C08 316F003F */  andi        $t7, $t3, 0x3F
/* 031C0C 00431C0C 314DFFC0 */  andi        $t5, $t2, 0xFFC0
/* 031C10 00431C10 01EDC025 */  or          $t8, $t7, $t5
/* 031C14 00431C14 A3B8003F */  sb          $t8, 0x3F($sp)
/* 031C18 00431C18 8C69000C */  lw          $t1, 0xC($v1)
/* 031C1C 00431C1C 97AA003E */  lhu         $t2, 0x3E($sp)
/* 031C20 00431C20 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 031C24 00431C24 0009C980 */  sll         $t9, $t1, 6
/* 031C28 00431C28 001966C2 */  srl         $t4, $t9, 27
/* 031C2C 00431C2C 000C7180 */  sll         $t6, $t4, 6
/* 031C30 00431C30 31CB07C0 */  andi        $t3, $t6, 0x7C0
/* 031C34 00431C34 314FF83F */  andi        $t7, $t2, 0xF83F
/* 031C38 00431C38 016F6825 */  or          $t5, $t3, $t7
/* 031C3C 00431C3C A7AD003E */  sh          $t5, 0x3E($sp)
/* 031C40 00431C40 8C78000C */  lw          $t8, 0xC($v1)
/* 031C44 00431C44 93AA003E */  lbu         $t2, 0x3E($sp)
/* 031C48 00431C48 00184AC0 */  sll         $t1, $t8, 11
/* 031C4C 00431C4C 0009CFC2 */  srl         $t9, $t1, 31
/* 031C50 00431C50 001960C0 */  sll         $t4, $t9, 3
/* 031C54 00431C54 318E0008 */  andi        $t6, $t4, 0x8
/* 031C58 00431C58 314BFFF7 */  andi        $t3, $t2, 0xFFF7
/* 031C5C 00431C5C 01CB7825 */  or          $t7, $t6, $t3
/* 031C60 00431C60 A3AF003E */  sb          $t7, 0x3E($sp)
/* 031C64 00431C64 8C6D000C */  lw          $t5, 0xC($v1)
/* 031C68 00431C68 8FA9003C */  lw          $t1, 0x3C($sp)
/* 031C6C 00431C6C 01A1C024 */  and         $t8, $t5, $at
/* 031C70 00431C70 0009CB02 */  srl         $t9, $t1, 12
/* 031C74 00431C74 03196026 */  xor         $t4, $t8, $t9
/* 031C78 00431C78 000C5300 */  sll         $t2, $t4, 12
/* 031C7C 00431C7C 01497026 */  xor         $t6, $t2, $t1
/* 031C80 00431C80 000E7A00 */  sll         $t7, $t6, 8
/* 031C84 00431C84 01E56824 */  and         $t5, $t7, $a1
/* 031C88 00431C88 000E5E00 */  sll         $t3, $t6, 24
/* 031C8C 00431C8C 000ECA02 */  srl         $t9, $t6, 8
/* 031C90 00431C90 332CFF00 */  andi        $t4, $t9, 0xFF00
/* 031C94 00431C94 016DC025 */  or          $t8, $t3, $t5
/* 031C98 00431C98 030C5025 */  or          $t2, $t8, $t4
/* 031C9C 00431C9C 000E4E02 */  srl         $t1, $t6, 24
/* 031CA0 00431CA0 AFAE003C */  sw          $t6, 0x3C($sp)
/* 031CA4 00431CA4 01497825 */  or          $t7, $t2, $t1
/* 031CA8 00431CA8 AFAF003C */  sw          $t7, 0x3C($sp)
/* 031CAC 00431CAC 946B0002 */  lhu         $t3, 0x2($v1)
/* 031CB0 00431CB0 97AE0032 */  lhu         $t6, 0x32($sp)
/* 031CB4 00431CB4 A7AB0030 */  sh          $t3, 0x30($sp)
/* 031CB8 00431CB8 946D0000 */  lhu         $t5, 0x0($v1)
/* 031CBC 00431CBC 31CA0007 */  andi        $t2, $t6, 0x7
/* 031CC0 00431CC0 31B907FF */  andi        $t9, $t5, 0x7FF
/* 031CC4 00431CC4 001960C0 */  sll         $t4, $t9, 3
/* 031CC8 00431CC8 018A4825 */  or          $t1, $t4, $t2
/* 031CCC 00431CCC A7A90032 */  sh          $t1, 0x32($sp)
/* 031CD0 00431CD0 8C6F0000 */  lw          $t7, 0x0($v1)
/* 031CD4 00431CD4 93AE0033 */  lbu         $t6, 0x33($sp)
/* 031CD8 00431CD8 000F5880 */  sll         $t3, $t7, 2
/* 031CDC 00431CDC 000B6FC2 */  srl         $t5, $t3, 31
/* 031CE0 00431CE0 000DC880 */  sll         $t9, $t5, 2
/* 031CE4 00431CE4 33380004 */  andi        $t8, $t9, 0x4
/* 031CE8 00431CE8 31CCFFFB */  andi        $t4, $t6, 0xFFFB
/* 031CEC 00431CEC 030C7025 */  or          $t6, $t8, $t4
/* 031CF0 00431CF0 A3AE0033 */  sb          $t6, 0x33($sp)
/* 031CF4 00431CF4 8C690000 */  lw          $t1, 0x0($v1)
/* 031CF8 00431CF8 31D800FD */  andi        $t8, $t6, 0xFD
/* 031CFC 00431CFC 00097840 */  sll         $t7, $t1, 1
/* 031D00 00431D00 000F5FC2 */  srl         $t3, $t7, 31
/* 031D04 00431D04 000B6840 */  sll         $t5, $t3, 1
/* 031D08 00431D08 31B90002 */  andi        $t9, $t5, 0x2
/* 031D0C 00431D0C 03386825 */  or          $t5, $t9, $t8
/* 031D10 00431D10 A3AD0033 */  sb          $t5, 0x33($sp)
/* 031D14 00431D14 8C690000 */  lw          $t1, 0x0($v1)
/* 031D18 00431D18 31AA00FE */  andi        $t2, $t5, 0xFE
/* 031D1C 00431D1C 00097FC2 */  srl         $t7, $t1, 31
/* 031D20 00431D20 31EB0001 */  andi        $t3, $t7, 0x1
/* 031D24 00431D24 016A7025 */  or          $t6, $t3, $t2
/* 031D28 00431D28 A3AE0033 */  sb          $t6, 0x33($sp)
/* 031D2C 00431D2C 8FB90030 */  lw          $t9, 0x30($sp)
/* 031D30 00431D30 00194A00 */  sll         $t1, $t9, 8
/* 031D34 00431D34 01257824 */  and         $t7, $t1, $a1
/* 031D38 00431D38 0019C600 */  sll         $t8, $t9, 24
/* 031D3C 00431D3C 00196A02 */  srl         $t5, $t9, 8
/* 031D40 00431D40 31ABFF00 */  andi        $t3, $t5, 0xFF00
/* 031D44 00431D44 030F6025 */  or          $t4, $t8, $t7
/* 031D48 00431D48 018B5025 */  or          $t2, $t4, $t3
/* 031D4C 00431D4C 00197602 */  srl         $t6, $t9, 24
/* 031D50 00431D50 014E4825 */  or          $t1, $t2, $t6
/* 031D54 00431D54 AFA90030 */  sw          $t1, 0x30($sp)
/* 031D58 00431D58 8CCF0000 */  lw          $t7, 0x0($a2)
/* 031D5C 00431D5C AC6F0000 */  sw          $t7, 0x0($v1)
/* 031D60 00431D60 8CD80004 */  lw          $t8, 0x4($a2)
/* 031D64 00431D64 AC780004 */  sw          $t8, 0x4($v1)
/* 031D68 00431D68 8CCF0008 */  lw          $t7, 0x8($a2)
/* 031D6C 00431D6C AC6F0008 */  sw          $t7, 0x8($v1)
/* 031D70 00431D70 8CD8000C */  lw          $t8, 0xC($a2)
/* 031D74 00431D74 AC78000C */  sw          $t8, 0xC($v1)
.L00431D78:
/* 031D78 00431D78 24630010 */  addiu       $v1, $v1, 0x10
/* 031D7C 00431D7C 5468FF23 */  bnel        $v1, $t0, .L00431A0C
/* 031D80 00431D80 8C780000 */   lw         $t8, 0x0($v1)
.L00431D84:
/* 031D84 00431D84 8FBF0024 */  lw          $ra, 0x24($sp)
/* 031D88 00431D88 8FB00018 */  lw          $s0, 0x18($sp)
/* 031D8C 00431D8C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 031D90 00431D90 03E00008 */  jr          $ra
/* 031D94 00431D94 27BD0048 */   addiu      $sp, $sp, 0x48
