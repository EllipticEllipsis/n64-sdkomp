.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

.balign 16

glabel STR_10004000
/* 044000 10004000 */ .asciz "rom"
                      .balign 4

glabel STR_10004004
/* 044004 10004004 */ .asciz "makerom: sysconf(_SC_ARG_MAX): %s\n"
                      .balign 4

glabel STR_10004028
/* 044028 10004028 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10004038
/* 044038 10004038 */ .asciz "/usr/lib/cpp -D_LANGUAGE_MAKEROM"
                      .balign 4

glabel STR_1000405C
/* 04405C 1000405C */ .asciz "D:I:U:cdeimnor:gb:h:p:s:f:O:C:QqVv"
                      .balign 4

glabel STR_10004080
/* 044080 10004080 */ .asciz "makerom: too many -[DIU] flags\n"
                      .balign 4

glabel STR_100040A0
/* 0440A0 100040A0 */ .asciz "%s -%c%s"
                      .balign 4

glabel STR_100040AC
/* 0440AC 100040AC */ .asciz "makerom: only specify one of -c, -e, or -i\n"
                      .balign 4

glabel STR_100040D8
/* 0440D8 100040D8 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_100040EC
/* 0440EC 100040EC */ .asciz "r"
                      .balign 4

glabel STR_100040F0
/* 0440F0 100040F0 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10004104
/* 044104 10004104 */ .asciz "makerom: cpp command line too long\n"
                      .balign 4

glabel STR_10004128
/* 044128 10004128 */ .asciz "%s %s"
                      .balign 4

glabel STR_10004130
/* 044130 10004130 */ .asciz "r"
                      .balign 4

glabel STR_10004134
/* 044134 10004134 */ .asciz "makerom: could not run cpp on %s: %s\n"
                      .balign 4

glabel STR_1000415C
/* 04415C 1000415C */ .asciz "Creating segment symbol source file in %s\n"
                      .balign 4

glabel STR_10004188
/* 044188 10004188 */ .asciz "ROOT"
                      .balign 4

glabel STR_10004190
/* 044190 10004190 */ .asciz "/"
                      .balign 4

glabel STR_10004194
/* 044194 10004194 */ .asciz "makerom: This IDO version is not compatible with the\n"
                      .balign 4

glabel STR_100041CC
/* 0441CC 100041CC */ .asciz "         Nintendo64 development environment on this\n"
                      .balign 4

glabel STR_10004204
/* 044204 10004204 */ .asciz "         version of IRIX.\n"
                      .balign 4

glabel STR_10004220
/* 044220 10004220 */ .asciz "%s/usr/sbin/u64check -fmulmul:check:noforce:norepair"
                      .balign 4

glabel STR_10004258
/* 044258 10004258 */ .asciz "%s/usr/sbin/r4300_check"
                      .balign 4

glabel STR_10004270
/* 044270 10004270 */ .asciz "Checking fmulmul status\n"
                      .balign 4

glabel STR_1000428C
/* 04428C 1000428C */ .asciz "%s %s"
                      .balign 4

glabel STR_10004294
/* 044294 10004294 */ .asciz "  %s\n"
                      .balign 4

glabel STR_1000429C
/* 04429C 1000429C */ .asciz "%s/usr/lib/PR/gcord "
                      .balign 4

glabel STR_100042B4
/* 0442B4 100042B4 */ .asciz "%s %s"
                      .balign 4

glabel STR_100042BC
/* 0442BC 100042BC */ .asciz "makerom: %s\n"
                      .balign 4

glabel STR_100042CC
/* 0442CC 100042CC */ .asciz ".cord"
                      .balign 4

glabel STR_100042D4
/* 0442D4 100042D4 */ .asciz "Creating entry source file in %s\n"
                      .balign 4

glabel STR_100042F8
/* 0442F8 100042F8 */ .asciz "Extracting sections from ELF wave files"
                      .balign 4

glabel STR_10004320
/* 044320 10004320 */ .asciz " to create ROM image in %s\n"
                      .balign 4

glabel STR_1000433C
/* 04433C 1000433C */ .asciz "usage: makerom [-D<define>] [-I<dir>] -[U<define>]\n"
                      .balign 4

glabel STR_10004370
/* 044370 10004370 */ .asciz "               [-c] [-n] [-d] [-g] [-e] [-m] [-q] [-v]\n"
                      .balign 4

glabel STR_100043A8
/* 0443A8 100043A8 */ .asciz "               [-o] [-b bootfile] [-h headerfile]\n"
                      .balign 4

glabel STR_100043DC
/* 0443DC 100043DC */ .asciz "               [-p pif2bootfile]\n"
                      .balign 4

glabel STR_10004400
/* 044400 10004400 */ .asciz "               [-s romsize (Mbits)]\n"
                      .balign 4

glabel STR_10004428
/* 044428 10004428 */ .asciz "               [-f filldata (0x00 - 0xff)]\n"
                      .balign 4

glabel STR_10004454
/* 044454 10004454 */ .asciz "               [-C clockrate] \n"
                      .balign 4

glabel STR_10004474
/* 044474 10004474 */ .asciz "               [-r romfile] specfile\n"
                      .balign 4

glabel STR_1000449C
/* 04449C 1000449C */ .asciz "/sbin/uname -r"
                      .balign 4

glabel STR_100044AC
/* 0444AC 100044AC */ .asciz "r"
                      .balign 4

glabel STR_100044B0
/* 0444B0 100044B0 */ .asciz "5.3\n"
                      .balign 4

glabel STR_100044B8
/* 0444B8 100044B8 */ .asciz "6.2\n"
                      .balign 4

glabel STR_100044C0
/* 0444C0 100044C0 */ .asciz "6.3\n"
                      .balign 4

glabel STR_100044C8
/* 0444C8 100044C8 */ .asciz "6.4\n"
                      .balign 4

glabel STR_100044D0
/* 0444D0 100044D0 */ .asciz "makerom: Operating system not recognized.  Trying 6.x ...\n"
                      .balign 4

glabel STR_1000450C
/* 04450C 1000450C */ .asciz "makerom: Unable to find uname command!\n"
                      .balign 4

glabel STR_10004534
/* 044534 10004534 */ .asciz "%s/usr/sbin/u64check"
                      .balign 4

glabel STR_1000454C
/* 04454C 1000454C */ .asciz "/usr/sbin/showprods -D 1 dev"
                      .balign 4

glabel STR_1000456C
/* 04456C 1000456C */ .asciz "r"
                      .balign 4

glabel STR_10004570
/* 044570 10004570 */ .asciz "7.0"
                      .balign 4

glabel STR_10004574
/* 044574 10004574 */ .asciz "makerom: IDO v7.0 does not work with the Nintendo64\n"
                      .balign 4

glabel STR_100045AC
/* 0445AC 100045AC */ .asciz "         development environment.  Please upgrade to\n"
                      .balign 4

glabel STR_100045E4
/* 0445E4 100045E4 */ .asciz "         IDO v7.1.\n"
                      .balign 4

glabel STR_100045F8
/* 0445F8 100045F8 */ .asciz "Nintendo64 Makerom v2.2 for IRIX.\n"
                      .balign 4

glabel STR_1000461C
/* 04461C 1000461C */ .asciz "Nintendo64 Makerom v2.2 -BETA- for IRIX.\n"
                      .balign 4

glabel STR_10004648
/* 044648 10004648 */ .asciz "/usr/lib/PR"
                      .balign 4

glabel STR_10004654
/* 044654 10004654 */ .asciz "Boot"
                      .balign 4

glabel STR_1000465C
/* 04465C 1000465C */ .asciz "%s: unable to open %s"
                      .balign 4

glabel STR_10004674
/* 044674 10004674 */ .asciz "%s unable to stat %s"
                      .balign 4

glabel STR_1000468C
/* 04468C 1000468C */ .asciz "%s: unable to malloc buffer to hold %d bytes\n"
                      .balign 4

glabel STR_100046BC
/* 0446BC 100046BC */ .asciz "/usr/lib/PR"
                      .balign 4

glabel STR_100046C8
/* 0446C8 100046C8 */ .asciz "pif2Boot"
                      .balign 4

glabel STR_100046D4
/* 0446D4 100046D4 */ .asciz "%s: unable to open %s"
                      .balign 4

glabel STR_100046EC
/* 0446EC 100046EC */ .asciz "%s unable to stat %s"
                      .balign 4

glabel STR_10004704
/* 044704 10004704 */ .asciz "%s: unable to malloc buffer to hold %d bytes\n"
                      .balign 4

glabel STR_10004734
/* 044734 10004734 */ .asciz "/usr/lib/PR"
                      .balign 4

glabel STR_10004740
/* 044740 10004740 */ .asciz "romheader"
                      .balign 4

glabel STR_1000474C
/* 04474C 1000474C */ .asciz "%s unable to open %s"
                      .balign 4

glabel STR_10004764
/* 044764 10004764 */ .asciz "%s unable to stat %s"
                      .balign 4

glabel STR_1000477C
/* 04477C 1000477C */ .asciz "%s: unable to malloc buffer to hold %d bytes\n"
                      .balign 4

glabel STR_100047AC
/* 0447AC 100047AC */ .asciz "%s: short read from %s.\n"
                      .balign 4

glabel STR_100047C8
/* 0447C8 100047C8 */ .asciz "%s: short read from %s.\n"
                      .balign 4

glabel STR_100047E4
/* 0447E4 100047E4 */ .asciz "/usr/lib/PR"
                      .balign 4

glabel STR_100047F0
/* 0447F0 100047F0 */ .asciz "font"
                      .balign 4

glabel STR_100047F8
/* 0447F8 100047F8 */ .asciz "%s: unable to open %s"
                      .balign 4

glabel STR_10004810
/* 044810 10004810 */ .asciz "%s unable to stat %s"
                      .balign 4

glabel STR_10004828
/* 044828 10004828 */ .asciz "%s: unable to malloc buffer to hold %d bytes\n"
                      .balign 4

glabel STR_10004858
/* 044858 10004858 */ .asciz "%s unable to read %s"
                      .balign 4

glabel STR_10004870
/* 044870 10004870 */ .asciz "ROOT"
                      .balign 4

glabel STR_10004878
/* 044878 10004878 */ .asciz "WORKAREA"
                      .balign 4

glabel STR_10004884
/* 044884 10004884 */ .asciz "/"
                      .balign 4

glabel STR_10004888
/* 044888 10004888 */ .asciz "gloadFindFile: can't find file %s\n"
                      .balign 4

glabel STR_100048AC
/* 0448AC 100048AC */ .asciz "Translating ROM spec file into"
                      .balign 4

glabel STR_100048CC
/* 0448CC 100048CC */ .asciz " linker spec file in %s\n"
                      .balign 4

glabel STR_100048E8
/* 0448E8 100048E8 */ .asciz "TMPDIR"
                      .balign 4

glabel STR_100048F0
/* 0448F0 100048F0 */ .asciz "/tmp"
                      .balign 4

glabel STR_100048F8
/* 0448F8 100048F8 */ .asciz "%s/%sElspecXXXXXX"
                      .balign 4

glabel STR_1000490C
/* 04490C 1000490C */ .asciz "%s/segmentXXXXXX"
                      .balign 4

glabel STR_10004920
/* 044920 10004920 */ .asciz ".s"
                      .balign 4

glabel STR_10004924
/* 044924 10004924 */ .asciz ".o"
                      .balign 4

glabel STR_10004928
/* 044928 10004928 */ .asciz "%s/entryXXXXXX"
                      .balign 4

glabel STR_10004938
/* 044938 10004938 */ .asciz ".s"
                      .balign 4

glabel STR_1000493C
/* 04493C 1000493C */ .asciz ".o"
                      .balign 4

glabel STR_10004940
/* 044940 10004940 */ .asciz "%s/objListXXXXXX"
                      .balign 4

glabel STR_10004954
/* 044954 10004954 */ .asciz "makerom: cannot execute command: %s\n"
                      .balign 4

glabel STR_1000497C
/* 04497C 1000497C */ .asciz "makerom: [%s] returned %d (%08x), errno=%d\n"
                      .balign 4

glabel jtbl_100049A8
/* 0449A8 100049A8 F03F6ED0 */ .gpword .L00409C30
/* 0449AC 100049AC F03F6F30 */ .gpword .L00409C90
/* 0449B0 100049B0 F03F6F30 */ .gpword .L00409C90
/* 0449B4 100049B4 F03F6F30 */ .gpword .L00409C90
/* 0449B8 100049B8 F03F6E78 */ .gpword .L00409BD8
/* 0449BC 100049BC F03F6C68 */ .gpword .L004099C8
/* 0449C0 100049C0 F03F6F30 */ .gpword .L00409C90
/* 0449C4 100049C4 F03F6F30 */ .gpword .L00409C90
/* 0449C8 100049C8 F03F6F30 */ .gpword .L00409C90
/* 0449CC 100049CC F03F6F30 */ .gpword .L00409C90
/* 0449D0 100049D0 F03F6C68 */ .gpword .L004099C8
/* 0449D4 100049D4 F03F6F30 */ .gpword .L00409C90
/* 0449D8 100049D8 F03F6F30 */ .gpword .L00409C90
/* 0449DC 100049DC F03F6F30 */ .gpword .L00409C90
/* 0449E0 100049E0 F03F6F30 */ .gpword .L00409C90
/* 0449E4 100049E4 F03F6F30 */ .gpword .L00409C90
/* 0449E8 100049E8 F03F6E4C */ .gpword .L00409BAC
/* 0449EC 100049EC F03F6F30 */ .gpword .L00409C90
/* 0449F0 100049F0 F03F6EF8 */ .gpword .L00409C58
/* 0449F4 100049F4 F03F6F30 */ .gpword .L00409C90
/* 0449F8 100049F8 F03F6F30 */ .gpword .L00409C90
/* 0449FC 100049FC F03F6F30 */ .gpword .L00409C90
/* 044A00 10004A00 F03F6C68 */ .gpword .L004099C8
/* 044A04 10004A04 F03F6F08 */ .gpword .L00409C68
/* 044A08 10004A08 F03F6F30 */ .gpword .L00409C90
/* 044A0C 10004A0C F03F6F30 */ .gpword .L00409C90
/* 044A10 10004A10 F03F6F30 */ .gpword .L00409C90
/* 044A14 10004A14 F03F6F30 */ .gpword .L00409C90
/* 044A18 10004A18 F03F6F30 */ .gpword .L00409C90
/* 044A1C 10004A1C F03F6F30 */ .gpword .L00409C90
/* 044A20 10004A20 F03F6F30 */ .gpword .L00409C90
/* 044A24 10004A24 F03F6F30 */ .gpword .L00409C90
/* 044A28 10004A28 F03F6F30 */ .gpword .L00409C90
/* 044A2C 10004A2C F03F6F30 */ .gpword .L00409C90
/* 044A30 10004A30 F03F6F30 */ .gpword .L00409C90
/* 044A34 10004A34 F03F6DB8 */ .gpword .L00409B18
/* 044A38 10004A38 F03F6D04 */ .gpword .L00409A64
/* 044A3C 10004A3C F03F6D18 */ .gpword .L00409A78
/* 044A40 10004A40 F03F6D54 */ .gpword .L00409AB4
/* 044A44 10004A44 F03F6E20 */ .gpword .L00409B80
/* 044A48 10004A48 F03F6D2C */ .gpword .L00409A8C
/* 044A4C 10004A4C F03F6DCC */ .gpword .L00409B2C
/* 044A50 10004A50 F03F6F30 */ .gpword .L00409C90
/* 044A54 10004A54 F03F6F30 */ .gpword .L00409C90
/* 044A58 10004A58 F03F6D40 */ .gpword .L00409AA0
/* 044A5C 10004A5C F03F6F30 */ .gpword .L00409C90
/* 044A60 10004A60 F03F6D68 */ .gpword .L00409AC8
/* 044A64 10004A64 F03F6D7C */ .gpword .L00409ADC
/* 044A68 10004A68 F03F6D90 */ .gpword .L00409AF0
/* 044A6C 10004A6C F03F6DE0 */ .gpword .L00409B40
/* 044A70 10004A70 F03F6EF8 */ .gpword .L00409C58
/* 044A74 10004A74 F03F6DA0 */ .gpword .L00409B00
/* 044A78 10004A78 F03F6DF4 */ .gpword .L00409B54
/* 044A7C 10004A7C F03F6F30 */ .gpword .L00409C90
/* 044A80 10004A80 F03F6F30 */ .gpword .L00409C90
/* 044A84 10004A84 F03F6F08 */ .gpword .L00409C68
/* 044A88 10004A88 00000000 */ .word 0x00000000
/* 044A8C 10004A8C 00000000 */ .word 0x00000000

glabel STR_10004A90
/* 044A90 10004A90 */ .asciz "w"
                      .balign 4

glabel STR_10004A94
/* 044A94 10004A94 */ .asciz "makerom: %s: cannot create\n"
                      .balign 4

glabel STR_10004AB0
/* 044AB0 10004AB0 */ .asciz "$ignoreoverlaps = true\n\n"
                      .balign 4

glabel STR_10004ACC
/* 044ACC 10004ACC */ .asciz "beginseg\n"
                      .balign 4

glabel STR_10004AD8
/* 044AD8 10004AD8 */ .asciz "\tsegtype LOAD\n"
                      .balign 4

glabel STR_10004AE8
/* 044AE8 10004AE8 */ .asciz "\tsegflags R X\n"
                      .balign 4

glabel STR_10004AF8
/* 044AF8 10004AF8 */ .asciz "\tvaddr 0x%x\n"
                      .balign 4

glabel STR_10004B08
/* 044B08 10004B08 */ .asciz "\tcontents\n"
                      .balign 4

glabel STR_10004B14
/* 044B14 10004B14 */ .asciz "\tbeginscn .%s.text\n"
                      .balign 4

glabel STR_10004B28
/* 044B28 10004B28 */ .asciz "\t\tscntype PROGBITS\n"
                      .balign 4

glabel STR_10004B3C
/* 044B3C 10004B3C */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_10004B4C
/* 044B4C 10004B4C */ .asciz "\t\tscnflags ALLOC EXECINSTR\n"
                      .balign 4

glabel STR_10004B68
/* 044B68 10004B68 */ .asciz "\t\tsection .text in object %s\n"
                      .balign 4

glabel STR_10004B88
/* 044B88 10004B88 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_10004B94
/* 044B94 10004B94 */ .asciz "\tbeginscn .%s.data\n"
                      .balign 4

glabel STR_10004BA8
/* 044BA8 10004BA8 */ .asciz "\t\tscntype PROGBITS\n"
                      .balign 4

glabel STR_10004BBC
/* 044BBC 10004BBC */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_10004BCC
/* 044BCC 10004BCC */ .asciz "\t\tscnflags ALLOC WRITE\n"
                      .balign 4

glabel STR_10004BE4
/* 044BE4 10004BE4 */ .asciz "\t\tsection .data in object %s\n"
                      .balign 4

glabel STR_10004C04
/* 044C04 10004C04 */ .asciz "\t\tsection .rodata in object %s\n"
                      .balign 4

glabel STR_10004C24
/* 044C24 10004C24 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_10004C30
/* 044C30 10004C30 */ .asciz "\tbeginscn .%s.sdata\n"
                      .balign 4

glabel STR_10004C48
/* 044C48 10004C48 */ .asciz "\t\tscntype PROGBITS\n"
                      .balign 4

glabel STR_10004C5C
/* 044C5C 10004C5C */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_10004C6C
/* 044C6C 10004C6C */ .asciz "\t\tscnflags GPREL ALLOC WRITE\n"
                      .balign 4

glabel STR_10004C8C
/* 044C8C 10004C8C */ .asciz "\t\tsection .sdata in object %s\n"
                      .balign 4

glabel STR_10004CAC
/* 044CAC 10004CAC */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_10004CB8
/* 044CB8 10004CB8 */ .asciz "\tbeginscn .%s.sbss\n"
                      .balign 4

glabel STR_10004CCC
/* 044CCC 10004CCC */ .asciz "\t\tscntype NOBITS\n"
                      .balign 4

glabel STR_10004CE0
/* 044CE0 10004CE0 */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_10004CF0
/* 044CF0 10004CF0 */ .asciz "\t\tscnflags GPREL ALLOC WRITE\n"
                      .balign 4

glabel STR_10004D10
/* 044D10 10004D10 */ .asciz "\t\tsection .sbss in object %s\n"
                      .balign 4

glabel STR_10004D30
/* 044D30 10004D30 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_10004D3C
/* 044D3C 10004D3C */ .asciz "\tbeginscn .%s.bss\n"
                      .balign 4

glabel STR_10004D50
/* 044D50 10004D50 */ .asciz "\t\tscntype NOBITS\n"
                      .balign 4

glabel STR_10004D64
/* 044D64 10004D64 */ .asciz "\t\tscnalign %d\n"
                      .balign 4

glabel STR_10004D74
/* 044D74 10004D74 */ .asciz "\t\tscnflags ALLOC WRITE\n"
                      .balign 4

glabel STR_10004D8C
/* 044D8C 10004D8C */ .asciz "\t\tsection .bss in object %s\n"
                      .balign 4

glabel STR_10004DAC
/* 044DAC 10004DAC */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_10004DB8
/* 044DB8 10004DB8 */ .asciz "endseg\n"
                      .balign 4

glabel STR_10004DC0
/* 044DC0 10004DC0 */ .asciz "beginseg\n"
                      .balign 4

glabel STR_10004DCC
/* 044DCC 10004DCC */ .asciz "\tsegtype noload\n"
                      .balign 4

glabel STR_10004DE0
/* 044DE0 10004DE0 */ .asciz "\tcontents\n"
                      .balign 4

glabel STR_10004DEC
/* 044DEC 10004DEC */ .asciz "\tdefault\n"
                      .balign 4

glabel STR_10004DF8
/* 044DF8 10004DF8 */ .asciz "\tbeginscn .MIPS.options\n"
                      .balign 4

glabel STR_10004E14
/* 044E14 10004E14 */ .asciz "\t\tscntype 0x7000000d\n"
                      .balign 4

glabel STR_10004E2C
/* 044E2C 10004E2C */ .asciz "\t\tsection .MIPS.options in ldobj\n"
                      .balign 4

glabel STR_10004E50
/* 044E50 10004E50 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_10004E5C
/* 044E5C 10004E5C */ .asciz "\tbeginscn .reginfo\n"
                      .balign 4

glabel STR_10004E70
/* 044E70 10004E70 */ .asciz "\t\tscntype 0x70000006\n"
                      .balign 4

glabel STR_10004E88
/* 044E88 10004E88 */ .asciz "\t\tsection .reginfo in ldobj\n"
                      .balign 4

glabel STR_10004EA8
/* 044EA8 10004EA8 */ .asciz "\tendscn\n"
                      .balign 4

glabel STR_10004EB4
/* 044EB4 10004EB4 */ .asciz "endseg\n"
                      .balign 4

glabel STR_10004EBC
/* 044EBC 10004EBC */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10004ECC
/* 044ECC 10004ECC */ .asciz "$ROOT/usr/lib/PR/nld -g -non_shared -G 0 -elspec "
                      .balign 4

glabel STR_10004F00
/* 044F00 10004F00 */ .asciz " -rom "
                      .balign 4

glabel STR_10004F08
/* 044F08 10004F08 */ .asciz " -m "
                      .balign 4

glabel STR_10004F10
/* 044F10 10004F10 */ .asciz " -o "
                      .balign 4

glabel STR_10004F18
/* 044F18 10004F18 */ .asciz " "
                      .balign 4

glabel STR_10004F1C
/* 044F1C 10004F1C */ .asciz " -objectlist "
                      .balign 4

glabel STR_10004F2C
/* 044F2C 10004F2C */ .asciz "w"
                      .balign 4

glabel STR_10004F30
/* 044F30 10004F30 */ .asciz "%s\n"
                      .balign 4

glabel STR_10004F34
/* 044F34 10004F34 */ .asciz "Linking to ELF wave file\n"
                      .balign 4

glabel STR_10004F50
/* 044F50 10004F50 */ .asciz "  %s\n"
                      .balign 4
/* 044F58 10004F58 */ .asciz ""
                      .balign 4
/* 044F5C 10004F5C */ .asciz ""
                      .balign 4

glabel STR_10004F60
/* 044F60 10004F60 */ .asciz "makerom: out of date\n"
                      .balign 4

glabel STR_10004F78
/* 044F78 10004F78 */ .asciz "makerom: segment \"%s\": not found in any wave\n"
                      .balign 4

glabel STR_10004FA8
/* 044FA8 10004FA8 */ .asciz "makerom: malloc failed [RomSize= %d kB]\n"
                      .balign 4

glabel STR_10004FD4
/* 044FD4 10004FD4 */ .asciz "Segment %s: alignment %x\n"
                      .balign 4

glabel STR_10004FF0
/* 044FF0 10004FF0 */ .asciz "Segment %s: romalign %x\n"
                      .balign 4

glabel STR_1000500C
/* 04500C 1000500C */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10005020
/* 045020 10005020 */ .asciz "Scanning %s\n"
                      .balign 4

glabel STR_10005030
/* 045030 10005030 */ .asciz "makerom: %s: not a valid ELF object file\n"
                      .balign 4

glabel STR_1000505C
/* 04505C 1000505C */ .asciz "makerom: %s: can't get section index %d\n"
                      .balign 4

glabel STR_10005088
/* 045088 10005088 */ .asciz "makerom: %s: detect unnamed section\n"
                      .balign 4

glabel STR_100050B0
/* 0450B0 100050B0 */ .asciz ".text"
                      .balign 4

glabel STR_100050B8
/* 0450B8 100050B8 */ .asciz "  text size  = %x\n"
                      .balign 4

glabel STR_100050CC
/* 0450CC 100050CC */ .asciz "       align = %x\n"
                      .balign 4

glabel STR_100050E0
/* 0450E0 100050E0 */ .asciz ".data"
                      .balign 4

glabel STR_100050E8
/* 0450E8 100050E8 */ .asciz ".rodata"
                      .balign 4

glabel STR_100050F0
/* 0450F0 100050F0 */ .asciz "  data&rodata size  = %x\n"
                      .balign 4

glabel STR_1000510C
/* 04510C 1000510C */ .asciz "       align = %x\n"
                      .balign 4

glabel STR_10005120
/* 045120 10005120 */ .asciz ".sdata"
                      .balign 4

glabel STR_10005128
/* 045128 10005128 */ .asciz "  sdata size  = %x\n"
                      .balign 4

glabel STR_1000513C
/* 04513C 1000513C */ .asciz "        align = %x\n"
                      .balign 4

glabel STR_10005150
/* 045150 10005150 */ .asciz ".sbss"
                      .balign 4

glabel STR_10005158
/* 045158 10005158 */ .asciz "  sbss size  = %x\n"
                      .balign 4

glabel STR_1000516C
/* 04516C 1000516C */ .asciz "       align = %x\n"
                      .balign 4

glabel STR_10005180
/* 045180 10005180 */ .asciz ".bss"
                      .balign 4

glabel STR_10005188
/* 045188 10005188 */ .asciz "  bss size  = %x\n"
                      .balign 4

glabel STR_1000519C
/* 04519C 1000519C */ .asciz "      align = %x\n"
                      .balign 4

glabel STR_100051B0
/* 0451B0 100051B0 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_100051C4
/* 0451C4 100051C4 */ .asciz "makerom: lstat failed: %s\n"
                      .balign 4

glabel STR_100051E0
/* 0451E0 100051E0 */ .asciz "makerom: segment \"%s\" (text+data) size "
                      .balign 4

glabel STR_10005208
/* 045208 10005208 */ .asciz "(%d+%d) = %d (0x%x)\n         "
                      .balign 4

glabel STR_10005228
/* 045228 10005228 */ .asciz "exceeds maximum BOOT segment size %d (0x%x)\n"
                      .balign 4

glabel STR_10005258
/* 045258 10005258 */ .asciz "makerom: segment \"%s\" (text+data+bss) size "
                      .balign 4

glabel STR_10005284
/* 045284 10005284 */ .asciz "(%d+%d+%d) = %d (0x%x)\n         "
                      .balign 4

glabel STR_100052A8
/* 0452A8 100052A8 */ .asciz "exceeds given maximum segment size %d (0x%x)\n"
                      .balign 4

glabel STR_100052D8
/* 0452D8 100052D8 */ .asciz "makerom: segment \"%s\" [0x%x, 0x%x) overlaps with\n"
                      .balign 4

glabel STR_1000530C
/* 04530C 1000530C */ .asciz "         segment \"%s\" [0x%x, 0x%x)\n"
                      .balign 4

glabel STR_10005330
/* 045330 10005330 */ .asciz "         in wave \"%s\"\n"
                      .balign 4

glabel STR_10005348
/* 045348 10005348 */ .asciz "w"
                      .balign 4

glabel STR_1000534C
/* 04534C 1000534C */ .asciz "makerom: %s: cannot create\n"
                      .balign 4

glabel STR_10005368
/* 045368 10005368 */ .asciz ".globl _%sSegmentRomStart; "
                      .balign 4

glabel STR_10005384
/* 045384 10005384 */ .asciz "_%sSegmentRomStart = 0x%08x\n"
                      .balign 4

glabel STR_100053A4
/* 0453A4 100053A4 */ .asciz ".globl _%sSegmentRomEnd; "
                      .balign 4

glabel STR_100053C0
/* 0453C0 100053C0 */ .asciz "_%sSegmentRomEnd = 0x%08x\n"
                      .balign 4

glabel STR_100053DC
/* 0453DC 100053DC */ .asciz ".globl _%sSegmentStart; "
                      .balign 4

glabel STR_100053F8
/* 0453F8 100053F8 */ .asciz "_%sSegmentStart = 0x%08x\n"
                      .balign 4

glabel STR_10005414
/* 045414 10005414 */ .asciz ".globl _%sSegmentTextStart; "
                      .balign 4

glabel STR_10005434
/* 045434 10005434 */ .asciz "_%sSegmentTextStart = 0x%08x\n"
                      .balign 4

glabel STR_10005454
/* 045454 10005454 */ .asciz ".globl _%sSegmentTextEnd; "
                      .balign 4

glabel STR_10005470
/* 045470 10005470 */ .asciz "_%sSegmentTextEnd = 0x%08x\n"
                      .balign 4

glabel STR_1000548C
/* 04548C 1000548C */ .asciz ".globl _%sSegmentDataStart; "
                      .balign 4

glabel STR_100054AC
/* 0454AC 100054AC */ .asciz "_%sSegmentDataStart = 0x%08x\n"
                      .balign 4

glabel STR_100054CC
/* 0454CC 100054CC */ .asciz ".globl _%sSegmentDataEnd; "
                      .balign 4

glabel STR_100054E8
/* 0454E8 100054E8 */ .asciz "_%sSegmentDataEnd = 0x%08x\n"
                      .balign 4

glabel STR_10005504
/* 045504 10005504 */ .asciz ".globl _%sSegmentBssStart; "
                      .balign 4

glabel STR_10005520
/* 045520 10005520 */ .asciz "_%sSegmentBssStart = 0x%08x\n"
                      .balign 4

glabel STR_10005540
/* 045540 10005540 */ .asciz ".globl _%sSegmentBssEnd; "
                      .balign 4

glabel STR_1000555C
/* 04555C 1000555C */ .asciz "_%sSegmentBssEnd = 0x%08x\n"
                      .balign 4

glabel STR_10005578
/* 045578 10005578 */ .asciz ".globl _%sSegmentEnd; "
                      .balign 4

glabel STR_10005590
/* 045590 10005590 */ .asciz "_%sSegmentEnd = 0x%08x\n"
                      .balign 4

glabel STR_100055A8
/* 0455A8 100055A8 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_100055B8
/* 0455B8 100055B8 */ .asciz "$TOOLROOT/usr/bin/cc -c -non_shared -o "
                      .balign 4

glabel STR_100055E0
/* 0455E0 100055E0 */ .asciz " "
                      .balign 4

glabel STR_100055E4
/* 0455E4 100055E4 */ .asciz "  %s\n"
                      .balign 4

glabel STR_100055EC
/* 0455EC 100055EC */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10005600
/* 045600 10005600 */ .asciz ".text"
                      .balign 4

glabel STR_10005608
/* 045608 10005608 */ .asciz "makerom: entr size %d is larger than %d\n"
                      .balign 4

glabel STR_10005634
/* 045634 10005634 */ .asciz "makerom: lseek of entry section failed\n"
                      .balign 4

glabel STR_1000565C
/* 04565C 1000565C */ .asciz "makerom: read of entry section failed\n"
                      .balign 4

glabel STR_10005684
/* 045684 10005684 */ .asciz "w+"
                      .balign 4

glabel STR_10005688
/* 045688 10005688 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_1000569C
/* 04569C 1000569C */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100056BC
/* 0456BC 100056BC */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_100056D8
/* 0456D8 100056D8 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100056F8
/* 0456F8 100056F8 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_10005714
/* 045714 10005714 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_10005734
/* 045734 10005734 */ .asciz "makerom: %s: read error \n"
                      .balign 4

glabel STR_10005750
/* 045750 10005750 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_10005770
/* 045770 10005770 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_1000578C
/* 04578C 1000578C */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100057AC
/* 0457AC 100057AC */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_100057C8
/* 0457C8 100057C8 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_100057E8
/* 0457E8 100057E8 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_10005804
/* 045804 10005804 */ .asciz "makerom: %s: fseek error (%s)\n"
                      .balign 4

glabel STR_10005824
/* 045824 10005824 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_10005840
/* 045840 10005840 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10005850
/* 045850 10005850 */ .asciz "makerom: %s: write error %x\n"
                      .balign 4

glabel STR_10005870
/* 045870 10005870 */ .asciz "makerom: %s: write error\n"
                      .balign 4

glabel STR_1000588C
/* 04588C 1000588C */ .asciz ".cord"
                      .balign 4

glabel STR_10005894
/* 045894 10005894 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_100058A8
/* 0458A8 100058A8 */ .asciz "makerom: %s: not a valid ELF object file\n"
                      .balign 4

glabel STR_100058D4
/* 0458D4 100058D4 */ .asciz "makerom: %s: can't get section index %d\n"
                      .balign 4

glabel STR_10005900
/* 045900 10005900 */ .asciz "makerom: %s: can't get section index %d\n"
                      .balign 4

glabel STR_1000592C
/* 04592C 1000592C */ .asciz "makerom: %s: cannot find %s section\n"
                      .balign 4

glabel STR_10005954
/* 045954 10005954 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10005964
/* 045964 10005964 */ .asciz ".%s.text"
                      .balign 4

glabel STR_10005970
/* 045970 10005970 */ .asciz "makerom: %s: section size for %s does not match input section sizes\n"
                      .balign 4

glabel STR_100059B8
/* 0459B8 100059B8 */ .asciz "makerom:   shdr = %d, textSize = %d\n"
                      .balign 4

glabel STR_100059E0
/* 0459E0 100059E0 */ .asciz "makerom: %s: seek to section %s failed\n"
                      .balign 4

glabel STR_10005A08
/* 045A08 10005A08 */ .asciz "makerom: %s: read of section %s failed\n"
                      .balign 4

glabel STR_10005A30
/* 045A30 10005A30 */ .asciz ".%s.data"
                      .balign 4

glabel STR_10005A3C
/* 045A3C 10005A3C */ .asciz "makerom: %s: section size for %s does not match input section sizes\n"
                      .balign 4

glabel STR_10005A84
/* 045A84 10005A84 */ .asciz "large data failed\n"
                      .balign 4

glabel STR_10005A98
/* 045A98 10005A98 */ .asciz "%s, file large=%x, our dataSize=%x\n"
                      .balign 4

glabel STR_10005ABC
/* 045ABC 10005ABC */ .asciz "makerom: %s: seek to section %s failed\n"
                      .balign 4

glabel STR_10005AE4
/* 045AE4 10005AE4 */ .asciz "makerom: %s: read of section %s failed\n"
                      .balign 4

glabel STR_10005B0C
/* 045B0C 10005B0C */ .asciz ".%s.sdata"
                      .balign 4

glabel STR_10005B18
/* 045B18 10005B18 */ .asciz "makerom: %s: section size for %s does not match input section sizes\n"
                      .balign 4

glabel STR_10005B60
/* 045B60 10005B60 */ .asciz "small data failed\n"
                      .balign 4

glabel STR_10005B74
/* 045B74 10005B74 */ .asciz "makerom: %s: seek to section %s failed\n"
                      .balign 4

glabel STR_10005B9C
/* 045B9C 10005B9C */ .asciz "makerom: %s: read of section %s failed\n"
                      .balign 4

glabel STR_10005BC4
/* 045BC4 10005BC4 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10005BD8
/* 045BD8 10005BD8 */ .asciz "makerom: lstat failed: %s\n"
                      .balign 4

glabel STR_10005BF4
/* 045BF4 10005BF4 */ .asciz "makerom: %s: segment size changed\n"
                      .balign 4

glabel STR_10005C18
/* 045C18 10005C18 */ .asciz "makerom: %s: read failed (%s)\n"
                      .balign 4

glabel STR_10005C38
/* 045C38 10005C38 */ .asciz "__osFinalrom"
                      .balign 4

glabel STR_10005C48
/* 045C48 10005C48 */ .asciz "w"
                      .balign 4

glabel STR_10005C4C
/* 045C4C 10005C4C */ .asciz "makerom: %s: cannot create\n"
                      .balign 4

glabel STR_10005C68
/* 045C68 10005C68 */ .asciz "makerom: %s: %s\n"
                      .balign 4

glabel STR_10005C7C
/* 045C7C 10005C7C */ .asciz "makerom: %s: not a valid ELF object file\n"
                      .balign 4

glabel STR_10005CA8
/* 045CA8 10005CA8 */ .asciz "makerom: use libultra_rom.a to build real game cassette\n"
                      .balign 4

glabel STR_10005CE4
/* 045CE4 10005CE4 */ .asciz "makerom: %s: cannot find entry symbol %s\n"
                      .balign 4

glabel STR_10005D10
/* 045D10 10005D10 */ .asciz "makerom: %s: cannot find stack symbol %s\n"
                      .balign 4

glabel STR_10005D3C
/* 045D3C 10005D3C */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10005D4C
/* 045D4C 10005D4C */ .asciz "_%sSegmentBssStart"
                      .balign 4

glabel STR_10005D60
/* 045D60 10005D60 */ .asciz " la\t$8 0x%x\n"
                      .balign 4

glabel STR_10005D70
/* 045D70 10005D70 */ .asciz " li\t$9 0x%x\n"
                      .balign 4

glabel STR_10005D80
/* 045D80 10005D80 */ .asciz "1:\n"
                      .balign 4

glabel STR_10005D84
/* 045D84 10005D84 */ .asciz " sw $0, 0($8)\n"
                      .balign 4

glabel STR_10005D94
/* 045D94 10005D94 */ .asciz " sw $0, 4($8)\n"
                      .balign 4

glabel STR_10005DA4
/* 045DA4 10005DA4 */ .asciz " addi $8, 8\n"
                      .balign 4

glabel STR_10005DB4
/* 045DB4 10005DB4 */ .asciz " addi $9, 0xfff8\n"
                      .balign 4

glabel STR_10005DC8
/* 045DC8 10005DC8 */ .asciz " bne  $9, $0, 1b\n"
                      .balign 4

glabel STR_10005DDC
/* 045DDC 10005DDC */ .asciz " la\t$29 0x%x\n"
                      .balign 4

glabel STR_10005DEC
/* 045DEC 10005DEC */ .asciz " la $10  0x%x\n"
                      .balign 4

glabel STR_10005DFC
/* 045DFC 10005DFC */ .asciz " j $10\n"
                      .balign 4

glabel STR_10005E04
/* 045E04 10005E04 */ .asciz "malloc failed\n"
                      .balign 4

glabel STR_10005E14
/* 045E14 10005E14 */ .asciz "$TOOLROOT/usr/bin/cc -c -non_shared -o "
                      .balign 4

glabel STR_10005E3C
/* 045E3C 10005E3C */ .asciz " "
                      .balign 4

glabel STR_10005E40
/* 045E40 10005E40 */ .asciz "Compiling entry source file\n"
                      .balign 4

glabel STR_10005E60
/* 045E60 10005E60 */ .asciz "  %s\n"
                      .balign 4

glabel jtbl_10005E68
/* 045E68 10005E68 F03FA758 */ .gpword .L0040D4B8
/* 045E6C 10005E6C F03FA6A0 */ .gpword .L0040D400
/* 045E70 10005E70 F03FA6FC */ .gpword .L0040D45C
/* 045E74 10005E74 F03FA780 */ .gpword .L0040D4E0
/* 045E78 10005E78 F03FA794 */ .gpword .L0040D4F4

glabel jtbl_10005E7C
/* 045E7C 10005E7C F03FAFD8 */ .gpword .L0040DD38
/* 045E80 10005E80 F03FAF20 */ .gpword .L0040DC80
/* 045E84 10005E84 F03FAF7C */ .gpword .L0040DCDC
/* 045E88 10005E88 F03FB000 */ .gpword .L0040DD60
/* 045E8C 10005E8C F03FB014 */ .gpword .L0040DD74

glabel STR_10005E90
/* 045E90 10005E90 */ .asciz ".text"
                      .balign 4

glabel STR_10005E98
/* 045E98 10005E98 */ .asciz "Extract(): Cannot open %s.\n"
                      .balign 4
/* 045EB4 10005EB4 */ .asciz ""
                      .balign 4
/* 045EB8 10005EB8 */ .asciz ""
                      .balign 4
/* 045EBC 10005EBC */ .asciz ""
                      .balign 4

glabel STR_10005EC0
/* 045EC0 10005EC0 */ .asciz "%x"
                      .balign 4

glabel STR_10005EC4
/* 045EC4 10005EC4 */ .asciz "Illegal character"
                      .balign 4

glabel STR_10005ED8
/* 045ED8 10005ED8 */ .asciz "bad switch yylook %d"
                      .balign 4

glabel STR_10005EF0
/* 045EF0 10005EF0 */ .asciz " %d \"%s\""
                      .balign 4

glabel STR_10005EFC
/* 045EFC 10005EFC */ .asciz "Input string too long, limit %d\n"
                      .balign 4

glabel STR_10005F20
/* 045F20 10005F20 */ .asciz "Input string too long, limit %d\n"
                      .balign 4

glabel STR_10005F44
/* 045F44 10005F44 */ .asciz "Input string too long, limit %d\n"
                      .balign 4

glabel STR_10005F68
/* 045F68 10005F68 */ .asciz "Input string too long, limit %d\n"
                      .balign 4

glabel jtbl_10005F8C
/* 045F8C 10005F8C F03FE410 */ .gpword .L00411170
/* 045F90 10005F90 F03FDF9C */ .gpword .L00410CFC
/* 045F94 10005F94 F03FDFC0 */ .gpword .L00410D20
/* 045F98 10005F98 F03FDFDC */ .gpword .L00410D3C
/* 045F9C 10005F9C F03FDFF8 */ .gpword .L00410D58
/* 045FA0 10005FA0 F03FE014 */ .gpword .L00410D74
/* 045FA4 10005FA4 F03FE01C */ .gpword .L00410D7C
/* 045FA8 10005FA8 F03FE038 */ .gpword .L00410D98
/* 045FAC 10005FAC F03FE054 */ .gpword .L00410DB4
/* 045FB0 10005FB0 F03FE070 */ .gpword .L00410DD0
/* 045FB4 10005FB4 F03FE08C */ .gpword .L00410DEC
/* 045FB8 10005FB8 F03FE0A8 */ .gpword .L00410E08
/* 045FBC 10005FBC F03FE0C4 */ .gpword .L00410E24
/* 045FC0 10005FC0 F03FE0E0 */ .gpword .L00410E40
/* 045FC4 10005FC4 F03FE0FC */ .gpword .L00410E5C
/* 045FC8 10005FC8 F03FE118 */ .gpword .L00410E78
/* 045FCC 10005FCC F03FE134 */ .gpword .L00410E94
/* 045FD0 10005FD0 F03FE150 */ .gpword .L00410EB0
/* 045FD4 10005FD4 F03FE16C */ .gpword .L00410ECC
/* 045FD8 10005FD8 F03FE188 */ .gpword .L00410EE8
/* 045FDC 10005FDC F03FE1A4 */ .gpword .L00410F04
/* 045FE0 10005FE0 F03FE1C0 */ .gpword .L00410F20
/* 045FE4 10005FE4 F03FE1DC */ .gpword .L00410F3C
/* 045FE8 10005FE8 F03FE1F8 */ .gpword .L00410F58
/* 045FEC 10005FEC F03FE214 */ .gpword .L00410F74
/* 045FF0 10005FF0 F03FE230 */ .gpword .L00410F90
/* 045FF4 10005FF4 F03FE24C */ .gpword .L00410FAC
/* 045FF8 10005FF8 F03FE268 */ .gpword .L00410FC8
/* 045FFC 10005FFC F03FE284 */ .gpword .L00410FE4
/* 046000 10006000 F03FE2A0 */ .gpword .L00411000
/* 046004 10006004 F03FE2BC */ .gpword .L0041101C
/* 046008 10006008 F03FE2E8 */ .gpword .L00411048
/* 04600C 1000600C F03FE314 */ .gpword .L00411074
/* 046010 10006010 F03FE370 */ .gpword .L004110D0
/* 046014 10006014 F03FE3F4 */ .gpword .L00411154
/* 046018 10006018 00000000 */ .word 0x00000000
/* 04601C 1000601C 00000000 */ .word 0x00000000

glabel STR_10006020
/* 046020 10006020 */ .asciz "makerom: %s at line %d [%s]\n"
                      .balign 4

glabel STR_10006040
/* 046040 10006040 */ .asciz "makerom: error at line %d: "
                      .balign 4

glabel STR_1000605C
/* 04605C 1000605C */ .asciz "\n"
                      .balign 4

glabel STR_10006060
/* 046060 10006060 */ .asciz "uxlibc:80"
                      .balign 4

glabel STR_1000606C
/* 04606C 1000606C */ .asciz "Yacc stack overflow"
                      .balign 4

glabel STR_10006080
/* 046080 10006080 */ .asciz "uxlibc:81"
                      .balign 4

glabel STR_1000608C
/* 04608C 1000608C */ .asciz "Syntax error"
                      .balign 4

glabel STR_1000609C
/* 04609C 1000609C */ .asciz "no segment name specified"
                      .balign 4

glabel STR_100060B8
/* 0460B8 100060B8 */ .asciz "no files included for segment"
                      .balign 4

glabel STR_100060D8
/* 0460D8 100060D8 */ .asciz "first segment must be BOOT segment"
                      .balign 4

glabel STR_100060FC
/* 0460FC 100060FC */ .asciz "entry point specified on non-BOOT segment \"%s\""
                      .balign 4

glabel STR_1000612C
/* 04612C 1000612C */ .asciz "stack specified on non-BOOT segment \"%s\""
                      .balign 4

glabel STR_10006158
/* 046158 10006158 */ .asciz "no address specified for OBJECT segment \"%s\""
                      .balign 4

glabel STR_10006188
/* 046188 10006188 */ .asciz "address specified for RAW segment \"%s\""
                      .balign 4

glabel STR_100061B0
/* 0461B0 100061B0 */ .asciz "\"align\" keyword is only valid with \"after\" keyword\n         for segment \"%s\""
                      .balign 4

glabel STR_10006200
/* 046200 10006200 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_10006218
/* 046218 10006218 */ .asciz "address (0x%x) not a multiple of 16"
                      .balign 4

glabel STR_1000623C
/* 04623C 1000623C */ .asciz "address (0x%x) must be at least\n         0x%x (or 0x%x)"
                      .balign 4

glabel STR_10006274
/* 046274 10006274 */ .asciz "multiple address/number/after statement"
                      .balign 4

glabel STR_1000629C
/* 04629C 1000629C */ .asciz "segment number (%d) not in range [0-15]"
                      .balign 4

glabel STR_100062C4
/* 0462C4 100062C4 */ .asciz "multiple address/number/after statement"
                      .balign 4

glabel STR_100062EC
/* 0462EC 100062EC */ .asciz "multiple address/number/after statement"
                      .balign 4

glabel STR_10006314
/* 046314 10006314 */ .asciz "rom alignment (%d or 0x%x) must be at least 16"
                      .balign 4

glabel STR_10006344
/* 046344 10006344 */ .asciz "rom alignment (%d or 0x%x) must be a power of 2"
                      .balign 4

glabel STR_10006374
/* 046374 10006374 */ .asciz "alignment (%d or 0x%x) must be at least 16"
                      .balign 4

glabel STR_100063A0
/* 0463A0 100063A0 */ .asciz "alignment (%d or 0x%x) must be a power of 2"
                      .balign 4

glabel STR_100063CC
/* 0463CC 100063CC */ .asciz "multiple segment name"
                      .balign 4

glabel STR_100063E4
/* 0463E4 100063E4 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_100063FC
/* 0463FC 100063FC */ .asciz "multiple entry point"
                      .balign 4

glabel STR_10006414
/* 046414 10006414 */ .asciz "multiple flags value specified"
                      .balign 4

glabel STR_10006434
/* 046434 10006434 */ .asciz "RAW segment cannot be a BOOT segment"
                      .balign 4

glabel STR_1000645C
/* 04645C 1000645C */ .asciz "RAW and OBJECT are mutually exclusive"
                      .balign 4

glabel STR_10006484
/* 046484 10006484 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_1000649C
/* 04649C 1000649C */ .asciz "multiple maximum segment size value"
                      .balign 4

glabel STR_100064C0
/* 0464C0 100064C0 */ .asciz "makerom: maxsize constant (%d) not a multiple of 16\n"
                      .balign 4

glabel STR_100064F8
/* 0464F8 100064F8 */ .asciz "multiple stack"
                      .balign 4

glabel STR_10006508
/* 046508 10006508 */ .asciz "segment \"%s\" not (yet) defined"
                      .balign 4

glabel STR_10006528
/* 046528 10006528 */ .asciz "segment \"%s\" not (yet) defined"
                      .balign 4

glabel STR_10006548
/* 046548 10006548 */ .asciz "segment \"%s\" not (yet) defined"
                      .balign 4

glabel STR_10006568
/* 046568 10006568 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_10006580
/* 046580 10006580 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel STR_10006598
/* 046598 10006598 */ .asciz "unknown segment \"%s\""
                      .balign 4

glabel STR_100065B0
/* 0465B0 100065B0 */ .asciz "makerom: malloc failed\n"
                      .balign 4

glabel jtbl_100065C8
/* 0465C8 100065C8 F0400688 */ .gpword .L004133E8
/* 0465CC 100065CC F04009D0 */ .gpword .L00413730
/* 0465D0 100065D0 F040172C */ .gpword .L0041448C
/* 0465D4 100065D4 F040172C */ .gpword .L0041448C
/* 0465D8 100065D8 F0400B7C */ .gpword .L004138DC
/* 0465DC 100065DC F0400C88 */ .gpword .L004139E8
/* 0465E0 100065E0 F0400D2C */ .gpword .L00413A8C
/* 0465E4 100065E4 F0400D7C */ .gpword .L00413ADC
/* 0465E8 100065E8 F0400E0C */ .gpword .L00413B6C
/* 0465EC 100065EC F0400E9C */ .gpword .L00413BFC
/* 0465F0 100065F0 F0400F30 */ .gpword .L00413C90
/* 0465F4 100065F4 F0400F80 */ .gpword .L00413CE0
/* 0465F8 100065F8 F0401038 */ .gpword .L00413D98
/* 0465FC 100065FC F0401128 */ .gpword .L00413E88
/* 046600 10006600 F04011B0 */ .gpword .L00413F10
/* 046604 10006604 F04011F4 */ .gpword .L00413F54
/* 046608 10006608 F04012A0 */ .gpword .L00414000
/* 04660C 1000660C F04013B0 */ .gpword .L00414110
/* 046610 10006610 F04013C8 */ .gpword .L00414128
/* 046614 10006614 F04013E0 */ .gpword .L00414140
/* 046618 10006618 F04013F4 */ .gpword .L00414154
/* 04661C 1000661C F0401410 */ .gpword .L00414170
/* 046620 10006620 F0401424 */ .gpword .L00414184
/* 046624 10006624 F0401438 */ .gpword .L00414198
/* 046628 10006628 F040144C */ .gpword .L004141AC
/* 04662C 1000662C F0401468 */ .gpword .L004141C8
/* 046630 10006630 F0401484 */ .gpword .L004141E4
/* 046634 10006634 F040172C */ .gpword .L0041448C
/* 046638 10006638 F040172C */ .gpword .L0041448C
/* 04663C 1000663C F04014A4 */ .gpword .L00414204
/* 046640 10006640 F04014BC */ .gpword .L0041421C
/* 046644 10006644 F040172C */ .gpword .L0041448C
/* 046648 10006648 F040172C */ .gpword .L0041448C
/* 04664C 1000664C F040158C */ .gpword .L004142EC
/* 046650 10006650 F04015EC */ .gpword .L0041434C
/* 046654 10006654 00000000 */ .word 0x00000000
/* 046658 10006658 00000000 */ .word 0x00000000
/* 04665C 1000665C 00000000 */ .word 0x00000000

glabel RO_10006660
/* 046660 10006660 00000001 */ .word 0x00000001
/* 046664 10006664 00000001 */ .word 0x00000001
/* 046668 10006668 00000008 */ .word 0x00000008
/* 04666C 1000666C 00000008 */ .word 0x00000008
/* 046670 10006670 00000010 */ .word 0x00000010
/* 046674 10006674 00000010 */ .word 0x00000010
/* 046678 10006678 00000040 */ .word 0x00000040
/* 04667C 1000667C 00000040 */ .word 0x00000040
/* 046680 10006680 00000002 */ .word 0x00000002
/* 046684 10006684 00000002 */ .word 0x00000002
/* 046688 10006688 00000008 */ .word 0x00000008
/* 04668C 1000668C 00000008 */ .word 0x00000008
/* 046690 10006690 00000038 */ .word 0x00000038
/* 046694 10006694 00000038 */ .word 0x00000038
/* 046698 10006698 00000018 */ .word 0x00000018
/* 04669C 1000669C 00000018 */ .word 0x00000018
/* 0466A0 100066A0 00000010 */ .word 0x00000010
/* 0466A4 100066A4 00000010 */ .word 0x00000010
/* 0466A8 100066A8 00000040 */ .word 0x00000040
/* 0466AC 100066AC 00000040 */ .word 0x00000040
/* 0466B0 100066B0 00000004 */ .word 0x00000004
/* 0466B4 100066B4 00000004 */ .word 0x00000004
/* 0466B8 100066B8 00000008 */ .word 0x00000008
/* 0466BC 100066BC 00000008 */ .word 0x00000008
/* 0466C0 100066C0 00000018 */ .word 0x00000018
/* 0466C4 100066C4 00000018 */ .word 0x00000018
/* 0466C8 100066C8 00000004 */ .word 0x00000004
/* 0466CC 100066CC 00000004 */ .word 0x00000004
/* 0466D0 100066D0 00000008 */ .word 0x00000008
/* 0466D4 100066D4 00000008 */ .word 0x00000008

glabel STR_100066D8
/* 0466D8 100066D8 */ .asciz ""
                      .balign 4
/* 0466DC 100066DC */ .asciz ""
                      .balign 4
/* 0466E0 100066E0 0000000C */ .word 0x0000000C
/* 0466E4 100066E4 00000000 */ .word 0x00000000
/* 0466E8 100066E8 00000007 */ .word 0x00000007
/* 0466EC 100066EC 0000000D */ .word 0x0000000D
/* 0466F0 100066F0 00000002 */ .word 0x00000002
/* 0466F4 100066F4 00000000 */ .word 0x00000000
/* 0466F8 100066F8 00000000 */ .word 0x00000000
/* 0466FC 100066FC 00000008 */ .word 0x00000008
/* 046700 10006700 00000000 */ .word 0x00000000
/* 046704 10006704 0000000C */ .word 0x0000000C
/* 046708 10006708 00000000 */ .word 0x00000000
/* 04670C 1000670C 00000000 */ .word 0x00000000

glabel RO_10006710
/* 046710 10006710 00000001 */ .word 0x00000001
/* 046714 10006714 00000004 */ .word 0x00000004
/* 046718 10006718 00000004 */ .word 0x00000004
/* 04671C 1000671C 00000004 */ .word 0x00000004
/* 046720 10006720 00000002 */ .word 0x00000002
/* 046724 10006724 00000004 */ .word 0x00000004
/* 046728 10006728 00000004 */ .word 0x00000004
/* 04672C 1000672C 00000004 */ .word 0x00000004
/* 046730 10006730 00000004 */ .word 0x00000004
/* 046734 10006734 00000004 */ .word 0x00000004
/* 046738 10006738 00000004 */ .word 0x00000004
/* 04673C 1000673C 00000000 */ .word 0x00000000
/* 046740 10006740 00000004 */ .word 0x00000004
/* 046744 10006744 00000004 */ .word 0x00000004
/* 046748 10006748 00000000 */ .word 0x00000000

glabel RO_1000674C
/* 04674C 1000674C 00000001 */ .word 0x00000001
/* 046750 10006750 00000008 */ .word 0x00000008
/* 046754 10006754 00000008 */ .word 0x00000008
/* 046758 10006758 00000008 */ .word 0x00000008
/* 04675C 1000675C 00000002 */ .word 0x00000002
/* 046760 10006760 00000008 */ .word 0x00000008
/* 046764 10006764 00000008 */ .word 0x00000008
/* 046768 10006768 00000008 */ .word 0x00000008
/* 04676C 1000676C 00000008 */ .word 0x00000008
/* 046770 10006770 00000008 */ .word 0x00000008
/* 046774 10006774 00000008 */ .word 0x00000008
/* 046778 10006778 00000008 */ .word 0x00000008
/* 04677C 1000677C 00000008 */ .word 0x00000008
/* 046780 10006780 00000008 */ .word 0x00000008
/* 046784 10006784 00000008 */ .word 0x00000008
/* 046788 10006788 00000000 */ .word 0x00000000
/* 04678C 1000678C 00000000 */ .word 0x00000000

glabel STR_10006790
/* 046790 10006790 */ .asciz "!<arch>\n"
                      .balign 4

glabel jtbl_1000679C
/* 04679C 1000679C F040F804 */ .gpword .L00422564
/* 0467A0 100067A0 F040F948 */ .gpword .L004226A8
/* 0467A4 100067A4 F040F8A8 */ .gpword .L00422608
/* 0467A8 100067A8 F040F7F0 */ .gpword .L00422550
/* 0467AC 100067AC F040F7F0 */ .gpword .L00422550
/* 0467B0 100067B0 F040F7F0 */ .gpword .L00422550
/* 0467B4 100067B4 F040F7F0 */ .gpword .L00422550
/* 0467B8 100067B8 F040F938 */ .gpword .L00422698
/* 0467BC 100067BC F040F958 */ .gpword .L004226B8
/* 0467C0 100067C0 F040F80C */ .gpword .L0042256C
/* 0467C4 100067C4 00000000 */ .word 0x00000000
/* 0467C8 100067C8 00000000 */ .word 0x00000000
/* 0467CC 100067CC 00000000 */ .word 0x00000000

glabel RO_100067D0
/* 0467D0 100067D0 00000001 */ .word 0x00000001
/* 0467D4 100067D4 00000001 */ .word 0x00000001
/* 0467D8 100067D8 00000004 */ .word 0x00000004
/* 0467DC 100067DC 00000004 */ .word 0x00000004
/* 0467E0 100067E0 00000008 */ .word 0x00000008
/* 0467E4 100067E4 00000008 */ .word 0x00000008
/* 0467E8 100067E8 00000034 */ .word 0x00000034
/* 0467EC 100067EC 00000034 */ .word 0x00000034
/* 0467F0 100067F0 00000002 */ .word 0x00000002
/* 0467F4 100067F4 00000002 */ .word 0x00000002
/* 0467F8 100067F8 00000004 */ .word 0x00000004
/* 0467FC 100067FC 00000004 */ .word 0x00000004
/* 046800 10006800 00000020 */ .word 0x00000020
/* 046804 10006804 00000020 */ .word 0x00000020
/* 046808 10006808 0000000C */ .word 0x0000000C
/* 04680C 1000680C 0000000C */ .word 0x0000000C
/* 046810 10006810 00000008 */ .word 0x00000008
/* 046814 10006814 00000008 */ .word 0x00000008
/* 046818 10006818 00000028 */ .word 0x00000028
/* 04681C 1000681C 00000028 */ .word 0x00000028
/* 046820 10006820 00000004 */ .word 0x00000004
/* 046824 10006824 00000004 */ .word 0x00000004
/* 046828 10006828 00000000 */ .word 0x00000000
/* 04682C 1000682C 00000000 */ .word 0x00000000
/* 046830 10006830 00000010 */ .word 0x00000010
/* 046834 10006834 00000010 */ .word 0x00000010
/* 046838 10006838 00000004 */ .word 0x00000004
/* 04683C 1000683C 00000004 */ .word 0x00000004
/* 046840 10006840 00000000 */ .word 0x00000000
/* 046844 10006844 00000000 */ .word 0x00000000

glabel STR_10006848
/* 046848 10006848 */ .asciz ""
                      .balign 4
/* 04684C 1000684C */ .asciz ""
                      .balign 4
/* 046850 10006850 0000000C */ .word 0x0000000C
/* 046854 10006854 00000000 */ .word 0x00000000
/* 046858 10006858 00000007 */ .word 0x00000007
/* 04685C 1000685C 0000000D */ .word 0x0000000D
/* 046860 10006860 00000002 */ .word 0x00000002
/* 046864 10006864 00000000 */ .word 0x00000000
/* 046868 10006868 00000000 */ .word 0x00000000
/* 04686C 1000686C 00000008 */ .word 0x00000008
/* 046870 10006870 00000000 */ .word 0x00000000
/* 046874 10006874 0000000C */ .word 0x0000000C
/* 046878 10006878 00000000 */ .word 0x00000000
/* 04687C 1000687C 00000000 */ .word 0x00000000

glabel jtbl_10006880
/* 046880 10006880 F0414DC8 */ .gpword .L00427B28
/* 046884 10006884 F0414E38 */ .gpword .L00427B98
/* 046888 10006888 F0414E28 */ .gpword .L00427B88
/* 04688C 1000688C F0414E18 */ .gpword .L00427B78
/* 046890 10006890 F0414E08 */ .gpword .L00427B68
/* 046894 10006894 F0414DF8 */ .gpword .L00427B58
/* 046898 10006898 F0414DE8 */ .gpword .L00427B48
/* 04689C 1000689C F0414DD8 */ .gpword .L00427B38

glabel _elf32_ehdr_init
/* 0468A0 100068A0 */ .asciz ""
                      .balign 4
/* 0468A4 100068A4 */ .asciz ""
                      .balign 4
/* 0468A8 100068A8 */ .asciz ""
                      .balign 4
/* 0468AC 100068AC */ .asciz ""
                      .balign 4
/* 0468B0 100068B0 */ .asciz ""
                      .balign 4
/* 0468B4 100068B4 */ .asciz ""
                      .balign 4
/* 0468B8 100068B8 */ .asciz ""
                      .balign 4
/* 0468BC 100068BC */ .asciz ""
                      .balign 4
/* 0468C0 100068C0 */ .asciz ""
                      .balign 4
/* 0468C4 100068C4 */ .asciz ""
                      .balign 4
/* 0468C8 100068C8 */ .asciz ""
                      .balign 4
/* 0468CC 100068CC */ .asciz ""
                      .balign 4
/* 0468D0 100068D0 */ .asciz ""
                      .balign 4
/* 0468D4 100068D4 */ .asciz ""
                      .balign 4

glabel _elf64_ehdr_init
/* 0468D8 100068D8 */ .asciz ""
                      .balign 4
/* 0468DC 100068DC */ .asciz ""
                      .balign 4
/* 0468E0 100068E0 */ .asciz ""
                      .balign 4
/* 0468E4 100068E4 */ .asciz ""
                      .balign 4
/* 0468E8 100068E8 */ .asciz ""
                      .balign 4
/* 0468EC 100068EC */ .asciz ""
                      .balign 4
/* 0468F0 100068F0 */ .asciz ""
                      .balign 4
/* 0468F4 100068F4 */ .asciz ""
                      .balign 4
/* 0468F8 100068F8 */ .asciz ""
                      .balign 4
/* 0468FC 100068FC */ .asciz ""
                      .balign 4
/* 046900 10006900 */ .asciz ""
                      .balign 4
/* 046904 10006904 */ .asciz ""
                      .balign 4
/* 046908 10006908 */ .asciz ""
                      .balign 4
/* 04690C 1000690C */ .asciz ""
                      .balign 4
/* 046910 10006910 */ .asciz ""
                      .balign 4
/* 046914 10006914 */ .asciz ""
                      .balign 4
/* 046918 10006918 */ .asciz ""
                      .balign 4
/* 04691C 1000691C */ .asciz ""
                      .balign 4

glabel STR_10006920
/* 046920 10006920 */ .asciz "`\n"
                      .balign 4
/* 046924 10006924 */ .asciz ""
                      .balign 4
/* 046928 10006928 */ .asciz ""
                      .balign 4
/* 04692C 1000692C */ .asciz ""
                      .balign 4

glabel STR_10006930
/* 046930 10006930 */ .asciz "ldptr = allocldptr()"
                      .balign 4

glabel STR_10006948
/* 046948 10006948 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10006950
/* 046950 10006950 */ .asciz "LIOPTR(ldptr) = (FILE *)calloc(1,sizeof(FILE))"
                      .balign 4

glabel STR_10006980
/* 046980 10006980 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10006988
/* 046988 10006988 */ .asciz "LPOBJ(ldptr) = (pOBJ)calloc(1,cbOBJ)"
                      .balign 4

glabel STR_100069B0
/* 0469B0 100069B0 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_100069B8
/* 0469B8 100069B8 */ .asciz "!<arch>\n"
                      .balign 4

glabel STR_100069C4
/* 0469C4 100069C4 */ .asciz "LTYPE(ldptr) == ARTYPE"
                      .balign 4

glabel STR_100069DC
/* 0469DC 100069DC */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_100069E4
/* 0469E4 100069E4 */ .asciz "__________E"
                      .balign 4

glabel STR_100069F0
/* 0469F0 100069F0 */ .asciz "libmld: init_ldfile:"
                      .balign 4

glabel STR_10006A08
/* 046A08 10006A08 */ .asciz "non-mips symbol table %x\n"
                      .balign 4

glabel STR_10006A24
/* 046A24 10006A24 */ .asciz "LSYMHEADER(ldptr) = (pCHDRR) calloc(cbCHDRR,1)"
                      .balign 4

glabel STR_10006A54
/* 046A54 10006A54 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10006A5C
/* 046A5C 10006A5C */ .asciz "LSYMHEADER(ldptr)->pcfd = (pCFDR)calloc(cbCFDR,LPHDR(ldptr)->ifdMax)"
                      .balign 4

glabel STR_10006AA4
/* 046AA4 10006AA4 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10006AAC
/* 046AAC 10006AAC */ .asciz "%s in not yet implemented...aborting\n"
                      .balign 4

glabel STR_10006AD4
/* 046AD4 10006AD4 */ .asciz "0"
                      .balign 4

glabel STR_10006AD8
/* 046AD8 10006AD8 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10006AE0
/* 046AE0 10006AE0 */ .asciz "%s nop-ed out\n"
                      .balign 4

glabel STR_10006AF0
/* 046AF0 10006AF0 */ .asciz "ldinitheaders"
                      .balign 4

glabel STR_10006B00
/* 046B00 10006B00 */ .asciz "Can only ldmemseek on archives!\n"
                      .balign 4

glabel STR_10006B24
/* 046B24 10006B24 */ .asciz "Can only ldmemseek from BEGINNING\n"
                      .balign 4

glabel STR_10006B48
/* 046B48 10006B48 */ .asciz "Bad  offset in ldmemseek\n"
                      .balign 4

glabel STR_10006B64
/* 046B64 10006B64 */ .asciz "Bad  offset in ldfseek\n"
                      .balign 4

glabel STR_10006B7C
/* 046B7C 10006B7C */ .asciz "ldohseek is not supported\n"
                      .balign 4

glabel STR_10006B98
/* 046B98 10006B98 */ .asciz "0"
                      .balign 4

glabel STR_10006B9C
/* 046B9C 10006B9C */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10006BA4
/* 046BA4 10006BA4 */ .asciz "libmld: ldnreloc:"
                      .balign 4

glabel STR_10006BB8
/* 046BB8 10006BB8 */ .asciz "cannot ldnrseek section %s\n"
                      .balign 4

glabel STR_10006BD4
/* 046BD4 10006BD4 */ .asciz "libmld: ldnreloc:"
                      .balign 4

glabel STR_10006BE8
/* 046BE8 10006BE8 */ .asciz "cannot FREAD relocation for %s\n"
                      .balign 4

glabel STR_10006C08
/* 046C08 10006C08 */ .asciz "LIOPTR(nldptr) = (FILE *)calloc(1,sizeof(FILE))"
                      .balign 4

glabel STR_10006C38
/* 046C38 10006C38 */ .asciz "ldfcn.c"
                      .balign 4

glabel STR_10006C40
/* 046C40 10006C40 */ .asciz "__________E"
                      .balign 4

glabel STR_10006C4C
/* 046C4C 10006C4C */ .asciz "LPOBJ(ldptr)->o_praw = realloc(LPOBJ(ldptr)->o_praw,LPOBJ(ldptr)->o_statb.st_size)"
                      .balign 4

glabel STR_10006CA0
/* 046CA0 10006CA0 */ .asciz "ldfcn.c"
                      .balign 4
/* 046CA8 10006CA8 */ .asciz ""
                      .balign 4
/* 046CAC 10006CAC */ .asciz ""
                      .balign 4

glabel STR_10006CB0
/* 046CB0 10006CB0 */ .asciz "MAIN__"
                      .balign 4

glabel STR_10006CB8
/* 046CB8 10006CB8 */ .asciz "obj_write failed"
                      .balign 4
/* 046CCC 10006CCC */ .asciz "obj_init: obj %s\n"
                      .balign 4
/* 046CE0 10006CE0 */ .asciz "obj_init: gethostsex %d\n"
                      .balign 4
/* 046CFC 10006CFC */ .asciz "obj_init: obj->o_mode %d\n"
                      .balign 4
/* 046D18 10006D18 */ .asciz "obj_init: Elf object\n"
                      .balign 4
/* 046D30 10006D30 */ .asciz "obj_init: Coff object\n"
                      .balign 4

glabel STR_10006D48
/* 046D48 10006D48 */ .asciz "Error: cbLineOffset greater than file size.\n"
                      .balign 4

glabel STR_10006D78
/* 046D78 10006D78 */ .asciz "Error: cbAuxOffset greater than file size.\n"
                      .balign 4

glabel STR_10006DA4
/* 046DA4 10006DA4 */ .asciz "Error: cbRfdOffset greater than file size.\n"
                      .balign 4

glabel STR_10006DD0
/* 046DD0 10006DD0 */ .asciz "Error: cbPdOffset greater than file size.\n"
                      .balign 4

glabel STR_10006DFC
/* 046DFC 10006DFC */ .asciz "Error: cbFdOffset greater than file size.\n"
                      .balign 4

glabel STR_10006E28
/* 046E28 10006E28 */ .asciz "Error: cbSymOffset greater than file size.\n"
                      .balign 4

glabel STR_10006E54
/* 046E54 10006E54 */ .asciz "Error: cbExtOffset greater than file size.\n"
                      .balign 4

glabel STR_10006E80
/* 046E80 10006E80 */ .asciz "Error: cbSsExtOffset greater than file size.\n"
                      .balign 4

glabel STR_10006EB0
/* 046EB0 10006EB0 */ .asciz "Error: cbSsOffset greater than file size.\n"
                      .balign 4

glabel STR_10006EDC
/* 046EDC 10006EDC */ .asciz "Symbol table header magic is 0x%x\n"
                      .balign 4

glabel STR_10006F00
/* 046F00 10006F00 */ .asciz "obj_get_dynamic_info failed\n"
                      .balign 4

glabel STR_10006F20
/* 046F20 10006F20 */ .asciz "adding obj to objlist"
                      .balign 4

glabel STR_10006F38
/* 046F38 10006F38 */ .asciz "adding obj to objlist"
                      .balign 4

glabel STR_10006F50
/* 046F50 10006F50 */ .asciz "adding obj to objlist"
                      .balign 4

glabel STR_10006F68
/* 046F68 10006F68 */ .asciz "obj_write failed"
                      .balign 4

glabel STR_10006F7C
/* 046F7C 10006F7C */ .asciz "obj_write failed"
                      .balign 4

glabel STR_10006F90
/* 046F90 10006F90 */ .asciz ".dynamic"
                      .balign 4

glabel STR_10006F9C
/* 046F9C 10006F9C */ .asciz "obj_dynamic:Bad obj type %d\n"
                      .balign 4

glabel STR_10006FBC
/* 046FBC 10006FBC */ .asciz "0"
                      .balign 4

glabel STR_10006FC0
/* 046FC0 10006FC0 */ .asciz "obj.c"
                      .balign 4
/* 046FC8 10006FC8 */ .asciz "get_dynamic_info: dynaddr 0x%x, obj 0x%x, offset 0x%x,0x%x\n"
                      .balign 4
/* 047004 10007004 */ .asciz "get_dynamic_info: obj 0x%x, name %s, dyn 0x%x,offset 0x%x,0x%x\n"
                      .balign 4
/* 047044 10007044 */ .asciz "get_dynamic_info: base addr 0x%x\n"
                      .balign 4
/* 047068 10007068 */ .asciz "get_dynamic_info: init addr 0x%x\n"
                      .balign 4
/* 04708C 1000708C */ .asciz "get_dynamic_info: pixie init addr 0x%x\n"
                      .balign 4
/* 0470B4 100070B4 */ .asciz "get_dynamic_info: fini addr 0x%x\n"
                      .balign 4
/* 0470D8 100070D8 */ .asciz "get_dynamic_info: hash addr 0x%x\n"
                      .balign 4

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

glabel STR_10007594
/* 047594 10007594 */ .asciz "0"
                      .balign 4

glabel STR_10007598
/* 047598 10007598 */ .asciz "obj.c"
                      .balign 4

glabel STR_100075A0
/* 0475A0 100075A0 */ .asciz "0"
                      .balign 4

glabel STR_100075A4
/* 0475A4 100075A4 */ .asciz "obj.c"
                      .balign 4

glabel STR_100075AC
/* 0475AC 100075AC */ .asciz "obj_newstr: unable to malloc for new \n"
                      .balign 4
/* 0475D4 100075D4 */ .asciz "split: %s\n"
                      .balign 4

glabel STR_100075E0
/* 0475E0 100075E0 */ .asciz "match_string: unable to malloc for NAME list\n"
                      .balign 4

glabel STR_10007610
/* 047610 10007610 */ .asciz "match_string: unable to malloc for NAME list\n"
                      .balign 4

glabel STR_10007640
/* 047640 10007640 */ .asciz "."
                      .balign 4

glabel STR_10007644
/* 047644 10007644 */ .asciz "match_string: unable to malloc for NAME list\n"
                      .balign 4
/* 047674 10007674 */ .asciz "o->o_target_swapped = %c\n"
                      .balign 4
/* 047690 10007690 */ .asciz "o->o_type = %d\n"
                      .balign 4
/* 0476A0 100076A0 */ .asciz "o->o_pfilehdr = 0x%x\n"
                      .balign 4
/* 0476B8 100076B8 */ .asciz "o->o_paouthdr = 0x%x\n"
                      .balign 4
/* 0476D0 100076D0 */ .asciz "o->o_pscnhdr = 0x%x\n"
                      .balign 4
/* 0476E8 100076E8 */ .asciz "o->o_phdrr = 0x%x\n"
                      .balign 4
/* 0476FC 100076FC */ .asciz "o->o_praw = 0x%x\n"
                      .balign 4
/* 047710 10007710 */ .asciz "o->o_name (0x%x) = %s\n"
                      .balign 4
/* 047728 10007728 */ .asciz "o->o_pelfdhr = 0x%x\n"
                      .balign 4
/* 047740 10007740 */ .asciz "o->o_pproghdr = 0x%x\n"
                      .balign 4
/* 047758 10007758 */ .asciz "o->o_psecthdr = 0x%x\n"
                      .balign 4
/* 047770 10007770 */ .asciz "o->o_path = %s\n"
                      .balign 4
/* 047780 10007780 */ .asciz "o->o_soname = %s\n"
                      .balign 4
/* 047794 10007794 */ .asciz "o->o_base_address = 0x%x\n"
                      .balign 4
/* 0477B0 100077B0 */ .asciz "o->o_text_start = 0x%x\n"
                      .balign 4
/* 0477C8 100077C8 */ .asciz "o->o_text_size = %d\n"
                      .balign 4
/* 0477E0 100077E0 */ .asciz "o->o_data_start = 0x%x\n"
                      .balign 4
/* 0477F8 100077F8 */ .asciz "o->o_bss_start = 0x%x\n"
                      .balign 4
/* 047810 10007810 */ .asciz "o->o_bss_size = %d\n"
                      .balign 4
/* 047824 10007824 */ .asciz "o->o_entry = 0x%x\n"
                      .balign 4
/* 047838 10007838 */ .asciz "o->o_base = 0x%x\n"
                      .balign 4
/* 04784C 1000784C */ .asciz "o->o_hash = 0x%x\n"
                      .balign 4
/* 047860 10007860 */ .asciz "o->o_str = 0x%x\n"
                      .balign 4
/* 047874 10007874 */ .asciz "o->o_dsym = 0x%x\n"
                      .balign 4
/* 047888 10007888 */ .asciz "o->o_msym = 0x%x\n"
                      .balign 4
/* 04789C 1000789C */ .asciz "o->o_got = 0x%x\n"
                      .balign 4
/* 0478B0 100078B0 */ .asciz "o->o_extgot = 0x%x\n"
                      .balign 4
/* 0478C4 100078C4 */ .asciz "o->o_rel = 0x%x\n"
                      .balign 4
/* 0478D8 100078D8 */ .asciz "o->o_libl = 0x%x\n"
                      .balign 4
/* 0478EC 100078EC */ .asciz "o->o_conf = 0x%x\n"
                      .balign 4
/* 047900 10007900 */ .asciz "o->o_dyflags = 0x%x\n"
                      .balign 4
/* 047918 10007918 */ .asciz "o->o_locgotno = %d\n"
                      .balign 4
/* 04792C 1000792C */ .asciz "o->o_rpath = %s\n"
                      .balign 4
/* 047940 10007940 */ .asciz "o->o_rldver = %d\n"
                      .balign 4
/* 047954 10007954 */ .asciz "o->o_tstamp = %d\n"
                      .balign 4
/* 047968 10007968 */ .asciz "o->o_ichksum = 0x%x\n"
                      .balign 4
/* 047980 10007980 */ .asciz "o->o_iversion = %d\n"
                      .balign 4
/* 047994 10007994 */ .asciz "o->o_symcount = %d\n"
                      .balign 4
/* 0479A8 100079A8 */ .asciz "o->o_syent = %d\n"
                      .balign 4
/* 0479BC 100079BC */ .asciz "o->o_stsize = %d\n"
                      .balign 4
/* 0479D0 100079D0 */ .asciz "o->o_rlsize = %d\n"
                      .balign 4
/* 0479E4 100079E4 */ .asciz "o->o_rlent = %d\n"
                      .balign 4
/* 0479F8 100079F8 */ .asciz "o->o_llcount = %d\n"
                      .balign 4
/* 047A0C 10007A0C */ .asciz "o->o_htsize = %d\n"
                      .balign 4
/* 047A20 10007A20 */ .asciz "o->o_cfcount = %d\n"
                      .balign 4
/* 047A34 10007A34 */ .asciz "o->o_rldflag = %d\n"
                      .balign 4
/* 047A48 10007A48 */ .asciz "o->o_flag = %d\n"
                      .balign 4
/* 047A58 10007A58 */ .asciz "o->o_mode = %d\n"
                      .balign 4
/* 047A68 10007A68 */ .asciz "o->o_init = 0x%x\n"
                      .balign 4
/* 047A7C 10007A7C */ .asciz "o->o_pixie_init = 0x%x\n"
                      .balign 4
/* 047A94 10007A94 */ .asciz "o->o_fini = 0x%x\n"
                      .balign 4
/* 047AA8 10007AA8 */ .asciz "o->o_unrefextno = %d\n"
                      .balign 4
/* 047AC0 10007AC0 */ .asciz "o->o_gotsym = %d\n"
                      .balign 4
/* 047AD4 10007AD4 */ .asciz "o->o_rld_map = 0x%x\n"
                      .balign 4

glabel STR_10007AEC
/* 047AEC 10007AEC */ .asciz "_procedure_table"
                      .balign 4

glabel STR_10007B00
/* 047B00 10007B00 */ .asciz "_procedure_table_size"
                      .balign 4

glabel STR_10007B18
/* 047B18 10007B18 */ .asciz "_procedure_table"
                      .balign 4

glabel STR_10007B2C
/* 047B2C 10007B2C */ .asciz "_procedure_table"
                      .balign 4

glabel STR_10007B40
/* 047B40 10007B40 */ .asciz "Cannot open %s\n"
                      .balign 4

glabel STR_10007B50
/* 047B50 10007B50 */ .asciz "Cannot mmap the runtime proc table of %s\n"
                      .balign 4

glabel STR_10007B7C
/* 047B7C 10007B7C */ .asciz "_procedure_string_table"
                      .balign 4

glabel STR_10007B94
/* 047B94 10007B94 */ .asciz "_procedure_string_table"
                      .balign 4

glabel STR_10007BAC
/* 047BAC 10007BAC */ .asciz "_procedure_table_size"
                      .balign 4

glabel jtbl_10007BC4
/* 047BC4 10007BC4 F0419074 */ .gpword .L0042BDD4
/* 047BC8 10007BC8 F0418FF4 */ .gpword .L0042BD54
/* 047BCC 10007BCC F041906C */ .gpword .L0042BDCC
/* 047BD0 10007BD0 F0419074 */ .gpword .L0042BDD4
/* 047BD4 10007BD4 F0419074 */ .gpword .L0042BDD4
/* 047BD8 10007BD8 F0419074 */ .gpword .L0042BDD4
/* 047BDC 10007BDC F0419074 */ .gpword .L0042BDD4

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

glabel STR_10007CE0
/* 047CE0 10007CE0 */ .asciz "N/A"
                      .balign 4
/* 047CE4 10007CE4 */ .asciz ""
                      .balign 4
/* 047CE8 10007CE8 */ .asciz ""
                      .balign 4
/* 047CEC 10007CEC */ .asciz ""
                      .balign 4

glabel STR_10007CF0
/* 047CF0 10007CF0 */ .asciz "Warning: "
                      .balign 4
/* 047CFC 10007CFC */ .asciz ""
                      .balign 4

glabel STR_10007D00
/* 047D00 10007D00 */ .asciz "swap of auxs not supported when destsex != hostsex\n"
                      .balign 4

glabel jtbl_10007D34
/* 047D34 10007D34 F041F8C8 */ .gpword .L00432628
/* 047D38 10007D38 F041F9E8 */ .gpword .L00432748
/* 047D3C 10007D3C F041FA5C */ .gpword .L004327BC
/* 047D40 10007D40 F041FA5C */ .gpword .L004327BC
/* 047D44 10007D44 F041FA5C */ .gpword .L004327BC
/* 047D48 10007D48 F041FA5C */ .gpword .L004327BC
/* 047D4C 10007D4C F041FA5C */ .gpword .L004327BC

glabel jtbl_10007D50
/* 047D50 10007D50 F0421BEC */ .gpword .L0043494C
/* 047D54 10007D54 F0421C48 */ .gpword .L004349A8
/* 047D58 10007D58 F0421C8C */ .gpword .L004349EC
/* 047D5C 10007D5C F0421CD4 */ .gpword .L00434A34
/* 047D60 10007D60 F0421D24 */ .gpword .L00434A84
/* 047D64 10007D64 00000000 */ .word 0x00000000
/* 047D68 10007D68 00000000 */ .word 0x00000000
/* 047D6C 10007D6C 00000000 */ .word 0x00000000

glabel STR_10007D70
/* 047D70 10007D70 */ .asciz ".text"
                      .balign 4

glabel STR_10007D78
/* 047D78 10007D78 */ .asciz ".data"
                      .balign 4

glabel STR_10007D80
/* 047D80 10007D80 */ .asciz ".bss"
                      .balign 4

glabel STR_10007D88
/* 047D88 10007D88 */ .asciz ".rodata"
                      .balign 4

glabel STR_10007D90
/* 047D90 10007D90 */ .asciz ".sdata"
                      .balign 4

glabel STR_10007D98
/* 047D98 10007D98 */ .asciz ".sbss"
                      .balign 4

glabel STR_10007DA0
/* 047DA0 10007DA0 */ .asciz ".lit8"
                      .balign 4

glabel STR_10007DA8
/* 047DA8 10007DA8 */ .asciz ".lit4"
                      .balign 4

glabel STR_10007DB0
/* 047DB0 10007DB0 */ .asciz ".init"
                      .balign 4

glabel STR_10007DB8
/* 047DB8 10007DB8 */ .asciz "find_section_byname:OM_EXECUTE not supported\n"
                      .balign 4
/* 047DE8 10007DE8 */ .asciz ""
                      .balign 4
/* 047DEC 10007DEC */ .asciz ""
                      .balign 4

glabel STR_10007DF0
/* 047DF0 10007DF0 */ .asciz "%s: Error: "
                      .balign 4

glabel STR_10007DFC
/* 047DFC 10007DFC */ .asciz "\n"
                      .balign 4

glabel STR_10007E00
/* 047E00 10007E00 */ .asciz ".bss"
                      .balign 4

glabel STR_10007E08
/* 047E08 10007E08 */ .asciz ".data"
                      .balign 4

glabel STR_10007E10
/* 047E10 10007E10 */ .asciz ".init"
                      .balign 4

glabel STR_10007E18
/* 047E18 10007E18 */ .asciz ".rel.data"
                      .balign 4

glabel STR_10007E24
/* 047E24 10007E24 */ .asciz ".rel.init"
                      .balign 4

glabel STR_10007E30
/* 047E30 10007E30 */ .asciz ".rel.rodata"
                      .balign 4

glabel STR_10007E3C
/* 047E3C 10007E3C */ .asciz ".rel.text"
                      .balign 4

glabel STR_10007E48
/* 047E48 10007E48 */ .asciz ".rodata"
                      .balign 4

glabel STR_10007E50
/* 047E50 10007E50 */ .asciz ".shstrtab"
                      .balign 4

glabel STR_10007E5C
/* 047E5C 10007E5C */ .asciz ".strtab"
                      .balign 4

glabel STR_10007E64
/* 047E64 10007E64 */ .asciz ".symtab"
                      .balign 4

glabel STR_10007E6C
/* 047E6C 10007E6C */ .asciz ".text"
                      .balign 4

glabel STR_10007E74
/* 047E74 10007E74 */ .asciz ".sdata"
                      .balign 4

glabel STR_10007E7C
/* 047E7C 10007E7C */ .asciz ".rel.sdata"
                      .balign 4

glabel STR_10007E88
/* 047E88 10007E88 */ .asciz ".sbss"
                      .balign 4

glabel STR_10007E90
/* 047E90 10007E90 */ .asciz ".lit4"
                      .balign 4

glabel STR_10007E98
/* 047E98 10007E98 */ .asciz ".lit8"
                      .balign 4

glabel STR_10007EA0
/* 047EA0 10007EA0 */ .asciz ".reginfo"
                      .balign 4

glabel STR_10007EAC
/* 047EAC 10007EAC */ .asciz ".gptab.data"
                      .balign 4

glabel STR_10007EB8
/* 047EB8 10007EB8 */ .asciz ".gptab.sdata"
                      .balign 4

glabel STR_10007EC8
/* 047EC8 10007EC8 */ .asciz ".gptab.bss"
                      .balign 4

glabel STR_10007ED4
/* 047ED4 10007ED4 */ .asciz ".gptab.sbss"
                      .balign 4

glabel STR_10007EE0
/* 047EE0 10007EE0 */ .asciz ".mdebug"
                      .balign 4

glabel STR_10007EE8
/* 047EE8 10007EE8 */ .asciz ".MIPS.dclass"
                      .balign 4

glabel STR_10007EF8
/* 047EF8 10007EF8 */ .asciz ".ddefn"
                      .balign 4

glabel STR_10007F00
/* 047F00 10007F00 */ .asciz ".MIPS.dsym"
                      .balign 4

glabel STR_10007F0C
/* 047F0C 10007F0C */ .asciz ".dsym"
                      .balign 4

glabel STR_10007F14
/* 047F14 10007F14 */ .asciz ".MIPS.dinst"
                      .balign 4

glabel STR_10007F20
/* 047F20 10007F20 */ .asciz ".dinst"
                      .balign 4

glabel STR_10007F28
/* 047F28 10007F28 */ .asciz ".MIPS.ddecl"
                      .balign 4

glabel STR_10007F34
/* 047F34 10007F34 */ .asciz ".ddecl"
                      .balign 4

glabel STR_10007F3C
/* 047F3C 10007F3C */ .asciz ".rel.delta"
                      .balign 4

glabel STR_10007F48
/* 047F48 10007F48 */ .asciz ".drel"
                      .balign 4

glabel STR_10007F50
/* 047F50 10007F50 */ .asciz ".rel.text"
                      .balign 4

glabel STR_10007F5C
/* 047F5C 10007F5C */ .asciz ".rel.data"
                      .balign 4

glabel STR_10007F68
/* 047F68 10007F68 */ .asciz ".rel.rodata"
                      .balign 4

glabel STR_10007F74
/* 047F74 10007F74 */ .asciz ".rel.sdata"
                      .balign 4

glabel STR_10007F80
/* 047F80 10007F80 */ .asciz ".rel.init"
                      .balign 4

glabel STR_10007F8C
/* 047F8C 10007F8C */ .asciz ".rel.fini"
                      .balign 4

glabel STR_10007F98
/* 047F98 10007F98 */ .asciz "0"
                      .balign 4

glabel STR_10007F9C
/* 047F9C 10007F9C */ .asciz "obj_elf.c"
                      .balign 4

glabel STR_10007FA8
/* 047FA8 10007FA8 */ .asciz "0"
                      .balign 4

glabel STR_10007FAC
/* 047FAC 10007FAC */ .asciz "obj_elf.c"
                      .balign 4

glabel STR_10007FB8
/* 047FB8 10007FB8 */ .asciz ".text"
                      .balign 4

glabel STR_10007FC0
/* 047FC0 10007FC0 */ .asciz ".rodata"
                      .balign 4

glabel STR_10007FC8
/* 047FC8 10007FC8 */ .asciz ".data"
                      .balign 4

glabel STR_10007FD0
/* 047FD0 10007FD0 */ .asciz ".sdata"
                      .balign 4

glabel STR_10007FD8
/* 047FD8 10007FD8 */ .asciz ".init"
                      .balign 4

glabel STR_10007FE0
/* 047FE0 10007FE0 */ .asciz ".lit8"
                      .balign 4

glabel STR_10007FE8
/* 047FE8 10007FE8 */ .asciz ".lit4"
                      .balign 4

glabel STR_10007FF0
/* 047FF0 10007FF0 */ .asciz ".reginfo"
                      .balign 4

glabel STR_10007FFC
/* 047FFC 10007FFC */ .asciz ".compact_rel"
                      .balign 4

glabel STR_1000800C
/* 04800C 1000800C */ .asciz ".mdebug"
                      .balign 4

glabel STR_10008014
/* 048014 10008014 */ .asciz "0"
                      .balign 4

glabel STR_10008018
/* 048018 10008018 */ .asciz "obj_elf.c"
                      .balign 4

glabel STR_10008024
/* 048024 10008024 */ .asciz ".sbss"
                      .balign 4

glabel STR_1000802C
/* 04802C 1000802C */ .asciz ".bss"
                      .balign 4

glabel jtbl_10008034
/* 048034 10008034 F042483C */ .gpword .L0043759C
/* 048038 10008038 F042483C */ .gpword .L0043759C
/* 04803C 1000803C F042483C */ .gpword .L0043759C
/* 048040 10008040 F042483C */ .gpword .L0043759C
/* 048044 10008044 F042483C */ .gpword .L0043759C

glabel jtbl_10008048
/* 048048 10008048 F04247C4 */ .gpword .L00437524
/* 04804C 1000804C F0424558 */ .gpword .L004372B8
/* 048050 10008050 F04247C4 */ .gpword .L00437524
/* 048054 10008054 F04247C4 */ .gpword .L00437524
/* 048058 10008058 F04247C4 */ .gpword .L00437524
/* 04805C 1000805C F04247C4 */ .gpword .L00437524
/* 048060 10008060 F04247C4 */ .gpword .L00437524
/* 048064 10008064 F04247C4 */ .gpword .L00437524
/* 048068 10008068 F04247C4 */ .gpword .L00437524
/* 04806C 1000806C F042483C */ .gpword .L0043759C
/* 048070 10008070 F042483C */ .gpword .L0043759C
/* 048074 10008074 F042483C */ .gpword .L0043759C
/* 048078 10008078 00000000 */ .word 0x00000000
/* 04807C 1000807C 00000000 */ .word 0x00000000

glabel STR_10008080
/* 048080 10008080 */ .asciz "DT(0x%x) not handled\n"
                      .balign 4

glabel STR_10008098
/* 048098 10008098 */ .asciz ".init undone\n"
                      .balign 4

glabel STR_100080A8
/* 0480A8 100080A8 */ .asciz ".fini undone\n"
                      .balign 4

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

glabel STR_1000813C
/* 04813C 1000813C */ .asciz "0"
                      .balign 4

glabel STR_10008140
/* 048140 10008140 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008150
/* 048150 10008150 */ .asciz "0"
                      .balign 4

glabel STR_10008154
/* 048154 10008154 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008164
/* 048164 10008164 */ .asciz "0"
                      .balign 4

glabel STR_10008168
/* 048168 10008168 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008178
/* 048178 10008178 */ .asciz "0"
                      .balign 4

glabel STR_1000817C
/* 04817C 1000817C */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_1000818C
/* 04818C 1000818C */ .asciz "newobj->o_pfilehdr"
                      .balign 4

glabel STR_100081A0
/* 0481A0 100081A0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100081B0
/* 0481B0 100081B0 */ .asciz "newobj->o_paouthdr"
                      .balign 4

glabel STR_100081C4
/* 0481C4 100081C4 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100081D4
/* 0481D4 100081D4 */ .asciz "ptmp_newscnhdr"
                      .balign 4

glabel STR_100081E4
/* 0481E4 100081E4 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100081F4
/* 0481F4 100081F4 */ .asciz "newobj->o_paouthdr->text_start"
                      .balign 4

glabel STR_10008214
/* 048214 10008214 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008224
/* 048224 10008224 */ .asciz "newobj->o_paouthdr->data_start"
                      .balign 4

glabel STR_10008244
/* 048244 10008244 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008254
/* 048254 10008254 */ .asciz "newobj->o_pelfhdr"
                      .balign 4

glabel STR_10008268
/* 048268 10008268 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008278
/* 048278 10008278 */ .asciz "newobj->o_pproghdr"
                      .balign 4

glabel STR_1000828C
/* 04828C 1000828C */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_1000829C
/* 04829C 1000829C */ .asciz "newobj->o_psecthdr"
                      .balign 4

glabel STR_100082B0
/* 0482B0 100082B0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100082C0
/* 0482C0 100082C0 */ .asciz "newobj->o_phdrr"
                      .balign 4

glabel STR_100082D0
/* 0482D0 100082D0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100082E0
/* 0482E0 100082E0 */ .asciz "newobj->o_pfdr"
                      .balign 4

glabel STR_100082F0
/* 0482F0 100082F0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008300
/* 048300 10008300 */ .asciz "newobj->o_ppdr"
                      .balign 4

glabel STR_10008310
/* 048310 10008310 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008320
/* 048320 10008320 */ .asciz "newobj->o_psymr"
                      .balign 4

glabel STR_10008330
/* 048330 10008330 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008340
/* 048340 10008340 */ .asciz "newobj->o_pextr"
                      .balign 4

glabel STR_10008350
/* 048350 10008350 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008360
/* 048360 10008360 */ .asciz "newobj->o_pssext"
                      .balign 4

glabel STR_10008374
/* 048374 10008374 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008384
/* 048384 10008384 */ .asciz "newobj->o_pss"
                      .balign 4

glabel STR_10008394
/* 048394 10008394 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100083A4
/* 0483A4 100083A4 */ .asciz "newobj->o_pauxu"
                      .balign 4

glabel STR_100083B4
/* 0483B4 100083B4 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100083C4
/* 0483C4 100083C4 */ .asciz "newobj->o_pline"
                      .balign 4

glabel STR_100083D4
/* 0483D4 100083D4 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100083E4
/* 0483E4 100083E4 */ .asciz "0"
                      .balign 4

glabel STR_100083E8
/* 0483E8 100083E8 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100083F8
/* 0483F8 100083F8 */ .asciz "obj_get_dynamic_info failed"
                      .balign 4

glabel STR_10008414
/* 048414 10008414 */ .asciz "0"
                      .balign 4

glabel STR_10008418
/* 048418 10008418 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008428
/* 048428 10008428 */ .asciz "0"
                      .balign 4

glabel STR_1000842C
/* 04842C 1000842C */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_1000843C
/* 04843C 1000843C */ .asciz "!obj_shared(obj) || ((obj_text_size(obj) + incr) <= MAXTSZ)"
                      .balign 4

glabel STR_10008478
/* 048478 10008478 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008488
/* 048488 10008488 */ .asciz "ptmp_aohdr->text_start"
                      .balign 4

glabel STR_100084A0
/* 0484A0 100084A0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100084B0
/* 0484B0 100084B0 */ .asciz "ptmp_phdr[i].p_paddr"
                      .balign 4

glabel STR_100084C8
/* 0484C8 100084C8 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100084D8
/* 0484D8 100084D8 */ .asciz "0"
                      .balign 4

glabel STR_100084DC
/* 0484DC 100084DC */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_100084EC
/* 0484EC 100084EC */ .asciz "!obj_shared(obj)||((obj_data_size(obj)+obj_bss_size(obj)+incr) <= MAXDSZ)"
                      .balign 4

glabel STR_10008538
/* 048538 10008538 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008548
/* 048548 10008548 */ .asciz ".bss"
                      .balign 4

glabel STR_10008550
/* 048550 10008550 */ .asciz ".sbss"
                      .balign 4

glabel STR_10008558
/* 048558 10008558 */ .asciz "0"
                      .balign 4

glabel STR_1000855C
/* 04855C 1000855C */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_1000856C
/* 04856C 1000856C */ .asciz "0"
                      .balign 4

glabel STR_10008570
/* 048570 10008570 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008580
/* 048580 10008580 */ .asciz "Bad contents for relocation at 0x%x\n"
                      .balign 4

glabel STR_100085A8
/* 0485A8 100085A8 */ .asciz "obj_map_dynamic: Don't know what to do with Elf relocation type %d\n"
                      .balign 4

glabel STR_100085EC
/* 0485EC 100085EC */ .asciz "0"
                      .balign 4

glabel STR_100085F0
/* 0485F0 100085F0 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008600
/* 048600 10008600 */ .asciz "obj->o_pssext"
                      .balign 4

glabel STR_10008610
/* 048610 10008610 */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_10008620
/* 048620 10008620 */ .asciz "ptmp_pextr"
                      .balign 4

glabel STR_1000862C
/* 04862C 1000862C */ .asciz "obj_rewrite.c"
                      .balign 4

glabel STR_1000863C
/* 04863C 1000863C */ .asciz "end"
                      .balign 4

glabel jtbl_10008640
/* 048640 10008640 F04249D0 */ .gpword .L00437730
/* 048644 10008644 F0424A88 */ .gpword .L004377E8
/* 048648 10008648 F0424AA4 */ .gpword .L00437804
/* 04864C 1000864C F0424B98 */ .gpword .L004378F8
/* 048650 10008650 F0424AC0 */ .gpword .L00437820
/* 048654 10008654 F0424B98 */ .gpword .L004378F8
/* 048658 10008658 F0424B98 */ .gpword .L004378F8
/* 04865C 1000865C F0424B98 */ .gpword .L004378F8
/* 048660 10008660 F0424B98 */ .gpword .L004378F8
/* 048664 10008664 F0424A6C */ .gpword .L004377CC
/* 048668 10008668 F0424B4C */ .gpword .L004378AC
/* 04866C 1000866C F0424B84 */ .gpword .L004378E4
/* 048670 10008670 F0424B84 */ .gpword .L004378E4
/* 048674 10008674 F0424B84 */ .gpword .L004378E4
/* 048678 10008678 F0424B84 */ .gpword .L004378E4
/* 04867C 1000867C F0424B30 */ .gpword .L00437890
/* 048680 10008680 F0424AF8 */ .gpword .L00437858
/* 048684 10008684 F0424A08 */ .gpword .L00437768
/* 048688 10008688 F04249EC */ .gpword .L0043774C
/* 04868C 1000868C F0424B98 */ .gpword .L004378F8
/* 048690 10008690 F0424B84 */ .gpword .L004378E4
/* 048694 10008694 F0424B68 */ .gpword .L004378C8

glabel jtbl_10008698
/* 048698 10008698 F0424B98 */ .gpword .L004378F8
/* 04869C 1000869C F0424B84 */ .gpword .L004378E4
/* 0486A0 100086A0 F0424B98 */ .gpword .L004378F8
/* 0486A4 100086A4 F0424B98 */ .gpword .L004378F8
/* 0486A8 100086A8 F0424B98 */ .gpword .L004378F8
/* 0486AC 100086AC F0424B98 */ .gpword .L004378F8
/* 0486B0 100086B0 F0424B84 */ .gpword .L004378E4
/* 0486B4 100086B4 F0424B84 */ .gpword .L004378E4
/* 0486B8 100086B8 F0424B84 */ .gpword .L004378E4
/* 0486BC 100086BC F0424B14 */ .gpword .L00437874
/* 0486C0 100086C0 F0424B98 */ .gpword .L004378F8
/* 0486C4 100086C4 F0424A24 */ .gpword .L00437784
/* 0486C8 100086C8 F0424A48 */ .gpword .L004377A8
/* 0486CC 100086CC F0424B98 */ .gpword .L004378F8
/* 0486D0 100086D0 F0424B98 */ .gpword .L004378F8
/* 0486D4 100086D4 F0424B84 */ .gpword .L004378E4
/* 0486D8 100086D8 F0424B98 */ .gpword .L004378F8
/* 0486DC 100086DC F0424ADC */ .gpword .L0043783C
/* 0486E0 100086E0 F0424B98 */ .gpword .L004378F8
/* 0486E4 100086E4 00000000 */ .word 0x00000000
/* 0486E8 100086E8 00000000 */ .word 0x00000000
/* 0486EC 100086EC 00000000 */ .word 0x00000000

glabel STR_100086F0
/* 0486F0 100086F0 */ .asciz "Error: "
                      .balign 4
/* 0486F8 100086F8 */ .asciz ""
                      .balign 4
/* 0486FC 100086FC */ .asciz ""
                      .balign 4

glabel STR_10008700
/* 048700 10008700 */ .asciz "_block%x"
                      .balign 4

glabel STR_1000870C
/* 04870C 1000870C */ .asciz "dbx running out of memory space"
                      .balign 4

glabel STR_1000872C
/* 04872C 1000872C */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008750
/* 048750 10008750 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008774
/* 048774 10008774 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008798
/* 048798 10008798 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_100087BC
/* 0487BC 100087BC */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_100087E0
/* 0487E0 100087E0 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008804
/* 048804 10008804 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008828
/* 048828 10008828 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_1000884C
/* 04884C 1000884C */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008870
/* 048870 10008870 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_10008894
/* 048894 10008894 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel STR_100088B8
/* 0488B8 100088B8 */ .asciz "dbx running out of type table space"
                      .balign 4

glabel jtbl_100088DC
/* 0488DC 100088DC F04284AC */ .gpword .L0043B20C
/* 0488E0 100088E0 F04284AC */ .gpword .L0043B20C
/* 0488E4 100088E4 F04284C4 */ .gpword .L0043B224
/* 0488E8 100088E8 F04284C4 */ .gpword .L0043B224
/* 0488EC 100088EC F04284AC */ .gpword .L0043B20C
/* 0488F0 100088F0 F04284AC */ .gpword .L0043B20C
/* 0488F4 100088F4 F04284C4 */ .gpword .L0043B224
/* 0488F8 100088F8 F04284C4 */ .gpword .L0043B224
/* 0488FC 100088FC F04284C4 */ .gpword .L0043B224
/* 048900 10008900 F04284C4 */ .gpword .L0043B224
/* 048904 10008904 F04284C4 */ .gpword .L0043B224
/* 048908 10008908 F04284C4 */ .gpword .L0043B224
/* 04890C 1000890C F04284C4 */ .gpword .L0043B224
/* 048910 10008910 F04284AC */ .gpword .L0043B20C
/* 048914 10008914 00000000 */ .word 0x00000000
/* 048918 10008918 00000000 */ .word 0x00000000
/* 04891C 1000891C 00000000 */ .word 0x00000000

glabel STR_10008920
/* 048920 10008920 */ .asciz "_block%x"
                      .balign 4

glabel STR_1000892C
/* 04892C 1000892C */ .asciz "obj_lookup: dbx running out of memory space"
                      .balign 4
/* 048958 10008958 */ .asciz ""
                      .balign 4
/* 04895C 1000895C */ .asciz ""
                      .balign 4

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

glabel jtbl_10008984
/* 048984 10008984 F042BA18 */ .gpword .L0043E778
/* 048988 10008988 F042BADC */ .gpword .L0043E83C
/* 04898C 1000898C F042BADC */ .gpword .L0043E83C
/* 048990 10008990 F042B7E4 */ .gpword .L0043E544
/* 048994 10008994 F042BADC */ .gpword .L0043E83C
/* 048998 10008998 F042BADC */ .gpword .L0043E83C
/* 04899C 1000899C 00000000 */ .word 0x00000000

glabel STR_100089A0
/* 0489A0 100089A0 */ .asciz "Internal: "
                      .balign 4
/* 0489AC 100089AC */ .asciz ""
                      .balign 4

glabel STR_100089B0
/* 0489B0 100089B0 */ .asciz "st_extstradd: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_100089EC
/* 0489EC 100089EC */ .asciz "st_extstradd: argument is nil\n"
                      .balign 4

glabel STR_10008A0C
/* 048A0C 10008A0C */ .asciz "st_idn_dn: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_10008A44
/* 048A44 10008A44 */ .asciz "st_idn_rndx: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_10008A80
/* 048A80 10008A80 */ .asciz "st_rndx_idn: idn (%d) greater than max (%d)\n"
                      .balign 4

glabel STR_10008AB0
/* 048AB0 10008AB0 */ .asciz "st_rndx_idn: old interface can't put rfd(%d) into rndx, use st_pdn_idn instead\n"
                      .balign 4

glabel STR_10008B00
/* 048B00 10008B00 */ .asciz "st_setidn: idnsrc (%d) or idndest (%d) out of range\n"
                      .balign 4

glabel STR_10008B38
/* 048B38 10008B38 */ .asciz "st_pext_dn: rfd field (%d) isn't equal to ST_EXTIFD(%d)\n"
                      .balign 4

glabel STR_10008B74
/* 048B74 10008B74 */ .asciz "st_pext_dn: index out of range (%d)\n"
                      .balign 4

glabel STR_10008B9C
/* 048B9C 10008B9C */ .asciz "libmld"
                      .balign 4

glabel STR_10008BA4
/* 048BA4 10008BA4 */ .asciz "libmld: Internal: cannot allocate to initialize component name for libmld errors\n"
                      .balign 4
/* 048BF8 10008BF8 */ .asciz ""
                      .balign 4
/* 048BFC 10008BFC */ .asciz ""
                      .balign 4

glabel STR_10008C00
/* 048C00 10008C00 */ .asciz "st_fdadd: number of files (%d) exceeds max (%d)\n"
                      .balign 4

glabel STR_10008C34
/* 048C34 10008C34 */ .asciz "st_fdadd: allocation botch (%d fds and %d cfds) in %s\n"
                      .balign 4

glabel STR_10008C6C
/* 048C6C 10008C6C */ .asciz ""
                      .balign 4

glabel STR_10008C70
/* 048C70 10008C70 */ .asciz "</4Debug/>"
                      .balign 4

glabel STR_10008C7C
/* 048C7C 10008C7C */ .asciz ":"
                      .balign 4

glabel STR_10008C80
/* 048C80 10008C80 */ .asciz ":"
                      .balign 4

glabel STR_10008C84
/* 048C84 10008C84 */ .asciz "st_fdadd: could not malloc path name!! %d\n"
                      .balign 4

glabel STR_10008CB0
/* 048CB0 10008CB0 */ .asciz "PWD"
                      .balign 4

glabel STR_10008CB4
/* 048CB4 10008CB4 */ .asciz ""
                      .balign 4

glabel STR_10008CB8
/* 048CB8 10008CB8 */ .asciz "Cannot st_fdadd: cannot malloc %d bytes to hold file name\n"
                      .balign 4

glabel STR_10008CF4
/* 048CF4 10008CF4 */ .asciz "/"
                      .balign 4

glabel STR_10008CF8
/* 048CF8 10008CF8 */ .asciz "%lu"
                      .balign 4

glabel STR_10008CFC
/* 048CFC 10008CFC */ .asciz "-1"
                      .balign 4

glabel STR_10008D00
/* 048D00 10008D00 */ .asciz "%lu"
                      .balign 4

glabel STR_10008D04
/* 048D04 10008D04 */ .asciz "st_stradd: argument is nil\n"
                      .balign 4

glabel STR_10008D20
/* 048D20 10008D20 */ .asciz "st_paux_ifd_iaux: ifd (%d) or iaux (%d) out of range\n"
                      .balign 4

glabel STR_10008D58
/* 048D58 10008D58 */ .asciz "st_paux_ifd_iaux: ifd (%d) or iline (%d) out of range\n"
                      .balign 4

glabel STR_10008D90
/* 048D90 10008D90 */ .asciz "st_malloc: cannot allocate item of 1 byte with malloc(3)\n"
                      .balign 4

glabel STR_10008DCC
/* 048DCC 10008DCC */ .asciz "st_malloc: cannot allocate item of %ld bytes with malloc(3)\n"
                      .balign 4

glabel STR_10008E0C
/* 048E0C 10008E0C */ .asciz "st_malloc: cannot grow item to %ld bytes with realloc(3)\n"
                      .balign 4
/* 048E48 10008E48 */ .asciz ""
                      .balign 4
/* 048E4C 10008E4C */ .asciz ""
                      .balign 4

glabel STR_10008E50
/* 048E50 10008E50 */ .asciz "st_pcfd_ifd: ifd (%d) out of range\n"
                      .balign 4

glabel STR_10008E74
/* 048E74 10008E74 */ .asciz "st_psym_ifd_isym: ifd (%d) or isym (%d) out of range\n"
                      .balign 4

glabel STR_10008EAC
/* 048EAC 10008EAC */ .asciz "st_paux_iaux: iaux (%d) out of range\n"
                      .balign 4
/* 048ED4 10008ED4 */ .asciz ""
                      .balign 4
/* 048ED8 10008ED8 */ .asciz ""
                      .balign 4
/* 048EDC 10008EDC */ .asciz ""
                      .balign 4

glabel STR_10008EE0
/* 048EE0 10008EE0 */ .asciz "%s: Internal: "
                      .balign 4

glabel STR_10008EF0
/* 048EF0 10008EF0 */ .asciz "\n"
                      .balign 4

glabel STR_10008EF4
/* 048EF4 10008EF4 */ .asciz "%s: Error: "
                      .balign 4

glabel STR_10008F00
/* 048F00 10008F00 */ .asciz "\n"
                      .balign 4

glabel STR_10008F04
/* 048F04 10008F04 */ .asciz "_md_st_malloc: cannot allocate item of 1 byte with malloc(3)\n"
                      .balign 4

glabel STR_10008F44
/* 048F44 10008F44 */ .asciz "_md_st_malloc: cannot allocate item of %ld bytes with malloc(3)\n"
                      .balign 4

glabel STR_10008F88
/* 048F88 10008F88 */ .asciz "_md_st_malloc: cannot grow item to %ld bytes with realloc(3)\n"
                      .balign 4
/* 048FC8 10008FC8 */ .asciz ""
                      .balign 4
/* 048FCC 10008FCC */ .asciz ""
                      .balign 4

glabel STR_10008FD0
/* 048FD0 10008FD0 */ .asciz "st_cuinit: cannot allocate current chdr\n"
                      .balign 4

glabel STR_10008FFC
/* 048FFC 10008FFC */ .asciz "st_extadd: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_10009034
/* 049034 10009034 */ .asciz "st_pext_iext: index out of range (%d)\n"
                      .balign 4

glabel STR_1000905C
/* 04905C 1000905C */ .asciz "st_idn_index_fext: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_1000909C
/* 04909C 1000909C */ .asciz "st_pdn_idn: idn (%d) less than 0 or greater than max (%d)\n"
                      .balign 4
/* 0490D8 100090D8 */ .asciz ""
                      .balign 4
/* 0490DC 100090DC */ .asciz ""
                      .balign 4

glabel STR_100090E0
/* 0490E0 100090E0 */ .asciz "Fatal: "
                      .balign 4
/* 0490E8 100090E8 */ .asciz ""
                      .balign 4
/* 0490EC 100090EC */ .asciz ""
                      .balign 4

glabel STR_100090F0
/* 0490F0 100090F0 */ .asciz "%s: Internal: "
                      .balign 4

glabel STR_10009100
/* 049100 10009100 */ .asciz "\n"
                      .balign 4
/* 049104 10009104 */ .asciz ""
                      .balign 4
/* 049108 10009108 */ .asciz ""
                      .balign 4
/* 04910C 1000910C */ .asciz ""
                      .balign 4

glabel STR_10009110
/* 049110 10009110 */ .asciz "st_filebegin: tried to end too many files (%s)\n"
                      .balign 4

glabel STR_10009140
/* 049140 10009140 */ .asciz "st_textblock: block pending set in illegal case\n"
                      .balign 4

glabel STR_10009174
/* 049174 10009174 */ .asciz "st_file_idn: istack underflow (%s)\n"
                      .balign 4
/* 049198 10009198 */ .asciz ""
                      .balign 4
/* 04919C 1000919C */ .asciz ""
                      .balign 4

glabel STR_100091A0
/* 0491A0 100091A0 */ .asciz "tried to replace rndx aux (%d) that fits into one word (%d, %d) with one that can't (%d,%d)\n"
                      .balign 4
