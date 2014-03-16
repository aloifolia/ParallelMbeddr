#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h> 

/* 
   This is a basic somewhat artificial and incomplete library for working with doubly linked lists.
   Each node in the list keeps a person's data. All data except a person's identification
   number can be changed. The id is used for keeping the nodes in an ascending order.
   Only the non static functions are part of the public API of the library.

   This implementation is not threadsafe.
*/

typedef struct {
  int id;
  char* firstName;
  int firstNameLength;  // strlen => without trailing '\0'
  char* lastName;
  int lastNameLength;   // strlen => without trailing '\0'
  char* fullName;
  int fullNameLength;   // strlen => without trailing '\0'
  char* city;
  int cityLength;
  char phoneNumber[15]; // suppose every phone number has this length
} Person;

typedef struct Node Node;

struct Node {
  Person* person;
  Node* previous;
  Node* next;
};

typedef struct {
  Node* head;
  Node* last;
} List;

static Node* findPredecessorNodeById(List* list, int id);
static Node* findNodeById(List* list, int id);
Person* findPersonById(List* list, int id);
bool insertPerson(List* list, Person* person);
static bool insertFirstPerson(List* list, Person* person);
static bool insertPersonBeforeNode(List* list, Node* node, Person* person);
static bool insertPersonAfterNode(List* list, Node* node, Person* person);
static Node* makeNode(Person* person);
bool deletePersonWithId(List* list, int id);
static void deleteNode(List* list, Node* node);
bool changePerson(List* list, int id, 
                         char* newFirstName, int newFirstNameLength,
                         char* newLastName, int newLastNameLength,
                         char* newCity, int newCityLength,
                         char newPhoneNumber[15]);
