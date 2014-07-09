#include "otherStuff_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"
#include "second.h"

void otherStuff_SharedTypes_0_mutexInit_1(struct otherStuff_SharedTypes_0_SharedOf_A_0* var) 
{
  pthread_mutex_init(&var->mutex,&GenericSharedDeclarations_mutexAttribute_0);
  otherStuff_SharedTypes_0_mutexInit_0(&var->value);
}


void otherStuff_SharedTypes_0_mutexInit_0(struct otherStuff_SharedTypes_0_A* var) 
{
  pthread_mutex_init(&var->b.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}


void otherStuff_SharedTypes_0_mutexDestroy_1(struct otherStuff_SharedTypes_0_SharedOf_A_0* var) 
{
  pthread_mutex_destroy(&var->mutex);
  otherStuff_SharedTypes_0_mutexInit_0(&var->value);
}


void otherStuff_SharedTypes_0_mutexDestroy_0(struct otherStuff_SharedTypes_0_A* var) 
{
  pthread_mutex_destroy(&var->b.mutex);
}


