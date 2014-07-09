#include "otherStuff.h"


#include "second.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "otherStuff_SharedTypes_0.h"
#include <pthread.h>

static inline void otherStuff_init_myA_0(struct otherStuff_SharedTypes_0_SharedOf_A_0* myA);

static inline void otherStuff_destroy_myA_0(struct otherStuff_SharedTypes_0_SharedOf_A_0* myA);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  
  struct otherStuff_SharedTypes_0_SharedOf_A_0 myA;
  otherStuff_init_myA_0(&myA);
  otherStuff_destroy_myA_0(&myA);
  return 0;
}


static  void otherStuff_init_myA_0(struct otherStuff_SharedTypes_0_SharedOf_A_0* myA) 
{
  pthread_mutex_init(&myA->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutex_init(&myA->value.b.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}


static  void otherStuff_destroy_myA_0(struct otherStuff_SharedTypes_0_SharedOf_A_0* myA) 
{
  pthread_mutex_init(&myA->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutex_init(&myA->value.b.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}


