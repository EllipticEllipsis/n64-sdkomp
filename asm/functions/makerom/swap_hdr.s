glabel swap_hdr # 497
/* 030BE0 00430BE0 AFA50004 */  sw          $a1, 0x4($sp)
/* 030BE4 00430BE4 84830000 */  lh          $v1, 0x0($a0)
/* 030BE8 00430BE8 84850002 */  lh          $a1, 0x2($a0)
/* 030BEC 00430BEC 8C860004 */  lw          $a2, 0x4($a0)
/* 030BF0 00430BF0 3078FFFF */  andi        $t8, $v1, 0xFFFF
/* 030BF4 00430BF4 0018CA02 */  srl         $t9, $t8, 8
/* 030BF8 00430BF8 00037A00 */  sll         $t7, $v1, 8
/* 030BFC 00430BFC 01F94825 */  or          $t1, $t7, $t9
/* 030C00 00430C00 30ACFFFF */  andi        $t4, $a1, 0xFFFF
/* 030C04 00430C04 3C0200FF */  lui         $v0, (0xFF0000 >> 16)
/* 030C08 00430C08 000C6A02 */  srl         $t5, $t4, 8
/* 030C0C 00430C0C 00055A00 */  sll         $t3, $a1, 8
/* 030C10 00430C10 00067A00 */  sll         $t7, $a2, 8
/* 030C14 00430C14 8C870008 */  lw          $a3, 0x8($a0)
/* 030C18 00430C18 A4890000 */  sh          $t1, 0x0($a0)
/* 030C1C 00430C1C 016D7025 */  or          $t6, $t3, $t5
/* 030C20 00430C20 01E2C824 */  and         $t9, $t7, $v0
/* 030C24 00430C24 0006C600 */  sll         $t8, $a2, 24
/* 030C28 00430C28 03194825 */  or          $t1, $t8, $t9
/* 030C2C 00430C2C 00065203 */  sra         $t2, $a2, 8
/* 030C30 00430C30 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 030C34 00430C34 A48E0002 */  sh          $t6, 0x2($a0)
/* 030C38 00430C38 012C5825 */  or          $t3, $t1, $t4
/* 030C3C 00430C3C 00066E02 */  srl         $t5, $a2, 24
/* 030C40 00430C40 0007C200 */  sll         $t8, $a3, 8
/* 030C44 00430C44 8C88000C */  lw          $t0, 0xC($a0)
/* 030C48 00430C48 016D7025 */  or          $t6, $t3, $t5
/* 030C4C 00430C4C 0302C824 */  and         $t9, $t8, $v0
/* 030C50 00430C50 00077E00 */  sll         $t7, $a3, 24
/* 030C54 00430C54 01F95025 */  or          $t2, $t7, $t9
/* 030C58 00430C58 00074A03 */  sra         $t1, $a3, 8
/* 030C5C 00430C5C 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 030C60 00430C60 AC8E0004 */  sw          $t6, 0x4($a0)
/* 030C64 00430C64 014C5825 */  or          $t3, $t2, $t4
/* 030C68 00430C68 00076E02 */  srl         $t5, $a3, 24
/* 030C6C 00430C6C 00087A00 */  sll         $t7, $t0, 8
/* 030C70 00430C70 8C830010 */  lw          $v1, 0x10($a0)
/* 030C74 00430C74 016D7025 */  or          $t6, $t3, $t5
/* 030C78 00430C78 01E2C824 */  and         $t9, $t7, $v0
/* 030C7C 00430C7C 0008C600 */  sll         $t8, $t0, 24
/* 030C80 00430C80 03194825 */  or          $t1, $t8, $t9
/* 030C84 00430C84 00085203 */  sra         $t2, $t0, 8
/* 030C88 00430C88 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 030C8C 00430C8C AC8E0008 */  sw          $t6, 0x8($a0)
/* 030C90 00430C90 012C5825 */  or          $t3, $t1, $t4
/* 030C94 00430C94 00086E02 */  srl         $t5, $t0, 24
/* 030C98 00430C98 0003C200 */  sll         $t8, $v1, 8
/* 030C9C 00430C9C 8C850014 */  lw          $a1, 0x14($a0)
/* 030CA0 00430CA0 016D7025 */  or          $t6, $t3, $t5
/* 030CA4 00430CA4 0302C824 */  and         $t9, $t8, $v0
/* 030CA8 00430CA8 00037E00 */  sll         $t7, $v1, 24
/* 030CAC 00430CAC 01F95025 */  or          $t2, $t7, $t9
/* 030CB0 00430CB0 00034A03 */  sra         $t1, $v1, 8
/* 030CB4 00430CB4 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 030CB8 00430CB8 AC8E000C */  sw          $t6, 0xC($a0)
/* 030CBC 00430CBC 014C5825 */  or          $t3, $t2, $t4
/* 030CC0 00430CC0 00036E02 */  srl         $t5, $v1, 24
/* 030CC4 00430CC4 00057A00 */  sll         $t7, $a1, 8
/* 030CC8 00430CC8 8C860018 */  lw          $a2, 0x18($a0)
/* 030CCC 00430CCC 016D7025 */  or          $t6, $t3, $t5
/* 030CD0 00430CD0 01E2C824 */  and         $t9, $t7, $v0
/* 030CD4 00430CD4 0005C600 */  sll         $t8, $a1, 24
/* 030CD8 00430CD8 03194825 */  or          $t1, $t8, $t9
/* 030CDC 00430CDC 00055203 */  sra         $t2, $a1, 8
/* 030CE0 00430CE0 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 030CE4 00430CE4 AC8E0010 */  sw          $t6, 0x10($a0)
/* 030CE8 00430CE8 012C5825 */  or          $t3, $t1, $t4
/* 030CEC 00430CEC 00056E02 */  srl         $t5, $a1, 24
/* 030CF0 00430CF0 0006C200 */  sll         $t8, $a2, 8
/* 030CF4 00430CF4 8C87001C */  lw          $a3, 0x1C($a0)
/* 030CF8 00430CF8 016D7025 */  or          $t6, $t3, $t5
/* 030CFC 00430CFC 0302C824 */  and         $t9, $t8, $v0
/* 030D00 00430D00 00067E00 */  sll         $t7, $a2, 24
/* 030D04 00430D04 01F95025 */  or          $t2, $t7, $t9
/* 030D08 00430D08 00064A03 */  sra         $t1, $a2, 8
/* 030D0C 00430D0C 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 030D10 00430D10 AC8E0014 */  sw          $t6, 0x14($a0)
/* 030D14 00430D14 014C5825 */  or          $t3, $t2, $t4
/* 030D18 00430D18 00066E02 */  srl         $t5, $a2, 24
/* 030D1C 00430D1C 00077A00 */  sll         $t7, $a3, 8
/* 030D20 00430D20 8C830020 */  lw          $v1, 0x20($a0)
/* 030D24 00430D24 016D7025 */  or          $t6, $t3, $t5
/* 030D28 00430D28 01E2C824 */  and         $t9, $t7, $v0
/* 030D2C 00430D2C 0007C600 */  sll         $t8, $a3, 24
/* 030D30 00430D30 03194825 */  or          $t1, $t8, $t9
/* 030D34 00430D34 00075203 */  sra         $t2, $a3, 8
/* 030D38 00430D38 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 030D3C 00430D3C AC8E0018 */  sw          $t6, 0x18($a0)
/* 030D40 00430D40 012C5825 */  or          $t3, $t1, $t4
/* 030D44 00430D44 00076E02 */  srl         $t5, $a3, 24
/* 030D48 00430D48 0003C200 */  sll         $t8, $v1, 8
/* 030D4C 00430D4C 8C850024 */  lw          $a1, 0x24($a0)
/* 030D50 00430D50 016D7025 */  or          $t6, $t3, $t5
/* 030D54 00430D54 0302C824 */  and         $t9, $t8, $v0
/* 030D58 00430D58 00037E00 */  sll         $t7, $v1, 24
/* 030D5C 00430D5C 01F95025 */  or          $t2, $t7, $t9
/* 030D60 00430D60 00034A03 */  sra         $t1, $v1, 8
/* 030D64 00430D64 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 030D68 00430D68 AC8E001C */  sw          $t6, 0x1C($a0)
/* 030D6C 00430D6C 014C5825 */  or          $t3, $t2, $t4
/* 030D70 00430D70 00036E02 */  srl         $t5, $v1, 24
/* 030D74 00430D74 00057A00 */  sll         $t7, $a1, 8
/* 030D78 00430D78 8C860028 */  lw          $a2, 0x28($a0)
/* 030D7C 00430D7C 016D7025 */  or          $t6, $t3, $t5
/* 030D80 00430D80 01E2C824 */  and         $t9, $t7, $v0
/* 030D84 00430D84 0005C600 */  sll         $t8, $a1, 24
/* 030D88 00430D88 03194825 */  or          $t1, $t8, $t9
/* 030D8C 00430D8C 00055203 */  sra         $t2, $a1, 8
/* 030D90 00430D90 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 030D94 00430D94 AC8E0020 */  sw          $t6, 0x20($a0)
/* 030D98 00430D98 012C5825 */  or          $t3, $t1, $t4
/* 030D9C 00430D9C 00056E02 */  srl         $t5, $a1, 24
/* 030DA0 00430DA0 0006C200 */  sll         $t8, $a2, 8
/* 030DA4 00430DA4 8C87002C */  lw          $a3, 0x2C($a0)
/* 030DA8 00430DA8 016D7025 */  or          $t6, $t3, $t5
/* 030DAC 00430DAC 0302C824 */  and         $t9, $t8, $v0
/* 030DB0 00430DB0 00067E00 */  sll         $t7, $a2, 24
/* 030DB4 00430DB4 01F95025 */  or          $t2, $t7, $t9
/* 030DB8 00430DB8 00064A03 */  sra         $t1, $a2, 8
/* 030DBC 00430DBC 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 030DC0 00430DC0 AC8E0024 */  sw          $t6, 0x24($a0)
/* 030DC4 00430DC4 014C5825 */  or          $t3, $t2, $t4
/* 030DC8 00430DC8 00066E02 */  srl         $t5, $a2, 24
/* 030DCC 00430DCC 00077A00 */  sll         $t7, $a3, 8
/* 030DD0 00430DD0 8C830030 */  lw          $v1, 0x30($a0)
/* 030DD4 00430DD4 016D7025 */  or          $t6, $t3, $t5
/* 030DD8 00430DD8 01E2C824 */  and         $t9, $t7, $v0
/* 030DDC 00430DDC 0007C600 */  sll         $t8, $a3, 24
/* 030DE0 00430DE0 03194825 */  or          $t1, $t8, $t9
/* 030DE4 00430DE4 00075203 */  sra         $t2, $a3, 8
/* 030DE8 00430DE8 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 030DEC 00430DEC AC8E0028 */  sw          $t6, 0x28($a0)
/* 030DF0 00430DF0 012C5825 */  or          $t3, $t1, $t4
/* 030DF4 00430DF4 00076E02 */  srl         $t5, $a3, 24
/* 030DF8 00430DF8 0003C200 */  sll         $t8, $v1, 8
/* 030DFC 00430DFC 8C850034 */  lw          $a1, 0x34($a0)
/* 030E00 00430E00 016D7025 */  or          $t6, $t3, $t5
/* 030E04 00430E04 0302C824 */  and         $t9, $t8, $v0
/* 030E08 00430E08 00037E00 */  sll         $t7, $v1, 24
/* 030E0C 00430E0C 01F95025 */  or          $t2, $t7, $t9
/* 030E10 00430E10 00034A03 */  sra         $t1, $v1, 8
/* 030E14 00430E14 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 030E18 00430E18 AC8E002C */  sw          $t6, 0x2C($a0)
/* 030E1C 00430E1C 014C5825 */  or          $t3, $t2, $t4
/* 030E20 00430E20 00036E02 */  srl         $t5, $v1, 24
/* 030E24 00430E24 00057A00 */  sll         $t7, $a1, 8
/* 030E28 00430E28 8C860038 */  lw          $a2, 0x38($a0)
/* 030E2C 00430E2C 016D7025 */  or          $t6, $t3, $t5
/* 030E30 00430E30 01E2C824 */  and         $t9, $t7, $v0
/* 030E34 00430E34 0005C600 */  sll         $t8, $a1, 24
/* 030E38 00430E38 03194825 */  or          $t1, $t8, $t9
/* 030E3C 00430E3C 00055203 */  sra         $t2, $a1, 8
/* 030E40 00430E40 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 030E44 00430E44 AC8E0030 */  sw          $t6, 0x30($a0)
/* 030E48 00430E48 012C5825 */  or          $t3, $t1, $t4
/* 030E4C 00430E4C 00056E02 */  srl         $t5, $a1, 24
/* 030E50 00430E50 0006C200 */  sll         $t8, $a2, 8
/* 030E54 00430E54 8C87003C */  lw          $a3, 0x3C($a0)
/* 030E58 00430E58 016D7025 */  or          $t6, $t3, $t5
/* 030E5C 00430E5C 0302C824 */  and         $t9, $t8, $v0
/* 030E60 00430E60 00067E00 */  sll         $t7, $a2, 24
/* 030E64 00430E64 01F95025 */  or          $t2, $t7, $t9
/* 030E68 00430E68 00064A03 */  sra         $t1, $a2, 8
/* 030E6C 00430E6C 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 030E70 00430E70 AC8E0034 */  sw          $t6, 0x34($a0)
/* 030E74 00430E74 014C5825 */  or          $t3, $t2, $t4
/* 030E78 00430E78 00066E02 */  srl         $t5, $a2, 24
/* 030E7C 00430E7C 00077A00 */  sll         $t7, $a3, 8
/* 030E80 00430E80 8C830040 */  lw          $v1, 0x40($a0)
/* 030E84 00430E84 016D7025 */  or          $t6, $t3, $t5
/* 030E88 00430E88 01E2C824 */  and         $t9, $t7, $v0
/* 030E8C 00430E8C 0007C600 */  sll         $t8, $a3, 24
/* 030E90 00430E90 03194825 */  or          $t1, $t8, $t9
/* 030E94 00430E94 00075203 */  sra         $t2, $a3, 8
/* 030E98 00430E98 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 030E9C 00430E9C AC8E0038 */  sw          $t6, 0x38($a0)
/* 030EA0 00430EA0 012C5825 */  or          $t3, $t1, $t4
/* 030EA4 00430EA4 00076E02 */  srl         $t5, $a3, 24
/* 030EA8 00430EA8 0003C200 */  sll         $t8, $v1, 8
/* 030EAC 00430EAC 8C850044 */  lw          $a1, 0x44($a0)
/* 030EB0 00430EB0 016D7025 */  or          $t6, $t3, $t5
/* 030EB4 00430EB4 0302C824 */  and         $t9, $t8, $v0
/* 030EB8 00430EB8 00037E00 */  sll         $t7, $v1, 24
/* 030EBC 00430EBC 01F95025 */  or          $t2, $t7, $t9
/* 030EC0 00430EC0 00034A03 */  sra         $t1, $v1, 8
/* 030EC4 00430EC4 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 030EC8 00430EC8 AC8E003C */  sw          $t6, 0x3C($a0)
/* 030ECC 00430ECC 014C5825 */  or          $t3, $t2, $t4
/* 030ED0 00430ED0 00036E02 */  srl         $t5, $v1, 24
/* 030ED4 00430ED4 00057A00 */  sll         $t7, $a1, 8
/* 030ED8 00430ED8 8C860048 */  lw          $a2, 0x48($a0)
/* 030EDC 00430EDC 016D7025 */  or          $t6, $t3, $t5
/* 030EE0 00430EE0 01E2C824 */  and         $t9, $t7, $v0
/* 030EE4 00430EE4 0005C600 */  sll         $t8, $a1, 24
/* 030EE8 00430EE8 03194825 */  or          $t1, $t8, $t9
/* 030EEC 00430EEC 00055203 */  sra         $t2, $a1, 8
/* 030EF0 00430EF0 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 030EF4 00430EF4 AC8E0040 */  sw          $t6, 0x40($a0)
/* 030EF8 00430EF8 012C5825 */  or          $t3, $t1, $t4
/* 030EFC 00430EFC 00056E02 */  srl         $t5, $a1, 24
/* 030F00 00430F00 0006C200 */  sll         $t8, $a2, 8
/* 030F04 00430F04 8C87004C */  lw          $a3, 0x4C($a0)
/* 030F08 00430F08 016D7025 */  or          $t6, $t3, $t5
/* 030F0C 00430F0C 0302C824 */  and         $t9, $t8, $v0
/* 030F10 00430F10 00067E00 */  sll         $t7, $a2, 24
/* 030F14 00430F14 01F95025 */  or          $t2, $t7, $t9
/* 030F18 00430F18 00064A03 */  sra         $t1, $a2, 8
/* 030F1C 00430F1C 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 030F20 00430F20 AC8E0044 */  sw          $t6, 0x44($a0)
/* 030F24 00430F24 014C5825 */  or          $t3, $t2, $t4
/* 030F28 00430F28 00066E02 */  srl         $t5, $a2, 24
/* 030F2C 00430F2C 00077A00 */  sll         $t7, $a3, 8
/* 030F30 00430F30 8C830050 */  lw          $v1, 0x50($a0)
/* 030F34 00430F34 016D7025 */  or          $t6, $t3, $t5
/* 030F38 00430F38 01E2C824 */  and         $t9, $t7, $v0
/* 030F3C 00430F3C 0007C600 */  sll         $t8, $a3, 24
/* 030F40 00430F40 03194825 */  or          $t1, $t8, $t9
/* 030F44 00430F44 00075203 */  sra         $t2, $a3, 8
/* 030F48 00430F48 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 030F4C 00430F4C AC8E0048 */  sw          $t6, 0x48($a0)
/* 030F50 00430F50 012C5825 */  or          $t3, $t1, $t4
/* 030F54 00430F54 00076E02 */  srl         $t5, $a3, 24
/* 030F58 00430F58 0003C200 */  sll         $t8, $v1, 8
/* 030F5C 00430F5C 8C850054 */  lw          $a1, 0x54($a0)
/* 030F60 00430F60 016D7025 */  or          $t6, $t3, $t5
/* 030F64 00430F64 0302C824 */  and         $t9, $t8, $v0
/* 030F68 00430F68 00037E00 */  sll         $t7, $v1, 24
/* 030F6C 00430F6C 01F95025 */  or          $t2, $t7, $t9
/* 030F70 00430F70 00034A03 */  sra         $t1, $v1, 8
/* 030F74 00430F74 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 030F78 00430F78 AC8E004C */  sw          $t6, 0x4C($a0)
/* 030F7C 00430F7C 014C5825 */  or          $t3, $t2, $t4
/* 030F80 00430F80 00036E02 */  srl         $t5, $v1, 24
/* 030F84 00430F84 00057A00 */  sll         $t7, $a1, 8
/* 030F88 00430F88 8C860058 */  lw          $a2, 0x58($a0)
/* 030F8C 00430F8C 016D7025 */  or          $t6, $t3, $t5
/* 030F90 00430F90 01E2C824 */  and         $t9, $t7, $v0
/* 030F94 00430F94 0005C600 */  sll         $t8, $a1, 24
/* 030F98 00430F98 03194825 */  or          $t1, $t8, $t9
/* 030F9C 00430F9C 00055203 */  sra         $t2, $a1, 8
/* 030FA0 00430FA0 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 030FA4 00430FA4 AC8E0050 */  sw          $t6, 0x50($a0)
/* 030FA8 00430FA8 012C5825 */  or          $t3, $t1, $t4
/* 030FAC 00430FAC 00056E02 */  srl         $t5, $a1, 24
/* 030FB0 00430FB0 0006C200 */  sll         $t8, $a2, 8
/* 030FB4 00430FB4 8C87005C */  lw          $a3, 0x5C($a0)
/* 030FB8 00430FB8 016D7025 */  or          $t6, $t3, $t5
/* 030FBC 00430FBC 0302C824 */  and         $t9, $t8, $v0
/* 030FC0 00430FC0 00067E00 */  sll         $t7, $a2, 24
/* 030FC4 00430FC4 01F95025 */  or          $t2, $t7, $t9
/* 030FC8 00430FC8 00064A03 */  sra         $t1, $a2, 8
/* 030FCC 00430FCC 312CFF00 */  andi        $t4, $t1, 0xFF00
/* 030FD0 00430FD0 AC8E0054 */  sw          $t6, 0x54($a0)
/* 030FD4 00430FD4 014C5825 */  or          $t3, $t2, $t4
/* 030FD8 00430FD8 00066E02 */  srl         $t5, $a2, 24
/* 030FDC 00430FDC 016D7025 */  or          $t6, $t3, $t5
/* 030FE0 00430FE0 00077A00 */  sll         $t7, $a3, 8
/* 030FE4 00430FE4 01E2C824 */  and         $t9, $t7, $v0
/* 030FE8 00430FE8 00075203 */  sra         $t2, $a3, 8
/* 030FEC 00430FEC 0007C600 */  sll         $t8, $a3, 24
/* 030FF0 00430FF0 03194825 */  or          $t1, $t8, $t9
/* 030FF4 00430FF4 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 030FF8 00430FF8 AC8E0058 */  sw          $t6, 0x58($a0)
/* 030FFC 00430FFC 012C5825 */  or          $t3, $t1, $t4
/* 031000 00431000 00076E02 */  srl         $t5, $a3, 24
/* 031004 00431004 016D7025 */  or          $t6, $t3, $t5
/* 031008 00431008 03E00008 */  jr          $ra
/* 03100C 0043100C AC8E005C */   sw         $t6, 0x5C($a0)
