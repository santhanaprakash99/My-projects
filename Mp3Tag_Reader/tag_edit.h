#ifndef EDIT_H
#define EDIT_H

#include <stdio.h>
#include "tag_reader.h"

typedef struct{
    FILE *fptr_sample;
    FILE *fptr_temp;
    char target_tag[5];
    char *new_data;
}Mp3Editor;

Status validate_mp3file(char *argv[]);

unsigned int swap_endian(unsigned int val);

Status edit_mp3_tag(const char *src_fname, Mp3Editor *edit);

#endif
