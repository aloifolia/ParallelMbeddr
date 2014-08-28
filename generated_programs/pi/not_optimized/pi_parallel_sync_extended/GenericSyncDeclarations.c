#include "GenericSyncDeclarations.h"
#include <stdio.h>


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

void GenericSyncDeclarations_startSyncFor2Mutexes(pthread_mutex_t* mutex_0, pthread_mutex_t* mutex_1) 
{
  uint8_t waitingCounter = 0;
  uint16_t mask = 16;
  uint32_t seed = ((uint32_t)(((uintptr_t)(&waitingCounter))));
  while (true)
  {
    if ( pthread_mutex_trylock(mutex_0) != 0 ) 
    {
      GenericSyncDeclarations_backoffExponentially(&waitingCounter, &mask, &seed);
    } else 
    {
    int res = pthread_mutex_trylock(mutex_1);
    //printf("did it?...: %d\n", res);
    if (res != 0) {
    //printf("did not work...: %d\n", res);
      pthread_mutex_unlock(mutex_0);
      GenericSyncDeclarations_backoffExponentially(&waitingCounter, &mask, &seed);
    }    else 
    {
      break;
    }}
  }
}

void GenericSyncDeclarations_startSyncFor3Mutexes(pthread_mutex_t* mutex_0, pthread_mutex_t* mutex_1, pthread_mutex_t* mutex_2) 
{
  uint8_t waitingCounter = 0;
  uint16_t mask = 16;
  uint32_t seed = ((uint32_t)(((uintptr_t)(&waitingCounter))));
  while (true)
  {
    if ( pthread_mutex_trylock(mutex_0) != 0 ) 
    {
      GenericSyncDeclarations_backoffExponentially(&waitingCounter, &mask, &seed);
    } else if (pthread_mutex_trylock(mutex_1) != 0) {
      pthread_mutex_unlock(mutex_0);
      GenericSyncDeclarations_backoffExponentially(&waitingCounter, &mask, &seed);
    } else if (pthread_mutex_trylock(mutex_2) != 0) {
      pthread_mutex_unlock(mutex_1);
      pthread_mutex_unlock(mutex_0);
      GenericSyncDeclarations_backoffExponentially(&waitingCounter, &mask, &seed);
    }    else 
    {
      break;
    }
  }
}

void GenericSyncDeclarations_stopSyncFor2Mutexes(pthread_mutex_t* mutex_1, pthread_mutex_t* mutex_2) 
{
  pthread_mutex_unlock(mutex_1);
  pthread_mutex_unlock(mutex_2);
}

void GenericSyncDeclarations_stopSyncFor3Mutexes(pthread_mutex_t* mutex_3, pthread_mutex_t* mutex_4, pthread_mutex_t* mutex_5) 
{
  pthread_mutex_unlock(mutex_3);
  pthread_mutex_unlock(mutex_4);
  pthread_mutex_unlock(mutex_5);
}

