#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "contact.h"
#include "file.h"

//This function used to validate name
int validName(char name[])
{
				int len=strlen(name);
				if(len ==0){
								return 0;
				}
				for(int i=0;i<len;i++){
								if(!isalpha(name[i]) && name[i]!=' '){
												return 0;
								}
				}
				return 1;

}

//This function is used to validate phone number

int validPhone(AddressBook *addressBook, char phone[],int index){
				int len = strlen(phone);

				if(len!=10){
								printf("Number must contain 10 digits!!\n");
								return 0;
				}
				if(phone[0]<'6' || phone[0]>'9'){
								printf("phone number must starts with 6,7,8 or 9\n");
								return 0;
				}
				for(int i=0;i<len;i++){
								if(!isdigit(phone[i])){
												printf("Error : phone number only contains digits!!!\n");
												return 0;
								}
				}

				for(int i=0;i<addressBook->contactCount;i++){
								if(i==index){
												continue;
								}
								if(strcmp(addressBook->contacts[i].phone,phone)==0){
												printf("This number already exist!!!\n");
												return 0;
								}
				}
				return 1;
}

//This function is used to validate email id
int validEmail(AddressBook *addressBook, char email[],int index){

				int count=0;
				char *atptr= strchr(email, '@');
				char *tempat=atptr;
				char *dptr = strstr(email, ".com");
				char *tempDot=dptr;

				while(tempat!=NULL){
								count++;
								tempat=strchr(tempat + 1,'@');
				}
				if(count != 1){
								printf("Email must contain exactly one @ symbol\n");
								return 0;
				}

				int comcount=0;
				while(tempDot!=NULL){
								comcount++;
								tempDot=strstr(tempDot + 4,".com");
				}
				if(comcount != 1){
								printf("Email must contain exactly one '.com'\n");
								return 0;
				}
				if(atptr > dptr){
								printf("Invalid : @ must appear before .com\n");
								return 0;
				}

				if(atptr +1 == dptr){
								printf("Email must have a domain (e.g., user@domain.com\n");
								return 0;
				}

				for(char *p=atptr+1; p<dptr;p++){
								if(isdigit(*p)){
												printf("Invalid: Domain cannot contain digits!\n");
												return 0;
								}
				}
				if(strcmp(dptr, ".com")!=0){
								printf("Email must end with '.com'\n");
								return 0;
				}
				if(isdigit(email[0])){
								printf("Email must start with alphabet\n");
								return 0;
				}



				for(int i=0;email[i]!='\0';i++){
								if(isalpha(email[i]) && !islower(email[i])){
												printf("Email must be lowercase\n");
												return 0;
								}
				}
				for(int i=0;i<addressBook->contactCount;i++){
								if(i==index){
												continue;
								}
								if(strcmp(addressBook->contacts[i].email,email)==0){
												printf("This Email already exist!!!\n");
												return 0;
								}
				}
				return 1;

}

//This function is used to search contact by name
int nameSearch(AddressBook *addressBook, char name[]){
				int found=0;
				int index[50];
				printf("\n%-5s | %-20s | %-15s | %-25s\n", "S.No", "Name", "Phone", "Email");
				printf("--------------------------------------------------------------------\n");

				for(int i=0;i<addressBook->contactCount;i++){
								if(strcmp(addressBook->contacts[i].name,name)==0){
												index[found]=i;

												printf("%-5d | %-20s | %-15s | %-25s\n",i+1,
																				addressBook->contacts[i].name,
																				addressBook->contacts[i].phone,
																				addressBook->contacts[i].email);
												found++;

								}
				}
				if(found == 0){
								printf("No contact found with name %s\n",name);
								return -1;
				}
				if(found == 1){
								return index[0];
				}
				int choice;
				printf("\nMultiple contacts found. Enter s.no to select : ");
				scanf("%d",&choice);
				if(choice >=1 && choice <=found){
								return index[choice - 1];
				}
				return -1;

}

//This function is used to search contact by phone number
int phoneSearch(AddressBook *addressBook, char phone[]){

				for(int i=0;i<addressBook->contactCount;i++){
								if(strcmp(addressBook->contacts[i].phone,phone)==0){

												printf("\nContact Found!\n");
												printf("\n%-5s | %-20s | %-15s | %-25s\n", "S.No", "Name", "Phone", "Email");
												printf("--------------------------------------------------------------------\n");

												printf("%-5d | %-20s | %-15s | %-25s\n", i+1,
																				addressBook->contacts[i].name,
																				addressBook->contacts[i].phone,
																				addressBook->contacts[i].email);
												return i;

								}
				}

				printf("The phone number %s is not found!!",phone);
				return -1;

}
//This function is used to search by email id
int emailSearch(AddressBook *addressBook, char email[]){
				for(int i=0;i<addressBook->contactCount;i++){
								if(strcmp(addressBook->contacts[i].email,email)==0){

												printf("\nContact Found!\n");
												printf("\n%-5s | %-20s | %-15s | %-25s\n", "S.No", "Name", "Phone", "Email");
												printf("--------------------------------------------------------------------\n");

												printf("%-5d | %-20s | %-15s | %-25s\n", i+1,
																				addressBook->contacts[i].name,
																				addressBook->contacts[i].phone,
																				addressBook->contacts[i].email);
												return i;

								}
				}
				printf("The %s is not found!!",email);
				return -1;
}

void listContacts(AddressBook *addressBook) 
{
				// Sort contacts based on the chosen criteria

				if(addressBook->contactCount == 0){
								printf("Contact is Empty!!");
								return;

				}
				printf("\n%-5s | %-20s |%-15s | %-25s\n", "S.No", "Name", "Phone", "Email");
				printf("--------------------------------------------------------------------\n");
				for(int i=0; i<addressBook->contactCount;i++){
								printf("%-5d | %-20s | %-15s | %-25s\n",i+1,
																addressBook->contacts[i].name,
																addressBook->contacts[i].phone,
																addressBook->contacts[i].email);
				}
				printf("---------------------------------------------------------------------\n");

}

void initialize(AddressBook *addressBook) {
				addressBook->contactCount = 0;


				loadContactsFromFile(addressBook);
}

void saveAndExit(AddressBook *addressBook) {
				saveContactsToFile(addressBook); // Save contacts to file
				exit(EXIT_SUCCESS); // Exit the program
}


void createContact(AddressBook *addressBook)
{
				/* Define the logic to create a Contacts */
				char tempName[50];
				char tempPhone[20];
				char tempEmail[50];

				if(addressBook->contactCount >= MAX_CONTACTS){
								printf("Error : Address book is full!!");
								return;
				}

				printf("\n-------Creating New Contact--------\n");
				int nameflag=0;
				for(int i=1;i<=3;i++){

								printf("Enter the name you have %d/3 attempts : ",i);
								scanf(" %[^\n]",tempName);
								if(strlen(tempName)==0){
												printf("Name can't be Empty!!");
								}


								if(validName(tempName)){
												nameflag=1;
												break;
								}else{
												printf("!!!Invalid : Only alphabet characters are allowed!!!\n");
								}
				}
				if(!nameflag){
								printf("!!Too many attempts, Try later!!\n");
								return;
				}

				int phoneflag=0;
				for(int i=1;i<=3;i++){
								printf("Enter the phone number You have %d/3 attempts : ",i);
								scanf(" %s",tempPhone);
								if(validPhone(addressBook, tempPhone,-1)){
												phoneflag=1;
												break;
								}
				}
				if(!phoneflag){
								printf("\n!!Too many attempts, Try later!!\n");
								return;
				}
				int emailflag=0;
				for(int i=1;i<=3;i++){
								printf("Enter the email You have %d/3 attempts : ",i);
								scanf(" %s",tempEmail);
								if(validEmail(addressBook, tempEmail,-1)){
												emailflag=1;
												break;
								}
				}
				if(!emailflag){
								printf("Too many attempts, Try later\n");
								return;
				}


				int i = addressBook->contactCount;
				strcpy(addressBook->contacts[i].name,tempName);
				strcpy(addressBook->contacts[i].phone,tempPhone);
				strcpy(addressBook->contacts[i].email,tempEmail);

				addressBook->contactCount++;

				printf("Contact created Sucessfully!!\n");


}

int searchContact(AddressBook *addressBook) 
{
				/* Define the logic for search */
				if(addressBook->contactCount==0){
								printf("AddressBook is Empty!! Nothing to search!!");
								return -1;
				}
				char name[50];
				char phone[20];
				char email[50]; 
				int choice;
				printf("Choose what you want to search\n");
				printf("1.Name\n2.Phone\n3.Email\n");
				printf("Enter the choice : ");
				scanf("%d",&choice);

				switch (choice){
								case 1 :{

																printf("Enter the name to search : ");
																scanf(" %[^\n]",name);
																return	nameSearch(addressBook, name);

												}
								case 2 :
												{
																printf("Enter the phone number to search : ");
																scanf(" %[^\n]",phone);
																return phoneSearch(addressBook, phone);

												}
								case 3 :
												{
																printf("Enter the email id to search : ");
																scanf(" %[^\n]",email);
																return emailSearch(addressBook, email);
												}
								default :

												printf("Invalid choice!!");
												return -1;
				}


}

void editContact(AddressBook *addressBook)
{
				/* Define the logic for Editcontact */
				char edit[50];
				int index[50];
				int count=0;
				int choice;


				if(addressBook->contactCount==0){
								printf("Addressbook is empty\n");
								return;
				}
				int indexFound= searchContact(addressBook);
				if(indexFound==-1){
								printf("Contact not found.\n");
								return;
				}



				printf("Contact Found! Editing.. %s\n",addressBook->contacts[indexFound].name);
				printf("1. Name\n2. phone\n3. Email\n4. Exit\n");
				printf("Enter the choice : ");
				scanf("%d",&choice);

				switch(choice){
								case 1:{	
															 char tempname[50];
															 int nameflag=0;
															 for(int i=1;i<=3;i++){
																			 printf("Enter the name, You have %d/3 attempts : ",i);
																			 scanf(" %[^\n]",tempname);
																			 if(validName(tempname)){
																							 strcpy(addressBook->contacts[indexFound].name,tempname);
																							 nameflag=1;
																							 break;
																			 }else{
																							 printf("Error : Enter only alphabets!!\n");
																			 }
															 }
															 printf(nameflag ? "Contact updated sucessfully!\n" : "Too many attempts.\n");
															 break;
											 }


								case 2:{
															 char tempphone[20];
															 int phoneflag=0;
															 for(int i=1;i<=3;i++){

																			 printf("Enter the phone number, You have %d/3 attempts : \n",i);
																			 scanf(" %[^\n]",tempphone);
																			 if(validPhone(addressBook,tempphone,indexFound)){
																							 strcpy(addressBook->contacts[indexFound].phone,tempphone);
																							 phoneflag=1;
																							 break;
																			 }
															 }
															 printf(phoneflag ? "Contact updated sucessfully!\n" : "Too many attempts.\n");
															 break;
											 }

								case 3: {
																char tempemail[50];
																int emailflag=0;
																for(int i=1;i<=3;i++){
																				printf("Enter the Email, You have %d/3 attempts : \n",i);
																				scanf(" %[^\n]",tempemail);
																				if(validEmail(addressBook,tempemail,indexFound)){
																								strcpy(addressBook->contacts[indexFound].email,tempemail);
																								emailflag=1;
																								break;
																				}
																}
																printf(emailflag ? "Contact updated sucessfully!\n" : "Too many attempts.\n");
																break;
												}


								case 4:
												return;
								default :
												printf("Invalid Choice!!!");
												return;
				}






}

void deleteContact(AddressBook *addressBook)
{
				/* Define the logic for deletecontact */
				printf("Current contact count is %d\n",addressBook->contactCount);
				char name[50];
				int index[50];
				int count=0;
				if(addressBook->contactCount==0){
								printf("AddressBook is Empty!!\n");
								return;
				}
				int indexFound= searchContact(addressBook);
				if(indexFound == -1){
								printf("\nContact not found\n");
								return;

				}
				char confirm;
				printf("Are you sure you want to delete %s? (y/n): ",addressBook->contacts[indexFound].name);
				scanf(" %c",&confirm);
				if(confirm == 'Y' || confirm == 'y'){
								for(int i=indexFound;i<addressBook->contactCount-1;i++){
												addressBook->contacts[i]=addressBook->contacts[i+1];
								}
								addressBook->contactCount--;
								printf("Contact Deleted Sucessfully!!\n");
				}else{
								printf("Delete operation aborted\n");


				}
}
