#include "minishell.h"
#include <stdio.h>
#include <string.h>

jobNode *head = NULL;

void insert_at_first(char *cmd, pid_t pid){

    jobNode *new = malloc(sizeof(jobNode));
    if(!new) return;

    new->pid = pid;
    strcpy(new->cmd, cmd);
    new->flag = 0;
    new->next = head;

    head = new;
}
void delete_first(){

    if(head == NULL){
        return;
    }
    jobNode *temp = head;
    head = head->next;
    free(temp);
}
void print_list(){

    if(head == NULL) return;
    jobNode *cur = head;
    int i = 1;
    while(cur != NULL){

        if(cur->flag){

            printf("[%d]+   Running           %s &\n", i++, cur->cmd);
        }else{
            printf("[%d]+   Stopped           %s\n", i++, cur->cmd);
        }
        cur = cur->next;
        
    }
}
