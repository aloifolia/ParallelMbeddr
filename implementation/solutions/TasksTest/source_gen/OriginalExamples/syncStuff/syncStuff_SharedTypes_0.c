#include "syncStuff_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"
#include <pthread.h>

void syncStuff_SharedTypes_0_mutexDestroy_0(syncStuff_SharedTypes_0_A4_t* var) 
{
  pthread_mutex_destroy(&var->s.mutex);
}

void syncStuff_SharedTypes_0_mutexInit_0(syncStuff_SharedTypes_0_A4_t* var) 
{
  pthread_mutex_init(&var->s.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

