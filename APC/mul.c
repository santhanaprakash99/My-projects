#include "apc.h"
// Multiplies two large numbers by shifting and adding partial products, similiar to manual pen-and-paper multiplication.
void multiplication(node *tail1, node *tail2, node **headR, node **tailR)
{
        *headR = NULL;
        *tailR = NULL;

        node *t2 = tail2;
        int shift = 0;

        while(t2 != NULL){
            node *t1 = tail1;
            node *current_head = NULL;
            node *current_tail = NULL;
            int carry = 0;

            for(int i=0; i<shift; i++){
                insert_first(&current_head, &current_tail, 0);
            }

            while (t1 != NULL || carry != 0){
                int prod = carry;
                if(t1 != NULL){
                    prod += (t1 -> data * t2 -> data);
                    t1 = t1 -> prev;
                }

                carry = prod / 10;
                insert_first(&current_head, &current_tail, prod % 10);
            }

            if(*headR == NULL){
                *headR = current_head;
                *tailR = current_tail;
            }else{
                node *temp_head = NULL;
                node *temp_tail = NULL;

                addition(*tailR, current_tail, &temp_head, &temp_tail);

                *headR = temp_head;
                *tailR = temp_tail;
            }
            shift++;
            t2 = t2 -> prev;
        }
}
