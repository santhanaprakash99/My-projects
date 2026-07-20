#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tag_reader.h"

unsigned int swap_endian(unsigned int value){
    return ((value >> 24) & 0x000000FF)  |
        ((value >> 8) & 0x0000FF00) |
        ((value << 8) & 0x00FF0000) |
        ((value << 24) & 0xFF000000);
}

Status validate_mp3file(char *argv[]){
    if(argv[2] == NULL){
        printf("Error : No file provided\n");
        return e_failure;
    }

    int len = strlen(argv[2]);

    if(len < 5){
        printf("Error : Invalid file type\n");
        return e_failure;
    }

    char *extn = argv[2] + (len -4);
    if(strcmp(extn, ".mp3") != 0){
        printf("Error : File must be a .mp3 file\n");
        return e_failure;
    }
    return e_success;

}


Status read_mp3_tag(const char *filename, Mp3tag *tag){
    FILE *file = fopen(filename, "rb" );

    if(file == NULL){
        return e_failure;
    }

    fseek(file, 10, SEEK_SET);

    char current_frame_id[5];
    unsigned int be_size = 0;
    while(1){
        if( fread(current_frame_id, 1, 4, file) != 4){
            fclose(file);
            return e_failure;
        }

        current_frame_id[4] = '\0';

        if(current_frame_id[0] == 0x00){
            fclose(file);
            return e_failure;
        }


        fread(&be_size, 1, 4, file);

        unsigned int le_size = swap_endian(be_size);

        if(strcmp(current_frame_id, tag -> tag_name) == 0){

            fseek(file, 3, SEEK_CUR);

            tag -> data_size = le_size - 1;

            tag -> tag_data = malloc(tag -> data_size+1);

            if(tag -> tag_data == NULL){
                fclose(file);
                return e_failure;
            }

            fread(tag -> tag_data, 1, tag -> data_size, file);
            tag -> tag_data[tag -> data_size] = '\0';

            fclose(file);
            return e_success;
        }else{
            fseek(file, 2 + le_size, SEEK_CUR);
        }

    }
    fclose(file);
    return e_failure;
}

