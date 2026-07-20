#include "apc.h"
// Subtracts the second large number from the first, handling positional borrow operations from tail to head.
void subtraction(node *tail1, node *tail2, node **headR, node **tailR)
{
        int borrow = 0;

        while(tail1 != NULL){
            int diff = tail1 -> data - borrow;

            if(tail2 != NULL){
                diff -= tail2 -> data;
                tail2 = tail2 -> prev;
            }
            if (diff < 0){
                diff += 10;
                borrow = 1;
            }else{
                borrow = 0;
            }

            insert_first(headR, tailR, diff);

            tail1 = tail1 -> prev;
        }

}
