#include "GenericSyncDeclarations.h"



static inline void GenericSyncDeclarations_backoffExponentially(uint8_t* waitingCounter,uint16_t* mask);

static  void GenericSyncDeclarations_backoffExponentially(uint8_t* waitingCounter, uint16_t* mask) 
{
  if ( *waitingCounter == 0 ) 
  {
    ++*waitingCounter;
    return ;
  }

  *mask |= 1 << *waitingCounter;
  struct timespec sleepingTime = (struct timespec){ .tv_nsec = clock() &*mask};
  nanosleep(&sleepingTime,0);
  *waitingCounter = (*waitingCounter + 1) % 17;
}


void GenericSyncDeclarations_startSyncFor2Mutexes(pthread_mutex_t* mutex_0, pthread_mutex_t* mutex_1) 
{
  uint8_t waitingCounter = 0;
  uint16_t mask = 0;
  while (1)
  {
    GenericSyncDeclarations_backoffExponentially(&waitingCounter, &mask);
    if ( pthread_mutex_trylock(mutex_0) != 0 ) 
    {
      continue;
    }

    if ( pthread_mutex_trylock(mutex_1) != 0 ) 
    {
      mutex_unlock(mutex_0);
      continue;
    }

    break;
  }

}


void GenericSyncDeclarations_stopSyncFor2Mutexes(pthread_mutex_t* mutex_2, pthread_mutex_t* mutex_3) 
{
  pthread_mutex_unlock(mutex_2);
  pthread_mutex_unlock(mutex_3);
}


