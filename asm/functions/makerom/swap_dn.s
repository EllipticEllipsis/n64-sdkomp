glabel swap_dn # 503
/* 032014 00432014 AFA60008 */  sw          $a2, 0x8($sp)
/* 032018 00432018 18A0004F */  blez        $a1, .L00432158
/* 03201C 0043201C 00001025 */   move       $v0, $zero
/* 032020 00432020 30A30001 */  andi        $v1, $a1, 0x1
/* 032024 00432024 10600019 */  beqz        $v1, .L0043208C
/* 032028 00432028 3C0900FF */   lui        $t1, (0xFF0000 >> 16)
/* 03202C 0043202C 8C860000 */  lw          $a2, 0x0($a0)
/* 032030 00432030 8C870004 */  lw          $a3, 0x4($a0)
/* 032034 00432034 24020001 */  addiu       $v0, $zero, 0x1
/* 032038 00432038 00067602 */  srl         $t6, $a2, 24
/* 03203C 0043203C 00067E00 */  sll         $t7, $a2, 24
/* 032040 00432040 0006CA00 */  sll         $t9, $a2, 8
/* 032044 00432044 03295024 */  and         $t2, $t9, $t1
/* 032048 00432048 01CFC025 */  or          $t8, $t6, $t7
/* 03204C 0043204C 00066202 */  srl         $t4, $a2, 8
/* 032050 00432050 318DFF00 */  andi        $t5, $t4, 0xFF00
/* 032054 00432054 030A5825 */  or          $t3, $t8, $t2
/* 032058 00432058 016D7025 */  or          $t6, $t3, $t5
/* 03205C 0043205C 00075200 */  sll         $t2, $a3, 8
/* 032060 00432060 00077E02 */  srl         $t7, $a3, 24
/* 032064 00432064 0007CE00 */  sll         $t9, $a3, 24
/* 032068 00432068 01F9C025 */  or          $t8, $t7, $t9
/* 03206C 0043206C 01496024 */  and         $t4, $t2, $t1
/* 032070 00432070 AC8E0000 */  sw          $t6, 0x0($a0)
/* 032074 00432074 00076A02 */  srl         $t5, $a3, 8
/* 032078 00432078 31AEFF00 */  andi        $t6, $t5, 0xFF00
/* 03207C 0043207C 030C5825 */  or          $t3, $t8, $t4
/* 032080 00432080 016E7825 */  or          $t7, $t3, $t6
/* 032084 00432084 10450034 */  beq         $v0, $a1, .L00432158
/* 032088 00432088 AC8F0004 */   sw         $t7, 0x4($a0)
.L0043208C:
/* 03208C 0043208C 0002C8C0 */  sll         $t9, $v0, 3
/* 032090 00432090 000550C0 */  sll         $t2, $a1, 3
/* 032094 00432094 01444021 */  addu        $t0, $t2, $a0
/* 032098 00432098 00991821 */  addu        $v1, $a0, $t9
/* 03209C 0043209C 3C0900FF */  lui         $t1, (0xFF0000 >> 16)
.L004320A0:
/* 0320A0 004320A0 8C620000 */  lw          $v0, 0x0($v1)
/* 0320A4 004320A4 8C640004 */  lw          $a0, 0x4($v1)
/* 0320A8 004320A8 8C660008 */  lw          $a2, 0x8($v1)
/* 0320AC 004320AC 0002C602 */  srl         $t8, $v0, 24
/* 0320B0 004320B0 00026600 */  sll         $t4, $v0, 24
/* 0320B4 004320B4 00025A00 */  sll         $t3, $v0, 8
/* 0320B8 004320B8 01697024 */  and         $t6, $t3, $t1
/* 0320BC 004320BC 030C6825 */  or          $t5, $t8, $t4
/* 0320C0 004320C0 0002CA02 */  srl         $t9, $v0, 8
/* 0320C4 004320C4 332AFF00 */  andi        $t2, $t9, 0xFF00
/* 0320C8 004320C8 01AE7825 */  or          $t7, $t5, $t6
/* 0320CC 004320CC 01EAC025 */  or          $t8, $t7, $t2
/* 0320D0 004320D0 00047200 */  sll         $t6, $a0, 8
/* 0320D4 004320D4 00046602 */  srl         $t4, $a0, 24
/* 0320D8 004320D8 00045E00 */  sll         $t3, $a0, 24
/* 0320DC 004320DC AC780000 */  sw          $t8, 0x0($v1)
/* 0320E0 004320E0 018B6825 */  or          $t5, $t4, $t3
/* 0320E4 004320E4 01C9C824 */  and         $t9, $t6, $t1
/* 0320E8 004320E8 00045202 */  srl         $t2, $a0, 8
/* 0320EC 004320EC 3158FF00 */  andi        $t8, $t2, 0xFF00
/* 0320F0 004320F0 01B97825 */  or          $t7, $t5, $t9
/* 0320F4 004320F4 01F86025 */  or          $t4, $t7, $t8
/* 0320F8 004320F8 8C67000C */  lw          $a3, 0xC($v1)
/* 0320FC 004320FC 0006CA00 */  sll         $t9, $a2, 8
/* 032100 00432100 00067600 */  sll         $t6, $a2, 24
/* 032104 00432104 00065E02 */  srl         $t3, $a2, 24
/* 032108 00432108 016E6825 */  or          $t5, $t3, $t6
/* 03210C 0043210C 03295024 */  and         $t2, $t9, $t1
/* 032110 00432110 AC6C0004 */  sw          $t4, 0x4($v1)
/* 032114 00432114 0006C202 */  srl         $t8, $a2, 8
/* 032118 00432118 330CFF00 */  andi        $t4, $t8, 0xFF00
/* 03211C 0043211C 01AA7825 */  or          $t7, $t5, $t2
/* 032120 00432120 01EC5825 */  or          $t3, $t7, $t4
/* 032124 00432124 00075200 */  sll         $t2, $a3, 8
/* 032128 00432128 0007CE00 */  sll         $t9, $a3, 24
/* 03212C 0043212C 00077602 */  srl         $t6, $a3, 24
/* 032130 00432130 01D96825 */  or          $t5, $t6, $t9
/* 032134 00432134 0149C024 */  and         $t8, $t2, $t1
/* 032138 00432138 AC6B0008 */  sw          $t3, 0x8($v1)
/* 03213C 0043213C 00076202 */  srl         $t4, $a3, 8
/* 032140 00432140 318BFF00 */  andi        $t3, $t4, 0xFF00
/* 032144 00432144 01B87825 */  or          $t7, $t5, $t8
/* 032148 00432148 01EB7025 */  or          $t6, $t7, $t3
/* 03214C 0043214C 24630010 */  addiu       $v1, $v1, 0x10
/* 032150 00432150 1468FFD3 */  bne         $v1, $t0, .L004320A0
/* 032154 00432154 AC6EFFFC */   sw         $t6, -0x4($v1)
.L00432158:
/* 032158 00432158 03E00008 */  jr          $ra
/* 03215C 0043215C 00000000 */   nop
