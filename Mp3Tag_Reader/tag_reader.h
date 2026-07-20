#ifndef TAG_READER_H
#define TAG_READER_H

typedef struct {
    char tag_name[5];
    char *tag_data;
    unsigned int data_size;
}Mp3tag;

typedef enum{
    e_success,
    e_failure
}Status;

unsigned int swap_endian(unsigned int value);

Status read_mp3_tag(const char *filename, Mp3tag *tag);


Status validate_mp3file(char *argv[]);

#endif
