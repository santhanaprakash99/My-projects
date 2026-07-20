#include "apc.h"
// Adds two large numbers stored in doubly linked lists digit-by-digit from tail to head.
void addition(node *tail1, node *tail2, node **headR, node **tailR)
{
        int carry = 0;

        while(tail1 != NULL || tail2 != NULL || carry != 0){
            int sum = carry;

            if(tail1 != NULL){
                sum += tail1 -> data;
                tail1 = tail1 -> prev;
            }
            
            if(tail2 != NULL){
                sum += tail2 -> data;
                tail2 = tail2 -> prev;
            }

            carry = sum / 10;

            int result = sum % 10;

            insert_first(headR, tailR, result); 
        }
            remove_pre_zeros(headR);
} 
