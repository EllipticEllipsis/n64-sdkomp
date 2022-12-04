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

void usage();
//{
//}

void getOsVersion();
//{
//    unsigned char* cmd;
//    unsigned char buf[4096];
//    FILE* procPtr;
//}

int checkIdoVersion(unsigned char* rootName);
//{
//    int u64CheckFound;
//    int v70Found;
//    unsigned char cmd[255];
//    unsigned char buffer[255];
//    stat statBuffer;
//    FILE* procPtr;
//}

void printVersion();
//{
//}

void getBootFile(unsigned char* bootFileName);
//{
//    int bootFd;
//    unsigned char scratchFileName[255];
//    stat buf;
//    unsigned char errMessage[255];
//}

void getPif2BootFile(unsigned char* pif2bootFileName);
//{
//    int pif2bootFd;
//    unsigned char scratchFileName[255];
//    stat buf;
//    unsigned char errMessage[255];
//}

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

void getFontDataFile(unsigned char* fontFileName);
//{
//    int fontFd;
//    unsigned char scratchFileName[255];
//    stat buf;
//    unsigned char errMessage[255];
//}

unsigned char* gloadFindFile(unsigned char* fullpath, unsigned char* postRootSuffix, unsigned char* fname);
//{
//    unsigned char* rootname;
//    unsigned char* rootpath;
//    int fd;
//    int try;
//}

void doWave(Wave* wave);
//{
//}

void nameTempFiles();
//{
//    Wave* wave;
//    unsigned char* tmpdir;
//}

void unlinkTempFiles();
//{
//    Wave* wave;
//}

void cleanup(int sig);
//{
//}

int execCommand(unsigned char* s);
//{
//    int status;
//}
