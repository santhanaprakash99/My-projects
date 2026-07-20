#include "apc.h"

// Validates command-line arguments to ensure inputs are formatted as valid numeric expressions.
int cla_validation(int argc, char *argv[]){
    if(argc != 4){
        printf("Error : Invalid arguments\n");
        return FAILURE;
    }
   if(strlen(argv[2]) != 1){
        printf("Error : Operator must be single character\n");
        return FAILURE;
   } 
   char op = argv[2][0];

   if(op != '+' && op != '-' && op != 'x' && op != '/'){
        printf("Error : Invalid operator '%c'. Supported operators are +, -, x, /.\n", op);
        return FAILURE;
   }

   char *opr1 = argv[1];

   if (*opr1 == '-' || *opr1 == '+'){
        opr1++;
   }

   if(*opr1 == '\0'){
        printf("Error : Operand  1 is missing digits\n");
        return FAILURE;
   }
   while(*opr1 != '\0'){
        if(!isdigit(*opr1)){
            printf("Error : Operand 1 must contain numeric charactes\n");
            return FAILURE;
        }
        opr1++;
   }
   char *opr2 = argv[3];

   if (*opr2 == '-' || *opr2 == '+'){
        opr2++;
   }

   if(*opr2 == '\0'){
        printf("Error : Operand  2 is missing digits\n");
        return FAILURE;
   }
   while(*opr2 != '\0'){
        if(!isdigit(*opr2)){
            printf("Error : Operand 2 must contain numeric charactes\n");
            return FAILURE;
        }
        opr2++;
   }
   return SUCCESS;

}

// Converts a string representation of numbers into a doubly linked list of digits.
void create_list(char *opr, node **head, node **tail){
    while(*opr != '\0'){
        int digit = *opr - '0';

        insert_last(head, tail, digit);
        opr++;
    }
}

// Inserts a new digit node at the beginning (head) of the doubly linked list.
int insert_first(node **head, node **tail, int data){
    node *new = malloc(sizeof(node));

    if(new == NULL){
        return FAILURE;
    }

    new -> data = data;
    new -> prev = NULL;
    new -> next = *head;

    if(*head == NULL){
        *tail = new;
    }else{
        (*head) -> prev = new;
    }
    *head = new;

    return SUCCESS; 
}

// Inserts a new digit node at the end (tail) of the doubly linked list.
int insert_last(node **head, node **tail, int data){
    node *new = malloc(sizeof(node));

    if(new == NULL){
        return FAILURE;
    }

    new -> data = data;
    new -> prev = *tail;
    new -> next = NULL;

    if(*head == NULL){
        *head = new;
    }else{
        (*tail) -> next = new;
    }
    *tail = new;
    return SUCCESS;
}

// Safely deallocates all memory nodes within a given doubly linked list.
int delete_list(node **head, node **tail){
    if (*head == NULL) return SUCCESS;

    node *temp = *head;
    while (temp != NULL)
    {
        node *next_node = temp->next;
        free(temp);
        temp = next_node;
    }

    *head = NULL;
    *tail = NULL;
    return SUCCESS;
}

// Traverses and prints each digit stored in the doubly linked list sequentially.
void print_list(node *head){
    if (head == NULL)
    {
        printf("0\n");
        return;
    }
    node *temp = head;
    while(temp != NULL){
        printf("%d", temp -> data);
        temp = temp -> next;
    }
    printf("\n");
}

// Counts and returns the total number of numeric digit nodes in the list.
int list_len(node *head){
    int count = 0;
    while(head != NULL){
        count ++;
        head = head -> next;
    }
    return count;
}

// Compares two linked list numbers to determine which one represents a greater numerical value.
int compare_list(node *head1, node *head2){
       int len1 = list_len(head1);
       int len2 = list_len(head2);

       if(len1 > len2){
            return OPERAND1;
       }

       if(len2 > len1) return OPERAND2;
    
       while(head1 != NULL){
        
           if(head1 -> data > head2 -> data) return OPERAND1;
           if(head2 -> data > head1 -> data) return OPERAND2;

           head1 = head1 -> next;
           head2 = head2 -> next;
        
       }
       return SAME;

}
// Trims unnecessary leading zeros from the head of the linked list number representation.
void remove_pre_zeros(node **head){
    while(*head != NULL && (*head) -> data == 0 && (*head) -> next != NULL){
       node *temp = *head;
       *head = (*head) -> next;
       (*head) -> prev = NULL;
       free(temp);
    }
}
