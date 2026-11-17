
#include "minishell.h"
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

char *external_commands[160] = {NULL};
extern int status;
extern char prompt[];
char *builtins[] = {"echo", "printf", "read", "cd", "pwd", "pushd", "popd", "dirs", "let", "eval",
    "set", "unset", "export", "declare", "typeset", "readonly", "getopts", "source", "fg", "bg", "jobs",
    "exit", "exec", "shopt", "caller", "true", "type", "hash", "bind", "help", "clear", NULL};

char *get_command(char *input_string){

    int len=0;

    // To find the len of the cmd.
    while(input_string[len] != ' ' && input_string[len] !='\0'){

        len++;
    }
    char *cmd = malloc(len + 1);

    for(int i=0; i<len; i++){
        cmd[i] = input_string[i];
    }
    cmd[len] = '\0'; 


    return cmd;
}

int check_command_type(char *command){

    if(command == NULL || command[0] == '\0'){

        return NO_COMMAND;
    }

    for(int i=0; builtins[i] != NULL; i++){

        if(strcmp(command, builtins[i]) == 0){

            return BUILTIN;
        }
    }

    for(int i=0; external_commands[i] != NULL; i++){

        if(strcmp(command, external_commands[i]) == 0){

            return EXTERNAL;
        }
    }
    return NO_COMMAND;
}

void extract_external_commands(char **external_commands){
    /* Extract the external cmds from the file */

    int fd = open("external_cmd.txt", O_RDONLY); 
    if(fd < 0) return;

    char ch;
    char buffer[100];
    int count = 0;
    int row =0;

    while(read(fd, &ch, 1) > 0){

        if(ch != '\n'){

            buffer[count++] = ch;
        }else if(count > 0){

            buffer[count] = '\0';

            external_commands[row] = malloc(count + 1);
            strcpy(external_commands[row], buffer);
            row++;
            count = 0; // reset character count.
        }
    }
    // Check if the last cmd not ends with \n
    if(count > 0){

        buffer[count] = '\0';

        external_commands[row] = malloc(count + 1);
        strcpy(external_commands[row], buffer);
        row++;
    }

    external_commands[row] = NULL;
    close(fd);
}

void execute_internal_commands(char *input_string){

    char *cmd = get_command(input_string);
    if(cmd == NULL) return;

    // 1. exit command
    if(strcmp(cmd, "exit") == 0){

        free(cmd);
        exit(0);
    }
    else if(strcmp(cmd, "pwd") == 0){

        char buff[50];
        if(getcwd(buff, sizeof(buff)) != NULL){
            printf("%s\n", buff);
        }else{
            perror("minishell: pwd");
        }
    }
    else if(strcmp(cmd, "cd") == 0){

        char *path = input_string + 2;

        while(*path == ' ') path++; // To remove leading space after cd cmd.

        if(*path == '\0'){
            path = getenv("HOME"); // If user only enter cd cmd - go to home dir.
        }

        if(chdir(path) == 0){
            printf("%s ", path);
        }else{

            perror("minishell: cd");
        }

    }else if(strcmp(cmd, "clear") == 0){

        system("clear");
    }
    else if (strcmp(cmd, "echo") == 0) {

        char *args = input_string + 4;
        while(*args == ' ') args++;

        if(strcmp(args, "$$") == 0){

            printf("%d\n", getpid());
        }else if (strcmp(args, "$?") == 0) {

            if(WIFEXITED(status)){

                printf("%d\n", WEXITSTATUS(status));
            }else if(WIFSIGNALED(status)){

                printf("%d\n", 128 + WTERMSIG(status));
            }else if(WIFSTOPPED(status)){

                printf("%d\n", 128 + WSTOPSIG(status));

            }
        }else if(strcmp(args, "$SHELL") == 0){

            printf("%s\n", getenv("SHELL"));
        }else{

            printf("%s\n", args);
        }
    }else if(strcmp(cmd, "jobs") == 0){

        print_list();
    }else if(strcmp(cmd, "fg") == 0){

        if(head != NULL){
            printf("%s\n", head->cmd);
            pid_t job_pid = head->pid;
            //delete_first(); // To remove data from linked list
            kill(job_pid, SIGCONT);
            waitpid(job_pid, &status, WUNTRACED);
            if(WIFEXITED(status) || WIFSIGNALED(status)){

                delete_first();
            }else if(WIFSTOPPED(status)){

                head->flag = 0;
            }

        }else{

            printf("%s fg: no current job\n", prompt);
        }
    }else if(strcmp(cmd, "bg") == 0){

        if(head != NULL){
            //signal(SIGCHLD, handler);
            printf("%s &\n", head->cmd);
            head->flag = 1;   
            pid_t job_pid = head->pid;
            //delete_first(); // To remove from linked list
            kill(job_pid, SIGCONT);
        }else {

            printf("%s bg: no current job\n", prompt);
        }
    }

}
void execute_external_commands(char *input_string){

    char *cmd[10][10];
    char buffer[100];
    int count = 0, row = 0, col = 0;
    for(int i=0;input_string[i] != '\0'; i++){

        if(input_string[i] != ' ' && input_string[i] != '|' && input_string[i] != '\0'){

            buffer[count++] = input_string[i];

        }else{

            if(count > 0){

                buffer[count] = '\0';
                cmd[row][col] = malloc(count + 1);
                strcpy(cmd[row][col], buffer);
                col++;
                count = 0;
            }

            if(input_string[i] == '|'){

                cmd[row][col] = NULL;
                row++;
                col = 0;
            }

        }
    }
    if(count > 0){

        buffer[count] = '\0';
        cmd[row][col] = malloc(count + 1);
        strcpy(cmd[row][col], buffer);
        col++;
    }

    cmd[row][col] = NULL; 
    if(cmd[0][0] == NULL){

        return;
    }
    //pipe present
    if(strchr(input_string, '|') != NULL){

        int pipefd[2];
        int stdin_backup = dup(STDIN_FILENO); 

        for (int i = 0; i <= row; i++) {

            // Create a pipe for all stages except the last command
            if (i < row) {
                if (pipe(pipefd) < 0) {
                    perror("minishell: pipe failed");
                    exit(EXIT_FAILURE);
                }
            }

            pid_t pid = fork();
            if (pid < 0) {
                perror("minishell: fork failed");
                exit(EXIT_FAILURE);
            }

            if (pid == 0) {

                if (i < row) {

                    dup2(pipefd[1], STDOUT_FILENO);
                    close(pipefd[0]);
                    close(pipefd[1]);
                }


                if (execvp(cmd[i][0], cmd[i]) < 0) {
                    perror("minishell");
                    exit(EXIT_FAILURE);
                }
            } 
            else {
                if (i < row) {

                    dup2(pipefd[0], STDIN_FILENO);
                    close(pipefd[1]);
                    close(pipefd[0]);
                }
            }
        }

        // Wait for all child process stages to complete
        for (int i = 0; i <= row; i++) {
            wait(NULL);
        }

        // Restore original STDIN back to normal
        dup2(stdin_backup, STDIN_FILENO);
        close(stdin_backup);


    }
    // pipe not present
    else{

        if(execvp(cmd[0][0], cmd[0]) < 0){

            perror("minishell");
        }
    }
    // Free memory
    for(int r=0; r<=row; r++){

        for(int c=0; cmd[r][c] != NULL; c++){

            free(cmd[r][c]);
        }
    }
}

