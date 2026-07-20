#ifndef MAIN_H
#define MAIN_H

#include <stdio.h>
#include <strings.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

#define SIZE 27
#define FAILURE 0
#define SUCCESS 1

// File list structure for command-line arguments validation
typedef struct node{
    char fname[20];
    struct node* link;
}Slist;

// Subnode structure to track individual file stats for a word
typedef struct subnode{
    int wc;
    char fname[20];
    struct subnode *slink;
}Snode;

// Mainnode structure representing unique words in the hash table
typedef struct mainnode{
    char word[20];
    int fcount;
    struct mainnode *mlink;
    Snode *slink;
}Mnode;

// Function Prototypes
int validate_backupfile(char* filename);
int insert_slist(Slist **head, char *filename); 
int read_validate(int argc, char *argv[], Slist **head);
int find_index(char *word);
Snode* create_snode(char *fname);
Mnode* create_mnode(char *word, char *fname);
int create_db(Mnode *arr[], Slist *head);
void display(Mnode *arr[]);
void search(Mnode *arr[], char *word);
void save_db(Mnode *arr[], char *filename); 
int update_db(Mnode *arr[], char *filename);
int validate_update_file(char *filename);
int check_filedb(Mnode *arr[], char *filename);

#endif

