#include "GenericSyncDeclarations.h"



void GenericSyncDeclarations_startSync_0(pthread_mutex_t* mutex_0, pthread_mutex_t* mutex_1, pthread_mutex_t* mutex_2) 
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

    if ( mutex_trylock(mutex_2) != 0 ) 
    {
      mutex_unlock(mutex_0);
      mutex_unlock(mutex_1);
      continue;
    }

    break;
  }

}


void GenericSyncDeclarations_stopSync_0(pthread_mutex_t* mutex_3, pthread_mutex_t* mutex_4, pthread_mutex_t* mutex_5) 
{
  mutex_unlock(mutex_3);
  mutex_unlock(mutex_4);
  mutex_unlock(mutex_5);
}


void GenericSyncDeclarations_startSync_1(pthread_mutex_t* mutex_6, pthread_mutex_t* mutex_7) 
{
  while (1)
  {
    if ( mutex_trylock(mutex_6) != 0 ) 
    {
      continue;
    }

    if ( mutex_trylock(mutex_7) != 0 ) 
    {
      mutex_unlock(mutex_6);
      continue;
    }

    break;
  }

}


void GenericSyncDeclarations_stopSync_1(pthread_mutex_t* mutex_8, pthread_mutex_t* mutex_9) 
{
  mutex_unlock(mutex_8);
  mutex_unlock(mutex_9);
}


