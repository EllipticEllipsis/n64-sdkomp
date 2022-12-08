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

// This file
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

// Data and bss

// D_10009200
static const sigaction_t act = { 0, cleanup, { { 0, 0, 0, 0 } }, { 0, 0 } };

static char segmentSymbolSource[255]; // B_1000B540
static char segmentSymbolObject[255]; // B_1000B640
static char entrySource[255];         // B_1000B740
static char entryObject[255];         // B_1000B840
static char objectListFile[255];      // B_1000B940

static char* romFile = "rom"; // D_10009220
static int checkOverlap = 1;  // D_10009224

static char* progName;        // B_1000BA40

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
    char CheckerBuf[255];
    char NameBuf[255];
    char* rootName;
    int quietMode = 0;

    progName = argv[0];

    if ((cppCmdCount = sysconf(_SC_ARG_MAX)) == -1) {
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
                checkOverlap = 0;
                continue;

            case 'r':
                romFile = optarg;
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
                    clockrate = 60850000; // 0x03A07F50
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

    if ((unlink(romFile) == -1) && (errno != ENOENT)) {
        fprintf(stderr, "makerom: %s: %s\n", romFile, sys_errlist[errno]);
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

    if (checkOverlap && checkOverlaps()) {
        createRom = 0;
    }

    nameTempFiles();

    sigaction(SIGHUP, &act, NULL);
    sigaction(SIGINT, &act, NULL);
    sigaction(SIGTERM, &act, NULL);

    if (debug) {
        printf("Creating segment symbol source file in %s\n", segmentSymbolSource);
    }

    if (createSegmentSymbols(segmentSymbolSource, segmentSymbolObject) == -1) {
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
            char gcordFileBuf[255];

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
        printf("Creating entry source file in %s\n", entrySource);
    }
    if (createEntryFile(entrySource, entryObject) == -1) {
        unlinkTempFiles();
        exit(1);
    }

    if (createRom) {
        if (debug) {
            printf("Extracting sections from ELF wave files");
            printf(" to create ROM image in %s\n", romFile);
        }
        if (createRomImage(romFile, entryObject) == -1) {
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
    char cmd[255];
    char buffer[255];
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
        fgets(buffer, 255, procPtr);
        fgets(buffer, 255, procPtr);
        fgets(buffer, 255, procPtr);
        fgets(buffer, 255, procPtr);
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
    char scratchFileName[255];
    struct stat buf;
    char errMessage[255];

    if ((bootFileName == NULL) && (gloadFindFile(scratchFileName, "/usr/lib/PR", "Boot") != NULL)) {
        bootFileName = scratchFileName;
    }
    if (bootFileName != NULL) {
        if ((bootFd = open(bootFileName, O_NOCTTY)) < 0) {
            sprintf(errMessage, "%s: unable to open %s", progName, bootFileName);
            perror(errMessage);
            exit(1);
        }
        if (fstat(bootFd, &buf) < 0) {
            sprintf(errMessage, "%s unable to stat %s", progName, bootFileName);
            perror(errMessage);
            close(bootFd);
            exit(1);
        }

        bootBuf = malloc(buf.st_size);
        if (bootBuf == NULL) {
            fprintf(stderr, "%s: unable to malloc buffer to hold %d bytes\n", progName, buf.st_size);
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
    char scratchFileName[255];
    struct stat buf;
    char errMessage[255];

    if ((pif2bootFileName == NULL) && (gloadFindFile(scratchFileName, "/usr/lib/PR", "pif2Boot") != NULL)) {
        pif2bootFileName = scratchFileName;
    }
    if (pif2bootFileName != NULL) {
        if ((pif2bootFd = open(pif2bootFileName, O_NOCTTY)) < 0) {
            sprintf(errMessage, "%s: unable to open %s", progName, pif2bootFileName);
            perror(errMessage);
            exit(1);
        }
        if (fstat(pif2bootFd, &buf) < 0) {
            sprintf(errMessage, "%s unable to stat %s", progName, pif2bootFileName);
            perror(errMessage);
            close(pif2bootFd);
            exit(1);
        }

        pif2bootBuf = malloc(buf.st_size);
        if (pif2bootBuf == NULL) {
            fprintf(stderr, "%s: unable to malloc buffer to hold %d bytes\n", progName, buf.st_size);
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
    char scratchFileName[255];
    struct stat buf;
    char errMessage[255];
    char nibbleString[2];
    int nibbleVal;
    int i;
    int readPtr;
    int retval;

    if ((headerFileName == NULL) && (gloadFindFile(scratchFileName, "/usr/lib/PR", "romheader") != NULL)) {
        headerFileName = scratchFileName;
    }
    if (headerFileName != NULL) {
        if ((headerFd = open(headerFileName, O_NOCTTY)) < 0) {
            sprintf(errMessage, "%s unable to open %s", progName, headerFileName);
            perror(errMessage);
            exit(1);
        }
        if (fstat(headerFd, &buf) < 0) {
            sprintf(errMessage, "%s unable to stat %s", progName, headerFileName);
            perror(errMessage);
            close(headerFd);
            exit(1);
        }
        headerWordAlignedByteSize = buf.st_size;
        headerBuf = malloc(headerWordAlignedByteSize);
        if (headerBuf == NULL) {
            fprintf(stderr, "%s: unable to malloc buffer to hold %d bytes\n", progName, headerWordAlignedByteSize);
            close(headerFd);
            exit(1);
        }

        nibbleString[1] = '\0';
        for (i = 0, readPtr = 0; readPtr < headerWordAlignedByteSize; i++, readPtr++) {
            retval = read(headerFd, nibbleString, 1);
            if (retval != 1) {
                fprintf(stderr, "%s: short read from %s.\n", progName, headerFileName);
                free(headerBuf);
                close(headerFd);
                exit(1);
            }

            if (nibbleString[0] == '\n') {
                if (++readPtr < headerWordAlignedByteSize) {
                    retval = read(headerFd, nibbleString, 1);
                    if (retval != 1) {
                        fprintf(stderr, "%s: short read from %s.\n", progName, headerFileName);
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
    char scratchFileName[255];
    struct stat buf;
    char errMessage[255];

    if (gloadFindFile(scratchFileName, "/usr/lib/PR", "font") != NULL) {
        fontFileName = scratchFileName;
    }
    if (fontFileName != NULL) {
        if ((fontFd = open(fontFileName, O_NOCTTY)) < 0) {
            sprintf(errMessage, "%s: unable to open %s", progName, fontFileName);
            perror(errMessage);
            exit(1);
        }
        if (fstat(fontFd, &buf) < 0) {
            sprintf(errMessage, "%s unable to stat %s", progName, fontFileName);
            perror(errMessage);
            close(fontFd);
            exit(1);
        }

        fontBuf = malloc(buf.st_size);
        if (fontBuf == NULL) {
            fprintf(stderr, "%s: unable to malloc buffer to hold %d bytes\n", progName, buf.st_size);
            close(fontFd);
            exit(1);
        }
        fontdataWordAlignedByteSize = buf.st_size;
        if (read(fontFd, fontBuf, fontdataWordAlignedByteSize) != fontdataWordAlignedByteSize) {
            sprintf(errMessage, "%s unable to read %s", progName, fontFileName);
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
        if (access(fullpath, R_OK) == 0) {
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
    if ((runLinker(wave, segmentSymbolObject, objectListFile) == -1) && !keep_going) {
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

    sprintf(segmentSymbolSource, "%s/segmentXXXXXX", tmpdir);
    mktemp(segmentSymbolSource);
    strcpy(segmentSymbolObject, segmentSymbolSource);
    strcat(segmentSymbolSource, ".s");
    strcat(segmentSymbolObject, ".o");

    sprintf(entrySource, "%s/entryXXXXXX", tmpdir);
    mktemp(entrySource);
    strcpy(entryObject, entrySource);
    strcat(entrySource, ".s");
    strcat(entryObject, ".o");

    sprintf(objectListFile, "%s/objListXXXXXX", tmpdir);
    mktemp(objectListFile);
}

static void unlinkTempFiles(void) {
    Wave* wave;

    if (!debug) {
        for (wave = waveList; wave != NULL; wave = wave->next) {
            unlink(wave->elspecFile);
        }
        unlink(segmentSymbolSource);
        unlink(segmentSymbolObject);
        unlink(entrySource);
        unlink(entryObject);
        unlink(objectListFile);
    }
}

// sigaction function
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
