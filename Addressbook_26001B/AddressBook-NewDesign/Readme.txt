1. Project Overview

The Address Book Management System is a C-based command-line application designed for efficient contact management. It supports creating, searching, editing, and deleting contacts with persistent storage via file I/O.

# Key Features :-

   1. Multi-Criteria Search: Locate contacts by name, phone number, or email.

   2. Robust Data Validation:  Ensures unique phone numbers and email addresses.

       . Validates email formats (must contain @, .com, no digits in domain, and lowercase).

       . Enforces 10-digit phone numbers starting with 6-9.

   3. Duplicate Prevention: Checks the existing database before adding or updating information.

   4. Dynamic Deletion: Automatically reorganizes memory/arrays when a contact is removed.


2. Data Structures

The project relies on two primary structures to manage data in memory.

# Contact Struct :-

Represents a single person in the address book.

   1. char name[50]: Stores the full name.

   2. char phone[20]: Stores the 10-digit mobile number.

   3.char email[50]: Stores the validated email address.

# AddressBook Struct :-

Acts as the central controller for the session.

   1. Contact contacts[MAX_CONTACTS]: An array of contact structures.

   2. int contactCount: Tracks the current number of saved contacts.

3. Function Documentation

# Validation Logic :-

Function            	Description

validName           	Rejects empty strings and non-alphabetic characters (except spaces).

validPhone          	Validates length (10), starting digit (6-9), and ensures the number is unique.

validEmail	          Checks for @ and .com placement, prevents digits in the domain, and enforces lowercase.

# Search Logic :-

Function            	Description

searchContact	        The main entry point for searching. Prompts the user for search type and returns the array index.

nameSearch           	Handles partial and duplicate name matches, allowing the user to select the correct "S.No".

phoneSearch	          Performs a direct lookup via phone number and returns the specific index.

emailSearch           performs a direct lookup via email id and returns the specific index.

# Modification Logic :-

Function              Description

createContact        Provides a 3-attempt buffer for user input. Upon successful validation, it appends the new contact to the end of the array.

editContact          Utilizes searchContact to find the target. Allows specific field updates (Name, Phone, or Email) while maintaining data integrity via re-validation.

deleteContact        After finding the contact, it performs an array shift.

## Note on Deletion :-

	                 	When a contact is deleted at indexFound, all subsequent contacts are moved one position to the left to ensure no "gaps" exist in the array.
    contacts[i]=contacts[i+1]


4. File I/O & Persistence

The system is designed to load and save data automatically:

   1. initialize: Called at startup; it sets the count to 0 and triggers loadContactsFromFile.

   2.saveAndExit: Triggered when the user quits; it flushes the current contacts array into the data file to ensure changes are permanent.

5. Compilation and Usage

# To compile the project using gcc:-

1. gcc main.c contact.c file.c -o addressbook

# To run the application:-

./addressbook
