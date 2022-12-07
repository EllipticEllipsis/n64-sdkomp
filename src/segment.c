#include "makerom.h"
#include "stddef.h"

// makerom.c
extern Segment* segmentList;
extern Wave* waveList;
extern int debug;
extern size_t offset;

extern unsigned int bootAddress;
extern int changeclock;
extern unsigned int clockrate;
extern char fillData;
extern int finalromSize;
extern int nofont;
extern int gcord;
extern int cosim;

extern char* bootEntryName;
extern char* bootStackName;
extern int bootStackOffset;

// types unclear
extern size_t* bootBuf;
extern char* headerBuf;
extern size_t* pif2bootBuf;
extern void* fontBuf;

extern int bootWordAlignedByteSize;     // size_t?
extern int pif2bootWordAlignedByteSize; // size_t?
extern int headerWordAlignedByteSize;   // size_t?
extern int fontdataWordAlignedByteSize;

int execCommand(char* s);

// Defines

#define SECTION_TEXT (1 << 0)
#define SECTION_DATA_RODATA (1 << 1)
#define SECTION_SDATA (1 << 2)
#define SECTION_BSS (1 << 3)
#define SECTION_SBSS (1 << 4)

// data/bss

// static unsigned char* romImage;
static char* B_1000BA80; // romImage

// Function declarations

int scanSegments(void);
static int sizeObject(Segment* s);
static int sizeRaw(Segment* s);
int checkSizes(void);
int checkOverlaps(void);
int createSegmentSymbols(char* source, char* object);
int createRomImage(char* romFile, char* object);
static int openAouts(void);
static void* lookupSymbol(Wave* wave, char* name);
static Elf32_Shdr* lookupShdr(Wave* wave, char* segSectName);
static int readObject(Segment* s);
static int readRaw(Segment* s);
int createEntryFile(char* source, char* object);
unsigned int ALIGNn(unsigned int romalign, int n);

int scanSegments(void) {
    Segment* s;
    unsigned int offset = 0x50;
    int rom_size;

    if (elf_version(1) == 0) {
        fprintf(stderr, "makerom: out of date\n");
        return -1;
    }
    for (s = segmentList; s != NULL; s = s->next) {
        if (s->wave == NULL) {
            fprintf(stderr, "makerom: segment \"%s\": not found in any wave\n", s->name);
            return -1;
        }

        s->romOffset = offset;

        if (s->flags & 2) {
            if (sizeObject(s) == -1) {
                return -1;
            }
        } else if (s->flags & 4) {
            if (sizeRaw(s) == -1) {
                return -1;
            }
        }

        offset = s->romOffset;
        offset += s->textSize + s->dataSize + s->sdataSize;
        offset = ALIGNn(s->romalign, offset);
    }

    rom_size = (offset > 0x50) ? offset : 0x50;
    B_1000BA80 = calloc(rom_size, 1);
    if (B_1000BA80 == NULL) {
        fprintf(stderr, "makerom: malloc failed [RomSize= %d kB]\n", (rom_size + 0x3FF) / 0x400);
        return -1;
    }
    return 0;
}

static int sizeObject(Segment* s) {
    unsigned int address1;
    unsigned int address2;
    int fd;
    Elf* elf;
    Elf_Scn* scn;
    Elf32_Ehdr* ehdr;
    Elf32_Shdr* shdr;
    Path* p;
    size_t index;
    char* sectName;
    int currAddress;
    int firstSection = 1;

    s->textAlign = 0x10;
    if (debug) {
        if ((s->align != 0x10) && (s->align != 0)) {
            printf("Segment %s: alignment %x\n", s->name, s->align);
        }
        if ((s->romalign != 0x10) && (s->romalign != 0)) {
            printf("Segment %s: romalign %x\n", s->name, s->romalign);
        }
    }

    for (p = s->pathList; p != NULL; p = p->next) {
        p->textSize = 0;
        p->dataSize = 0;
        p->sdataSize = 0;
        p->sbssSize = 0;
        p->bssSize = 0;
        p->textAlign = 0;
        p->dataAlign = 0;
        p->sdataAlign = 0;
        p->sbssAlign = 0;
        p->bssAlign = 0;

        if ((fd = open(p->name, 0)) == -1) {
            fprintf(stderr, "makerom: %s: %s\n", p->name, sys_errlist[errno]);
            return -1;
        }

        if (debug) {
            printf("Scanning %s\n", p->name);
        }

        elf = elf_begin(fd, ELF_C_READ, NULL);
        if ((elf_kind(elf) != ELF_K_ELF) || ((ehdr = elf32_getehdr(elf)) == NULL)) {
            fprintf(stderr, "makerom: %s: not a valid ELF object file\n", p->name);
            return -1;
        }

        for (index = 1; index < ehdr->e_shnum; index++) {
            if (((scn = elf_getscn(elf, index)) == NULL) || ((shdr = elf32_getshdr(scn)) == NULL)) {
                fprintf(stderr, "makerom: %s: can't get section index %d\n", p->name, index);
                return -1;
            }
            sectName = elf_strptr(elf, ehdr->e_shstrndx, shdr->sh_name);
            if (sectName == NULL) {
                fprintf(stderr, "makerom: %s: detect unnamed section\n", p->name);
                return -1;
            }
            if (strcmp(sectName, ".text") == 0) {
                s->textSize += shdr->sh_size;
                p->textAlign = shdr->sh_addralign;
                p->textSize = shdr->sh_size;
                p->sectionsExisting |= SECTION_TEXT;
                s->sectionsExisting |= SECTION_TEXT;
                if (p->textAlign > s->textAlign) {
                    s->textAlign = p->textAlign;
                }
                if (debug) {
                    printf("  text size  = %x\n", shdr->sh_size);
                    printf("       align = %x\n", shdr->sh_addralign);
                }
            } else if ((strcmp(sectName, ".data") == 0) || (strcmp(sectName, ".rodata") == 0)) {
                s->dataSize += shdr->sh_size;
                p->dataAlign = shdr->sh_addralign;
                p->dataSize += shdr->sh_size;
                p->sectionsExisting |= SECTION_DATA_RODATA;
                s->sectionsExisting |= SECTION_DATA_RODATA;
                if (p->dataAlign > s->dataAlign) {
                    s->dataAlign = p->dataAlign;
                }
                if (debug) {
                    printf("  data&rodata size  = %x\n", shdr->sh_size);
                    printf("       align = %x\n", shdr->sh_addralign);
                }
            } else if (strcmp(sectName, ".sdata") == 0) {
                s->sdataSize += shdr->sh_size;
                p->sdataAlign = shdr->sh_addralign;
                p->sdataSize = shdr->sh_size;
                s->sectionsExisting |= SECTION_SDATA;
                p->sectionsExisting |= SECTION_SDATA;
                if (p->sdataAlign > s->sdataAlign) {
                    s->sdataAlign = p->sdataAlign;
                }
                if (debug) {
                    printf("  sdata size  = %x\n", shdr->sh_size);
                    printf("        align = %x\n", shdr->sh_addralign);
                }
            } else if (strcmp(sectName, ".sbss") == 0) {
                s->sbssSize += shdr->sh_size;
                p->sbssAlign = shdr->sh_addralign;
                p->sbssSize = shdr->sh_size;
                p->sectionsExisting |= SECTION_SBSS;
                s->sectionsExisting |= SECTION_SBSS;
                if (p->sbssAlign > s->sbssAlign) {
                    s->sbssAlign = p->sbssAlign;
                }
                if (debug) {
                    printf("  sbss size  = %x\n", shdr->sh_size);
                    printf("       align = %x\n", shdr->sh_addralign);
                }
            } else if (strcmp(sectName, ".bss") == 0) {
                s->bssSize += shdr->sh_size;
                p->bssAlign = shdr->sh_addralign;
                p->bssSize = shdr->sh_size;
                p->sectionsExisting |= SECTION_BSS;
                s->sectionsExisting |= SECTION_BSS;
                if (p->bssAlign > s->bssAlign) {
                    s->bssAlign = p->bssAlign;
                }
                if (debug) {
                    printf("  bss size  = %x\n", shdr->sh_size);
                    printf("      align = %x\n", shdr->sh_addralign);
                }
            }
        }
        close(fd);
    }

    switch (s->addrFunc) {
        case 2:
            address1 = s->afterSeg1->address + s->afterSeg1->totalSize;
            address2 = s->afterSeg2->address + s->afterSeg2->totalSize;
            currAddress = (address1 > address2) ? address1 : address2;
            break;

        case 3:
            address1 = s->afterSeg1->address + s->afterSeg1->totalSize;
            address2 = s->afterSeg2->address + s->afterSeg2->totalSize;
            currAddress = (address1 < address2) ? address1 : address2;
            break;

        case 1:
            address1 = s->afterSeg1->address + s->afterSeg1->totalSize;
            currAddress = address1;
            break;

        case 4:
            currAddress = s->address;
            break;

        case 5:
            currAddress = s->address;
            break;

        default:
            break;
    }
    currAddress = ALIGNn(s->align, currAddress);
    s->address = currAddress;
    if (s->flags & 1) {
        currAddress = ALIGNn(s->textAlign, currAddress);
        s->romOffset = ALIGNn(s->textAlign, s->romOffset);
        s->romOffset = ALIGNn(s->align, s->romOffset);
    }

    if (s->sectionsExisting & SECTION_TEXT) {
        currAddress = ALIGNn(s->textAlign, currAddress);
        s->textStart = currAddress;
        s->address = currAddress;
        firstSection = 0;

        for (p = s->pathList; p != NULL; p = p->next) {
            if (p->sectionsExisting & SECTION_TEXT) {
                currAddress = ALIGNn(p->textAlign, currAddress);
                p->textStart = currAddress;
                currAddress += p->textSize;
            }
        }
    } else {
        s->textStart = currAddress;
    }

    if (s->sectionsExisting & SECTION_DATA_RODATA) {
        currAddress = ALIGNn(s->dataAlign, currAddress);
        s->dataStart = currAddress;
        if (firstSection) {
            s->address = currAddress;
            firstSection = 0;
        }

        for (p = s->pathList; p != NULL; p = p->next) {
            if (p->sectionsExisting & SECTION_DATA_RODATA) {
                currAddress = ALIGNn(p->dataAlign, currAddress);
                p->dataStart = currAddress;
                currAddress += p->dataSize;
            }
        }
    } else {
        s->dataStart = currAddress;
    }

    if (s->sectionsExisting & SECTION_SDATA) {
        currAddress = ALIGNn(s->sdataAlign, currAddress);
        s->sdataStart = currAddress;
        if (firstSection) {
            s->address = currAddress;
            firstSection = 0;
        }

        for (p = s->pathList; p != NULL; p = p->next) {
            if (p->sectionsExisting & SECTION_SDATA) {
                currAddress = ALIGNn(p->sdataAlign, currAddress);
                p->sdataStart = currAddress;
                currAddress += p->sdataSize;
            }
        }
    } else {
        s->sdataStart = currAddress;
    }

    if (s->sectionsExisting & SECTION_SBSS) {
        currAddress = ALIGNn(s->sbssAlign, currAddress);
        s->sbssStart = currAddress;
        if (firstSection) {
            s->address = currAddress;
            firstSection = 0;
        }

        for (p = s->pathList; p != NULL; p = p->next) {
            if (p->sectionsExisting & SECTION_SBSS) {
                currAddress = ALIGNn(p->sbssAlign, currAddress);
                p->sbssStart = currAddress;
                currAddress += p->sbssSize;
            }
        }
    } else {
        s->sbssStart = currAddress;
    }

    if (s->sectionsExisting & SECTION_BSS) {
        currAddress = ALIGNn(s->bssAlign, currAddress);
        s->bssStart = currAddress;
        if (firstSection) {
            s->address = currAddress;
            firstSection = 0;
        }

        for (p = s->pathList; p != NULL; p = p->next) {
            if (p->sectionsExisting & SECTION_BSS) {
                currAddress = ALIGNn(p->bssAlign, currAddress);
                p->bssStart = currAddress;
                currAddress += p->bssSize;
            }
        }
    } else {
        s->bssStart = currAddress;
    }

    s->textSize = s->dataStart - s->address;
    s->dataSize = s->sdataStart - s->dataStart;
    s->sdataSize = s->sbssStart - s->sdataStart;
    s->sbssSize = s->bssStart - s->sbssStart;
    s->bssSize = currAddress - s->bssStart;
    s->totalSize = currAddress - s->address;

    return 0;
}

static int sizeRaw(Segment* s) {
    unsigned int address1;
    unsigned int address2;
    unsigned int currAddress;
    int fd;
    Path* p;
    struct stat statBuffer;

    s->dataAlign = 0x10;

    s->sectionsExisting = 2;

    for (p = s->pathList; p != NULL; p = p->next) {
        p->textSize = 0;
        p->dataSize = 0;
        p->sdataSize = 0;
        p->sbssSize = 0;
        p->bssSize = 0;

        p->textAlign = 0;
        p->dataAlign = 0x10;
        p->sdataAlign = 0;
        p->sbssAlign = 0;
        p->bssAlign = 0;

        p->sectionsExisting = 2;

        if ((fd = open(p->name, 0)) == -1) {
            fprintf(stderr, "makerom: %s: %s\n", p->name, sys_errlist[errno]);
            return -1;
        }
        if (fstat(fd, &statBuffer) == -1) {
            fprintf(stderr, "makerom: lstat failed: %s\n", sys_errlist[errno]);
            return -1;
        }
        s->dataSize += statBuffer.st_size;
        close(fd);
    }

    // align to 0x10. TODO: find a better way to write this?
    s->totalSize = s->dataSize = ((s->dataSize + 0xF) >> 4) << 4;

    switch (s->addrFunc) {
        case 2:
            address1 = s->afterSeg1->address + s->afterSeg1->totalSize;
            address2 = s->afterSeg2->address + s->afterSeg2->totalSize;
            currAddress = (address1 > address2) ? address1 : address2;
            break;

        case 3:
            address1 = s->afterSeg1->address + s->afterSeg1->totalSize;
            address2 = s->afterSeg2->address + s->afterSeg2->totalSize;
            currAddress = (address1 < address2) ? address1 : address2;
            break;

        case 1:
            address1 = s->afterSeg1->address + s->afterSeg1->totalSize;
            currAddress = address1;
            break;

        case 4:
            currAddress = s->address;
            break;

        case 5:
            currAddress = s->address;
            break;

        default:
            break;
    }
    currAddress = ALIGNn(s->align, currAddress);
    currAddress = ALIGNn(s->dataAlign, currAddress);
    s->address = currAddress;

    return 0;
}

int checkSizes(void) {
    Segment* s;
    int sizeViolation = 0;

    for (s = segmentList; s != NULL; s = s->next) {
        if ((s->flags & 1) && ((s->textSize + s->dataSize + s->sdataSize) > 0x100000)) {
            fprintf(stderr, "makerom: segment \"%s\" (text+data) size ", s->name);
            fprintf(stderr, "(%d+%d) = %d (0x%x)\n         ",
                    s->textSize,                              // (%d  text
                    s->dataSize + s->sdataSize,               // +%d) data
                    s->textSize + s->dataSize + s->sdataSize, // = %d total (rom)
                    s->textSize + s->dataSize + s->sdataSize  // (0x%x)
            );
            fprintf(stderr, "exceeds maximum BOOT segment size %d (0x%x)\n", 0x100000, 0x100000);
            sizeViolation = 1;
        }

        if (s->totalSize > s->maxSize) {
            fprintf(stderr, "makerom: segment \"%s\" (text+data+bss) size ", s->name);
            fprintf(stderr, "(%d+%d+%d) = %d (0x%x)\n         ",
                    s->textSize,                // (%d  text
                    s->dataSize + s->sdataSize, // +%d  total data
                    s->bssSize + s->sbssSize,   // +%d) total bss
                    s->totalSize,               // = %d total (ram)
                    s->totalSize                // (0x%x)
            );
            fprintf(stderr, "exceeds given maximum segment size %d (0x%x)\n", s->maxSize, s->maxSize);
            sizeViolation = 1;
        }
    }

    if (sizeViolation) {
        return -1;
    } else {
        return 0;
    }
}

#define TO_PHYSICAL(addr) ((unsigned int)(addr)&0x1FFFFFFF)
/**
 * Looks through each wave, and for each segment in that wave's segmentChain, checks that it does not overlap with any
 * segments listed later in the chain, that is, denoting the memory s uses by - and the memory t uses by +, something
 * like the following occurs: mem address ->
 *  -------
 *      ++++++++
 * The condition checks that
 * - the end of s is to the right of the start of t, and
 * - the end of t is to the right of the start of s.
 * the first failing implies s is entirely to the left of t, the second failing implies t is entirely to the right of s,
 * and the only remaining possibility is that s and t overlap.
 */
int checkOverlaps(void) {
    Wave* w;
    SegmentChain* sc;
    SegmentChain* tc;
    Segment* s;
    Segment* t;
    int isOverlap;

    isOverlap = 0;

    for (w = waveList; w != NULL; w = w->next) {
        for (sc = w->segmentChain; sc != NULL; sc = sc->next) {
            for (tc = sc->next; tc != NULL; tc = tc->next) {
                s = sc->segment;
                t = tc->segment;
                if ((s->address >= 0x80000000) && (s->address < 0xC0000000) && // in kseg0/kseg1
                    (t->address >= 0x80000000) && (t->address < 0xC0000000) && // in kseg0/kseg1
                    ((TO_PHYSICAL(s->address) + s->totalSize) > TO_PHYSICAL(t->address)) &&
                    ((TO_PHYSICAL(t->address) + t->totalSize) > TO_PHYSICAL(s->address))) {
                    fprintf(stderr, "makerom: segment \"%s\" [0x%x, 0x%x) overlaps with\n", s->name, s->address,
                            s->address + s->totalSize);
                    fprintf(stderr, "         segment \"%s\" [0x%x, 0x%x)\n", t->name, t->address,
                            t->address + t->totalSize);
                    fprintf(stderr, "         in wave \"%s\"\n", w->name);
                    isOverlap = 1;
                }
            }
        }
    }
    return isOverlap;
}

int createSegmentSymbols(char* source, char* object) {
    FILE* f;
    Segment* s;
    char* cmd;

    if ((f = fopen(source, "w")) == NULL) {
        fprintf(stderr, "makerom: %s: cannot create\n", source);
        return -1;
    }

    for (s = segmentList; s != NULL; s = s->next) {
        fprintf(f, ".globl _%sSegmentRomStart; ", s->name);
        fprintf(f, "_%sSegmentRomStart = 0x%08x\n", s->name, s->romOffset + offset + 0x1000);
        fprintf(f, ".globl _%sSegmentRomEnd; ", s->name);
        fprintf(f, "_%sSegmentRomEnd = 0x%08x\n", s->name,
                s->romOffset + offset + s->textSize + s->dataSize + s->sdataSize + 0x1000);

        if (s->flags & 2) {
            fprintf(f, ".globl _%sSegmentStart; ", s->name);
            fprintf(f, "_%sSegmentStart = 0x%08x\n", s->name, s->address);

            if (s->textSize != 0) {
                fprintf(f, ".globl _%sSegmentTextStart; ", s->name);
                fprintf(f, "_%sSegmentTextStart = 0x%08x\n", s->name, s->textStart);
                fprintf(f, ".globl _%sSegmentTextEnd; ", s->name);
                fprintf(f, "_%sSegmentTextEnd = 0x%08x\n", s->name, s->textStart + s->textSize);
            }

            if ((s->dataSize + s->sdataSize) != 0) {
                fprintf(f, ".globl _%sSegmentDataStart; ", s->name);
                fprintf(f, "_%sSegmentDataStart = 0x%08x\n", s->name, s->dataStart);
                fprintf(f, ".globl _%sSegmentDataEnd; ", s->name);
                fprintf(f, "_%sSegmentDataEnd = 0x%08x\n", s->name, s->dataStart + s->dataSize + s->sdataSize);
            }

            if ((s->bssSize + s->sbssSize) != 0) {
                fprintf(f, ".globl _%sSegmentBssStart; ", s->name);
                fprintf(f, "_%sSegmentBssStart = 0x%08x\n", s->name, s->sbssStart);
                fprintf(f, ".globl _%sSegmentBssEnd; ", s->name);
                fprintf(f, "_%sSegmentBssEnd = 0x%08x\n", s->name, s->sbssStart + s->sbssSize + s->bssSize);
            }

            fprintf(f, ".globl _%sSegmentEnd; ", s->name);
            fprintf(f, "_%sSegmentEnd = 0x%08x\n", s->name, s->bssStart + s->bssSize);
        }
    }
    fclose(f);

    if ((cmd = malloc(sysconf(1))) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }

    strcpy(cmd, "$TOOLROOT/usr/bin/cc -c -non_shared -o ");
    strcat(cmd, object);
    strcat(cmd, " ");
    strcat(cmd, source);

    if (debug) {
        printf("  %s\n", cmd);
    }

    return execCommand(cmd);
}

int createRomImage(char* romFile, char* object) {
    FILE* f;
    Segment* s;
    ptrdiff_t bootStack;
    char* sectName;
    size_t romSize;
    int fd;
    Elf* elf;
    Elf32_Ehdr* ehdr;
    Elf_Scn* scn;
    Elf32_Shdr* shdr;
    int index;
    int end;
    int i;
    char* fillbuffer;

    if ((fd = open(object, 0)) == -1) {
        fprintf(stderr, "makerom: %s: %s\n", object, sys_errlist[errno]);
        return -1;
    }
    elf = elf_begin(fd, ELF_C_READ, NULL);
    ehdr = elf32_getehdr(elf);
    for (index = 1; index < ehdr->e_shnum; index++) {
        scn = elf_getscn(elf, index);
        shdr = elf32_getshdr(scn);
        sectName = elf_strptr(elf, ehdr->e_shstrndx, shdr->sh_name);
        if (strcmp(sectName, ".text") == 0) {
            break;
        }
    }

    if (shdr->sh_size > 0x50) {
        fprintf(stderr, "makerom: entr size %d is larger than %d\n", shdr->sh_size, 0x50);
        return -1;
    }
    if (lseek(fd, shdr->sh_offset, 0) == -1) {
        fprintf(stderr, "makerom: lseek of entry section failed\n");
        return -1;
    }
    if (read(fd, B_1000BA80, shdr->sh_size) != shdr->sh_size) {
        fprintf(stderr, "makerom: read of entry section failed\n");
        return -1;
    }
    if (openAouts() != 0) {
        return -1;
    }
    for (s = segmentList; s != NULL; s = s->next) {
        if (s->flags & 2) {
            readObject(s);
        } else if (s->flags & 4) {
            readRaw(s);
        }
        romSize = s->romOffset + s->textSize + s->dataSize + s->sdataSize;
    }

    if ((f = fopen(romFile, "w+")) == NULL) {
        fprintf(stderr, "makerom: %s: %s\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if (offset != 0) {
        if (fseek(f, offset, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
            return -1;
        }
    }
    if (fwrite(headerBuf, 1, headerWordAlignedByteSize, f) != headerWordAlignedByteSize) {
        fprintf(stderr, "makerom: %s: write error\n", romFile);
        return -1;
    }

    if (fseek(f, offset + 8, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(&bootAddress, 4, 1, f) != 1) {
        fprintf(stderr, "makerom: %s: write error\n", romFile);
        return -1;
    }

    if (changeclock) {
        int tmp_clock = 0;

        if (fseek(f, offset + 4, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
            return -1;
        }
        if (fread(&tmp_clock, 4, 1, f) != 1) {
            fprintf(stderr, "makerom: %s: read error \n", romFile);
            return -1;
        }
        clockrate |= tmp_clock;
        if (fseek(f, offset + 4, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
            return -1;
        }
        if (fwrite(&clockrate, 4, 1, f) != 1) {
            fprintf(stderr, "makerom: %s: write error\n", romFile);
            return -1;
        }
    }

    if (fseek(f, offset + 0x40, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(bootBuf, 1, bootWordAlignedByteSize, f) != bootWordAlignedByteSize) {
        fprintf(stderr, "makerom: %s: write error\n", romFile);
        return -1;
    }

    if (nofont == 0) {
        if (fseek(f, offset + 0xB70, 0) != 0) {
            fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
            return -1;
        }
        if (fwrite(fontBuf, 1, fontdataWordAlignedByteSize, f) != fontdataWordAlignedByteSize) {
            fprintf(stderr, "makerom: %s: write error\n", romFile);
            return -1;
        }
    }

    if (fseek(f, offset + 0x1000, 0) != 0) {
        fprintf(stderr, "makerom: %s: fseek error (%s)\n", romFile, sys_errlist[errno]);
        return -1;
    }
    if (fwrite(B_1000BA80, 1, romSize, f) != romSize) {
        fprintf(stderr, "makerom: %s: write error\n", romFile);
        return -1;
    }

    end = romSize + offset + 0x1000;
    finalromSize <<= 0x11;
    if ((finalromSize != 0) && (finalromSize > end)) {
        if ((fillbuffer = malloc(0x2000)) == NULL) {
            fprintf(stderr, "malloc failed\n");
            return -1;
        }

        for (i = 0; i < 0x2000; i++) {
            fillbuffer[i] = fillData;
        }

        while (end < finalromSize) {
            if ((finalromSize - end) > 0x2000) {
                if (fwrite(fillbuffer, 1, 0x2000, f) != 0x2000) {
                    fprintf(stderr, "makerom: %s: write error %x\n", romFile, end);
                    return -1;
                }
                end += 0x2000;
            } else {
                if (fwrite(fillbuffer, 1, finalromSize - end, f) != (finalromSize - end)) {
                    fprintf(stderr, "makerom: %s: write error\n", romFile);
                    return -1;
                }
                end += finalromSize - end;
            }
        }
    }

    return 0;
}

static int openAouts(void) {
    Wave* wave;
    char gcordFileBuf[0x100];

    for (wave = waveList; wave != NULL; wave = wave->next) {
        if (gcord) {
            strcat(strcpy(gcordFileBuf, wave->name), ".cord");
        } else {
            strcpy(gcordFileBuf, wave->name);
        }

        if ((wave->fd = open(wave->name, 0)) == -1) {
            fprintf(stderr, "makerom: %s: %s\n", wave->name, sys_errlist[errno]);
            return -1;
        }

        wave->elf = elf_begin(wave->fd, ELF_C_READ, NULL);
        if ((elf_kind(wave->elf) != ELF_K_ELF) || ((wave->ehdr = elf32_getehdr(wave->elf)) == NULL)) {
            fprintf(stderr, "makerom: %s: not a valid ELF object file\n", wave->name);
            return -1;
        }
    }

    return 0;
}

static void* lookupSymbol(Wave* wave, char* name) {
    Elf_Scn* scn;
    Elf32_Shdr* shdr;
    Elf_Data* data;
    Elf32_Sym* sym;
    size_t index;
    int i;
    int count;

    for (index = 1; index < wave->ehdr->e_shnum; index++) {
        if (((scn = elf_getscn(wave->elf, index)) == NULL) || ((shdr = elf32_getshdr(scn)) == NULL)) {
            return NULL;
        }
        if (shdr->sh_type != 2) {
            continue;
        }

        data = NULL;
        if ((data = elf_getdata(scn, data)) == NULL) {
            return NULL;
        }

        count = data->d_size / sizeof(Elf32_Sym);
        sym = data->d_buf;
        sym++;

        for (i = 1; i < count; i++) {
            if (strcmp(name, elf_strptr(wave->elf, shdr->sh_link, sym->st_name)) == 0) {
                return (void*)sym->st_value;
            }
            sym++;
        }
    }

    return NULL;
}

static Elf32_Shdr* lookupShdr(Wave* wave, char* segSectName) {
    Elf_Scn* scn;
    Elf32_Shdr* shdr;
    size_t index;
    char* sectName;

    for (index = wave->searchIndex; index < wave->ehdr->e_shnum; index++) {
        if (((scn = elf_getscn(wave->elf, index)) == NULL) || ((shdr = elf32_getshdr(scn)) == NULL)) {
            fprintf(stderr, "makerom: %s: can't get section index %d\n", wave->name, index);
            return NULL;
        }
        sectName = elf_strptr(wave->elf, wave->ehdr->e_shstrndx, shdr->sh_name);
        if (strcmp(sectName, segSectName) == 0) {
            break;
        }
    }

    if (index < wave->ehdr->e_shnum) {
        wave->searchIndex = index + 1;
        return shdr;
    }

    for (index = 1; index < wave->searchIndex; index++) {
        if (((scn = elf_getscn(wave->elf, index)) == NULL) || ((shdr = elf32_getshdr(scn)) == NULL)) {
            fprintf(stderr, "makerom: %s: can't get section index %d\n", wave->name, index);
            return NULL;
        }
        sectName = elf_strptr(wave->elf, wave->ehdr->e_shstrndx, shdr->sh_name);
        if (strcmp(sectName, segSectName) == 0) {
            break;
        }
    }

    if (index >= wave->searchIndex) {
        fprintf(stderr, "makerom: %s: cannot find %s section\n", wave->name, segSectName);
        return NULL;
    }

    wave->searchIndex = index + 1;

    return shdr;
}

static int readObject(Segment* s) {
    char* segSectName;
    Elf32_Shdr* shdr;

    if ((segSectName = malloc(strlen(s->name) + 9)) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }

    sprintf(segSectName, ".%s.text", s->name);
    if ((shdr = lookupShdr(s->wave, segSectName)) == NULL) {
        return -1;
    }
    if (shdr->sh_size != s->textSize) {
        fprintf(stderr, "makerom: %s: section size for %s does not match input section sizes\n", s->wave->name,
                segSectName);
        fprintf(stderr, "makerom:   shdr = %d, textSize = %d\n", shdr->sh_size, s->textSize);
        free(segSectName);
        return -1;
    }
    if (lseek(s->wave->fd, shdr->sh_offset, 0) == -1) {
        fprintf(stderr, "makerom: %s: seek to section %s failed\n", s->wave->name, segSectName);
        free(segSectName);
        return -1;
    }
    if (read(s->wave->fd, B_1000BA80 + s->romOffset, shdr->sh_size) != shdr->sh_size) {
        fprintf(stderr, "makerom: %s: read of section %s failed\n", s->wave->name, segSectName);
        free(segSectName);
        return -1;
    }

    sprintf(segSectName, ".%s.data", s->name);
    if ((shdr = lookupShdr(s->wave, segSectName)) == NULL) {
        return -1;
    }
    if (shdr->sh_size != s->dataSize) {
        fprintf(stderr, "makerom: %s: section size for %s does not match input section sizes\n", s->wave->name,
                segSectName);
        fprintf(stderr, "large data failed\n");
        fprintf(stderr, "%s, file large=%x, our dataSize=%x\n", s->name, shdr->sh_size, s->dataSize);
        free(segSectName);
        return -1;
    }
    if (lseek(s->wave->fd, shdr->sh_offset, 0) == -1) {
        fprintf(stderr, "makerom: %s: seek to section %s failed\n", s->wave->name, segSectName);
        free(segSectName);
        return -1;
    }
    if (read(s->wave->fd, B_1000BA80 + s->romOffset + s->textSize, shdr->sh_size) != shdr->sh_size) {
        fprintf(stderr, "makerom: %s: read of section %s failed\n", s->wave->name, segSectName);
        free(segSectName);
        return -1;
    }

    sprintf(segSectName, ".%s.sdata", s->name);
    if ((shdr = lookupShdr(s->wave, segSectName)) == NULL) {
        return -1;
    }
    if (shdr->sh_size != s->sdataSize) {
        fprintf(stderr, "makerom: %s: section size for %s does not match input section sizes\n", s->wave->name,
                segSectName);
        fprintf(stderr, "small data failed\n");
        free(segSectName);
        return -1;
    }
    if (lseek(s->wave->fd, shdr->sh_offset, 0) == -1) {
        fprintf(stderr, "makerom: %s: seek to section %s failed\n", s->wave->name, segSectName);
        free(segSectName);
        return -1;
    }
    if (read(s->wave->fd, B_1000BA80 + s->romOffset + s->textSize + s->dataSize, shdr->sh_size) != shdr->sh_size) {
        fprintf(stderr, "makerom: %s: read of section %s failed\n", s->wave->name, segSectName);
        free(segSectName);
        return -1;
    }

    free(segSectName);
    return 0;
}

static int readRaw(Segment* s) {
    Path* p;
    int fd;
    unsigned int offset;
    off_t fileSize;
    off_t totalSize;
    struct stat statBuffer;

    totalSize = 0;
    offset = s->romOffset;
    for (p = s->pathList; p != NULL; p = p->next) {
        if ((fd = open(p->name, 0)) == -1) {
            fprintf(stderr, "makerom: %s: %s\n", p->name, sys_errlist[errno]);
            return -1;
        }
        if (fstat(fd, &statBuffer) == -1) {
            fprintf(stderr, "makerom: lstat failed: %s\n", sys_errlist[errno]);
            return -1;
        }
        fileSize = statBuffer.st_size;
        totalSize += fileSize;
        if (totalSize > s->dataSize) {
            fprintf(stderr, "makerom: %s: segment size changed\n", s->name);
            return -1;
        }
        if (read(fd, &B_1000BA80[offset], fileSize) != fileSize) {
            fprintf(stderr, "makerom: %s: read failed (%s)\n", p->name, sys_errlist[errno]);
            return -1;
        }
        close(fd);
        offset += fileSize;
    }

    return 0;
}

int createEntryFile(char* source, char* object) {
    Segment* s;
    FILE* f;
    char* cmd;
    char* segSectName;
    void* BssStart;
    Wave* wave;
    void* bootEntry = NULL;
    void* bootStack = NULL;
    char romsymbol[14] = "__osFinalrom";

    if ((f = fopen(source, "w")) == NULL) {
        fprintf(stderr, "makerom: %s: cannot create\n", source);
        return -1;
    }
    for (s = segmentList; s != NULL; s = s->next) {
        if (s->flags & 1) {
            wave = s->wave;
            if ((wave->fd = open(wave->name, 0)) == -1) {
                fprintf(stderr, "makerom: %s: %s\n", wave->name, sys_errlist[errno]);
                return -1;
            }

            wave->elf = elf_begin(wave->fd, ELF_C_READ, NULL);
            if ((elf_kind(wave->elf) != ELF_K_ELF) || ((wave->ehdr = elf32_getehdr(wave->elf)) == NULL)) {
                fprintf(stderr, "makerom: %s: not a valid ELF object file\n", wave->name);
                return -1;
            }

            if ((finalromSize != 0) && (lookupSymbol(s->wave, romsymbol) == NULL)) {
                fprintf(stderr, "makerom: use libultra_rom.a to build real game cassette\n");
                return -1;
            }

            if (bootEntryName != NULL) {
                bootEntry = lookupSymbol(s->wave, bootEntryName);
                if (bootEntry == NULL) {
                    fprintf(stderr, "makerom: %s: cannot find entry symbol %s\n", s->wave->name, bootEntryName);
                    return -1;
                }
            }

            if (bootStackName != NULL) {
                if ((bootStack = lookupSymbol(s->wave, bootStackName)) == NULL) {
                    fprintf(stderr, "makerom: %s: cannot find stack symbol %s\n", s->wave->name, bootStackName);
                    return -1;
                }
            } else {
                bootStack = NULL;
            }
            bootStack = (char*)bootStack + bootStackOffset;

            if ((s->bssSize != 0) && !cosim) {
                if ((segSectName = malloc(strlen(s->name) + 0x10)) == NULL) {
                    fprintf(stderr, "malloc failed\n");
                    return -1;
                }
                sprintf(segSectName, "_%sSegmentBssStart", s->name);
                BssStart = lookupSymbol(s->wave, segSectName);
                fprintf(f, " la\t$8 0x%x\n", BssStart);
                fprintf(f, " li\t$9 0x%x\n", s->bssSize);
                fprintf(f, "1:\n");
                fprintf(f, " sw $0, 0($8)\n");
                fprintf(f, " sw $0, 4($8)\n");
                fprintf(f, " addi $8, 8\n");
                fprintf(f, " addi $9, 0xfff8\n");
                fprintf(f, " bne  $9, $0, 1b\n");
            }
            if (bootStack != NULL) {
                fprintf(f, " la\t$29 0x%x\n", bootStack);
            }
            if (bootEntry != NULL) {
                fprintf(f, " la $10  0x%x\n", bootEntry);
                fprintf(f, " j $10\n");
            }
        }
    }

    free(segSectName);
    fclose(f);

    if ((cmd = malloc(sysconf(1))) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }

    strcpy(cmd, "$TOOLROOT/usr/bin/cc -c -non_shared -o ");
    strcat(cmd, object);
    strcat(cmd, " ");
    strcat(cmd, source);

    if (debug) {
        printf("Compiling entry source file\n");
        printf("  %s\n", cmd);
    }

    return execCommand(cmd);
}

unsigned int ALIGNn(unsigned int romalign, int n) {
    if (romalign == 0) {
        romalign = 0x10;
    }
    return (((n + romalign) - 1) / romalign) * romalign;
}
