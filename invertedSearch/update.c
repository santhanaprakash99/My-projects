#include "main.h"

// Scans the complete hash table structure to determine if a specific file name has already been registered.
int check_filedb(Mnode *arr[], char *filename){

    for(int i=0;i<SIZE; i++){
        Mnode *curr_m = arr[i];
        while (curr_m != NULL){
            Snode *curr_s = curr_m -> slink;
            while (curr_s != NULL){
                if (strcmp(curr_s -> fname, filename) == 0){
                    return SUCCESS;
                }
                curr_s = curr_s -> slink;
            }
            curr_m = curr_m -> mlink;
        }
    }
    return FAILURE;
}

// Validates that the backup file has a .txt extension, exists, is not empty, and has a valid structure format (#...#)
int validate_update_file(char *filename){

    char *extn = strrchr(filename, '.');
    if(extn == NULL || strcmp(extn, ".txt") != 0){
        printf("Error : Backup file must be a .txt file.\n");
        return FAILURE;
    }

    FILE *fp = fopen(filename, "r");
    if(fp == NULL){
        printf("Error : Backup file %s does not exist.\n",filename);
        return FAILURE;
    }
    fseek(fp, 0, SEEK_END);
    long size = ftell(fp);
    if (size == 0){
        printf("Error : Backup file %s is empty.\n", filename);
        fclose(fp);
        return FAILURE;
    }

    fseek(fp, 0, SEEK_SET);
    char first = fgetc(fp);

    fseek(fp, -2, SEEK_END);
    char last = fgetc(fp);
    if (last == '\n' || last == '\r'){
        fseek(fp, -3, SEEK_END);
        last = fgetc(fp);
    }
    fclose(fp);

    if (first != '#' || last != '#'){
        printf("Error : Backup file format is invalid.\n");
        return FAILURE;
    }
    return SUCCESS;

}

// Reconstructs the database from a backup file by safely parsing tokens and preventing duplicate insertions.
int update_db(Mnode *arr[], char *filename){

    FILE *fp = fopen(filename, "r");
    if (fp == NULL){
        printf("Error : Could not open backup file.\n");
        return FAILURE;
    }

    char line[1024];
    int data_update_flag = 0;

    while(fgets(line, sizeof(line), fp) != NULL){

        int len = strlen(line);
        if(len > 0 && line[len -1] == '\n'){
            line[len - 1] = '\0';
            len--;
        }

        if(len == 0) continue;

        char *token = strtok(line, "#;");
        if (!token) continue;
        int index = atoi(token);

        char *word = strtok(NULL, "#;");
        if (!word) continue;

        token = strtok(NULL, "#;");
        if (!token) continue;
        int fcount = atoi(token);

        for (int i = 0; i < fcount; i++) {
            char *fname = strtok(NULL, "#;");

            if (fname == NULL || strcmp(fname, "#") == 0) {
                break;
            }

            token = strtok(NULL, "#;");
            if (!token) break;
            int wc = atoi(token);


            if(arr[index] == NULL){
                Mnode *new = malloc(sizeof(Mnode));
                strcpy(new -> word, word);
                new -> fcount = 1;
                new -> mlink = NULL;

                new -> slink = create_snode(fname);
                new -> slink -> wc = wc;

                arr[index] = new;
                data_update_flag = 1;
            } else {
                Mnode *curr_m = arr[index];
                Mnode *temp_m = NULL;
                int wfound = 0;

                while (curr_m != NULL){
                    if (strcmp(curr_m -> word, word) == 0){
                        wfound = 1;

                        Snode *curr_s = curr_m -> slink;
                        Snode *temp_s = NULL;
                        int file_flag = 0;
                        while (curr_s != NULL){
                            if (strcmp(curr_s -> fname, fname) == 0){
                                file_flag = 1;
                                curr_s -> wc = wc;
                                break;
                            }
                            temp_s = curr_s;
                            curr_s = curr_s -> slink;
                        }
                        if (!file_flag){
                            Snode *new = create_snode(fname);
                            new -> wc = wc;
                            if(temp_s == NULL){
                                curr_m -> slink = new;
                            }else{
                                temp_s -> slink = new;

                            }
                            curr_m -> fcount++;
                            data_update_flag = 1;

                        }
                        break;
                    }

                    temp_m = curr_m;
                    curr_m = curr_m -> mlink;
                }

                if(!wfound){
                    Mnode *new = malloc(sizeof(Mnode));
                    strcpy(new -> word, word);
                    new -> fcount = fcount;
                    new -> mlink = NULL;

                    new -> slink = create_snode(fname);
                    new -> slink -> wc = wc;

                    temp_m -> mlink = new;
                    data_update_flag = 1;
                }
            }
        }
    }

    fclose(fp);
    if (data_update_flag == 0){
        printf("Warning : Database already updated.\n");
    }else{
        printf("Info : Database updated successfully!\n");
    }
    return SUCCESS;  
} 
