#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "tag_reader.h"
#include "tag_edit.h"



Status edit_mp3_tag(const char *src_fname, Mp3Editor *edit){
    edit -> fptr_sample = fopen(src_fname, "rb");

    if(edit -> fptr_sample == NULL){
        printf("Error : Failed to open source file\n");
        return e_failure;
    }

    edit -> fptr_temp = fopen("temp.mp3", "wb");

    if(edit -> fptr_temp == NULL){
        printf("Error : Failed to open file\n");
        return e_failure;
    }

    char header[10];
    fread(header, 1, 10, edit -> fptr_sample);
    fwrite(header, 1, 10, edit -> fptr_temp);

    char current_frame_id[5] = {0};
    unsigned int be_size = 0;

    while(1){
        if(fread(current_frame_id, 1, 4, edit -> fptr_sample) != 4){
            break;
        }
        current_frame_id[4] = '\0';

        if(current_frame_id[0] == '\0'){
            fwrite(current_frame_id, 1, 4, edit -> fptr_temp);
            break;
        }

        if(strcmp(current_frame_id, edit -> target_tag) == 0){
            fwrite(current_frame_id, 1, 4, edit -> fptr_temp);

            fread(&be_size, 1, 4, edit -> fptr_sample);
            unsigned int original_size_le = swap_endian(be_size);

            unsigned int new_size_le = strlen(edit -> new_data) + 1;
            unsigned int new_size_be = swap_endian(new_size_le);

            fwrite(&new_size_be, 1, 4, edit -> fptr_temp);

            char flag[3];
            fread(flag, 1, 3, edit -> fptr_sample);
            fwrite(flag, 1, 3, edit -> fptr_temp);

            fwrite(edit -> new_data, 1, strlen(edit -> new_data), edit -> fptr_temp);

            fseek(edit -> fptr_sample, original_size_le - 1, SEEK_CUR);
        }
        else{
            fwrite(current_frame_id, 1, 4, edit -> fptr_temp);
            fread(&be_size, 1, 4, edit -> fptr_sample);
            fwrite(&be_size, 1, 4, edit -> fptr_temp);

            unsigned int size_le = swap_endian(be_size);

            char flag[3];
            fread(flag, 1, 3, edit -> fptr_sample);
            fwrite(flag, 1, 3, edit -> fptr_temp);

            unsigned int datalen = size_le - 1;
            char *buffer = malloc(datalen);

            if(buffer != NULL){
                fread(buffer, 1, datalen, edit -> fptr_sample);
                fwrite(buffer, 1, datalen, edit -> fptr_temp);
                free(buffer);
            }

        }

    }
    char remaining_data[5000];
    int byte;

    while((byte = fread(remaining_data, 1, sizeof(remaining_data), edit -> fptr_sample)) > 0){
        fwrite(remaining_data, 1, byte, edit -> fptr_temp);
    }

    fclose(edit -> fptr_sample);
    fclose(edit -> fptr_temp);

    remove(src_fname);
    rename("temp.mp3", src_fname);

    return e_success;
}
