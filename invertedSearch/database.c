#include "main.h"
// Helps to find hash table index based on the first letter of the word (0-25 for a-z, 26 for others)
int find_index(char *word){
    
    int index = tolower(word[0]) - 97;

    if (index < 0 || index > 25 ){
        return 26;
    }
    return index;
}

/**
 * Function to insert a file into the Slist.
 * Returns Success if added successfully, or Failure if it's a duplicate.
 */

int insert_slist(Slist **head, char *filename){
    Slist *curr = *head;
    Slist *prev = NULL;

    while(curr != NULL){
        if(strcmp(curr -> fname, filename) == 0){
            return FAILURE;
        }
        prev = curr;
        curr = curr -> link;
    }
    Slist *new = malloc(sizeof(Slist));
    if(new == NULL){
        return FAILURE;
    }

    strcpy(new -> fname, filename);
    new -> link = NULL;

    if (*head == NULL){
        *head = new;
    }else{
        prev -> link = new;
    }
    return SUCCESS;
}

/**
 * Function helps to validates command-line arguments.
 * Fills the Slist head pointer with validated filenames.
 */
int read_validate(int argc, char *argv[], Slist **head){
    if (argc < 2){
        printf("Error : No files passed.\n");
        printf("Usage : ./a.out <file1.txt> <file2.txt>...\n");
        return FAILURE;
    }

    for(int i=1;i<argc;i++){

        char *ext = strrchr(argv[i], '.');
        if(ext == NULL || strcmp(ext, ".txt") != 0){
            printf("Warniing : File %s skipped. Only .txt files are allowed\n", argv[i]);
            continue;
        }

        FILE *fp = fopen(argv[i], "r");
        if(fp == NULL){
            printf("Error : File %s cannot be opened\n",argv[i]);
            continue;
        }

        fseek(fp, 0, SEEK_END);
        long size = ftell(fp);
        fclose(fp);

        if(size == 0){
            printf("Warning : File %s is skipped(file is empty).\n",argv[i]);
            continue;
        }
        if(insert_slist(head, argv[i]) == FAILURE){
            printf("Warning : Duplicate file '%s' dropped.\n", argv[i]);
        }else{
            printf("Info : File %s is validated and added.\n", argv[i]);
        }

    }
    if(*head == NULL){
        printf("Error : No valid file found.\n"); 
        return FAILURE;
    }
    return SUCCESS;
}

// Dynamically allocates and initializes a child file subnode (Snode)
Snode* create_snode (char *fname){
    
    Snode *new_sub = malloc(sizeof(Snode));

    if (new_sub == NULL) return NULL;

    new_sub -> wc = 1;
    strcpy(new_sub -> fname, fname);
    new_sub -> slink = NULL;
    return new_sub;
}

// Dynamically allocates and initializes a main word node (Mnode) with its first subnode.
Mnode* create_mnode (char *word, char *fname){ 
    
    Mnode *new_main = malloc(sizeof(Mnode));

    if (new_main == NULL) return NULL;
    
    strcpy(new_main -> word, word);
    new_main -> fcount = 1;
    new_main -> mlink = NULL;
    new_main -> slink = create_snode(fname);

    return new_main;

}

// Reads words from validated files and constructs the inverted index hash table database.
int create_db(Mnode *arr[], Slist *head){
    if (head == NULL) {
        printf("Error : No files available.\n");
        return FAILURE;
    }
    
    Slist *current = head;
    char word[20];
    int check_db_empty = 1;
    while (current != NULL) {
        if (check_filedb(arr, current -> fname)){
            printf("Warning : File %s is skipped (already updated/presented in database.\n)", current -> fname);
            current = current -> link;
            continue;
        }
        FILE *fp = fopen(current->fname, "r");
        if (fp == NULL) {
            printf("Error : Could not open file %s\n", current->fname);
            current = current->link;
            continue;
        }
        check_db_empty = 0;

        while (fscanf(fp, "%19s", word) != EOF) {
            int index = find_index(word);
            Mnode *curr_m = arr[index];
            Mnode *prev_m = NULL;
            int wfound = 0;

            while (curr_m != NULL) {
                if (strcasecmp(curr_m->word, word) == 0) {
                    wfound = 1;
                    Snode *curr_s = curr_m->slink;
                    Snode *prev_s = NULL;
                    int ffound = 0;

                    while (curr_s != NULL) {
                        if (strcmp(curr_s->fname, current->fname) == 0) {
                            curr_s->wc++;
                            ffound = 1;
                            break;
                        }
                        prev_s = curr_s;
                        curr_s = curr_s->slink;
                    }
                    if (!ffound) {
                        Snode *new = create_snode(current->fname);
                        if(new == NULL){
                            printf("Error : Memory allocation failed for subnode.\n");
                            fclose(fp);
                            return FAILURE;
                        }
                        prev_s -> slink = new;
                        curr_m->fcount++;
                    }
                    break; 
                }
                prev_m = curr_m;
                curr_m = curr_m->mlink;
            }

            if (!wfound) {
                Mnode *new_node = create_mnode(word, current->fname);
                if(new_node == NULL){
                    printf("Error : Memory allocation failed for main node.\n");
                    fclose(fp);
                    return FAILURE;
                }
                if (prev_m == NULL) {
                    arr[index] = new_node;
                } else {
                    prev_m->mlink = new_node;
                }
            }
        }
        
        fclose(fp); 
        current = current->link; 
    }
    return SUCCESS;
}

// Prints the complete database contents in a clean aligned table format.
void display(Mnode *arr[]){

    printf("Database loaded successfully...\n");

   printf("+-------+---------------------+------------+---------------------+------------+\n");
    printf("| %-5s | %-19s | %-10s | %-19s | %-10s |\n", "Index", "Word", "File Count", "File Name", "Word Count");
    printf("+-------+---------------------+------------+---------------------+------------+\n");

    for (int i = 0; i < 27; i++) {
        if (arr[i] != NULL) {
            Mnode *curr_m = arr[i];

            while (curr_m != NULL) {
                Snode *curr_s = curr_m->slink;
                int first_file = 1;

                while (curr_s != NULL) {
                    if (first_file) {
                        // Print the complete row including main node info for the first file
                        printf("| [%-3d] | %-19s | %-10d | %-19s | %-10d |\n", 
                               i, curr_m->word, curr_m->fcount, curr_s->fname, curr_s->wc);
                        first_file = 0;
                    } else {
                        // Leave Index, Word, and File Count columns blank for subsequent files
                        printf("| %-5s | %-19s | %-10s | %-19s | %-10d |\n", 
                               "", "", "", curr_s->fname, curr_s->wc);
                    }
                    curr_s = curr_s->slink;
                }
                printf("+-------+---------------------+------------+---------------------+------------+\n");
                curr_m = curr_m->mlink;
            } 
        }
    } 
}

// Searches for a specific word in the database and prints its file occurrences if found.
void search(Mnode *arr[], char *word){
    int index = find_index(word);

    Mnode *curr_m = arr[index];

    while(curr_m != NULL){
        
        if (strcasecmp(curr_m -> word, word) == 0){
            printf("Word %s is present in %d files\n",curr_m -> word, curr_m ->fcount);

            Snode *curr_s = curr_m -> slink;
            while(curr_s != NULL){
                printf("%s -> %d\n", curr_s -> fname, curr_s -> wc);
                curr_s = curr_s -> slink;
            }
            return;
        }
        
    curr_m = curr_m -> mlink;
    }
    printf("Error : Word %s is not present in any files\n", word); 
}
//validate the backup file  
int validate_backupfile(char* filename){
    char  *extn = strrchr(filename, '.');
    if (extn == NULL || strcmp(extn,".txt") != 0){
        printf("Error : Backup file must be a .txt file.\n");
        return FAILURE;
    }
    FILE *fp = fopen(filename, "r");
        if(fp == NULL){
            return SUCCESS;
        }

        fseek(fp, 0, SEEK_END);
        long size = ftell(fp);
        fclose(fp);

        if(size != 0){
            printf("Warning : Backup File %s is skipped(file already contains some data).\n", filename);
            return FAILURE;
        }

    return SUCCESS;


}
// Exports database contents to an aligned text file backup destination.
void save_db(Mnode *arr[], char *filename){
    
    FILE *fp = fopen(filename, "w");

    if(fp == NULL){
        printf("Error : Could not create backup file %s", filename);
        return;
    }

    for(int i=0; i<27; i++){
        if(arr[i] != NULL){
            Mnode *curr_m = arr[i];

            while(curr_m != NULL){
                fprintf(fp, "#%d;%s;%d;", i, curr_m -> word, curr_m -> fcount);
                Snode *curr_s = curr_m->slink;

                while(curr_s != NULL){
                    fprintf(fp, "%s;%d;", curr_s -> fname, curr_s -> wc);
                    curr_s = curr_s->slink;
                }
                fprintf(fp, "#\n");
                curr_m = curr_m->mlink;
            }
        }
    }
    fclose(fp);
    printf("Database saved successfully!\n"); 
}
