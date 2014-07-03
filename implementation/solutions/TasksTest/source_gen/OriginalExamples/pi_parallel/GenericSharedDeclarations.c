#include "GenericSharedDeclarations.h"


#include "GenericSyncDeclarations.h"

pthread_mutexattr_t GenericSharedDeclarations_mutexAttribute_0;

void GenericSharedDeclarations_destroyMutex_0(pthread_mutex_t* mutex) 
{
  pthread_mutex_destroy(mutex);
}


