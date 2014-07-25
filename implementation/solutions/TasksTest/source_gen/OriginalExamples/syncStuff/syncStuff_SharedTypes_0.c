#include "syncStuff_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"

void syncStuff_SharedTypes_0_mutexInit_0(syncStuff_SharedTypes_0_SharedContainer_t* var) 
{
  pthread_mutex_init(&var->i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

void syncStuff_SharedTypes_0_mutexInit_1(syncStuff_SharedTypes_0_ArrayContainerContainer_t* var) 
{
  pthread_mutex_init(&var->a.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

void syncStuff_SharedTypes_0_mutexDestroy_1(syncStuff_SharedTypes_0_ArrayContainerContainer_t* var) 
{
  pthread_mutex_destroy(&var->a.mutex);
}

void syncStuff_SharedTypes_0_mutexDestroy_0(syncStuff_SharedTypes_0_SharedContainer_t* var) 
{
  pthread_mutex_destroy(&var->i.mutex);
}

