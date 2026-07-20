#include <stdio.h>
#include <string.h>

#include "tag_reader.h"
#include "tag_edit.h"

/* Name       : M.Santhanaprakash
 * Batch id   : 26001_069
 * Title      : Mp3 Tag Reader
 * overview   : An MP3 Tag Reader is a systems-level software project focused on file I/O, binary data manipulation, and bitwise operations.
                Its primary job is to open an MP3 file, navigate past the compressed audio data, locate the ID3 metadata container, parse the binary headers, 
                and extract clean text information like Title, Artist, Album, Year, Genre, and Album Art.
 * Date       : 26.06.2026
 */
    
int main(int argc, char *argv[]){

    if(argc < 2){
        printf("Error : Invalid arguments\n");
        printf("Usage for view : %s -v <filename.mp3>\n", argv[0]); 
        printf("Usage for edit : %s -e <filename.mp3>\n", argv[0]); 
        return e_failure;
    }
    if (strcmp(argv[1], "-h") == 0) {
        printf("To view : -v\n");
        printf("To Edit : -e\n");
        printf("To edit title   : -t\n");
        printf("To edit artist  : -T\n");
        printf("To edit album   : -A\n");
        printf("To edit year    : -y\n");
        printf("To edit content : -c\n");
        printf("To edit comment : -C\n");
        return e_success;
    }

    char *option = argv[1];
    char *file = argv[2];

    if(strcmp(option, "-v") == 0){
        const char *frame_id[6] = {"TIT2", "TPE1", "TALB","TYER", "TCON", "COMM"};
        const char *labels[6]  = {"Title", "Artist", "Album", "Year", "Content", "Comment"};
        Mp3tag tag;

        for(int i=0; i<6; i++){

            strcpy(tag.tag_name, frame_id[i]);

            if(read_mp3_tag(file, &tag) == e_success){
                printf("%-9s : %s\n",labels[i], tag.tag_data);
            }else{
                printf("%-9s [%s] : Not found\n", labels[i], tag.tag_name);
            }

        } 

    }
    else if(strcmp(option, "-e") == 0){
        if(argc < 5){
            printf("Error : Missing arguments\n");
            printf("Usage : %s -e <filename> <option> <new_data>\n",argv[0]);
            return e_failure;
        }

        char *edit_option = argv[3];
        char *new_value = argv[4];

        Mp3Editor edit = {0};
        edit.new_data = new_value;

        if(strcmp(edit_option, "-t") == 0){
            strcpy(edit.target_tag, "TIT2");
        }else if(strcmp(edit_option, "-T") ==0){
            strcpy(edit.target_tag, "TPE1");
        }else if(strcmp(edit_option, "-A") == 0){
            strcpy(edit.target_tag, "TALB");
        }else if(strcmp(edit_option, "-y") == 0){
            strcpy(edit.target_tag, "TYER");
        }else if(strcmp(edit_option, "-c") == 0){
            strcpy(edit.target_tag, "TCON");
        }else if(strcmp(edit_option, "-C") == 0){
            strcpy(edit.target_tag, "COMM");
        }else{
            printf("Error : Invalid option '%s'. Use -h for help\n",edit_option);
            return e_failure;
        }

        printf("Info : Editing tag %s started...\n", edit.target_tag);
        if(edit_mp3_tag(file, &edit) == e_success){
            printf("Info : Saved successfully\n");
        }else{
            printf("Error : Editing failed\n");
            return e_failure;
        }


    } else{
        printf("Error : Invalid arguments\n");
        printf(" -v : To view mp3 tags\n");
        printf(" -e : To edit mp3 tags\n");
        return e_failure;
    }
    return 0;
}

