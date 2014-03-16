#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h> 

/* 
  Same as list_unsafe.h but made threadsafe (hopefully) by the heavy use
  of synchronization of instances and pointers thereof.

  Function declarations like in list_unsafe.h are omitted.
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
} sync firstName <=> firstNameLength       // if either one is synchronized the other needs to be, too
       lastName <=> lastNameLength         // same here
       // If first- or lastName is sync'ed, fullName needs to be, too. If fullName is sync'ed then one
       // of the consituents also needs to be changed and, thus, sync'ed.
       firstName || lastName <=> fullName  
       fullName <=> fullNameLength
       cityLength <=> city <=> phoneNumber // if one is sync'ed the other two need to be sync'ed, as well
Person;

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

// return a Node pointer that is sync'ed itself and whose pointed-to object is also sync'ed
// same for list
sync (Node* node : *node) findPredecessorNodeById(sync (List* list : *list), int id) {
  Node* currentNode;
  // while we're using it, don't delete/replace/modify the head
  // and therefore leave the list instance as is
  // => equal to: sync (list               // == do not reassign the list pointer
  //                    list->head,        // == do not reassign the head pointer (the relevant guarantee)
  sync list->head { 
    currentNode = list->head;
  }
  // make a race-free transition from one sync context to the next
  // => this means that currentNode cannot be deleted/replaced/modified in between
  // (can lead to deadlocks but what is the alternative...)
  --> sync *currentNode {                  // == do not reassign the currentNode pointer (can actually not happen),
                                           //    do not free the currentNode instance
    // as sync is a statement and no expression the loop blows a bit up
    while (true) {
      // try to sync access to both pointers simultaneously in order to reduce the danger of deadlocks
      // (hence the parenthesis around both variables)
      sync (currentNode->next, list->last) {     // not sure whether the pointed-to objects should also be sync'ed
        if (currentNode->next == list->last || 
            currentNode->next->person->id >= id) {
          break;
        }
        // the synchronisation context automatically changes to the next node 
        currentNode = currentNode->next;
      }      
    }
    // the currentNode shall not be replaced/removed/modified before it is returned safely
    // => the synchronisation context is part of the return value
    return currentNode;
  }
}

sync (Node* node : *node) findNodeById(sync (List* list : *list), int id) {
  Node* previousNode;
  Node* nodeToFind;
  sync previousNode = findPredecessorNodeById(list, id) : *previousNode, previousNode->next {
    nodeToFind = previousNode->next;
  } 
  // not sure whether person actually needs to be saved from being freed
  --> sync (*nodeToFind, *(nodeToFind->person)) {
    if (nodeToFind == NULL || nodeToFind->person->id != id) {
      return NULL;
    }
    return nodeToFind;
  }
}

sync (Person* person : *person) findPersonById(sync (List* list : *list), int id) {
  Node* nodeToFind;
  sync nodeToFind = findNodeById(list, id) : *nodeToFind {
    if (nodeToFind == NULL) {
      return NULL;
    }
    sync *(nodeToFind->person) {
      return nodeToFind->person;
    }
  }
}

// the pointer to person may no be reassigned and the instance itself may not be freed
// same for list
bool insertPerson(sync (List* list : *list), 
                     sync (Person* person : *person)) {
  // catch the special case that the list is empty
  sync (list->head, list->tail) {
    if (list->head == NULL) {
      return insertFirstPerson(list, person);
    }
  }
  // catch the special case that person must be inserted at the beginning of the list
  sync *(list->head->person) {
    if (list->head->person->id > person->id) {
      return insertPersonBeforeNode(list, list->head, person);
    }  
  }
  sync nodeToFind = findPredecessorNodeById(list, person->id) : *nodeToFind {
    return insertPersonAfterNode(list, nodeToFind, person);
  }
}

bool insertFirstPerson(sync (List* list : *list, list->head, list->tail), 
                       sync (Person* person : *person)) {
  Node* newNode = makeNode(person);
  list->head = newNode;
  list->last = newNode;
  return true;
}

// the sync requirement list->head is met by "sync *(list->head->person)" in insertPerson
bool insertPersonBeforeNode(sync (List* list : *list, list->head), 
                            sync (Node* node : *node),
                            sync (Person* person : *person)) {
  if (node->person->id == person->id) {
    return false;
  }
  Node* newNode = makeNode(person);
  // better would be a synchronization of the pointed to instance but this is not possible
  // because there might not be a predecessor
  // => alternative: convert the list to a ring and extend the parameter synchronization:
  //                 sync (Node* node : *node, node->previous->next)
  sync node->previous {
    if (node == list->head) {
      list->head = newNode;
    } else {
      sync node->previous->next {
        newNode->previous = node->previous;
        node->previous->next = newNode;
      }
    }
    node->previous = newNode;
  }
  newNode->next = node;
  return true; 
}

// basically the opposite of insertPersonBeforeNode()
bool insertPersonAfterNode(sync (List* list : *list),
                              sync (Node* node : *node),
                              sync (Person* person : *person)) {
  if (node->person->id == person->id) {
    return false;
  }
  Node* newNode = makeNode(person);
  sync node->next {
    sync list->tail {
      if (node == list->tail) {
        list->tail = newNode;
      } else {
        sync node->next->previous {
          newNode->next = node->next;
          node->next->previous = newNode;
        }
      }
    }
    node->next = newNode;
  }
  newNode->previous = node;
  return true; 
}

// the synchronization property could be included in the return value but this is not necessary here
Node* makeNode(sync (Person* person : *person)) {
  Node* newNode = malloc(sizeof(Node));
  newNode->person = person;
  return newNode;
}

bool deletePersonWithId(sync (List* list : *list), int id) {
  Node* nodeToFind;
  sync nodeToFind = findNodeById(list, id) : *nodeToFind {
    if (nodeToFind == NULL) {
      return false;
    }
    
    sync *(nodeToFind->person) {
      free(nodeToFind->person);
    }
    deleteNode(list, nodeToFind);
    return true;
  } 
}

void deleteNode(sync (List* list : *list), sync (Node* node : *node)) {
  sync (node->previous->next, node->next->previous) {
    node->previous->next = node->next;
    node->next->previous = node->previous;
    sync list->last {
      if (node == list->last) {
        list->last = node->previous;
      }
    }
  }
  // not sure whether this statement should be included in the sync block
  free(node);
}

// suppose every pointer argument points to some location on the heap (so that the data needn't be copied)
bool changePerson(sync (List* list : *list), int id, 
                     char* newFirstName, int newFirstNameLength,
                     char* newLastName, int newLastNameLength,
                     char* newCity, int newCityLength,
                     char newPhoneNumber[15]) {
  Person* person;
  sync person = findPersonById(list, id) : *person {
 
    if (person == NULL) {
      return false;
    }
    
    sync (person->firstName, person->firstNameLength,
          person->lastName, person->lastNameLength,
          person->fullName, person->fullNameLength) {
          
      person->firstName = newFirstName;
      person->firstNameLength = newFirstNameLength;
      person->lastName = newLastName;
      person->lastNameLength = newLastNameLength;
      int newFullNameLength = newFirstNameLength + newLastNameLength;
      person->fullName = malloc(sizeof(char) * (newFullNameLength + 1));
      memcpy(person->fullName, newFirstName, newFirstNameLength);
      memcpy(person->fullName + newFirstNameLength, newLastName, newLastNameLength + 1);
      person->fullNameLength = newFullNameLength;
    }
    
    sync (person->city, person->cityLength, person->phoneNumber) {
      person->city = newCity;
      person->cityLength = newCityLength;
      memcpy(person->phoneNumber, newPhoneNumber, sizeof newPhoneNumber);
    }
  
    return true;
  }
}
