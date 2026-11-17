#include "minishell.h"

/* NAME          :  M.SANTHANAPRAKASH
 * BATCH_ID      :  26001_069
 * DATE          :  02.09.2026
 * PROJECT_TITLE :  MINISHELL
 * DESCRIPTION   :  Minishell is a minimal, POSIX-compliant Unix shell written in C. 
 *                  It mimics core Bash functionality to handle interactive user commands, 
 *                  process management, input/output redirection, and environment variable expansion.
 */

char prompt[25] = "minishell$:";
char input_string[50];

int main(){

    //To clear the screen of the minishell
    system("clear");

    extract_external_commands(external_commands);

    scan_input(prompt, input_string);

    return 0;
}
