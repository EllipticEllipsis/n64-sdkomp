#include "makerom.h"

static const sigaction_t act;

static unsigned char segmentSymbolSource[255];

static unsigned char segmentSymbolObject[255];

static unsigned char entrySource[255];

static unsigned char entryObject[255];

static unsigned char objectListFile[255];

static unsigned char* romFile;

static int checkOverlap;

static unsigned char* progName;

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

#pragma GLOBAL_ASM("asm/functions/makerom/usage.s")
void usage();
//{
//}

#pragma GLOBAL_ASM("asm/functions/makerom/usage.s")
void getOsVersion();
//{
//    unsigned char* cmd;
//    unsigned char buf[4096];
//    FILE* procPtr;
//}

#pragma GLOBAL_ASM("asm/functions/makerom/checkIdoVersion.s")
int checkIdoVersion(unsigned char* rootName);
//{
//    int u64CheckFound;
//    int v70Found;
//    unsigned char cmd[255];
//    unsigned char buffer[255];
//    stat statBuffer;
//    FILE* procPtr;
//}

#pragma GLOBAL_ASM("asm/functions/makerom/printVersion.s")
void printVersion();
//{
//}

#pragma GLOBAL_ASM("asm/functions/makerom/getBootFile.s")
void getBootFile(unsigned char* bootFileName);
//{
//    int bootFd;
//    unsigned char scratchFileName[255];
//    stat buf;
//    unsigned char errMessage[255];
//}

#pragma GLOBAL_ASM("asm/functions/makerom/getPif2BootFile.s")
void getPif2BootFile(unsigned char* pif2bootFileName);
//{
//    int pif2bootFd;
//    unsigned char scratchFileName[255];
//    stat buf;
//    unsigned char errMessage[255];
//}

#pragma GLOBAL_ASM("asm/functions/makerom/getRomheaderFile.s")
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

#pragma GLOBAL_ASM("asm/functions/makerom/getFontDataFile.s")
void getFontDataFile(unsigned char* fontFileName);
//{
//    int fontFd;
//    unsigned char scratchFileName[255];
//    stat buf;
//    unsigned char errMessage[255];
//}

#pragma GLOBAL_ASM("asm/functions/makerom/gloadFindFile.s")
unsigned char* gloadFindFile(unsigned char* fullpath, unsigned char* postRootSuffix, unsigned char* fname);
//{
//    unsigned char* rootname;
//    unsigned char* rootpath;
//    int fd;
//    int try;
//}

#pragma GLOBAL_ASM("asm/functions/makerom/doWave.s")
void doWave(Wave* wave);
//{
//}

#pragma GLOBAL_ASM("asm/functions/makerom/nameTempFiles.s")
void nameTempFiles();
//{
//    Wave* wave;
//    unsigned char* tmpdir;
//}

#pragma GLOBAL_ASM("asm/functions/makerom/unlinkTempFiles.s")
static void unlinkTempFiles();
//{
//    Wave* wave;
//}

#pragma GLOBAL_ASM("asm/functions/makerom/cleanup.s")
void cleanup(int sig);
//{
//}

#pragma GLOBAL_ASM("asm/functions/makerom/execCommand.s")
int execCommand(unsigned char* s);
//{
//    int status;
//}
