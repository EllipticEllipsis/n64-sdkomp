#include "makerom.h"

// External declarations

int readCoff(char* fname, unsigned int* buf);

int createElspec(Wave* wave);
int runLinker(Wave* wave, char* symbolFile, char* objListFile);

int scanSegments();
int checkSizes();
int checkOverlaps();
int createSegmentSymbols(char* source, char* object);
int createRomImage(char* romFile, char* object);
int createEntryFile(char* source, char* object);

int yyparse();

// Data and bss

// static const sigaction_t act;

// static char segmentSymbolSource[255];

// static char segmentSymbolObject[255];

// static char entrySource[255];

// static char entryObject[255];

// static char objectListFile[255];

// static char romFile[] = "rom";

// static int checkOverlap = 1;

// static char* progName;

static sigaction_t D_10009200 = { 0 }; // Need to correct

static char B_1000B540[0x100]; // segmentSymbolSource
static char B_1000B640[0x100]; // segmentSymbolObject
static char B_1000B740[0x100]; // entrySource
static char B_1000B840[0x100]; // entryObject
static char B_1000B940[0x100]; // objectListFile

static char* D_10009220 = "rom"; // romFile
static int D_10009224 = 1;       // checkOverlap
static char* B_1000BA40;         // progName

Segment* segmentList = NULL;
Wave* waveList = NULL;

char* fileName;
char* bootEntryName;
char* bootStackName;
int bootStackOffset;

int debug = 0;
int cosim = 0;
int emulator = 0;

int loadMap;

int nofont = 0;

int gcord;

// Types of all these are not clear as yet
size_t* bootBuf;
char* headerBuf;
size_t* pif2bootBuf;
void* fontBuf;

int bootWordAlignedByteSize;     // size_t?
int pif2bootWordAlignedByteSize; // size_t?
int headerWordAlignedByteSize;   // size_t?
int fontdataWordAlignedByteSize;

int finalromSize = 0; // size_t?
char fillData = 0xFF;
int offset = 0;
int changeclock = 0;
unsigned int clockrate = 0;

// Have to use defines since an enum would show up in mdebug
#define IRIX_VERSION_53 0
#define IRIX_VERSION_62 1
#define IRIX_VERSION_63 2
#define IRIX_VERSION_64 3
#define IRIX_VERSION_UNKNOWN 4

int irixVersion;

extern FILE* yyin; // ?

int keep_going = 0;






static void usage();
static void getOsVersion();
static int checkIdoVersion(char* rootName);
static void printVersion();
static void getBootFile(char* bootFileName);
static void getPif2BootFile(char* pif2bootFileName);
static void getRomheaderFile(char* headerFileName);
static void getFontDataFile(char* fontFileName);
static char* gloadFindFile(char* fullpath, char* postRootSuffix, char* fname);
static void doWave(Wave* wave);
static void nameTempFiles();
static void unlinkTempFiles();
static void cleanup(int sig);
int execCommand(char* s);

int main(int argc, char** argv) {
    int c;
    FILE* f;
    Wave* wave;
    char* cppCmd;
    long cppCmdCount;
    int headerFd;
    int pif2bootFd;
    char* bootFileName = NULL;
    char* headerFileName = NULL;
    char* pif2bootFileName = NULL;
    char* fontFileName = NULL;
    int createRom = 1;
    char CheckerBuf[0x100];
    char NameBuf[0x100];
    char* rootName;
    int quietMode = 0;

    B_1000BA40 = argv[0];

    if ((cppCmdCount = sysconf(1)) == -1) {
        fprintf(stderr, "makerom: sysconf(_SC_ARG_MAX): %s\n", sys_errlist[errno]);
        exit(1);
    }

    if ((cppCmd = malloc(cppCmdCount)) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }

    sprintf(cppCmd, "/usr/lib/cpp -D_LANGUAGE_MAKEROM");
    cppCmdCount -= strlen(cppCmd) + 1;

    // Parse options
    while ((c = getopt(argc, argv, "D:I:U:cdeimnor:gb:h:p:s:f:O:C:QqVv")) != -1) {
        switch (c) {
            case 'D':
            case 'I':
            case 'U':
                cppCmdCount -= strlen(optarg) + 3;
                if (cppCmdCount <= 0) {
                    fprintf(stderr, "makerom: too many -[DIU] flags\n");
                    exit(1);
                }
                sprintf(cppCmd, "%s -%c%s", cppCmd, c, optarg);
                continue;

            case 'c':
                cosim = 1;
                continue;

            case 'd':
                debug = 1;
                continue;

            case 'g':
                gcord = 1;
                continue;

            case 'k':
                keep_going = 1;
                continue;

            case 'e':
                emulator = 1;
                continue;

            case 'm':
                loadMap = 1;
                continue;

            case 'n':
                nofont = 1;
                continue;

            case 'o':
                D_10009224 = 0;
                continue;

            case 'r':
                D_10009220 = optarg;
                continue;

            case 'b':
                bootFileName = optarg;
                continue;

            case 'h':
                headerFileName = optarg;
                continue;

            case 'p':
                pif2bootFileName = optarg;
                continue;

            case 's':
                finalromSize = strtol(optarg, 0, 0);
                continue;

            case 'f':
                fillData = strtol(optarg, 0, 0);
                continue;

            case 'O':
                offset = strtol(optarg, 0, 0);
                continue;

            case 'C':
                changeclock = 1;
                clockrate = strtol(optarg, 0, 0);
                if (clockrate == 0) {
                    clockrate = 60850000;
                }
                continue;

            case '?':
                usage();
                exit(1);

            case 'Q':
            case 'q':
                quietMode = 1;
                continue;

            case 'V':
            case 'v':
                printVersion();
                exit(1);
        }
    }

    // Check options
    if ((argc - optind) != 1) {
        usage();
        exit(1);
    }

    if ((cosim + emulator) > 1) {
        // "-i"?
        fprintf(stderr, "makerom: only specify one of -c, -e, or -i\n");
        exit(1);
    }

    getOsVersion();
    if (!quietMode) {
        printVersion();
    }

    getBootFile(bootFileName);
    getPif2BootFile(pif2bootFileName);
    getRomheaderFile(headerFileName);
    getFontDataFile(fontFileName);

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

    cppCmdCount -= strlen(fileName);
    if (cppCmdCount <= 0) {
        fprintf(stderr, "makerom: cpp command line too long\n");
        exit(1);
    }

    sprintf(cppCmd, "%s %s", cppCmd, fileName);
    if ((yyin = popen(cppCmd, "r")) == 0) {
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
        createRom = 0;
    }

    if (D_10009224 && checkOverlaps()) {
        createRom = 0;
    }

    nameTempFiles();
    sigaction(SIGHUP, &D_10009200, NULL);
    sigaction(SIGINT, &D_10009200, NULL);
    sigaction(SIGTERM, &D_10009200, NULL);

    if (debug) {
        printf("Creating segment symbol source file in %s\n", B_1000B540);
    }

    if (createSegmentSymbols(B_1000B540, B_1000B640) == -1) {
        unlinkTempFiles();
        exit(1);
    }

    for (wave = waveList; wave != NULL; wave = wave->next) {
        doWave(wave);
    }

    if ((rootName = getenv("ROOT")) == NULL) {
        rootName = "/";
    }

    if (irixVersion > IRIX_VERSION_53) {
        if (checkIdoVersion(rootName) < 2) {
            fprintf(stderr, "makerom: This IDO version is not compatible with the\n");
            fprintf(stderr, "         Nintendo64 development environment on this\n");
            fprintf(stderr, "         version of IRIX.\n");
            exit(1);
        }
        sprintf(CheckerBuf, "%s/usr/sbin/u64check -fmulmul:check:noforce:norepair", rootName);
    } else {
        sprintf(CheckerBuf, "%s/usr/sbin/r4300_check", rootName);
    }

    if (debug) {
        printf("Checking fmulmul status\n");
    }

    for (wave = waveList; wave != NULL; wave = wave->next) {
        sprintf(NameBuf, "%s %s", CheckerBuf, wave->name);
        if (debug) {
            printf("  %s\n", NameBuf);
        }
        if ((execCommand(NameBuf) == -1) && !keep_going) {
            unlinkTempFiles();
            exit(1);
        }
    }

    if (gcord) {
        sprintf(CheckerBuf, "%s/usr/lib/PR/gcord ", rootName);
        for (wave = waveList; wave != NULL; wave = wave->next) {
            char gcordFileBuf[0x100];

            sprintf(NameBuf, "%s %s", CheckerBuf, wave->name);
            if (debug) {
                printf("makerom: %s\n", NameBuf);
            }
            if ((execCommand(NameBuf) == -1) && !keep_going) {
                unlinkTempFiles();
                exit(1);
            }
            strcat(strcpy(gcordFileBuf, wave->name), ".cord");
            strcpy(wave->name, gcordFileBuf);
        }
    }

    if (debug) {
        printf("Creating entry source file in %s\n", B_1000B740);
    }
    if (createEntryFile(B_1000B740, B_1000B840) == -1) {
        unlinkTempFiles();
        exit(1);
    }

    if (createRom) {
        if (debug) {
            printf("Extracting sections from ELF wave files");
            printf(" to create ROM image in %s\n", D_10009220);
        }
        if (createRomImage(D_10009220, B_1000B840) == -1) {
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

    exit(createRom ? 0 : 1);
    return 0;
}

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

void getOsVersion(void) {
    char* cmd = "/sbin/uname -r";
    char buf[0x1000];
    FILE* procPtr;

    if ((procPtr = popen(cmd, "r")) != NULL) {
        fgets(buf, 0x1000, procPtr);
        pclose(procPtr);
        if (strcmp(buf, "5.3\n") == 0) {
            irixVersion = IRIX_VERSION_53;
        } else if (strcmp(buf, "6.2\n") == 0) {
            irixVersion = IRIX_VERSION_62;
        } else if (strcmp(buf, "6.3\n") == 0) {
            irixVersion = IRIX_VERSION_63;
        } else if (strcmp(buf, "6.4\n") == 0) {
            irixVersion = IRIX_VERSION_64;
        } else {
            irixVersion = IRIX_VERSION_UNKNOWN;
            fprintf(stderr, "makerom: Operating system not recognized.  Trying 6.x ...\n");
        }
    } else {
        fprintf(stderr, "makerom: Unable to find uname command!\n");
        exit(1);
    }
}

int checkIdoVersion(char* rootName) {
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
    if ((procPtr = popen(cmd, "r")) != NULL) { //! @bug `v70Found` used uninitialised if this is false
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

void printVersion(void) {
    if (irixVersion == IRIX_VERSION_53) {
        printf("Nintendo64 Makerom v2.2 for IRIX.\n");
    } else {
        printf("Nintendo64 Makerom v2.2 -BETA- for IRIX.\n");
    }
}

void getBootFile(char* bootFileName) {
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

void getPif2BootFile(char* pif2bootFileName) {
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

void getRomheaderFile(char* headerFileName) {
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

void getFontDataFile(char* fontFileName) {
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

static char* gloadFindFile(char* fullpath, char* postRootSuffix, char* fname) {
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

void cleanup(int sig) {
    unlinkTempFiles();
    exit(1);
}

int execCommand(char* s) {
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
