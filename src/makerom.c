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


// #pragma GLOBAL_ASM("asm/functions/makerom/main.s")
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

int yyparse();

static sigaction_t D_10009200 = { 0 }; // Need to correct
static char* D_10009220 = "rom";
static int D_10009224 = 1;
extern int changeclock;
extern int clockrate;
extern int cosim;
extern int debug;
extern int emulator;
extern char* fileName;
extern char fillData;
extern int finalromSize;
extern int gcord;
extern int loadMap;
extern int nofont;
extern int offset;
extern char* optarg;
extern int optind;
extern int yyin;

int main(int argc, unsigned char** argv) {
    int sp364;
    int pad;
    Wave* sp35C;
    char* sp358;
    int sp354;
    int pad2[2];
    char* sp348;
    char* sp344;
    char* sp340;
    int sp33C;
    int sp338;
    char sp238[0x100];
    char sp138[0x100];
    char* sp134;
    int sp130;
    char sp30[0x100];

    sp348 = NULL;
    sp344 = NULL;
    sp340 = NULL;
    sp33C = 0;
    sp338 = 1;
    sp130 = 0;
    B_1000BA40 = argv[0];

    if ((sp354 = sysconf(1)) == -1) {
        fprintf(stderr, "makerom: sysconf(_SC_ARG_MAX): %s\n", sys_errlist[errno]);
        exit(1);
    }

    if ((sp358 = malloc(sp354)) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }

    sprintf(sp358, "/usr/lib/cpp -D_LANGUAGE_MAKEROM");
    sp354 -= strlen(sp358) + 1;
    while ((sp364 = getopt(argc, argv, "D:I:U:cdeimnor:gb:h:p:s:f:O:C:QqVv")) != -1) {
        switch (sp364) {
            case 0x44:
            case 0x49:
            case 0x55:
                sp354 -= strlen(optarg) + 3;
                if (sp354 <= 0) {
                    fprintf(stderr, "makerom: too many -[DIU] flags\n");
                    exit(1);
                }
                sprintf(sp358, "%s -%c%s", sp358, sp364, optarg);
                continue;
            case 0x63:
                cosim = 1;
                continue;
            case 0x64:
                debug = 1;
                continue;
            case 0x67:
                gcord = 1;
                continue;
            case 0x6B:
                keep_going = 1;
                continue;
            case 0x65:
                emulator = 1;
                continue;
            case 0x6D:
                loadMap = 1;
                continue;
            case 0x6E:
                nofont = 1;
                continue;
            case 0x6F:
                D_10009224 = 0;
                continue;
            case 0x72:
                D_10009220 = optarg;
                continue;
            case 0x62:
                sp348 = optarg;
                continue;
            case 0x68:
                sp344 = optarg;
                continue;
            case 0x70:
                sp340 = optarg;
                continue;
            case 0x73:
                finalromSize = strtol(optarg, 0, 0);
                continue;
            case 0x66:
                fillData = strtol(optarg, 0, 0);
                continue;
            case 0x4F:
                offset = strtol(optarg, 0, 0);
                continue;
            case 0x43:
                changeclock = 1;
                clockrate = strtol(optarg, 0, 0);
                if (clockrate == 0) {
                    clockrate = 0x03A07F50;
                }
                continue;
            case 0x3F:
                usage();
                exit(1);
            case 0x51:
            case 0x71:
                sp130 = 1;
                continue;
            case 0x56:
            case 0x76:
                printVersion();
                exit(1);
        }
    }

    if ((argc - optind) != 1) {
        usage();
        exit(1);
    }
    if ((cosim + emulator) > 1) {
        fprintf(stderr, "makerom: only specify one of -c, -e, or -i\n");
        exit(1);
    }
    getOsVersion();
    if (sp130 == 0) {
        printVersion();
    }
    getBootFile(sp348);
    getPif2BootFile(sp340);
    getRomheaderFile(sp344);
    getFontDataFile(sp33C);

    if ((unlink(D_10009220) == -1) && (errno != 2)) {
        fprintf(stderr, "makerom: %s: %s\n", D_10009220, sys_errlist[errno]);
        exit(1);
    }

    fileName = argv[optind];
    if ((yyin = fopen(fileName, "r")) == 0) {
        fprintf(stderr, "makerom: %s: %s\n", fileName, sys_errlist[errno]);
        exit(1);
    }
    fclose(yyin);

    sp354 -= strlen(fileName);
    if (sp354 <= 0) {
        fprintf(stderr, "makerom: cpp command line too long\n");
        exit(1);
    }

    sprintf(sp358, "%s %s", sp358, fileName);
    if ((yyin = popen(sp358, "r")) == 0) {
        fprintf(stderr, "makerom: could not run cpp on %s: %s\n", fileName, sys_errlist[errno]);
        exit(1);
    }

    if (yyparse() != 0) {
        exit(1);
    }

    if (pclose(yyin) != 0) {
        exit(1);
    }

    if (scanSegments() == -1) {
        exit(1);
    }

    if (checkSizes() != 0) {
        sp338 = 0;
    }

    if ((D_10009224 != 0) && (checkOverlaps() != 0)) {
        sp338 = 0;
    }

    nameTempFiles();
    sigaction(1, &D_10009200, 0);
    sigaction(2, &D_10009200, 0);
    sigaction(0xF, &D_10009200, 0);

    if (debug) {
        printf("Creating segment symbol source file in %s\n", B_1000B540);
    }

    if (createSegmentSymbols(B_1000B540, B_1000B640) == -1) {
        unlinkTempFiles();
        exit(1);
    }

    for (sp35C = waveList; sp35C != NULL; sp35C = sp35C->next) {
        doWave(sp35C);
    }

    if ((sp134 = getenv("ROOT")) == NULL) {
        sp134 = "/";
    }

    if (irixVersion > 0) {
        if (checkIdoVersion(sp134) < 2) {
            fprintf(stderr, "makerom: This IDO version is not compatible with the\n");
            fprintf(stderr, "         Nintendo64 development environment on this\n");
            fprintf(stderr, "         version of IRIX.\n");
            exit(1);
        }
        sprintf(sp238, "%s/usr/sbin/u64check -fmulmul:check:noforce:norepair", sp134);
    } else {
        sprintf(sp238, "%s/usr/sbin/r4300_check", sp134);
    }

    if (debug) {
        printf("Checking fmulmul status\n");
    }

    for (sp35C = waveList; sp35C != NULL; sp35C = sp35C->next) {
        sprintf(sp138, "%s %s", &sp238, sp35C->name);
        if (debug) {
            printf("  %s\n", sp138);
        }
        if ((execCommand(sp138) == -1) && !keep_going) {
            unlinkTempFiles();
            exit(1);
        }        
    }

    if (gcord != 0) {
        sprintf(sp238, "%s/usr/lib/PR/gcord ", sp134);
        for (sp35C = waveList; sp35C != NULL; sp35C = sp35C->next) {
            sprintf(sp138, "%s %s", sp238, sp35C->name);
            if (debug) {
                printf("makerom: %s\n", sp138);
            }
            if ((execCommand(sp138) == -1) && !keep_going) {
                unlinkTempFiles();
                exit(1);
            }
            strcat(strcpy(sp30, sp35C->name), ".cord");
            strcpy(sp35C->name, sp30);            
        }
    }

    if (debug) {
        printf("Creating entry source file in %s\n", &B_1000B740);
    }
    if (createEntryFile(&B_1000B740, &B_1000B840) == -1) {
        unlinkTempFiles();
        exit(1);
    }

    if (sp338 != 0) {
        if (debug) {
            printf("Extracting sections from ELF wave files");
            printf(" to create ROM image in %s\n", D_10009220);
        }
        if (createRomImage(D_10009220, &B_1000B840) == -1) {
            unlinkTempFiles();
            exit(1);
        }
    }
    unlinkTempFiles();
    if (bootBuf != NULL) {
        free(bootBuf);
    }
    if (headerBuf != NULL) {
        free(headerBuf);
    }
    if (fontBuf != NULL) {
        free(fontBuf);
    }

    exit(sp338 ? 0 : 1);
    return 0;
}

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
