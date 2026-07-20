#include "main.h"

/********************************************************************************************
 * Name               : Santhanaprakash
 * Batch ID           : 26001B_069
 * Title              : Inverted Search
 * Date               : 02.07.2026
 * 
 * Project Description:
 * An Inverted Index search engine database application implemented in C. The system 
 * processes multiple target text files passed via command-line arguments, tokenizes 
 * unique words, and maps them to a hash table using chaining. It records the total 
 * frequency of words and breaks down precisely how many times each word occurs across 
 * different file files. Features include real-time keyword searching, synchronized text 
 * table visualization, and aligned file data logging for backup states.
 ********************************************************************************************/

// Coordinates argument validation, system setup, and guides user interaction choices
int main(int argc, char* argv[]){
    
    Slist *head = NULL;
    if (read_validate(argc, argv, &head) == FAILURE){
        printf("Error : Validation failed.\n");
        return FAILURE;
    }

    Mnode *hash_table[SIZE] = {NULL};

    int choice;
    char w_search[20];
    char backup_file[20];
    int db_created = 0;
    
    while(1){
       printf("\n--- Menu ---\n");
       printf("1. Create Database\n2. Display\n3. Search\n4. Save\n5. update\n6. Exit\n");
       printf("Enter your choice : \n");

       if(scanf("%d", &choice) != 1){
            printf("Error : Invalid choice.\n");
            while (getchar()!= '\n');
            continue;
       }
       switch (choice){
            case 1:
                if (db_created){
                    printf("Warning : Database already created.\n");
                }else{
                    if(create_db(hash_table, head) == SUCCESS){
                        printf("Info : Database created successfully.\n");
                        db_created = 1;
                    }else{
                        printf("Error : Failed to create database.\n");
                    }
                }
                break;

            case 2:
                display(hash_table);
                break;

            case 3:
                printf("Enter the word to search : ");
                scanf("%19s", w_search);
                search(hash_table, w_search);
                break;

            case 4:
                printf("Enter the backup file name (eg. backup.txt) : ");
                scanf("%19s", backup_file);
                if(validate_backupfile(backup_file) == SUCCESS){
                save_db(hash_table, backup_file);
                }
                             
                break;
            case 5:
                printf("Enter the backup file name to update : ");
                scanf("%19s", backup_file);

                if (validate_update_file(backup_file) == SUCCESS){
                    if(update_db(hash_table, backup_file) == SUCCESS){
                        db_created = 1;
                    }else{
                        printf("Error : Database update failed.\n");
                    }
                }
                break;

            case 6 :
                printf("Exiting program. Bye!\n");
                return SUCCESS;

            default:
                printf("Error : Invalid choice.\n");
       }
    }
        return SUCCESS;

}
