#include "GenericSyncDeclarations.h"



static inline void GenericSyncDeclarations_backoffExponentially(uint8_t* waitingCounter,uint16_t* mask);

static  void GenericSyncDeclarations_backoffExponentially(uint8_t* waitingCounter, uint16_t* mask) 
{
  if ( *waitingCounter != 0 ) 
  {
    ++*waitingCounter;
    *waitingCounter = (*waitingCounter + 1) % 17;
    *mask |= 1 << *waitingCounter;
    struct timespec sleepingTime = (struct timespec){ .tv_nsec = clock() &*mask};
    nanosleep(&sleepingTime,0);
  }

}


void GenericSyncDeclarations_startSyncFor1Mutex(pthread_mutex_t* mutex_0) 
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

    break;
  }

}


