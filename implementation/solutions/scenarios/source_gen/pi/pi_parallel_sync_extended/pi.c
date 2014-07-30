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

typedef struct pi_Args_a0a1a1a0p0i pi_Args_a0a1a1a0p0i_t;
struct pi_Args_a0a1a1a0p0i {
  GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer;
  queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueuePointer;
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue;
};

typedef struct pi_Args_a0r0i pi_Args_a0r0i_t;
struct pi_Args_a0r0i {
  pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* partialResultQueuesPointer;
};

typedef struct pi_Args_a0a22a8 pi_Args_a0a22a8_t;
struct pi_Args_a0a22a8 {
  GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer;
  queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueuePointer;
};

typedef struct pi_MinMax pi_MinMax_t;
struct pi_MinMax {
  long double min;
  long double max;
};

static void pi_map(uint32_t threshold, GenericSharedDeclarations_SharedOf_uint32_0_t* counter, queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueue, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultStore);

static void pi_reduce(uint32_t numberOfItems, GenericSharedDeclarations_SharedOf_long_double_0_t* result, queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueue);

static long double pi_calcPiBlock(uint32_t start, uint32_t end, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue, uint32_t* mapCounter);

static long double pi_calcPiItem(uint32_t index);

static void* pi_parFun_a0r0i(void* voidArgs);

static void* pi_parFun_a0a1a1a0p0i(void* voidArgs);

static void* pi_parFun_a0a22a8(void* voidArgs);

static pi_MinMax_t pi_processPartialResult(queue_SharedTypes_0_SharedOf_Queue_0_t* queue, GenericSharedDeclarations_SharedOf_boolean_0_t* isEmptyFlag);

static pi_MinMax_t pi_processPartialResults(pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* partialResultQueues);

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0b0b0a51a8(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue, GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer, queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueuePointer);

static GenericTaskDeclarations_Future_t pi_futureInit_a71a8(pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* partialResultQueuesPointer);

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0w0i(GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer, queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueuePointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  pi_MinMax_t x;
  x.min = LDBL_MIN;
  x.max = LDBL_MAX;
  
  queue_SharedTypes_0_SharedOf_Queue_0_t resultQueue;
  queue_SharedTypes_0_mutexInit_2(&resultQueue);
  queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueuePointer = &resultQueue;
  queue_queueInit(resultQueuePointer);
  
  GenericSharedDeclarations_SharedOf_uint32_0_t counter;
  pthread_mutex_init(&counter.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer = &counter;
  GenericSyncDeclarations_startSyncFor1Mutex(&counter.mutex);
  {
    counter.value = 0;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&counter.mutex);
  
  pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t partialResultQueues;
  pi_SharedTypes_0_mutexInit_6(&partialResultQueues);
  pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* partialResultQueuesPointer = &partialResultQueues;
  GenericTaskDeclarations_VoidFuture_t mappers[PI_MAPPERCOUNT];
  for ( int8_t __i = 0; __i < PI_MAPPERCOUNT; __i++ )
  {
    {
      pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue = &partialResultQueues.value[__i];
      GenericSyncDeclarations_startSyncFor2Mutexes(&partialResultQueues.mutex, &partialResultQueue->mutex);
      {
        queue_queueInit(&partialResultQueue->value.queue);
        mappers[__i] = pi_futureInit_a0b0b0a51a8(partialResultQueue, counterPointer, resultQueuePointer);
      }
      GenericSyncDeclarations_stopSyncFor2Mutexes(&partialResultQueues.mutex, &partialResultQueue->mutex);
    }
  }
  
  GenericTaskDeclarations_Future_t minMaxFinder = pi_futureInit_a71a8(partialResultQueuesPointer);
  
  GenericSharedDeclarations_SharedOf_long_double_0_t result;
  pthread_mutex_init(&result.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer = &result;
  
  GenericTaskDeclarations_saveAndJoinVoidFuture(pi_futureInit_a0w0i(resultPointer, resultQueuePointer));
  GenericSyncDeclarations_startSyncFor1Mutex(&result.mutex);
  {
    printf("pi: %.50Lf\n", result.value);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&result.mutex);
  
  pi_MinMax_t* minMax = ((pi_MinMax_t*)(GenericTaskDeclarations_getFutureResult(&minMaxFinder)));
  printf("min: %.50Lf\n", minMax->min);
  printf("max: %.50Lf\n", minMax->max);
  
  return 0;
}

static void pi_map(uint32_t threshold, GenericSharedDeclarations_SharedOf_uint32_0_t* counter, queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueue, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultStore) 
{
  uint32_t mapCounter = 0;
  
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t partialResultQueue;
  pi_SharedTypes_0_mutexInit_4(&partialResultQueue);
  pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueuePointer = &partialResultQueue;
  GenericSyncDeclarations_startSyncFor1Mutex(&partialResultQueue.mutex);
  {
    queue_queueInit(&partialResultQueue.value.queue);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&partialResultQueue.mutex);
  
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
    
    queue_queueSafeAdd(resultQueue, pi_calcPiBlock(start, end, partialResultStore, &mapCounter));
    {
      GenericSharedDeclarations_SharedOf_boolean_0_t* emptyFlag = &partialResultStore->value.isEmpty;
      GenericSyncDeclarations_startSyncFor2Mutexes(&partialResultStore->mutex, &emptyFlag->mutex);
      {
        emptyFlag->value = false;
      }
      GenericSyncDeclarations_stopSyncFor2Mutexes(&partialResultStore->mutex, &emptyFlag->mutex);
    }
    
    ++mapCounter;
  }
  pi_SharedTypes_0_mutexDestroy_4(&partialResultQueue);
}

static void pi_reduce(uint32_t numberOfItems, GenericSharedDeclarations_SharedOf_long_double_0_t* result, queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueue) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&result->mutex);
  {
    result->value = 0;
    for ( uint32_t i = 0; i < numberOfItems; ++i )
    {
      long double item;
      queue_queueSafeGet(resultQueue, &item);
      result->value = item + result->value;
    }
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&result->mutex);
}

static long double pi_calcPiBlock(uint32_t start, uint32_t end, pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue, uint32_t* mapCounter) 
{
  long double result = 0;
  for ( uint32_t i = start; i < end; ++i )
  {
    
    
    {
      queue_SharedTypes_0_SharedOf_Queue_0_t* queue = &partialResultQueue->value.queue;
      GenericSyncDeclarations_startSyncFor2Mutexes(&partialResultQueue->mutex, &queue->mutex);
      {
        queue_queueSafeAdd(queue, pi_calcPiItem(i));
      }
      GenericSyncDeclarations_stopSyncFor2Mutexes(&partialResultQueue->mutex, &queue->mutex);
    }
    /* other stuff... */
    {
      queue_SharedTypes_0_SharedOf_Queue_0_t* queue = &partialResultQueue->value.queue;
      GenericSyncDeclarations_startSyncFor2Mutexes(&partialResultQueue->mutex, &queue->mutex);
      {
        result += queue_queueGetLastAddedItem(queue);
      }
      GenericSyncDeclarations_stopSyncFor2Mutexes(&partialResultQueue->mutex, &queue->mutex);
    }
    
    *mapCounter += 1;
    if ( *mapCounter == QUEUE_QUEUESIZE ) 
    {
      {
        GenericSharedDeclarations_SharedOf_boolean_0_t* emptyFlag = &partialResultQueue->value.isEmpty;
        GenericSyncDeclarations_startSyncFor2Mutexes(&partialResultQueue->mutex, &emptyFlag->mutex);
        {
          emptyFlag->value = false;
        }
        GenericSyncDeclarations_stopSyncFor2Mutexes(&partialResultQueue->mutex, &emptyFlag->mutex);
      }
      *mapCounter = 0;
    }
    while (true)
    {
      {
        GenericSharedDeclarations_SharedOf_boolean_0_t* emptyFlag = &partialResultQueue->value.isEmpty;
        GenericSyncDeclarations_startSyncFor2Mutexes(&partialResultQueue->mutex, &emptyFlag->mutex);
        {
          if ( emptyFlag->value ) 
          {
            GenericSyncDeclarations_stopSyncFor2Mutexes(&partialResultQueue->mutex, &emptyFlag->mutex);
            break;
          }
        }
        GenericSyncDeclarations_stopSyncFor2Mutexes(&partialResultQueue->mutex, &emptyFlag->mutex);
      }
      struct timespec sleepingTime = (struct timespec){ .tv_nsec =PI_DELAY};
      nanosleep(&sleepingTime,0);
    }
  }
  return result;
}

static long double pi_calcPiItem(uint32_t index) 
{
  return 4.0 * (pow(-1.0,index) / (2.0 * index + 1.0));
}

static void* pi_parFun_a0r0i(void* voidArgs) 
{
  pi_MinMax_t* result = malloc(sizeof(pi_MinMax_t));
  pi_Args_a0r0i_t* args = ((pi_Args_a0r0i_t*)(voidArgs));
  *result = pi_processPartialResults((args)->partialResultQueuesPointer);
  free(voidArgs);
  return result;
}

static void* pi_parFun_a0a1a1a0p0i(void* voidArgs) 
{
  pi_Args_a0a1a1a0p0i_t* args = ((pi_Args_a0a1a1a0p0i_t*)(voidArgs));
  pi_map(PI_THRESHOLD, (args)->counterPointer, (args)->resultQueuePointer, (args)->partialResultQueue);
  free(voidArgs);
  return 0;
}

static void* pi_parFun_a0a22a8(void* voidArgs) 
{
  pi_Args_a0a22a8_t* args = ((pi_Args_a0a22a8_t*)(voidArgs));
  pi_reduce(PI_BLOCKCOUNT, (args)->resultPointer, (args)->resultQueuePointer);
  free(voidArgs);
  return 0;
}

static pi_MinMax_t pi_processPartialResult(queue_SharedTypes_0_SharedOf_Queue_0_t* queue, GenericSharedDeclarations_SharedOf_boolean_0_t* isEmptyFlag) 
{
  pi_MinMax_t result;
  result.min = LDBL_MIN;
  result.max = LDBL_MAX;
  
  /* the synchronization here is acutally not necessary since the corresponding mapper task will not
proceed before the modification of isEmptyFlag below */
  GenericSyncDeclarations_startSyncFor1Mutex(&queue->mutex);
  {
    for ( int32_t __i = 0; __i < PI_BLOCKSIZE; __i++ )
    {
      {
        GenericSharedDeclarations_SharedOf_long_double_0_t* slotI = &queue->value.data[__i];
        GenericSyncDeclarations_startSyncFor2Mutexes(&queue->mutex, &slotI->mutex);
        {
          result.min = (result.min < slotI->value) ? (result.min) : (slotI->value);
        }
        GenericSyncDeclarations_stopSyncFor2Mutexes(&queue->mutex, &slotI->mutex);
      }
      {
        GenericSharedDeclarations_SharedOf_long_double_0_t* slotI = &queue->value.data[__i];
        GenericSyncDeclarations_startSyncFor2Mutexes(&queue->mutex, &slotI->mutex);
        {
          result.max = (result.max < slotI->value) ? (result.max) : (slotI->value);
        }
        GenericSyncDeclarations_stopSyncFor2Mutexes(&queue->mutex, &slotI->mutex);
      }
    }
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&queue->mutex);
  
  GenericSyncDeclarations_startSyncFor1Mutex(&isEmptyFlag->mutex);
  {
    isEmptyFlag->value = true;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&isEmptyFlag->mutex);
  
  return result;
}

static pi_MinMax_t pi_processPartialResults(pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* partialResultQueues) 
{
  pi_MinMax_t result;
  result.min = LDBL_MIN;
  result.max = LDBL_MAX;
  
  bool areFinished[PI_MAPPERCOUNT];
  for ( int8_t __i = 0; __i < PI_MAPPERCOUNT; __i++ )
  {
    areFinished[__i] = false;
  }
  int32_t isFinishedCount = 0;
  
  while (true)
  {
    /* try to read from one queue if any one is available */
    queue_SharedTypes_0_SharedOf_Queue_0_t* queueToBeProcessed = 0;
    GenericSharedDeclarations_SharedOf_boolean_0_t* flagToBeProcessed = 0;
    for ( int8_t __i = 0; __i < PI_MAPPERCOUNT; __i++ )
    {
      if ( areFinished[__i] ) 
      {
        continue;
      }
      
      /* this is quite inefficient since only this thread will ever access the array
=> partialResultQueues need not be locked */
      {
        pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue = &partialResultQueues->value[__i];
        GenericSyncDeclarations_startSyncFor2Mutexes(&partialResultQueues->mutex, &partialResultQueue->mutex);
        {
          /* isEmpty and isFinished actually need not be locked */
          {
            GenericSharedDeclarations_SharedOf_boolean_0_t* isEmpty = &partialResultQueue->value.isEmpty;
            GenericSharedDeclarations_SharedOf_boolean_0_t* isFinished = &partialResultQueue->value.isFinished;
            GenericSyncDeclarations_startSyncFor2Mutexes(&isEmpty->mutex, &isFinished->mutex);
            {
              if ( !(isEmpty->value) ) 
              {
                queueToBeProcessed = &partialResultQueue->value.queue;
                flagToBeProcessed = &partialResultQueue->value.isEmpty;
                GenericSyncDeclarations_stopSyncFor2Mutexes(&isEmpty->mutex, &isFinished->mutex);
                GenericSyncDeclarations_stopSyncFor2Mutexes(&partialResultQueues->mutex, &partialResultQueue->mutex);
                break;
              } else if (isFinished->value) {
                areFinished[__i] = true;
                ++isFinishedCount;
                if ( isFinishedCount == PI_MAPPERCOUNT ) 
                {
                  GenericSyncDeclarations_stopSyncFor2Mutexes(&isEmpty->mutex, &isFinished->mutex);
                  GenericSyncDeclarations_stopSyncFor2Mutexes(&partialResultQueues->mutex, &partialResultQueue->mutex);
                  return result;
                }
              }
            }
            GenericSyncDeclarations_stopSyncFor2Mutexes(&isEmpty->mutex, &isFinished->mutex);
          }
        }
        GenericSyncDeclarations_stopSyncFor2Mutexes(&partialResultQueues->mutex, &partialResultQueue->mutex);
      }
    }
    
    /* in case no result was available it might be wise to delay the execution */
    if ( queueToBeProcessed == 0 ) 
    {
      struct timespec sleepingTime = (struct timespec){ .tv_nsec =PI_DELAY};
      nanosleep(&sleepingTime,0);
    }    else 
    {
      pi_MinMax_t nextResult = pi_processPartialResult(queueToBeProcessed, flagToBeProcessed);
      result.min = (result.min < nextResult.min) ? (result.min) : (nextResult.min);
      result.max = (result.max < nextResult.max) ? (result.max) : (nextResult.max);
    }
  }
}

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0b0b0a51a8(pi_SharedTypes_0_SharedOf_FlaggedQueue_0_t* partialResultQueue, GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer, queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueuePointer) 
{
  pi_Args_a0a1a1a0p0i_t* args_a0b0b0a51a8 = malloc(sizeof(pi_Args_a0a1a1a0p0i_t));
  args_a0b0b0a51a8->counterPointer = counterPointer;
  args_a0b0b0a51a8->resultQueuePointer = resultQueuePointer;
  args_a0b0b0a51a8->partialResultQueue = partialResultQueue;
  pthread_t pth;
  pthread_create(&pth,0,&pi_parFun_a0a1a1a0p0i,args_a0b0b0a51a8);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

static GenericTaskDeclarations_Future_t pi_futureInit_a71a8(pi_SharedTypes_0_SharedOf_ArrayOf_SharedOf_FlaggedQueue_0_0_t* partialResultQueuesPointer) 
{
  pi_Args_a0r0i_t* args_a71a8 = malloc(sizeof(pi_Args_a0r0i_t));
  args_a71a8->partialResultQueuesPointer = partialResultQueuesPointer;
  pthread_t pth;
  pthread_create(&pth,0,&pi_parFun_a0r0i,args_a71a8);
  return (GenericTaskDeclarations_Future_t){ .pth =pth};
}

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0w0i(GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer, queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueuePointer) 
{
  pi_Args_a0a22a8_t* args_a0w0i = malloc(sizeof(pi_Args_a0a22a8_t));
  args_a0w0i->resultPointer = resultPointer;
  args_a0w0i->resultQueuePointer = resultQueuePointer;
  pthread_t pth;
  pthread_create(&pth,0,&pi_parFun_a0a22a8,args_a0w0i);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

