#include "makerom.h"

static const sigaction_t act;

// static unsigned char segmentSymbolSource[255];

// static unsigned char segmentSymbolObject[255];

// static unsigned char entrySource[255];

// static unsigned char entryObject[255];

// static unsigned char objectListFile[255];

static unsigned char romFile[] = "rom";

// static int checkOverlap;

// static unsigned char* progName;

static char B_1000B540[0x100]; // segmentSymbolSource
static char B_1000B640[0x100]; // segmentSymbolObject
static char B_1000B740[0x100]; // entrySource
static char B_1000B840[0x100]; // entryObject
static char B_1000B940[0x100]; // objectListFile

static char* B_1000BA40; // progName

extern int debug;
extern int keep_going;
extern Wave* waveList;
extern size_t* bootBuf;
extern int bootWordAlignedByteSize;
extern size_t* pif2bootBuf;
extern int pif2bootWordAlignedByteSize;
extern char* headerBuf;
extern int headerWordAlignedByteSize;
extern void* fontBuf;
extern size_t fontdataWordAlignedByteSize;


#pragma GLOBAL_ASM("asm/functions/makerom/main.s")
int main(int argc, unsigned char** argv);
//{
//    int c;
//    FILE* f;
//    Wave* wave;
//    unsigned char* cppCmd;
//    long cppCmdCount;
//    int headerFd;
//    int pif2bootFd;
//    unsigned char* bootFileName;
//    unsigned char* headerFileName;
//    unsigned char* pif2bootFileName;
//    unsigned char* fontFileName;
//    int createRom;
//    unsigned char CheckerBuf[255];
//    unsigned char NameBuf[255];
//    unsigned char* rootName;
//    int quietMode;
//    {
//        unsigned char gcordFileBuf[255];
//    }
//}

// #pragma GLOBAL_ASM("asm/functions/makerom/usage.s")
void usage();
//{
//}
void usage(void) {
    fprintf(stderr, "usage: makerom [-D<define>] [-I<dir>] -[U<define>]\n");
    fprintf(stderr, "               [-c] [-n] [-d] [-g] [-e] [-m] [-q] [-v]\n");
    fprintf(stderr, "               [-o] [-b bootfile] [-h headerfile]\n");
    fprintf(stderr, "               [-p pif2bootfile]\n");
    fprintf(stderr, "               [-s romsize (Mbits)]\n");
    fprintf(stderr, "               [-f filldata (0x00 - 0xff)]\n");
    fprintf(stderr, "               [-C clockrate] \n");
    fprintf(stderr, "               [-r romfile] specfile\n");
}

extern int irixVersion;

// #pragma GLOBAL_ASM("asm/functions/makerom/getOsVersion.s")
void getOsVersion();
//{
//    unsigned char* cmd;
//    unsigned char buf[4096];
//    FILE* procPtr;
//}
void getOsVersion(void) {
    char* cmd = "/sbin/uname -r";
    char buf[0x1000];
    FILE* procPtr;

    if ((procPtr = popen(cmd, "r")) != NULL) {
        fgets(buf, 0x1000, procPtr);
        pclose(procPtr);
        if (strcmp(buf, "5.3\n") == 0) {
            irixVersion = 0;
        } else if (strcmp(buf, "6.2\n") == 0) {
            irixVersion = 1;
        } else if (strcmp(buf, "6.3\n") == 0) {
            irixVersion = 2;
        } else if (strcmp(buf, "6.4\n") == 0) {
            irixVersion = 3;
        } else {
            irixVersion = 4;
            fprintf(stderr, "makerom: Operating system not recognized.  Trying 6.x ...\n");
        }
    } else {
        fprintf(stderr, "makerom: Unable to find uname command!\n");
        exit(1);
    }
}

// #pragma GLOBAL_ASM("asm/functions/makerom/checkIdoVersion.s")
int checkIdoVersion(unsigned char* rootName);
//{
//    int u64CheckFound;
//    int v70Found;
//    unsigned char cmd[255];
//    unsigned char buffer[255];
//    stat statBuffer;
//    FILE* procPtr;
//}
int checkIdoVersion(unsigned char* rootName) {
    int u64CheckFound;
    int v70Found; // Version 7.0
    char cmd[0x100];
    char buffer[0x100];
    struct stat statBuffer;
    FILE* procPtr;

    sprintf(buffer, "%s/usr/sbin/u64check", rootName);
    if (stat(buffer, &statBuffer) != 0) {
        u64CheckFound = 0;
    } else {
        u64CheckFound = 1;
    }
    
    // Check if the fourth line of the output of this command contains "7.0"
    sprintf(cmd, "/usr/sbin/showprods -D 1 dev");
    if ((procPtr = popen(cmd, "r")) != NULL) {
        fgets(buffer, 0xFF, procPtr);
        fgets(buffer, 0xFF, procPtr);
        fgets(buffer, 0xFF, procPtr);
        fgets(buffer, 0xFF, procPtr);
        pclose(procPtr);
        if (strstr(buffer, "7.0") != NULL) {
            v70Found = 1;
        } else {
            v70Found = 0;
        }
    }

    if (v70Found) {
        fprintf(stderr, "makerom: IDO v7.0 does not work with the Nintendo64\n");
        fprintf(stderr, "         development environment.  Please upgrade to\n");
        fprintf(stderr, "         IDO v7.1.\n");
        exit(1);
    }

    if (u64CheckFound) {
        return 2;
    } else {
        return 0;
    }
}

// #pragma GLOBAL_ASM("asm/functions/makerom/printVersion.s")
void printVersion();
//{
//}
void printVersion(void) {
    if (irixVersion == 0) {
        printf("Nintendo64 Makerom v2.2 for IRIX.\n");
    } else {
        printf("Nintendo64 Makerom v2.2 -BETA- for IRIX.\n");
    }
}

int readCoff(unsigned char* fname, unsigned int* buf);

// #pragma GLOBAL_ASM("asm/functions/makerom/getBootFile.s")
void getBootFile(unsigned char* bootFileName);
//{
//    int bootFd;
//    unsigned char scratchFileName[255];
//    stat buf;
//    unsigned char errMessage[255];
//}
void getBootFile(unsigned char* bootFileName) {
    int bootFd;
    char scratchFileName[0x100];
    struct stat buf;
    char errMessage[0x100];

    if ((bootFileName == NULL) && (gloadFindFile(scratchFileName, "/usr/lib/PR", "Boot") != NULL)) {
        bootFileName = scratchFileName;
    }
    if (bootFileName != NULL) {
        if ((bootFd = open(bootFileName, 0x800)) < 0) {
            sprintf(errMessage, "%s: unable to open %s", B_1000BA40, bootFileName);
            perror(errMessage);
            exit(1);
        }
        if (fstat(bootFd, &buf) < 0) {
            sprintf(errMessage, "%s unable to stat %s", B_1000BA40, bootFileName);
            perror(errMessage);
            close(bootFd);
            exit(1);
        }

        bootBuf = malloc(buf.st_size);
        if (bootBuf == NULL) {
            fprintf(stderr, "%s: unable to malloc buffer to hold %d bytes\n", B_1000BA40, buf.st_size);
            close(bootFd);
            exit(1);
        }
        close(bootFd);
        bootWordAlignedByteSize = readCoff(bootFileName, bootBuf);
    } else {
        bootBuf = NULL;
    }
}


// #pragma GLOBAL_ASM("asm/functions/makerom/getPif2BootFile.s")
void getPif2BootFile(unsigned char* pif2bootFileName);
//{
//    int pif2bootFd;
//    unsigned char scratchFileName[255];
//    stat buf;
//    unsigned char errMessage[255];
//}
void getPif2BootFile(unsigned char* pif2bootFileName) {
    int pif2bootFd;
    char scratchFileName[0x100];
    struct stat buf;
    char errMessage[0x100];

    if ((pif2bootFileName == NULL) && (gloadFindFile(scratchFileName, "/usr/lib/PR", "pif2Boot") != NULL)) {
        pif2bootFileName = scratchFileName;
    }
    if (pif2bootFileName != NULL) {
        if ((pif2bootFd = open(pif2bootFileName, 0x800)) < 0) {
            sprintf(errMessage, "%s: unable to open %s", B_1000BA40, pif2bootFileName);
            perror(errMessage);
            exit(1);
        }
        if (fstat(pif2bootFd, &buf) < 0) {
            sprintf(errMessage, "%s unable to stat %s", B_1000BA40, pif2bootFileName);
            perror(errMessage);
            close(pif2bootFd);
            exit(1);
        }

        pif2bootBuf = malloc(buf.st_size);
        if (pif2bootBuf == NULL) {
            fprintf(stderr, "%s: unable to malloc buffer to hold %d bytes\n", B_1000BA40, buf.st_size);
            close(pif2bootFd);
            exit(1);
        }
        close(pif2bootFd);
        pif2bootWordAlignedByteSize = readCoff(pif2bootFileName, pif2bootBuf);
    } else {
        pif2bootBuf = NULL;
    }
}


// #pragma GLOBAL_ASM("asm/functions/makerom/getRomheaderFile.s")
void getRomheaderFile(unsigned char* headerFileName);
//{
//    int headerFd;
//    unsigned char scratchFileName[255];
//    stat buf;
//    unsigned char errMessage[255];
//    unsigned char nibbleString[2];
//    int nibbleVal;
//    int i;
//    int readPtr;
//    int retval;
//}
void getRomheaderFile(unsigned char* headerFileName) {
    int headerFd;
    char scratchFileName[0x100];
    struct stat buf;
    char errMessage[0x100];
    char nibbleString[2];
    int nibbleVal;
    int i;
    int readPtr;
    int retval;

    if ((headerFileName == NULL) && (gloadFindFile(scratchFileName, "/usr/lib/PR", "romheader") != NULL)) {
        headerFileName = scratchFileName;
    }
    if (headerFileName != NULL) {
        if ((headerFd = open(headerFileName, 0x800)) < 0) {
            sprintf(errMessage, "%s unable to open %s", B_1000BA40, headerFileName);
            perror(errMessage);
            exit(1);
        }
        if (fstat(headerFd, &buf) < 0) {
            sprintf(errMessage, "%s unable to stat %s", B_1000BA40, headerFileName);
            perror(errMessage);
            close(headerFd);
            exit(1);
        }
        headerWordAlignedByteSize = buf.st_size;
        headerBuf = malloc(headerWordAlignedByteSize);
        if (headerBuf == NULL) {
            fprintf(stderr, "%s: unable to malloc buffer to hold %d bytes\n", B_1000BA40, headerWordAlignedByteSize);
            close(headerFd);
            exit(1);
        }

        nibbleString[1] = '\0';
        for (i = 0, readPtr = 0; readPtr < headerWordAlignedByteSize; i++, readPtr++) {
            retval = read(headerFd, nibbleString, 1);
            if (retval != 1) {
                fprintf(stderr, "%s: short read from %s.\n", B_1000BA40, headerFileName);
                free(headerBuf);
                close(headerFd);
                exit(1);
            }

            if (nibbleString[0] == 0xA) {
                if (++readPtr < headerWordAlignedByteSize) {
                    retval = read(headerFd, nibbleString, 1);
                    if (retval != 1) {
                        fprintf(stderr, "%s: short read from %s.\n", B_1000BA40, headerFileName);
                        free(headerBuf);
                        close(headerFd);
                        exit(1);
                    }
                }
            }

            nibbleVal = strtol(nibbleString, NULL, 16);
            if (i % 2) {
                headerBuf[i >> 1] |= nibbleVal;
            } else {
                headerBuf[i >> 1] = nibbleVal << 4;
            }
        }
        headerWordAlignedByteSize = (i - 1) >> 1;
        if (headerWordAlignedByteSize & 3) {
            headerWordAlignedByteSize += 4;
            headerWordAlignedByteSize &= ~3;
        }
        close(headerFd);
    } else {
        headerBuf = NULL;
    }
}


// #pragma GLOBAL_ASM("asm/functions/makerom/getFontDataFile.s")
void getFontDataFile(unsigned char* fontFileName);
//{
//    int fontFd;
//    unsigned char scratchFileName[255];
//    stat buf;
//    unsigned char errMessage[255];
//}
void getFontDataFile(unsigned char* fontFileName) {
    int fontFd;
    char scratchFileName[0x100];
    struct stat buf;
    char errMessage[0x100];

    if (gloadFindFile(scratchFileName, "/usr/lib/PR", "font") != NULL) {
        fontFileName = scratchFileName;
    }
    if (fontFileName != NULL) {
        if ((fontFd = open(fontFileName, 0x800)) < 0) {
            sprintf(errMessage, "%s: unable to open %s", B_1000BA40, fontFileName);
            perror(errMessage);
            exit(1);
        }
        if (fstat(fontFd, &buf) < 0) {
            sprintf(errMessage, "%s unable to stat %s", B_1000BA40, fontFileName);
            perror(errMessage);
            close(fontFd);
            exit(1);
        }

        fontBuf = malloc(buf.st_size);
        if (fontBuf == NULL) {
            fprintf(stderr, "%s: unable to malloc buffer to hold %d bytes\n", B_1000BA40, buf.st_size);
            close(fontFd);
            exit(1);
        }
        fontdataWordAlignedByteSize = buf.st_size;
        if (read(fontFd, fontBuf, fontdataWordAlignedByteSize) != fontdataWordAlignedByteSize) {
            sprintf(errMessage, "%s unable to read %s", B_1000BA40, fontFileName);
            perror(errMessage);
            close(fontFd);
            exit(1);
        }
        close(fontFd);
    } else {
        fontBuf = NULL;
    }
}


// #pragma GLOBAL_ASM("asm/functions/makerom/gloadFindFile.s")
unsigned char* gloadFindFile(unsigned char* fullpath, unsigned char* postRootSuffix, unsigned char* fname);
//{
//    unsigned char* rootname;
//    unsigned char* rootpath;
//    int fd;
//    int try;
//}
unsigned char* gloadFindFile(unsigned char* fullpath, unsigned  char* postRootSuffix, unsigned char* fname) {
    char* rootname;
    char* rootpath;
    int fd; // Unused
    int try;

    for (try = 0; try < 3; try++) {
        fullpath[0] = '\0';

        switch (try) {
            case 0:
                rootname = "ROOT";
                break;
            case 1:
                rootname = "WORKAREA";
                break;
            case 2:
                rootname = NULL;
                break;
        }

        if (rootname != NULL) {
            if ((rootpath = getenv(rootname)) == NULL) {
                continue;
            }
            strcat(fullpath, rootpath);
        }
        if (postRootSuffix != NULL) {
            strcat(fullpath, postRootSuffix);
            strcat(fullpath, "/");
        }
        strcat(fullpath, fname);
        if (access(fullpath, 4) == 0) {
            return fullpath;
        }
    }
    fprintf(stderr, "gloadFindFile: can't find file %s\n", fullpath);
    fullpath[0] = '\0';
    return NULL;
}


int createElspec(Wave*);
int runLinker(Wave*, unsigned char*, unsigned char*);

// #pragma GLOBAL_ASM("asm/functions/makerom/doWave.s")
void doWave(Wave* wave);
//{
//}
void doWave(Wave* wave) {
    if (debug) {
        printf("Translating ROM spec file into");
        printf(" linker spec file in %s\n", wave->elspecFile);
    }
    if (createElspec(wave) == -1) {
        unlinkTempFiles();
        exit(1);
    }
    if ((runLinker(wave, B_1000B640, B_1000B940) == -1) && !keep_going) {
        unlinkTempFiles();
        exit(1);
    }
}


// #pragma GLOBAL_ASM("asm/functions/makerom/nameTempFiles.s")
void nameTempFiles();
//{
//    Wave* wave;
//    unsigned char* tmpdir;
//}
void nameTempFiles(void) {
    Wave* wave;
    char* tmpdir;

    if ((tmpdir = getenv("TMPDIR")) == NULL) {
        tmpdir = "/tmp";
    }
    for (wave = waveList; wave != NULL; wave = wave->next) {
        sprintf(wave->elspecFile, "%s/%sElspecXXXXXX", tmpdir, wave->name);
        mktemp(wave->elspecFile);
    }

    sprintf(B_1000B540, "%s/segmentXXXXXX", tmpdir);
    mktemp(B_1000B540);
    strcpy(B_1000B640, B_1000B540);
    strcat(B_1000B540, ".s");
    strcat(B_1000B640, ".o");

    sprintf(B_1000B740, "%s/entryXXXXXX", tmpdir);
    mktemp(B_1000B740);
    strcpy(B_1000B840, B_1000B740);
    strcat(B_1000B740, ".s");
    strcat(B_1000B840, ".o");

    sprintf(B_1000B940, "%s/objListXXXXXX", tmpdir);
    mktemp(B_1000B940);
}

// #pragma GLOBAL_ASM("asm/functions/makerom/unlinkTempFiles.s")
static void unlinkTempFiles();
//{
//    Wave* wave;
//}
static void unlinkTempFiles(void) {
    Wave* wave;

    if (!debug) {
        for (wave = waveList; wave != NULL; wave = wave->next) {
                unlink(wave->elspecFile);
        }
        unlink(B_1000B540);
        unlink(B_1000B640);
        unlink(B_1000B740);
        unlink(B_1000B840);
        unlink(B_1000B940);
    }
}

// #pragma GLOBAL_ASM("asm/functions/makerom/cleanup.s")
void cleanup(int sig);
//{
//}
void cleanup(int sig) {
    unlinkTempFiles();
    exit(1);
}

// #pragma GLOBAL_ASM("asm/functions/makerom/execCommand.s")
int execCommand(unsigned char* s);
//{
//    int status;
//}
int execCommand(unsigned char* s) {
    int status = system(s);

    if (status == -1) {
        fprintf(stderr, "makerom: cannot execute command: %s\n", sys_errlist[errno]);
        return -1;
    } else if (WIFEXITED(status) && (WEXITSTATUS(status) == 0)) {
        return 0;
    } else if (keep_going && WIFEXITED(status) && (WEXITSTATUS(status) == 1)) {
            return 1;
    } else {
        if (debug) {
            fprintf(stderr, "makerom: [%s] returned %d (%08x), errno=%d\n", s, WEXITSTATUS(status), status, errno);
        }
        return -1;
    }
}
