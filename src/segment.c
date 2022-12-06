#include "makerom.h"

// makerom.c
extern Segment* segmentList;

// static unsigned char* romImage;
static char* B_1000BA80; // romImage

int scanSegments();
//{
//    Segment* s;
//    unsigned int offset;
//    int rom_size;
//}
int scanSegments(void) {
    Segment* s;
    size_t offset = 0x50;
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


int sizeObject(Segment* s);
//{
//    unsigned int address1;
//    unsigned int address2;
//    int fd;
//    Elf* elf;
//    Elf_Scn* scn;
//    Elf32_Ehdr* ehdr;
//    Elf32_Shdr* shdr;
//    Path* p;
//    size_t index;
//    unsigned char* sectName;
//    int currAddress;
//    int firstSection;
//}

int sizeRaw(Segment* s);
//{
//    unsigned int address1;
//    unsigned int address2;
//    unsigned int currAddress;
//    int fd;
//    Path* p;
//    stat statBuffer;
//}

int checkSizes();
//{
//    Segment* s;
//    int sizeViolation;
//}

int checkOverlaps();
//{
//    Wave* w;
//    SegmentChain* sc;
//    SegmentChain* tc;
//    Segment* s;
//    Segment* t;
//    int isOverlap;
//}

int createSegmentSymbols(unsigned char* source, unsigned char* object);
//{
//    FILE* f;
//    Segment* s;
//    unsigned char* cmd;
//}

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
