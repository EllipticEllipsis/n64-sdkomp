#include "makerom.h"

// makerom.c
extern int debug;
extern int loadMap;

int execCommand(char* s);

// Converts a wave's segment chain into an elspec file.
int createElspec(Wave* wave) {
    FILE* f;
    SegmentChain* sc;
    Segment* s;
    Path* p;

    if ((f = fopen(wave->elspecFile, "w")) == NULL) {
        fprintf(stderr, "makerom: %s: cannot create\n", wave->elspecFile);
        return -1;
    }
    fprintf(f, "$ignoreoverlaps = true\n\n");

    for (sc = wave->segmentChain; sc != NULL; sc = sc->next) {
        s = sc->segment;

        // Skip any segments that are not OBJECTs
        if (!(s->flags & SEG_FLAG_OBJECT)) {
            continue;
        }

        // .text
        fprintf(f, "beginseg\n");
        fprintf(f, "\tsegtype LOAD\n");
        fprintf(f, "\tsegflags R X\n");
        fprintf(f, "\tvaddr 0x%x\n", s->address);
        fprintf(f, "\tcontents\n");
        fprintf(f, "\tbeginscn .%s.text\n", s->name);
        fprintf(f, "\t\tscntype PROGBITS\n");
        if (s->textAlign != 0) {
            fprintf(f, "\t\tscnalign %d\n", s->textAlign);
        }
        fprintf(f, "\t\tscnflags ALLOC EXECINSTR\n");
        for (p = s->pathList; p != NULL; p = p->next) {
            fprintf(f, "\t\tsection .text in object %s\n", p->name);
        }
        fprintf(f, "\tendscn\n");

        // .data and .rodata
        fprintf(f, "\tbeginscn .%s.data\n", s->name);
        fprintf(f, "\t\tscntype PROGBITS\n");
        if (s->dataAlign != 0) {
            fprintf(f, "\t\tscnalign %d\n", s->dataAlign);
        }
        fprintf(f, "\t\tscnflags ALLOC WRITE\n");
        for (p = s->pathList; p != NULL; p = p->next) {
            fprintf(f, "\t\tsection .data in object %s\n", p->name);
            fprintf(f, "\t\tsection .rodata in object %s\n", p->name);
        }
        fprintf(f, "\tendscn\n");

        // .sdata
        fprintf(f, "\tbeginscn .%s.sdata\n", s->name);
        fprintf(f, "\t\tscntype PROGBITS\n");
        if (s->sdataAlign != 0) {
            fprintf(f, "\t\tscnalign %d\n", s->sdataAlign);
        }
        fprintf(f, "\t\tscnflags GPREL ALLOC WRITE\n");
        for (p = s->pathList; p != NULL; p = p->next) {
            fprintf(f, "\t\tsection .sdata in object %s\n", p->name);
        }
        fprintf(f, "\tendscn\n");

        // .sbss
        fprintf(f, "\tbeginscn .%s.sbss\n", s->name);
        fprintf(f, "\t\tscntype NOBITS\n");
        if (s->sbssAlign != 0) {
            fprintf(f, "\t\tscnalign %d\n", s->sbssAlign);
        }
        fprintf(f, "\t\tscnflags GPREL ALLOC WRITE\n");
        for (p = s->pathList; p != NULL; p = p->next) {
            fprintf(f, "\t\tsection .sbss in object %s\n", p->name);
        }
        fprintf(f, "\tendscn\n");

        // .bss
        fprintf(f, "\tbeginscn .%s.bss\n", s->name);
        fprintf(f, "\t\tscntype NOBITS\n");
        if (s->bssAlign != 0) {
            fprintf(f, "\t\tscnalign %d\n", s->bssAlign);
        }
        fprintf(f, "\t\tscnflags ALLOC WRITE\n");
        for (p = s->pathList; p != NULL; p = p->next) {
            fprintf(f, "\t\tsection .bss in object %s\n", p->name);
        }
        fprintf(f, "\tendscn\n");
        fprintf(f, "endseg\n");
    }

    // .MIPS.options
    fprintf(f, "beginseg\n");
    fprintf(f, "\tsegtype noload\n");
    fprintf(f, "\tcontents\n");
    fprintf(f, "\tdefault\n");
    fprintf(f, "\tbeginscn .MIPS.options\n");
    fprintf(f, "\t\tscntype 0x7000000d\n");
    fprintf(f, "\t\tsection .MIPS.options in ldobj\n");
    fprintf(f, "\tendscn\n");
    fprintf(f, "\tbeginscn .reginfo\n");
    fprintf(f, "\t\tscntype 0x70000006\n");
    fprintf(f, "\t\tsection .reginfo in ldobj\n");
    fprintf(f, "\tendscn\n");
    fprintf(f, "endseg\n");

    fclose(f);
    return 0;
}

int runLinker(Wave* wave, char* symbolFile, char* objListFile) {
    char* cmd;
    SegmentChain* sc;
    Segment* s;
    Path* p;
    FILE* objfd;

    if ((cmd = malloc(sysconf(_SC_ARG_MAX))) == NULL) {
        fprintf(stderr, "malloc failed\n");
        return -1;
    }
    strcpy(cmd, "$ROOT/usr/lib/PR/nld -g -non_shared -G 0 -elspec ");
    strcat(cmd, wave->elspecFile);
    strcat(cmd, " -rom ");
    if (loadMap) {
        strcat(cmd, " -m ");
    }
    strcat(cmd, " -o ");
    strcat(cmd, wave->name);
    strcat(cmd, " ");
    strcat(cmd, symbolFile);
    strcat(cmd, " -objectlist ");
    strcat(cmd, objListFile);

    objfd = fopen(objListFile, "w");

    for (sc = wave->segmentChain; sc != NULL; sc = sc->next) {
        s = sc->segment;

        if (!(s->flags & SEG_FLAG_OBJECT)) {
            continue;
        }

        for (p = s->pathList; p != NULL; p = p->next) {
            fprintf(objfd, "%s\n", p->name);
        }
    }
    
    fclose(objfd);

    if (debug) {
        printf("Linking to ELF wave file\n");
        printf("  %s\n", cmd);
    }
    return execCommand(cmd);
}
