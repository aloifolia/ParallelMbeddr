#include "GenericSyncDeclarations.h"



void GenericSyncDeclarations_initMutex_0(pthread_mutexattr_t* mutexAttribute, pthread_mutex_t* mutex) 
{
  pthread_mutexattr_settype(mutexAttribute,PTHREAD_MUTEX_RECURSIVE);
  pthread_mutex_init(mutex,mutexAttribute);
}


void GenericSyncDeclarations_destroyMutex_0(pthread_mutex_t* mutex) 
{
  pthread_mutex_destroy(mutex);
}


