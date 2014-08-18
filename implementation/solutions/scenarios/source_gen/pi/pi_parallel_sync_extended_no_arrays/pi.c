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

typedef struct pi_Args_a0a61a7 pi_Args_a0a61a7_t;
struct pi_Args_a0a61a7 {
  GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer;
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue1Pointer;
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue2Pointer;
};

typedef struct pi_Args_a5a0i pi_Args_a5a0i_t;
struct pi_Args_a5a0i {
  GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer;
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue;
};

static GenericTaskDeclarations_Task_t pi_initMapper(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue, GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer);

static void pi_map(uint32_t threshold, GenericSharedDeclarations_SharedOf_uint32_0_t* counter, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue);

static void pi_reduce(GenericSharedDeclarations_SharedOf_long_double_0_t* result, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue1, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue2);

static bool pi_queueIsFull(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue);

static bool pi_queueIsFinished(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue);

static void pi_setNextQueue(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* nextQueueContainer, GenericSharedDeclarations_SharedOf_int32_0_t** nextItemCount, queue_SharedTypes_0_SharedOf_Queue_0_t** nextQueue, GenericSharedDeclarations_SharedOf_boolean_0_t** nextFlag);

static bool pi_setFinished(bool* isFinished, int32_t* isFinishedCount);

static void pi_addPartialResults(GenericSharedDeclarations_SharedOf_long_double_0_t* result, GenericSharedDeclarations_SharedOf_int32_0_t* itemCount, queue_SharedTypes_0_SharedOf_Queue_0_t* queue, GenericSharedDeclarations_SharedOf_boolean_0_t* isFullFlag);

static void pi_calcPiBlock(uint32_t start, uint32_t end, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue);

static long double pi_calcPiItem(uint32_t index);

static void* pi_parFun_a0a61a7(void* voidArgs);

static void* pi_parFun_a5a0i(void* voidArgs);

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0q0h(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue2Pointer, GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue1Pointer);

static inline GenericTaskDeclarations_Task_t pi_taskInit_a5a0i(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue, GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_uint32_0_t counter;
  pthread_mutex_init(&counter.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer = &counter;
  /* 
   * obviously a useless synchronization
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(counter).mutex);
  {
    counter.value = 0;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(counter).mutex);
  
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t resultQueue1;
  pi_SharedTypes_0_mutexInit_4(&resultQueue1);
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue1Pointer = &resultQueue1;
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t resultQueue2;
  pi_SharedTypes_0_mutexInit_4(&resultQueue2);
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue2Pointer = &resultQueue2;
  GenericTaskDeclarations_VoidFuture_t mappers[PI_MAPPERCOUNT];
  GenericTaskDeclarations_VoidFuture_t mapper1 = GenericTaskDeclarations_runTaskAndGetVoidFuture(pi_initMapper(resultQueue1Pointer, counterPointer));
  GenericTaskDeclarations_VoidFuture_t mapper2 = GenericTaskDeclarations_runTaskAndGetVoidFuture(pi_initMapper(resultQueue2Pointer, counterPointer));
  for ( int8_t __i = 0; __i < PI_MAPPERCOUNT; __i++ )
  {
    /* 
     * the following two syncs are unnecessary since 
     * - 'resultQueues' is never changed, at all => lock ellision
     * - each 'resultQueue' is fully processed before it is given to a corresponding task => lock ellision
     *   by taking into account the array indices
     */

  }
  
  GenericSharedDeclarations_SharedOf_long_double_0_t result;
  pthread_mutex_init(&result.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer = &result;
  GenericTaskDeclarations_saveAndJoinVoidFuture(pi_futureInit_a0q0h(resultQueue2Pointer, resultPointer, resultQueue1Pointer));
  /* 
   * synchronization useless: after the termination of the reducer no other task will ever access result
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(result).mutex);
  {
    printf("pi: %.50Lf\n", result.value);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(result).mutex);
  
  return 0;
}

static GenericTaskDeclarations_Task_t pi_initMapper(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue, GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer) 
{
  {
    {
      GenericSharedDeclarations_SharedOf_int32_0_t* itemCount = &resultQueue->value.itemCount;
      GenericSyncDeclarations_startSyncFor1Mutex(&(itemCount)->mutex);
      {
        itemCount->value = 0;
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(itemCount)->mutex);
    }
    {
      GenericSharedDeclarations_SharedOf_boolean_0_t* isFull = &resultQueue->value.isFull;
      GenericSyncDeclarations_startSyncFor1Mutex(&(isFull)->mutex);
      {
        isFull->value = false;
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(isFull)->mutex);
    }
    {
      GenericSharedDeclarations_SharedOf_boolean_0_t* isFinished = &resultQueue->value.isFinished;
      GenericSyncDeclarations_startSyncFor1Mutex(&(isFinished)->mutex);
      {
        isFinished->value = false;
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(isFinished)->mutex);
    }
    queue_queueInit(&resultQueue->value.queue);
    return pi_taskInit_a5a0i(resultQueue, counterPointer);
  }
}

static void pi_map(uint32_t threshold, GenericSharedDeclarations_SharedOf_uint32_0_t* counter, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue) 
{
  while (true)
  {
    uint32_t start;
    uint32_t end;
    
    GenericSyncDeclarations_startSyncFor1Mutex(&(counter)->mutex);
    {
      start = counter->value;
      if ( start == threshold ) 
      {
        GenericSyncDeclarations_stopSyncFor1Mutex(&(counter)->mutex);
        break;
      }
      uint32_t possibleEnd = start + PI_BLOCKSIZE;
      end = (possibleEnd <= threshold) ? (possibleEnd) : (threshold);
      counter->value = end;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(counter)->mutex);
    
    pi_calcPiBlock(start, end, partialResultQueue);
  }
  
  {
    GenericSharedDeclarations_SharedOf_boolean_0_t* isFinished = &partialResultQueue->value.isFinished;
    GenericSyncDeclarations_startSyncFor1Mutex(&(isFinished)->mutex);
    {
      isFinished->value = true;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(isFinished)->mutex);
  }
}

static void pi_reduce(GenericSharedDeclarations_SharedOf_long_double_0_t* result, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue1, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue2) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&(result)->mutex);
  {
    result->value = 0;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(result)->mutex);
  
  bool isFinished1 = false;
  bool isFinished2 = false;
  int32_t isFinishedCount = 0;
  
  while (true)
  {
    /* 
     * try to read from one queue if any one is available
     */

    GenericSharedDeclarations_SharedOf_int32_0_t* itemCountToBeProcessed = 0;
    queue_SharedTypes_0_SharedOf_Queue_0_t* queueToBeProcessed = 0;
    GenericSharedDeclarations_SharedOf_boolean_0_t* flagToBeProcessed = 0;
    
    if ( !(isFinished1) ) 
    {
      if ( pi_queueIsFull(resultQueue1) ) 
      {
        {
          itemCountToBeProcessed = &resultQueue1->value.itemCount;
          queueToBeProcessed = &resultQueue1->value.queue;
          flagToBeProcessed = &resultQueue1->value.isFull;
        }
        break;
      } else if (pi_queueIsFinished(resultQueue1)) {
        if ( pi_setFinished(&isFinished1, &isFinishedCount) ) 
        {
          return ;
        }
      }
    } else if (!(isFinished2)) {
      if ( pi_queueIsFull(resultQueue2) ) 
      {
        {
          itemCountToBeProcessed = &resultQueue2->value.itemCount;
          queueToBeProcessed = &resultQueue2->value.queue;
          flagToBeProcessed = &resultQueue2->value.isFull;
        }
        break;
      } else if (pi_queueIsFinished(resultQueue2)) {
        if ( pi_setFinished(&isFinished2, &isFinishedCount) ) 
        {
          return ;
        }
      }
    }
    
    /* 
     * in case no result was available it might be wise to delay the execution
     */

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

static bool pi_queueIsFull(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue) 
{
  {
    GenericSharedDeclarations_SharedOf_boolean_0_t* isFull = &resultQueue->value.isFull;
    GenericSyncDeclarations_startSyncFor2Mutexes(&(resultQueue)->mutex, &(isFull)->mutex);
    {
      GenericSyncDeclarations_stopSyncFor2Mutexes(&(resultQueue)->mutex, &(isFull)->mutex);
      return isFull->value;
    }
    GenericSyncDeclarations_stopSyncFor2Mutexes(&(resultQueue)->mutex, &(isFull)->mutex);
  }
  return false;
}

static bool pi_queueIsFinished(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue) 
{
  {
    GenericSharedDeclarations_SharedOf_boolean_0_t* isFinished = &resultQueue->value.isFinished;
    GenericSyncDeclarations_startSyncFor2Mutexes(&(resultQueue)->mutex, &(isFinished)->mutex);
    {
      GenericSyncDeclarations_stopSyncFor2Mutexes(&(resultQueue)->mutex, &(isFinished)->mutex);
      return isFinished->value;
    }
    GenericSyncDeclarations_stopSyncFor2Mutexes(&(resultQueue)->mutex, &(isFinished)->mutex);
  }
  return false;
}

static void pi_setNextQueue(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* nextQueueContainer, GenericSharedDeclarations_SharedOf_int32_0_t** nextItemCount, queue_SharedTypes_0_SharedOf_Queue_0_t** nextQueue, GenericSharedDeclarations_SharedOf_boolean_0_t** nextFlag) 
{
  {
    *nextItemCount = &nextQueueContainer->value.itemCount;
    *nextQueue = &nextQueueContainer->value.queue;
    *nextFlag = &nextQueueContainer->value.isFull;
  }
}

static bool pi_setFinished(bool* isFinished, int32_t* isFinishedCount) 
{
  *isFinished = true;
  *isFinishedCount++;
  return *isFinishedCount == PI_MAPPERCOUNT;
}

static void pi_addPartialResults(GenericSharedDeclarations_SharedOf_long_double_0_t* result, GenericSharedDeclarations_SharedOf_int32_0_t* itemCount, queue_SharedTypes_0_SharedOf_Queue_0_t* queue, GenericSharedDeclarations_SharedOf_boolean_0_t* isFullFlag) 
{
  
  /* 
   * the synchronization here is actually not necessary since the corresponding mapper task will not
   * proceed before the modification of 'isFullFlag' below
   * => lock ellision would be helpful
   * ! itemCount's sync is falsely removed since it its setting inside a function breaks the current simplified pointer analysis
   */

  GenericSyncDeclarations_startSyncFor2Mutexes(&(queue)->mutex, &(itemCount)->mutex);
  {
    for ( int32_t __i = 0; __i < itemCount->value; __i++ )
    {
      /* 
       * since 'result' is only used by the reducer thread the synchronization of it is basically useless
       * => apply lock ellision or at least lock coarsening
       */

      {
        long double tempResult;
        queue_queueSafeGet(queue, &tempResult);
        GenericSyncDeclarations_startSyncFor1Mutex(&(result)->mutex);
        {
          result->value = result->value + tempResult;
        }
        GenericSyncDeclarations_stopSyncFor1Mutex(&(result)->mutex);
      }
    }
  }
  GenericSyncDeclarations_stopSyncFor2Mutexes(&(queue)->mutex, &(itemCount)->mutex);
  
  GenericSyncDeclarations_startSyncFor1Mutex(&(isFullFlag)->mutex);
  {
    isFullFlag->value = false;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(isFullFlag)->mutex);
}

static void pi_calcPiBlock(uint32_t start, uint32_t end, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue) 
{
  int32_t mapCounter = 0;
  for ( uint32_t i = start; i < end; ++i )
  {
    /* 
     * 'resultQueue' need not be synchronized since it is never changed => apply lock ellision
     */

    {
      queue_queueSafeAdd(&resultQueue->value.queue, pi_calcPiItem(i));
    }
    
    ++mapCounter;
    
    if ( mapCounter == QUEUE_QUEUESIZE - 1 || i == end - 1 ) 
    {
      /* 
       * the two following syncs could be merged into one => coarsen!
       * 'itemCount' will not be accessed by the reducer before a change of 'isFull' => lock ellision
       * actually both 'itemCount' and 'isFull' need not be locked since their container is always locked 
       * first => lock ellision (either the two members or resultQueue itself)
       */

      {
        GenericSharedDeclarations_SharedOf_int32_0_t* itemCount = &resultQueue->value.itemCount;
        GenericSyncDeclarations_startSyncFor1Mutex(&(itemCount)->mutex);
        {
          itemCount->value = mapCounter;
        }
        GenericSyncDeclarations_stopSyncFor1Mutex(&(itemCount)->mutex);
      }
      {
        GenericSharedDeclarations_SharedOf_boolean_0_t* isFull = &resultQueue->value.isFull;
        GenericSyncDeclarations_startSyncFor1Mutex(&(isFull)->mutex);
        {
          isFull->value = true;
        }
        GenericSyncDeclarations_stopSyncFor1Mutex(&(isFull)->mutex);
      }
      mapCounter = 0;
      /* 
       * busy wait until the queue is emptied by the reducer
       */

      while (true)
      {
        /* 
         * again, one unnecessary synchronization
         */

        {
          GenericSharedDeclarations_SharedOf_boolean_0_t* isFull = &resultQueue->value.isFull;
          GenericSyncDeclarations_startSyncFor1Mutex(&(isFull)->mutex);
          {
            if ( !(isFull->value) ) 
            {
              GenericSyncDeclarations_stopSyncFor1Mutex(&(isFull)->mutex);
              break;
            }
          }
          GenericSyncDeclarations_stopSyncFor1Mutex(&(isFull)->mutex);
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

static void* pi_parFun_a0a61a7(void* voidArgs) 
{
  pi_Args_a0a61a7_t* args = ((pi_Args_a0a61a7_t*)(voidArgs));
  pi_reduce((args)->resultPointer, (args)->resultQueue1Pointer, (args)->resultQueue2Pointer);
  free(voidArgs);
  return 0;
}

static void* pi_parFun_a5a0i(void* voidArgs) 
{
  pi_Args_a5a0i_t* args = ((pi_Args_a5a0i_t*)(voidArgs));
  pi_map(PI_THRESHOLD, (args)->counterPointer, (args)->resultQueue);
  free(voidArgs);
  return 0;
}

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0q0h(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue2Pointer, GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue1Pointer) 
{
  pi_Args_a0a61a7_t* args_a0q0h = malloc(sizeof(pi_Args_a0a61a7_t));
  args_a0q0h->resultPointer = resultPointer;
  args_a0q0h->resultQueue1Pointer = resultQueue1Pointer;
  args_a0q0h->resultQueue2Pointer = resultQueue2Pointer;
  pthread_t pth;
  pthread_create(&pth,0,&pi_parFun_a0a61a7,args_a0q0h);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static inline GenericTaskDeclarations_Task_t pi_taskInit_a5a0i(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue, GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer) 
{
  pi_Args_a5a0i_t* args_a5a0i = malloc(sizeof(pi_Args_a5a0i_t));
  args_a5a0i->counterPointer = counterPointer;
  args_a5a0i->resultQueue = resultQueue;
  return (GenericTaskDeclarations_Task_t){args_a5a0i,&pi_parFun_a5a0i,sizeof(pi_Args_a5a0i_t)};
}

