#include "GenericSyncDeclarations.h"



static void GenericSyncDeclarations_randomWithXorShift(uint32_t* seed);

static inline void GenericSyncDeclarations_backoffExponentially(uint8_t* waitingCounter, uint16_t* mask, uint32_t* seed);

static void GenericSyncDeclarations_randomWithXorShift(uint32_t* seed) 
{
  *seed ^= *seed << 13;
  *seed ^= *seed >> 17;
  *seed ^= *seed << 5;
}

static  void GenericSyncDeclarations_backoffExponentially(uint8_t* waitingCounter, uint16_t* mask, uint32_t* seed) 
{
  *mask |= 1 << *waitingCounter;
  GenericSyncDeclarations_randomWithXorShift(seed);
  struct timespec sleepingTime = (struct timespec){ .tv_nsec = *seed & *mask};
  nanosleep(&sleepingTime,0);
  *waitingCounter = (*waitingCounter + 1) % 13;
}

void GenericSyncDeclarations_startSyncFor1Mutex(pthread_mutex_t* mutex_0) 
{
  uint8_t waitingCounter = 0;
  uint16_t mask = 16;
  uint32_t seed = ((uint32_t)(((uintptr_t)(&waitingCounter))));
  while (true)
  {
    if ( pthread_mutex_trylock(mutex_0) != 0 ) 
    {
      GenericSyncDeclarations_backoffExponentially(&waitingCounter, &mask, &seed);
    }    else 
    {
      break;
    }
  }
}

void GenericSyncDeclarations_stopSyncFor1Mutex(pthread_mutex_t* mutex_0) 
{
  pthread_mutex_unlock(mutex_0);
}

