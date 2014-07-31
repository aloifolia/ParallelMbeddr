#include "pi.h"


#include "queue.h"
#include <stdio.h>
#include <float.h>
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "pi_SharedTypes_0.h"
#include <math.h>
#include <stdlib.h>

typedef struct pi_Args_a0a5a1b0i0h pi_Args_a0a5a1b0i0h_t;
struct pi_Args_a0a5a1b0i0h {
  GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer;
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue;
};

typedef struct pi_Args_a0a21a7 pi_Args_a0a21a7_t;
struct pi_Args_a0a21a7 {
  GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer;
  pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* resultQueuesPointer;
};

static void pi_map(uint32_t threshold, GenericSharedDeclarations_SharedOf_uint32_0_t* counter, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue);

static void pi_reduce(GenericSharedDeclarations_SharedOf_long_double_0_t* result, pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* resultQueues);

static void pi_addPartialResults(GenericSharedDeclarations_SharedOf_long_double_0_t* result, GenericSharedDeclarations_SharedOf_int32_0_t* itemCount, queue_SharedTypes_0_SharedOf_Queue_0_t* queue, GenericSharedDeclarations_SharedOf_boolean_0_t* isFullFlag);

static void pi_calcPiBlock(uint32_t start, uint32_t end, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue);

static long double pi_calcPiItem(uint32_t index);

static void* pi_parFun_a0a5a1b0i0h(void* voidArgs);

static void* pi_parFun_a0a21a7(void* voidArgs);

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0f0b1a8a7(GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue);

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0m0h(GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer, pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* resultQueuesPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_uint32_0_t counter;
  pthread_mutex_init(&counter.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer = &counter;
  /* obviously a useless synchronization */
  GenericSyncDeclarations_startSyncFor1Mutex(&counter.mutex);
  {
    counter.value = 0;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&counter.mutex);
  
  pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t resultQueues;
  pi_SharedTypes_0_mutexInit_6(&resultQueues);
  pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* resultQueuesPointer = &resultQueues;
  GenericTaskDeclarations_VoidFuture_t mappers[PI_MAPPERCOUNT];
  for ( int8_t __i = 0; __i < PI_MAPPERCOUNT; __i++ )
  {
    /* the following two syncs are unnecessary since 
- 'resultQueues' is never changed, at all => lock ellision
- each 'resultQueue' is fully processed before it is given to a corresponding task => lock ellision
  by taking into account the array indices */
    {
      pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue = &resultQueues.value[__i];
      GenericSyncDeclarations_startSyncFor2Mutexes(&resultQueues.mutex, &resultQueue->mutex);
      {
        /* these syncs can actually be safely deleted => lock ellision */
        {
          GenericSharedDeclarations_SharedOf_int32_0_t* itemCount = &resultQueue->value.itemCount;
          GenericSyncDeclarations_startSyncFor1Mutex(&itemCount->mutex);
          {
            itemCount->value = 0;
          }
          GenericSyncDeclarations_stopSyncFor1Mutex(&itemCount->mutex);
        }
        {
          GenericSharedDeclarations_SharedOf_boolean_0_t* isFull = &resultQueue->value.isFull;
          GenericSyncDeclarations_startSyncFor1Mutex(&isFull->mutex);
          {
            isFull->value = false;
          }
          GenericSyncDeclarations_stopSyncFor1Mutex(&isFull->mutex);
        }
        {
          GenericSharedDeclarations_SharedOf_boolean_0_t* isFinished = &resultQueue->value.isFinished;
          GenericSyncDeclarations_startSyncFor1Mutex(&isFinished->mutex);
          {
            isFinished->value = false;
          }
          GenericSyncDeclarations_stopSyncFor1Mutex(&isFinished->mutex);
        }
        queue_queueInit(&resultQueue->value.queue);
        mappers[__i] = pi_futureInit_a0f0b1a8a7(counterPointer, resultQueue);
      }
      GenericSyncDeclarations_stopSyncFor2Mutexes(&resultQueues.mutex, &resultQueue->mutex);
    }
  }
  
  GenericSharedDeclarations_SharedOf_long_double_0_t result;
  pthread_mutex_init(&result.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer = &result;
  GenericTaskDeclarations_saveAndJoinVoidFuture(pi_futureInit_a0m0h(resultPointer, resultQueuesPointer));
  /* another useless synchronization */
  GenericSyncDeclarations_startSyncFor1Mutex(&result.mutex);
  {
    printf("pi: %.50Lf\n", result.value);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&result.mutex);
  
  return 0;
}

static void pi_map(uint32_t threshold, GenericSharedDeclarations_SharedOf_uint32_0_t* counter, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue) 
{
  while (true)
  {
    uint32_t start;
    uint32_t end;
    
    GenericSyncDeclarations_startSyncFor1Mutex(&counter->mutex);
    {
      start = counter->value;
      if ( start == threshold ) 
      {
        GenericSyncDeclarations_stopSyncFor1Mutex(&counter->mutex);
        break;
      }
      uint32_t possibleEnd = start + PI_BLOCKSIZE;
      end = (possibleEnd <= threshold) ? (possibleEnd) : (threshold);
      counter->value = end;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&counter->mutex);
    
    pi_calcPiBlock(start, end, partialResultQueue);
  }
  
  {
    GenericSharedDeclarations_SharedOf_boolean_0_t* isFinished = &partialResultQueue->value.isFinished;
    GenericSyncDeclarations_startSyncFor2Mutexes(&partialResultQueue->mutex, &isFinished->mutex);
    {
      isFinished->value = true;
    }
    GenericSyncDeclarations_stopSyncFor2Mutexes(&partialResultQueue->mutex, &isFinished->mutex);
  }
}

static void pi_reduce(GenericSharedDeclarations_SharedOf_long_double_0_t* result, pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* resultQueues) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&result->mutex);
  {
    result->value = 0;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&result->mutex);
  
  bool areFinished[PI_MAPPERCOUNT];
  for ( int8_t __i = 0; __i < PI_MAPPERCOUNT; __i++ )
  {
    areFinished[__i] = false;
  }
  int32_t isFinishedCount = 0;
  
  while (true)
  {
    /* try to read from one queue if any one is available */
    GenericSharedDeclarations_SharedOf_int32_0_t* itemCountToBeProcessed = 0;
    queue_SharedTypes_0_SharedOf_Queue_0_t* queueToBeProcessed = 0;
    GenericSharedDeclarations_SharedOf_boolean_0_t* flagToBeProcessed = 0;
    for ( int8_t __i = 0; __i < PI_MAPPERCOUNT; __i++ )
    {
      if ( areFinished[__i] ) 
      {
        continue;
      }
      
      /* this is quite inefficient since only this thread will ever access the array;
also, resultQueue need not be locked since it is never changed from anywhere (but lock ellision
should not necessarily be done in case other, more costly locks could be avoided by keeping locks
for 'resultQueue')
=> lock ellsion for 'resultQueues' (and maybe 'resultQueue') */
      {
        pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue = &resultQueues->value[__i];
        GenericSyncDeclarations_startSyncFor2Mutexes(&resultQueues->mutex, &resultQueue->mutex);
        {
          /* isFull and isFinished actually need not be locked if resultQueue is always locked when they
are locked */
          {
            GenericSharedDeclarations_SharedOf_boolean_0_t* isFull = &resultQueue->value.isFull;
            GenericSharedDeclarations_SharedOf_boolean_0_t* isFinished = &resultQueue->value.isFinished;
            GenericSyncDeclarations_startSyncFor2Mutexes(&isFull->mutex, &isFinished->mutex);
            {
              if ( isFull->value ) 
              {
                itemCountToBeProcessed = &resultQueue->value.itemCount;
                queueToBeProcessed = &resultQueue->value.queue;
                flagToBeProcessed = &resultQueue->value.isFull;
                GenericSyncDeclarations_stopSyncFor2Mutexes(&isFull->mutex, &isFinished->mutex);
                GenericSyncDeclarations_stopSyncFor2Mutexes(&resultQueues->mutex, &resultQueue->mutex);
                break;
              } else if (isFinished->value) {
                areFinished[__i] = true;
                ++isFinishedCount;
                if ( isFinishedCount == PI_MAPPERCOUNT ) 
                {
                  GenericSyncDeclarations_stopSyncFor2Mutexes(&isFull->mutex, &isFinished->mutex);
                  GenericSyncDeclarations_stopSyncFor2Mutexes(&resultQueues->mutex, &resultQueue->mutex);
                  return ;
                }
              }
            }
            GenericSyncDeclarations_stopSyncFor2Mutexes(&isFull->mutex, &isFinished->mutex);
          }
        }
        GenericSyncDeclarations_stopSyncFor2Mutexes(&resultQueues->mutex, &resultQueue->mutex);
      }
    }
    
    /* in case no result was available it might be wise to delay the execution */
    if ( queueToBeProcessed == 0 ) 
    {
      struct timespec sleepingTime = (struct timespec){ .tv_nsec =PI_DELAY};
      nanosleep(&sleepingTime,0);
    }    else 
    {
      
      pi_addPartialResults(result, itemCountToBeProcessed, queueToBeProcessed, flagToBeProcessed);
    }
  }
}

static void pi_addPartialResults(GenericSharedDeclarations_SharedOf_long_double_0_t* result, GenericSharedDeclarations_SharedOf_int32_0_t* itemCount, queue_SharedTypes_0_SharedOf_Queue_0_t* queue, GenericSharedDeclarations_SharedOf_boolean_0_t* isFullFlag) 
{
  
  /* the synchronization here is acutally not necessary since the corresponding mapper task will not
proceed before the modification of 'isFullFlag' below
=> lock ellision would be helpful */
  GenericSyncDeclarations_startSyncFor2Mutexes(&queue->mutex, &itemCount->mutex);
  {
    for ( int32_t __i = 0; __i < itemCount->value; __i++ )
    {
      /* since 'result' is only used by the reducer thread the synchronization of it is basically useless
=> apply lock ellision or at least lock coarsening */
      GenericSyncDeclarations_startSyncFor1Mutex(&result->mutex);
      {
        long double tempResult;
        queue_queueSafeGet(queue, &tempResult);
        result->value = result->value + tempResult;
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&result->mutex);
    }
  }
  GenericSyncDeclarations_stopSyncFor2Mutexes(&queue->mutex, &itemCount->mutex);
  
  GenericSyncDeclarations_startSyncFor1Mutex(&isFullFlag->mutex);
  {
    isFullFlag->value = false;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&isFullFlag->mutex);
}

static void pi_calcPiBlock(uint32_t start, uint32_t end, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue) 
{
  int32_t mapCounter = 0;
  for ( uint32_t i = start; i < end; ++i )
  {
    /* 'resultQueue' need not be synchronized since it is never changed => apply lock ellision */
    GenericSyncDeclarations_startSyncFor1Mutex(&resultQueue->mutex);
    {
      queue_queueSafeAdd(&resultQueue->value.queue, pi_calcPiItem(i));
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&resultQueue->mutex);
    
    ++mapCounter;
    
    if ( mapCounter == QUEUE_QUEUESIZE - 1 || i == end - 1 ) 
    {
      /* the two following syncs could be merged into one => coarsen!
'itemCount' will not be accessed by the reducer before a change of 'isFull' => lock ellision
actually both 'itemCount' and 'isFull' need not be locked since their container is always locked 
first => lock ellision (either the two members or resultQueue itself) */
      {
        GenericSharedDeclarations_SharedOf_int32_0_t* itemCount = &resultQueue->value.itemCount;
        GenericSyncDeclarations_startSyncFor2Mutexes(&resultQueue->mutex, &itemCount->mutex);
        {
          itemCount->value = mapCounter;
        }
        GenericSyncDeclarations_stopSyncFor2Mutexes(&resultQueue->mutex, &itemCount->mutex);
      }
      {
        GenericSharedDeclarations_SharedOf_boolean_0_t* isFull = &resultQueue->value.isFull;
        GenericSyncDeclarations_startSyncFor2Mutexes(&resultQueue->mutex, &isFull->mutex);
        {
          isFull->value = true;
        }
        GenericSyncDeclarations_stopSyncFor2Mutexes(&resultQueue->mutex, &isFull->mutex);
      }
      mapCounter = 0;
      /* busy wait until the queue is emptied by the reducer */
      while (true)
      {
        /* again, one unnecessary synchronization */
        {
          GenericSharedDeclarations_SharedOf_boolean_0_t* isFull = &resultQueue->value.isFull;
          GenericSyncDeclarations_startSyncFor2Mutexes(&resultQueue->mutex, &isFull->mutex);
          {
            if ( !(isFull->value) ) 
            {
              GenericSyncDeclarations_stopSyncFor2Mutexes(&resultQueue->mutex, &isFull->mutex);
              break;
            }
          }
          GenericSyncDeclarations_stopSyncFor2Mutexes(&resultQueue->mutex, &isFull->mutex);
        }
        struct timespec sleepingTime = (struct timespec){ .tv_nsec =PI_DELAY};
        nanosleep(&sleepingTime,0);
      }
    }
  }
}

static long double pi_calcPiItem(uint32_t index) 
{
  return 4.0 * (pow(-1.0,index) / (2.0 * index + 1.0));
}

static void* pi_parFun_a0a5a1b0i0h(void* voidArgs) 
{
  pi_Args_a0a5a1b0i0h_t* args = ((pi_Args_a0a5a1b0i0h_t*)(voidArgs));
  pi_map(PI_THRESHOLD, (args)->counterPointer, (args)->resultQueue);
  free(voidArgs);
  return 0;
}

static void* pi_parFun_a0a21a7(void* voidArgs) 
{
  pi_Args_a0a21a7_t* args = ((pi_Args_a0a21a7_t*)(voidArgs));
  pi_reduce((args)->resultPointer, (args)->resultQueuesPointer);
  free(voidArgs);
  return 0;
}

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0f0b1a8a7(GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue) 
{
  pi_Args_a0a5a1b0i0h_t* args_a0f0b1a8a7 = malloc(sizeof(pi_Args_a0a5a1b0i0h_t));
  args_a0f0b1a8a7->counterPointer = counterPointer;
  args_a0f0b1a8a7->resultQueue = resultQueue;
  pthread_t pth;
  pthread_create(&pth,0,&pi_parFun_a0a5a1b0i0h,args_a0f0b1a8a7);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0m0h(GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer, pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* resultQueuesPointer) 
{
  pi_Args_a0a21a7_t* args_a0m0h = malloc(sizeof(pi_Args_a0a21a7_t));
  args_a0m0h->resultPointer = resultPointer;
  args_a0m0h->resultQueuesPointer = resultQueuesPointer;
  pthread_t pth;
  pthread_create(&pth,0,&pi_parFun_a0a21a7,args_a0m0h);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

