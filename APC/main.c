#include "apc.h"

/* Name           : Santhanaprakash M
 * Batch          : 26001B_069
 * Title          : Arbitrary Precision Calculator.
 * Description    : Developed a command-line-driven "Big-Integer" calculator in C 
 *                  designed to bypass the standard primitive data type limits (like 64-bit long long). 
 *                  The application handles arithmetic operations on numbers of arbitrary lengths (hundreds or thousands of digits)
 *                  by dynamically storing digits inside a custom-built Doubly Linked List structure.
 */

// Entry point of the calculator program that orchestrates input processing, operations, and formatting signs. 
int main(int argc, char *argv[])
{
    node *head1 = NULL, *tail1 = NULL, *head2 = NULL, *tail2 = NULL, *headR = NULL, *tailR = NULL;

    // Validation
    if(cla_validation(argc, argv) == FAILURE){
        printf("Error : Usage - ./a.out <oprand1> <operator> <operand2>\n");
        return FAILURE;
    }
    int sign1 = 0, sign2 = 0;
    char *op1 = argv[1];
    char *op2 = argv[3];

    if (op1[0] == '-'){
        sign1 = 1;
        op1++;
    }else if(op1[0] == '+'){
        op1++;
    }
    if (op2[0] == '-'){
        sign2 = 1;
        op2++;
    }else if(op2[0] == '+'){
        op2++;
    }


    create_list(op1, &head1, &tail1);
    create_list(op2, &head2, &tail2); 

    char oper = argv[2][0];

    switch(oper)
    {
        case '+':
            if (sign1 == 0 && sign2 == 0){
                 addition(tail1, tail2, &headR, &tailR);
                 printf("Result : ");
            }
            else if(sign1 == 1 && sign2 == 1){
                addition(tail1, tail2, &headR, &tailR);
                printf("Result : -");
            }
            else{
                int order = compare_list(head1, head2);
                if (order == SAME){
                    insert_last(&headR, &tailR, 0);
                    printf("Result : ");
                }else if (order == OPERAND1){
                    subtraction(tail1, tail2, &headR, &tailR);
                    if (sign1 == 1){
                        printf("Result : -");
                    }else{
                        printf("Result : ");
                    }
                }else{
                    subtraction(tail2, tail1, &headR, &tailR);
                    if (sign2 == 1){
                        printf("Result : -");
                    }else{
                        printf("Result : ");
                    }
                }
            }
            print_list(headR); 
            break;

        case '-':
            sign2 = !sign2;

            int order = compare_list(head1, head2);
            if (sign1 == 0 && sign2 == 0){
                addition(tail1, tail2, &headR, &tailR);
                printf("Result : ");
            }else if(sign1 == 1 && sign2 == 1){
                addition(tail1, tail2, &headR, &tailR);
                printf("Result : -");
            }else{
            if(order == SAME){
                insert_last(&headR, &tailR, 0);
                printf("Result : ");
            }else if (order == OPERAND1){
                subtraction (tail1, tail2, &headR, &tailR);
                if (sign1 == 1){
                    printf("Result : -");
                }else{
                    printf("Result : ");
                }
            }else{
                subtraction(tail2, tail1, &headR, &tailR);
                if (sign2 == 1){
                    printf("Result : -");
                }else{
                    printf("Result : ");
                }

            }
            }
            remove_pre_zeros(&headR);
            print_list(headR);

            break;

        case 'x':
        case 'X':
            if (sign1 != sign2){
                if ((head1 -> data == 0 && head1 -> next == NULL) || head2 -> data == 0 && head2 -> next == NULL ){
                    printf("Result : ");
                }else{
                    printf("Result : -");
                }
            }else{
                    printf("Result : ");
            }

            multiplication(tail1, tail2, &headR, &tailR);
            remove_pre_zeros(&headR);
            print_list(headR);
            break;

        case '/':
            if (head2 != NULL && !(head2 -> data == 0 && head2 -> next == NULL)){
                if (compare_list(head1, head2) == OPERAND2){
                    printf("Result : ");
                }else if (sign1 != sign2){
                    printf("Result : -");
                }else{
                    printf("Result : "); 
                }
            }
            division(head1, head2, tail2, &headR, &tailR);
            print_list(headR); 
            break;

        default:
            printf("Invalid operator\n");
    }
}

