glabel swap_filehdr # 493
/* 0305B0 004305B0 AFA50004 */  sw          $a1, 0x4($sp)
/* 0305B4 004305B4 94820000 */  lhu         $v0, 0x0($a0)
/* 0305B8 004305B8 8C850004 */  lw          $a1, 0x4($a0)
/* 0305BC 004305BC 94830002 */  lhu         $v1, 0x2($a0)
/* 0305C0 004305C0 00027A00 */  sll         $t7, $v0, 8
/* 0305C4 004305C4 0002C202 */  srl         $t8, $v0, 8
/* 0305C8 004305C8 01F8C825 */  or          $t9, $t7, $t8
/* 0305CC 004305CC 3C0800FF */  lui         $t0, (0xFF0000 >> 16)
/* 0305D0 004305D0 00057200 */  sll         $t6, $a1, 8
/* 0305D4 004305D4 8C860008 */  lw          $a2, 0x8($a0)
/* 0305D8 004305D8 A4990000 */  sh          $t9, 0x0($a0)
/* 0305DC 004305DC 01C87824 */  and         $t7, $t6, $t0
/* 0305E0 004305E0 00056E00 */  sll         $t5, $a1, 24
/* 0305E4 004305E4 01AFC025 */  or          $t8, $t5, $t7
/* 0305E8 004305E8 0005CA03 */  sra         $t9, $a1, 8
/* 0305EC 004305EC 00035200 */  sll         $t2, $v1, 8
/* 0305F0 004305F0 00035A02 */  srl         $t3, $v1, 8
/* 0305F4 004305F4 014B6025 */  or          $t4, $t2, $t3
/* 0305F8 004305F8 3329FF00 */  andi        $t1, $t9, 0xFF00
/* 0305FC 004305FC 03095025 */  or          $t2, $t8, $t1
/* 030600 00430600 00066A00 */  sll         $t5, $a2, 8
/* 030604 00430604 8C87000C */  lw          $a3, 0xC($a0)
/* 030608 00430608 01A87824 */  and         $t7, $t5, $t0
/* 03060C 0043060C 00067600 */  sll         $t6, $a2, 24
/* 030610 00430610 A48C0002 */  sh          $t4, 0x2($a0)
/* 030614 00430614 01CFC825 */  or          $t9, $t6, $t7
/* 030618 00430618 00055E02 */  srl         $t3, $a1, 24
/* 03061C 0043061C 0006C203 */  sra         $t8, $a2, 8
/* 030620 00430620 014B6025 */  or          $t4, $t2, $t3
/* 030624 00430624 3309FF00 */  andi        $t1, $t8, 0xFF00
/* 030628 00430628 03295025 */  or          $t2, $t9, $t1
/* 03062C 0043062C 00077200 */  sll         $t6, $a3, 8
/* 030630 00430630 AC8C0004 */  sw          $t4, 0x4($a0)
/* 030634 00430634 01C87824 */  and         $t7, $t6, $t0
/* 030638 00430638 00065E02 */  srl         $t3, $a2, 24
/* 03063C 0043063C 0007CA03 */  sra         $t9, $a3, 8
/* 030640 00430640 00076E00 */  sll         $t5, $a3, 24
/* 030644 00430644 014B6025 */  or          $t4, $t2, $t3
/* 030648 00430648 01AFC025 */  or          $t8, $t5, $t7
/* 03064C 0043064C 3329FF00 */  andi        $t1, $t9, 0xFF00
/* 030650 00430650 03095025 */  or          $t2, $t8, $t1
/* 030654 00430654 94820010 */  lhu         $v0, 0x10($a0)
/* 030658 00430658 94980012 */  lhu         $t8, 0x12($a0)
/* 03065C 0043065C AC8C0008 */  sw          $t4, 0x8($a0)
/* 030660 00430660 00075E02 */  srl         $t3, $a3, 24
/* 030664 00430664 014B6025 */  or          $t4, $t2, $t3
/* 030668 00430668 304E00FF */  andi        $t6, $v0, 0xFF
/* 03066C 0043066C 000E6A00 */  sll         $t5, $t6, 8
/* 030670 00430670 00027A02 */  srl         $t7, $v0, 8
/* 030674 00430674 00185202 */  srl         $t2, $t8, 8
/* 030678 00430678 00184A00 */  sll         $t1, $t8, 8
/* 03067C 0043067C 01AFC825 */  or          $t9, $t5, $t7
/* 030680 00430680 012A5825 */  or          $t3, $t1, $t2
/* 030684 00430684 AC8C000C */  sw          $t4, 0xC($a0)
/* 030688 00430688 A4990010 */  sh          $t9, 0x10($a0)
/* 03068C 0043068C 03E00008 */  jr          $ra
/* 030690 00430690 A48B0012 */   sh         $t3, 0x12($a0)
