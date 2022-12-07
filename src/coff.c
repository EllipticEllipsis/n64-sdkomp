#include "obj.h"
#include "ldfcn.h"

unsigned int Address;
unsigned int Data0;
unsigned int Data1;

int Swap = 0;

char* OFileName;
char* AFileName; // Unused
char* SName;
struct ldfile* LDPtr;
struct scnhdr SHeader;
int AFile; // Unused


static int Extract(unsigned int* buf);

int readCoff(char* fname, unsigned int* buf) {
    int textSize;
    int dataSize;
    int bssSize;

    OFileName = fname;
    SName = ".text";
    textSize = Extract(buf);
    if (textSize < 0) {
        return -1;
    }
    return textSize;
}

static int Extract(unsigned int* buf) {
    int bytesRead; // Unused

    if ((LDPtr = ldopen(OFileName, NULL)) == NULL) {
        fprintf(stderr, "Extract(): Cannot open %s.\n", OFileName);
        return -1;
    }

    switch (LDPtr->header.f_magic) {
        case MIPSEBMAGIC:
        case MIPSEBMAGIC_2:
        case MIPSEBMAGIC_3:
            Swap = (gethostsex() == LITTLEENDIAN);
            break;

        case MIPSELMAGIC:
        case MIPSELMAGIC_2:
        case MIPSELMAGIC_3:
            Swap = (gethostsex() == BIGENDIAN);
            break;
    }

    if (ldnshread(LDPtr, SName, &SHeader) == 0) {

    } else {
        ldfseek(LDPtr, SHeader.s_scnptr, 0);
        for (Address = SHeader.s_paddr; Address - SHeader.s_paddr < (size_t)SHeader.s_size; Address += 8) {
            ldfread((char*)&Data0, 1, 4, LDPtr);
            if (Swap) {
                Data0 = swap_word(Data0);
            }

            ldfread((char*)&Data1, 1, 4, LDPtr);
            if (Swap) {
                Data1 = swap_word(Data1);
            }

            if (Swap) {
                buf[0] = Data1;
                buf[1] = Data0;
            } else {
                buf[0] = Data0;
                buf[1] = Data1;
            }

            buf += 2;
        }
    }
    ldclose(LDPtr);

    return SHeader.s_size;
}
