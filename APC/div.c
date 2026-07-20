#include "apc.h"
// Calculates the quotient of two large numbers using repeated subtraction and long-division logic.
void division(node *head1, node *head2, node *tail2, node **headR, node **tailR){

    if (head2 != NULL && head2 -> data == 0 && head2 -> next == NULL){
        printf("Error : Division by Zero\n");
        exit(FAILURE);
    }

    if (compare_list(head1, head2) == OPERAND2){
        insert_last(headR, tailR, 0);
        return;
    }
    node *headOpr1 = NULL;
    node *tailOpr1 = NULL;
    node *tempL1 = head1;

    while (tempL1 != NULL){
        insert_last(&headOpr1, &tailOpr1, tempL1 -> data);
        remove_pre_zeros(&headOpr1);

        int sub_count = 0;
        while (compare_list(headOpr1, head2) == OPERAND1 || compare_list(headOpr1, head2) == SAME){
            node *headSR = NULL;
            node *tailSR = NULL;


            subtraction(tailOpr1, tail2, &headSR, &tailSR);
            delete_list(&headOpr1, &tailOpr1);

            headOpr1 = headSR;
            tailOpr1 = tailSR;
            remove_pre_zeros(&headOpr1);
            sub_count++;
        }
        insert_last(headR, tailR, sub_count);
        tempL1 = tempL1 -> next;

    }
    remove_pre_zeros(headR);
    delete_list(&headOpr1, &tailOpr1);
}



