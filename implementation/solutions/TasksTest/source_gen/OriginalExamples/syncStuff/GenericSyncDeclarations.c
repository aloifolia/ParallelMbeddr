#include "GenericSyncDeclarations.h"



void GenericSyncDeclarations_startSync_0(pthread_mutex_t* mutex_0, pthread_mutex_t* mutex_1) 
{
  while (1)
  {
    if ( mutex_trylock(mutex_0) != 0 ) 
    {
      continue;
    }

    if ( mutex_trylock(mutex_1) != 0 ) 
    {
      mutex_unlock(mutex_0);
      continue;
    }

    break;
  }

}


void GenericSyncDeclarations_stopSync_0(pthread_mutex_t* mutex_2, pthread_mutex_t* mutex_3) 
{
  mutex_unlock(mutex_2);
  mutex_unlock(mutex_3);
}


