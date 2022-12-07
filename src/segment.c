#include "makerom.h"

// makerom.c
extern Segment* segmentList;
extern Wave* waveList;
extern int debug;
extern int offset;

#define SECTION_TEXT (1 << 0)
#define SECTION_DATA_RODATA (1 << 1)
#define SECTION_SDATA (1 << 2)
#define SECTION_BSS (1 << 3)
#define SECTION_SBSS (1 << 4)

// static unsigned char* romImage;
static char* B_1000BA80; // romImage

int scanSegments(void) {
    Segment* s;
    unsigned int offset = 0x50;
    int rom_size;

    if (elf_version(1) == 0) {
        fprintf(stderr, "makerom: out of date\n");
        return -1;
    }
    for (s = segmentList; s != NULL; s = s->next) {
        if (s->unk0C == 0) {
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

int sizeObject(Segment* s) {
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
            if (((scn = _elf_getscn(elf, index)) == NULL) || ((shdr = elf32_getshdr(scn)) == NULL)) {
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

int sizeRaw(Segment* s) {
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

int createRomImage(unsigned char* romFile, unsigned char* object);
//{
//    FILE* f;
//    Segment* s;
//    ptrdiff_t bootStack;
//    unsigned char* sectName;
//    size_t romSize;
//    int fd;
//    Elf* elf;
//    Elf32_Ehdr* ehdr;
//    Elf_Scn* scn;
//    Elf32_Shdr* shdr;
//    int index;
//    int end;
//    int i;
//    unsigned char* fillbuffer;
//    {
//        int tmp_clock;
//    }
//}

int openAouts();
//{
//    Wave* wave;
//    unsigned char gcordFileBuf[256];
//}

void* lookupSymbol(Wave* wave, unsigned char* name);
//{
//    Elf_Scn* scn;
//    Elf32_Shdr* shdr;
//    Elf_Data* data;
//    Elf32_Sym* sym;
//    size_t index;
//    int i;
//    int count;
//}

Elf32_Shdr* lookupShdr(Wave* wave, unsigned char* segSectName);
//{
//    Elf_Scn* scn;
//    Elf32_Shdr* shdr;
//    size_t index;
//    unsigned char* sectName;
//}

int readObject(Segment* s);
//{
//    unsigned char* segSectName;
//    Elf32_Shdr* shdr;
//}

int readRaw(Segment* s);
//{
//    Path* p;
//    int fd;
//    unsigned int offset;
//    off_t fileSize;
//    off_t totalSize;
//    stat statBuffer;
//}

int createEntryFile(unsigned char* source, unsigned char* object);
//{
//    Segment* s;
//    FILE* f;
//    unsigned char* cmd;
//    unsigned char* segSectName;
//    void* BssStart;
//    Wave* wave;
//    void* bootEntry;
//    void* bootStack;
//    unsigned char romsymbol[14];
//}

unsigned int ALIGNn(unsigned int romalign, int n);
//{
//}
