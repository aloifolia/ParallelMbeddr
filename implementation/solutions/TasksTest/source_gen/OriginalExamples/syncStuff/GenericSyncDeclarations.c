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


