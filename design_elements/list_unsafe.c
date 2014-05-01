#include "list_unsafe.h"

static Node* findPredecessorNodeById(List* list, int id) {
  Node* currentNode = list->head;
  while (currentNode->person->id < id && currentNode->next != list->last) {
	  currentNode = currentNode->next;
  }
  return currentNode;
}

static Node* findNodeById(List* list, int id) {
  Node* previousNode;
  Node* nodeToFind;
  previousNode = findPredecessorNodeById(list, id);
  nodeToFind = previousNode->next;
 
  if (nodeToFind == NULL || nodeToFind->person->id != id) {
    return NULL;
  }
  return nodeToFind;
}

Person* findPersonById(List* list, int id) {
  Node* nodeToFind =  findNodeById(list, id);
  if (nodeToFind == NULL) {
    return NULL;
  }
  return nodeToFind->person;
}

bool insertPerson(List* list, Person* person) {
  if (list->head == NULL) {
    return insertFirstPerson(list, person);
  }
  if (list->head->person->id > person->id) {
    return insertPersonBeforeNode(list, list->head, person);
  }    
  return insertPersonAfterNode(list, findPredecessorNodeById(list, person->id), person);
}

static bool insertFirstPerson(List* list, Person* person) {
  Node* newNode = makeNode(person);
  list->head = newNode;
  list->last = newNode;
  return true;
}

static bool insertPersonBeforeNode(List* list, Node* node, Person* person) {
  if (node->person->id == person->id) {
    return false;
  }
  Node* newNode = makeNode(person);
  if (node == list->head) {
    list->head = newNode;
  } else {
    newNode->previous = node->previous;
    node->previous->next = newNode;
  }
  newNode->next = node;
  node->previous = newNode;
  return true; 
}

static bool insertPersonAfterNode(List* list, Node* node, Person* person) {
  if (node->person->id == person->id) {
    return false;
  }
  Node* newNode = makeNode(person);
  if (node == list->last) {
    list->last = newNode;
  } else {
    newNode->next = node->next;
    node->next->previous = newNode;
  }
  node->next = newNode;
  newNode->previous = node;
  return true; 
}

static Node* makeNode(Person* person) {
  Node* newNode = malloc(sizeof(Node));
  newNode->person = person;
  return newNode;
}

bool deletePersonWithId(List* list, int id) {
  Node* nodeToFind = findNodeById(list, id);
  if (nodeToFind == NULL) {
    return false;
  }
  free(nodeToFind->person);
  deleteNode(list, nodeToFind);
  return true;
}

static void deleteNode(List* list, Node* node) {
  node->previous->next = node->next;
  node->next->previous = node->previous;
  if (node == list->last) {
    list->last = node->previous;
  }
  free(node);
}

// suppose every pointer argument points to some location on the heap
bool changePerson(List* list, int id, 
                  char* newFirstName, int newFirstNameLength,
                  char* newLastName, int newLastNameLength,
                  char* newCity, int newCityLength,
                  char newPhoneNumber[15]) {
  Person* person = findPersonById(list, id);
  
  if (person == NULL) {
    return false;
  }
  
  person->firstName = newFirstName;
  person->firstNameLength = newFirstNameLength;
  person->lastName = newLastName;
  person->lastNameLength = newLastNameLength;
  int newFullNameLength = newFirstNameLength + newLastNameLength;
  person->fullName = malloc(sizeof(char) * (newFullNameLength + 1));
  memcpy(person->fullName, newFirstName, newFirstNameLength);
  memcpy(person->fullName + newFirstNameLength, newLastName, newLastNameLength + 1);
  person->fullNameLength = newFullNameLength;
  person->city = newCity;
  person->cityLength = newCityLength;
  memcpy(person->phoneNumber, newPhoneNumber, sizeof newPhoneNumber);
  
  return true;
}
