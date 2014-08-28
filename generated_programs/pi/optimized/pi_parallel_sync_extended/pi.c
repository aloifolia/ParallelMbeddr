#include "pi.h"


#include "queue.h"
#include <float.h>
#include <stdio.h>
#include <sys/time.h>
#include <math.h>
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include "pi_SharedTypes_0.h"
#include <time.h>
#include <stdlib.h>

typedef struct pi_Args_a0a5a1b0m0h pi_Args_a0a5a1b0m0h_t;
struct pi_Args_a0a5a1b0m0h {
  GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer;
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue;
};

typedef struct pi_Args_a0a61a7 pi_Args_a0a61a7_t;
struct pi_Args_a0a61a7 {
  GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer;
  pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* resultQueuesPointer;
};

static void pi_map(uint32_t threshold, GenericSharedDeclarations_SharedOf_uint32_0_t* counter, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue);

static void pi_reduce(GenericSharedDeclarations_SharedOf_long_double_0_t* result, pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* resultQueues);

static bool pi_setFinished(int32_t i, bool areFinished[PI_MAPPERCOUNT], int32_t* isFinishedCount);

static void pi_addPartialResults(GenericSharedDeclarations_SharedOf_long_double_0_t* result, GenericSharedDeclarations_SharedOf_int32_0_t* itemCount, queue_SharedTypes_0_SharedOf_Queue_0_t* queue, GenericSharedDeclarations_SharedOf_boolean_0_t* isFullFlag);

static void pi_calcPiBlock(uint32_t start, uint32_t end, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue);

static long double pi_calcPiItem(uint32_t index);

static void* pi_parFun_a0a5a1b0m0h(void* voidArgs);

static void* pi_parFun_a0a61a7(void* voidArgs);

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0f0b1a21a7(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue, GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer);

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0q0h(pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* resultQueuesPointer, GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  struct timeval begin;
  gettimeofday(&begin, 0);
  /* 
   * Scenario: basically like in 'pi_parallel_sync' (calculate pi in a map-reduce fashion). But this time every mapper has its own queue (like a channel). The reducer has access to every queue and repeatedly tries to read a next item from the next available queue. The crucial difference to 'pi_parallel_sync' is that a mapper does not store the results of complete pi-blocks. Instead, it inserts every pi-item into its queue separately (which is the reason for the program's slowness).
   */

  
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
  
  pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t resultQueues;
  pi_SharedTypes_0_mutexInit_6(&resultQueues);
  pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* resultQueuesPointer = &resultQueues;
  GenericTaskDeclarations_VoidFuture_t mappers[PI_MAPPERCOUNT];
  for ( int8_t __i = 0; __i < PI_MAPPERCOUNT; __i++ )
  {
    /* 
     * the following two syncs are unnecessary since 
     * - 'resultQueues' is never changed, at all => lock ellision
     * - each 'resultQueue' is fully processed before it is given to a corresponding task => lock ellision
     *   by taking into account the array indices
     */

    {
      pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue = &resultQueues.value[__i];
      GenericSyncDeclarations_startSyncFor1Mutex(&(resultQueue)->mutex);
      {
        /* 
         * these syncs could theoretically be safely deleted => lock ellision
         */

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
        mappers[__i] = pi_futureInit_a0f0b1a21a7(resultQueue, counterPointer);
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(resultQueue)->mutex);
    }
  }
  
  GenericSharedDeclarations_SharedOf_long_double_0_t result;
  pthread_mutex_init(&result.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer = &result;
  GenericTaskDeclarations_saveAndJoinVoidFuture(pi_futureInit_a0q0h(resultQueuesPointer, resultPointer));
  
  struct timeval end;
  gettimeofday(&end, 0);
  double timeSpent = ((double)((end.tv_usec - begin.tv_usec))) / 1000000 + ((double)((end.tv_sec - begin.tv_sec)));
  printf("\n#### duration %f\n\n", timeSpent);
  printf("## blocksize:  %d\n", PI_BLOCKSIZE);
  printf("## blockcount: %d\n", PI_BLOCKCOUNT);
  printf("## threshold:  %d\n", PI_THRESHOLD);
  
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

static void pi_map(uint32_t threshold, GenericSharedDeclarations_SharedOf_uint32_0_t* counter, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue) 
{
  while (true)
  {
    uint32_t start;
    uint32_t end;
    
    {
      GenericSharedDeclarations_SharedOf_uint32_0_t* myCounter = counter;
      GenericSyncDeclarations_startSyncFor1Mutex(&(myCounter)->mutex);
      {
        start = myCounter->value;
        if ( start == threshold ) 
        {
          GenericSyncDeclarations_stopSyncFor1Mutex(&(myCounter)->mutex);
          break;
        }
        uint32_t possibleEnd = start + PI_BLOCKSIZE;
        end = (possibleEnd <= threshold) ? (possibleEnd) : (threshold);
        myCounter->value = end;
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(myCounter)->mutex);
    }
    
    pi_calcPiBlock(start, end, partialResultQueue);
  }
  
  {
    pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* myQueue = partialResultQueue;
    GenericSharedDeclarations_SharedOf_boolean_0_t* isFinished = &myQueue->value.isFinished;
    GenericSyncDeclarations_startSyncFor2Mutexes(&(myQueue)->mutex, &(isFinished)->mutex);
    {
      isFinished->value = true;
    }
    GenericSyncDeclarations_stopSyncFor2Mutexes(&(myQueue)->mutex, &(isFinished)->mutex);
  }
}

static void pi_reduce(GenericSharedDeclarations_SharedOf_long_double_0_t* result, pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* resultQueues) 
{
  {
    GenericSharedDeclarations_SharedOf_long_double_0_t* myResult = result;
    GenericSyncDeclarations_startSyncFor1Mutex(&(myResult)->mutex);
    {
      myResult->value = 0;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(myResult)->mutex);
  }
  
  bool areFinished[PI_MAPPERCOUNT];
  for ( int8_t __i = 0; __i < PI_MAPPERCOUNT; __i++ )
  {
    areFinished[__i] = false;
  }
  int32_t isFinishedCount = 0;
  
  while (true)
  {
    /* 
     * try to read from one queue if any one is available
     */

    for ( int8_t __i = 0; __i < PI_MAPPERCOUNT; __i++ )
    {
      if ( areFinished[__i] ) 
      {
        continue;
      }
      
      /* 
       * this is quite inefficient since only this thread will ever access the array;
       * also, resultQueue need not be locked since it is never changed from anywhere (but lock ellision
       * should not necessarily be done, in case other, more costly, locks could be avoided by keeping locks
       * for 'resultQueue')
       * => lock ellsion for 'resultQueues' (and maybe 'resultQueue')
       */

      {
        pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* myQueues = resultQueues;
        pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue = &myQueues->value[__i];
        GenericSharedDeclarations_SharedOf_boolean_0_t* isFull2 = &resultQueue->value.isFull;
        GenericSyncDeclarations_startSyncFor2Mutexes(&(resultQueue)->mutex, &(isFull2)->mutex);
        {
          /* 
           * isFull and isFinished actually need not be locked if resultQueue is always locked when they
           * are locked
           */

          {
            GenericSharedDeclarations_SharedOf_boolean_0_t* isFull = &resultQueue->value.isFull;
            GenericSharedDeclarations_SharedOf_boolean_0_t* isFinished = &resultQueue->value.isFinished;
            GenericSyncDeclarations_startSyncFor2Mutexes(&(isFull)->mutex, &(isFinished)->mutex);
            {
              if ( isFull->value ) 
              {
                pi_addPartialResults(result, &resultQueue->value.itemCount, &resultQueue->value.queue, &resultQueue->value.isFull);
              } else if (isFinished->value && pi_setFinished(__i, areFinished, &isFinishedCount)) {
                GenericSyncDeclarations_stopSyncFor2Mutexes(&(isFull)->mutex, &(isFinished)->mutex);
                GenericSyncDeclarations_stopSyncFor2Mutexes(&(resultQueue)->mutex, &(isFull2)->mutex);
                return ;
              }
            }
            GenericSyncDeclarations_stopSyncFor2Mutexes(&(isFull)->mutex, &(isFinished)->mutex);
          }
        }
        GenericSyncDeclarations_stopSyncFor2Mutexes(&(resultQueue)->mutex, &(isFull2)->mutex);
      }
    }
    
    /* 
     * in case no result was available it might be wise to delay the execution
     */

    struct timespec sleepingTime = (struct timespec){ .tv_nsec =PI_DELAY};
    nanosleep(&sleepingTime, 0);
  }
}

static bool pi_setFinished(int32_t i, bool areFinished[PI_MAPPERCOUNT], int32_t* isFinishedCount) 
{
  areFinished[i] = true;
  (*isFinishedCount)++;
  return *isFinishedCount == PI_MAPPERCOUNT;
}

static void pi_addPartialResults(GenericSharedDeclarations_SharedOf_long_double_0_t* result, GenericSharedDeclarations_SharedOf_int32_0_t* itemCount, queue_SharedTypes_0_SharedOf_Queue_0_t* queue, GenericSharedDeclarations_SharedOf_boolean_0_t* isFullFlag) 
{
  /* 
   * the synchronization here is actually not necessary since the corresponding mapper task will not
   * proceed before the modification of 'isFullFlag' below
   * => lock ellision would be helpful
   */

  {
    queue_SharedTypes_0_SharedOf_Queue_0_t* myQueue = queue;
    GenericSharedDeclarations_SharedOf_int32_0_t* myItemCount = itemCount;
    GenericSyncDeclarations_startSyncFor2Mutexes(&(myQueue)->mutex, &(myItemCount)->mutex);
    {
      for ( int32_t __i = 0; __i < myItemCount->value; __i++ )
      {
        /* 
         * since 'result' is only used by the reducer thread the synchronization of it is basically useless
         * => apply lock ellision or at least lock coarsening
         */

        {
          GenericSharedDeclarations_SharedOf_long_double_0_t* myResult = result;
          {
            long double tempResult;
            queue_queueSafeGet(myQueue, &tempResult);
            GenericSyncDeclarations_startSyncFor1Mutex(&(myResult)->mutex);
            {
              myResult->value = myResult->value + tempResult;
            }
            GenericSyncDeclarations_stopSyncFor1Mutex(&(myResult)->mutex);
          }
        }
      }
    }
    GenericSyncDeclarations_stopSyncFor2Mutexes(&(myQueue)->mutex, &(myItemCount)->mutex);
  }
  
  {
    GenericSharedDeclarations_SharedOf_boolean_0_t* flag = isFullFlag;
    GenericSyncDeclarations_startSyncFor1Mutex(&(flag)->mutex);
    {
      flag->value = false;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(flag)->mutex);
  }
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
      pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* queue = resultQueue;
      GenericSyncDeclarations_startSyncFor1Mutex(&(queue)->mutex);
      {
        queue_queueSafeAdd(&queue->value.queue, pi_calcPiItem(i));
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(queue)->mutex);
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
        pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* queue = resultQueue;
        GenericSharedDeclarations_SharedOf_int32_0_t* itemCount = &queue->value.itemCount;
        GenericSyncDeclarations_startSyncFor2Mutexes(&(queue)->mutex, &(itemCount)->mutex);
        {
          itemCount->value = mapCounter;
        }
        GenericSyncDeclarations_stopSyncFor2Mutexes(&(queue)->mutex, &(itemCount)->mutex);
      }
      {
        pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* queue = resultQueue;
        GenericSharedDeclarations_SharedOf_boolean_0_t* isFull = &queue->value.isFull;
        GenericSyncDeclarations_startSyncFor2Mutexes(&(queue)->mutex, &(isFull)->mutex);
        {
          isFull->value = true;
        }
        GenericSyncDeclarations_stopSyncFor2Mutexes(&(queue)->mutex, &(isFull)->mutex);
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
          pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* queue = resultQueue;
          GenericSharedDeclarations_SharedOf_boolean_0_t* isFull = &queue->value.isFull;
          GenericSyncDeclarations_startSyncFor2Mutexes(&(queue)->mutex, &(isFull)->mutex);
          {
            if ( !(isFull->value) ) 
            {
              GenericSyncDeclarations_stopSyncFor2Mutexes(&(queue)->mutex, &(isFull)->mutex);
              break;
            }
          }
          GenericSyncDeclarations_stopSyncFor2Mutexes(&(queue)->mutex, &(isFull)->mutex);
        }
        struct timespec sleepingTime = (struct timespec){ .tv_nsec =PI_DELAY};
        nanosleep(&sleepingTime, 0);
      }
    }
  }
}

static long double pi_calcPiItem(uint32_t index) 
{
  return 4.0 * (pow(-1.0, index) / (2.0 * index + 1.0));
}

static void* pi_parFun_a0a5a1b0m0h(void* voidArgs) 
{
  pi_Args_a0a5a1b0m0h_t* args = ((pi_Args_a0a5a1b0m0h_t*)(voidArgs));
  pi_map(PI_THRESHOLD, (args)->counterPointer, (args)->resultQueue);
  free(voidArgs);
  return 0;
}

static void* pi_parFun_a0a61a7(void* voidArgs) 
{
  pi_Args_a0a61a7_t* args = ((pi_Args_a0a61a7_t*)(voidArgs));
  pi_reduce((args)->resultPointer, (args)->resultQueuesPointer);
  free(voidArgs);
  return 0;
}

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0f0b1a21a7(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* resultQueue, GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer) 
{
  pi_Args_a0a5a1b0m0h_t* args_a0f0b1a21a7 = malloc(sizeof(pi_Args_a0a5a1b0m0h_t));
  args_a0f0b1a21a7->counterPointer = counterPointer;
  args_a0f0b1a21a7->resultQueue = resultQueue;
  pthread_t pth;
  pthread_create(&pth,0,&pi_parFun_a0a5a1b0m0h,args_a0f0b1a21a7);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0q0h(pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* resultQueuesPointer, GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer) 
{
  pi_Args_a0a61a7_t* args_a0q0h = malloc(sizeof(pi_Args_a0a61a7_t));
  args_a0q0h->resultPointer = resultPointer;
  args_a0q0h->resultQueuesPointer = resultQueuesPointer;
  pthread_t pth;
  pthread_create(&pth,0,&pi_parFun_a0a61a7,args_a0q0h);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

