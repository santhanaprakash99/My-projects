#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<unistd.h>
#include<time.h>

//Define constant length of password

#define PASS_LEN 20

/**
 * Function: generate_password
 * -----------------------------
 *  Fill the provided password with PASS_LEN random characters.
 */

void generate_password(char password[])
{
				char allowed_char[]="abcdefghijklmnopqrstuvwxyz"
								"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
								"1234567890"
								"!,-_=@#$%^&*()[]{}<>";

				int len_allowed_char=strlen(allowed_char);

				for(int i=0;i<PASS_LEN;i++){
								
								//The % operator gives the random number within the range from 0 to allowed_char -1

								int random_num=rand()%len_allowed_char;     								
								
								password[i]=allowed_char[random_num];
				}
				password[PASS_LEN]=0;


}
int main(){

				//Array size is 21 (20 characters + 1 for '\0'
				char password[PASS_LEN+1];

				//To generate random seed
				srand(time(NULL));  
				generate_password(password);
				printf("Generating your secure password....\n");
				usleep(800000);
				printf("Password created sucessfully\n");
				printf("Your secure password is %s\n",password);
				printf("Your password length is %d\n",PASS_LEN);
				return 0;
}


