#include "provider1_SharedTypes_0.h"


#include "GenericSharedDeclarations.h"
#include <pthread.h>

void provider1_SharedTypes_0_mutexDestroy_0(provider1_SharedTypes_0_A_t* var) 
{
  pthread_mutex_destroy(&var->a.mutex);
}

void provider1_SharedTypes_0_mutexInit_0(provider1_SharedTypes_0_A_t* var) 
{
  pthread_mutex_init(&var->a.mutex,&GenericSharedDeclarations_mutexAttribute_0);
}

