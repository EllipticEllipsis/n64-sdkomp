glabel swap_rpd # 504
/* 032160 00432160 18A0006D */  blez        $a1, .L00432318
/* 032164 00432164 AFA60008 */   sw         $a2, 0x8($sp)
/* 032168 00432168 00057080 */  sll         $t6, $a1, 2
/* 03216C 0043216C 01C57021 */  addu        $t6, $t6, $a1
/* 032170 00432170 000E70C0 */  sll         $t6, $t6, 3
/* 032174 00432174 01C43021 */  addu        $a2, $t6, $a0
/* 032178 00432178 00801025 */  move        $v0, $a0
/* 03217C 0043217C 3C0800FF */  lui         $t0, (0xFF0000 >> 16)
/* 032180 00432180 3C0700FF */  lui         $a3, (0xFF0000 >> 16)
.L00432184:
/* 032184 00432184 8C430000 */  lw          $v1, 0x0($v0)
/* 032188 00432188 8C440004 */  lw          $a0, 0x4($v0)
/* 03218C 0043218C 24420028 */  addiu       $v0, $v0, 0x28
/* 032190 00432190 00037E02 */  srl         $t7, $v1, 24
/* 032194 00432194 0003C600 */  sll         $t8, $v1, 24
/* 032198 00432198 00034A00 */  sll         $t1, $v1, 8
/* 03219C 0043219C 01275024 */  and         $t2, $t1, $a3
/* 0321A0 004321A0 01F8C825 */  or          $t9, $t7, $t8
/* 0321A4 004321A4 032A5825 */  or          $t3, $t9, $t2
/* 0321A8 004321A8 00036202 */  srl         $t4, $v1, 8
/* 0321AC 004321AC 0004C200 */  sll         $t8, $a0, 8
/* 0321B0 004321B0 8C43FFE0 */  lw          $v1, -0x20($v0)
/* 0321B4 004321B4 318DFF00 */  andi        $t5, $t4, 0xFF00
/* 0321B8 004321B8 03084824 */  and         $t1, $t8, $t0
/* 0321BC 004321BC 00047E00 */  sll         $t7, $a0, 24
/* 0321C0 004321C0 016D7025 */  or          $t6, $t3, $t5
/* 0321C4 004321C4 01E9C825 */  or          $t9, $t7, $t1
/* 0321C8 004321C8 00045203 */  sra         $t2, $a0, 8
/* 0321CC 004321CC 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 0321D0 004321D0 032C5825 */  or          $t3, $t9, $t4
/* 0321D4 004321D4 00046E02 */  srl         $t5, $a0, 24
/* 0321D8 004321D8 00037A00 */  sll         $t7, $v1, 8
/* 0321DC 004321DC 8C44FFE4 */  lw          $a0, -0x1C($v0)
/* 0321E0 004321E0 AC4EFFD8 */  sw          $t6, -0x28($v0)
/* 0321E4 004321E4 01E84824 */  and         $t1, $t7, $t0
/* 0321E8 004321E8 0003C600 */  sll         $t8, $v1, 24
/* 0321EC 004321EC 01AB7025 */  or          $t6, $t5, $t3
/* 0321F0 004321F0 03095025 */  or          $t2, $t8, $t1
/* 0321F4 004321F4 0003CA03 */  sra         $t9, $v1, 8
/* 0321F8 004321F8 332CFF00 */  andi        $t4, $t9, 0xFF00
/* 0321FC 004321FC 014C6825 */  or          $t5, $t2, $t4
/* 032200 00432200 00035E02 */  srl         $t3, $v1, 24
/* 032204 00432204 0004C200 */  sll         $t8, $a0, 8
/* 032208 00432208 8C43FFE8 */  lw          $v1, -0x18($v0)
/* 03220C 0043220C AC4EFFDC */  sw          $t6, -0x24($v0)
/* 032210 00432210 03084824 */  and         $t1, $t8, $t0
/* 032214 00432214 00047E00 */  sll         $t7, $a0, 24
/* 032218 00432218 016D7025 */  or          $t6, $t3, $t5
/* 03221C 0043221C 01E9C825 */  or          $t9, $t7, $t1
/* 032220 00432220 00045203 */  sra         $t2, $a0, 8
/* 032224 00432224 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 032228 00432228 032C5825 */  or          $t3, $t9, $t4
/* 03222C 0043222C 00046E02 */  srl         $t5, $a0, 24
/* 032230 00432230 00037A00 */  sll         $t7, $v1, 8
/* 032234 00432234 8C44FFEC */  lw          $a0, -0x14($v0)
/* 032238 00432238 AC4EFFE0 */  sw          $t6, -0x20($v0)
/* 03223C 0043223C 01E84824 */  and         $t1, $t7, $t0
/* 032240 00432240 0003C600 */  sll         $t8, $v1, 24
/* 032244 00432244 01AB7025 */  or          $t6, $t5, $t3
/* 032248 00432248 03095025 */  or          $t2, $t8, $t1
/* 03224C 0043224C 0003CA03 */  sra         $t9, $v1, 8
/* 032250 00432250 332CFF00 */  andi        $t4, $t9, 0xFF00
/* 032254 00432254 014C6825 */  or          $t5, $t2, $t4
/* 032258 00432258 00035E02 */  srl         $t3, $v1, 24
/* 03225C 0043225C AC4EFFE4 */  sw          $t6, -0x1C($v0)
/* 032260 00432260 0004C200 */  sll         $t8, $a0, 8
/* 032264 00432264 8443FFF0 */  lh          $v1, -0x10($v0)
/* 032268 00432268 016D7025 */  or          $t6, $t3, $t5
/* 03226C 0043226C 03084824 */  and         $t1, $t8, $t0
/* 032270 00432270 00045203 */  sra         $t2, $a0, 8
/* 032274 00432274 00047E00 */  sll         $t7, $a0, 24
/* 032278 00432278 01E9C825 */  or          $t9, $t7, $t1
/* 03227C 0043227C 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 032280 00432280 032C5825 */  or          $t3, $t9, $t4
/* 032284 00432284 00046E02 */  srl         $t5, $a0, 24
/* 032288 00432288 AC4EFFE8 */  sw          $t6, -0x18($v0)
/* 03228C 0043228C 00037A00 */  sll         $t7, $v1, 8
/* 032290 00432290 8C44FFF4 */  lw          $a0, -0xC($v0)
/* 032294 00432294 01AB7025 */  or          $t6, $t5, $t3
/* 032298 00432298 01E84824 */  and         $t1, $t7, $t0
/* 03229C 0043229C 0003C600 */  sll         $t8, $v1, 24
/* 0322A0 004322A0 03095025 */  or          $t2, $t8, $t1
/* 0322A4 004322A4 0003CA03 */  sra         $t9, $v1, 8
/* 0322A8 004322A8 332CFF00 */  andi        $t4, $t9, 0xFF00
/* 0322AC 004322AC 00035E02 */  srl         $t3, $v1, 24
/* 0322B0 004322B0 AC4EFFEC */  sw          $t6, -0x14($v0)
/* 0322B4 004322B4 014C6825 */  or          $t5, $t2, $t4
/* 0322B8 004322B8 0004C200 */  sll         $t8, $a0, 8
/* 0322BC 004322BC 8C43FFFC */  lw          $v1, -0x4($v0)
/* 0322C0 004322C0 016D7025 */  or          $t6, $t3, $t5
/* 0322C4 004322C4 03084824 */  and         $t1, $t8, $t0
/* 0322C8 004322C8 00047E00 */  sll         $t7, $a0, 24
/* 0322CC 004322CC 01E9C825 */  or          $t9, $t7, $t1
/* 0322D0 004322D0 00045203 */  sra         $t2, $a0, 8
/* 0322D4 004322D4 314CFF00 */  andi        $t4, $t2, 0xFF00
/* 0322D8 004322D8 A44EFFF0 */  sh          $t6, -0x10($v0)
/* 0322DC 004322DC 032C5825 */  or          $t3, $t9, $t4
/* 0322E0 004322E0 00046E02 */  srl         $t5, $a0, 24
/* 0322E4 004322E4 01AB7025 */  or          $t6, $t5, $t3
/* 0322E8 004322E8 00037A00 */  sll         $t7, $v1, 8
/* 0322EC 004322EC 01E84824 */  and         $t1, $t7, $t0
/* 0322F0 004322F0 0003CA03 */  sra         $t9, $v1, 8
/* 0322F4 004322F4 0003C600 */  sll         $t8, $v1, 24
/* 0322F8 004322F8 03095025 */  or          $t2, $t8, $t1
/* 0322FC 004322FC 332CFF00 */  andi        $t4, $t9, 0xFF00
/* 032300 00432300 AC4EFFF4 */  sw          $t6, -0xC($v0)
/* 032304 00432304 014C6825 */  or          $t5, $t2, $t4
/* 032308 00432308 00035E02 */  srl         $t3, $v1, 24
/* 03230C 0043230C 016D7025 */  or          $t6, $t3, $t5
/* 032310 00432310 1446FF9C */  bne         $v0, $a2, .L00432184
/* 032314 00432314 AC4EFFFC */   sw         $t6, -0x4($v0)
.L00432318:
/* 032318 00432318 03E00008 */  jr          $ra
/* 03231C 0043231C 00000000 */   nop