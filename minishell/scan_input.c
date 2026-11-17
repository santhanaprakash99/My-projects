#include "minishell.h"
#include <ctype.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

extern char prompt[];
int status;
pid_t pid =0;
char current_input[100];
void handler(int signum){

    if(signum == SIGINT){

        if(pid == 0){
            printf("\n%s ", prompt);
            fflush(stdout);
        }
    }
    if(signum == SIGTSTP){

        if(pid == 0){
            printf("\n%s ", prompt);
            fflush(stdout);
        }/*else{

            insert_at_first(current_input, pid);
            fflush(stdout);
        }*/
    }
    if(signum == SIGCHLD){

        waitpid(-1, &status, WNOHANG);
    }
}

void scan_input(char *prompt, char *input_string){

    signal(SIGINT, handler);
    signal(SIGTSTP, handler);

    while (1) {

        //print the prompt
        printf("%s ", prompt);
        //fflush(stdout);

        //to clear the old cmd history
        input_string[0] = '\0';
        //read the input
        scanf("%[^\n]", input_string);

        //clear the buffer for \n
        getchar();
        strcpy(current_input, input_string);

        //Validating the prompt msg
        if(strncmp(input_string, "PS1=", 4) == 0){

            char *new_prompt = input_string + 4;
            // Removing the leading space.
            while(isspace(*new_prompt)){

                new_prompt++;
            }
            // Removing the trailing space.
            int len = strlen(new_prompt);
            while(len > 0 && isspace(new_prompt[len - 1])){

                new_prompt[len - 1] = '\0';
                len --;
            }
            // Copy the user prompt to prompt.
            strcpy(prompt, new_prompt);
            continue;
        }
        char *cmd = get_command(input_string);
        // Check the cmd type
        int type = check_command_type(cmd);

        if(type == BUILTIN){

            execute_internal_commands(input_string);
        }else if(type == EXTERNAL){

            pid = fork();

            if(pid < 0){

                perror("fork failed");
                exit(1);
            }

            if(pid > 0){


                waitpid(pid, &status, WUNTRACED);
    
                if(WIFSTOPPED(status)){


                        insert_at_first(current_input, pid);
                }

            }

            if(pid == 0){

                signal(SIGINT, SIG_DFL);
                signal(SIGTSTP, SIG_DFL);
                execute_external_commands(input_string);
                exit(EXIT_FAILURE);
            }
        }else{

            if(cmd != NULL && cmd[0] != '\0'){

                printf("command %s not found\n", cmd);
            }
        }
        pid = 0; // to tell the parent child process compplete.
        free(cmd);
    }
}

