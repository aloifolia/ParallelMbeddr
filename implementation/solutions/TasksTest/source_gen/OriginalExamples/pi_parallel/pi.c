#include "pi.h"


#include "queue.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>
#include <math.h>

struct pi_Args_a8a5 {
  struct GenericSharedDeclarations_SharedOf_uint32_0* counterPointer;
  struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer;
};

struct pi_Args_a61a5 {
  struct GenericSharedDeclarations_SharedOf_long_double_0* resultPointer;
  struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer;
};

static void pi_map(uint32_t threshold,struct GenericSharedDeclarations_SharedOf_uint32_0* counter,struct queue_SharedTypes_0_SharedOf_Queue_0* resultQueue);

static void pi_reduce(uint32_t numberOfItems,struct GenericSharedDeclarations_SharedOf_long_double_0* result,struct queue_SharedTypes_0_SharedOf_Queue_0* resultQueue);

static long double pi_calcPiBlock(uint32_t start,uint32_t end);

static long double pi_calcPiItem(uint32_t index);

static void* pi_parFun_a8a5(void* voidArgs);

static void* pi_parFun_a61a5(void* voidArgs);

static inline struct GenericTaskDeclarations_Task pi_taskInit_a8a5(struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer,struct GenericSharedDeclarations_SharedOf_uint32_0* counterPointer);

static inline struct GenericTaskDeclarations_Task pi_taskInit_a61a5(struct GenericSharedDeclarations_SharedOf_long_double_0* resultPointer,struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pi_initAllGlobalMutexes_0();
  struct queue_SharedTypes_0_SharedOf_Queue_0 queue;
  queue_SharedTypes_0_mutexInit_2(&queue);
  queue_queueInit(&queue);
  struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer = &queue;
  
  struct GenericSharedDeclarations_SharedOf_uint32_0 counter;
  pthread_mutex_init(&counter.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  struct GenericSharedDeclarations_SharedOf_uint32_0* counterPointer = &counter;
  GenericSyncDeclarations_startSyncFor1Mutex(&counter.mutex);
  {
    counter.value = 0;
  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&counter.mutex);
  
  struct GenericTaskDeclarations_Task mapperTask = pi_taskInit_a8a5(queuePointer, counterPointer);
  struct GenericTaskDeclarations_VoidFuture mappers[PI_MAPPERCOUNT];
  for ( int8_t __i = 0; __i < PI_MAPPERCOUNT; __i++ )
  {
    mappers[__i] = GenericTaskDeclarations_runTaskAndGetVoidFuture(mapperTask);
  }

  free(mapperTask.args);
  
  struct GenericSharedDeclarations_SharedOf_long_double_0 result;
  pthread_mutex_init(&result.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  struct GenericSharedDeclarations_SharedOf_long_double_0* resultPointer = &result;
  
  struct GenericTaskDeclarations_Task reducerTask = pi_taskInit_a61a5(resultPointer, queuePointer);
  struct GenericTaskDeclarations_VoidFuture reducer = GenericTaskDeclarations_runTaskAndGetVoidFuture(reducerTask);
  free(reducerTask.args);
  GenericTaskDeclarations_joinVoidFuture(&reducer);
  
  pi_destroyAllGlobalMutexes_0();
  queue_SharedTypes_0_mutexDestroy_2(&queue);
  pthread_mutex_destroy(&counter.mutex);
  pthread_mutex_destroy(&result.mutex);
  return 0;
}


static void pi_map(uint32_t threshold, struct GenericSharedDeclarations_SharedOf_uint32_0* counter, struct queue_SharedTypes_0_SharedOf_Queue_0* resultQueue) 
{
  while (1)
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

      uint32_t possibleEnd = start + PI_RANGESIZE;
      end = (possibleEnd <= threshold) ? (possibleEnd) : (threshold);
      counter->value = end;
    }

    GenericSyncDeclarations_stopSyncFor1Mutex(&counter->mutex);
    
    queue_queueSafeAdd(resultQueue, pi_calcPiBlock(start, end));
  }

}


static void pi_reduce(uint32_t numberOfItems, struct GenericSharedDeclarations_SharedOf_long_double_0* result, struct queue_SharedTypes_0_SharedOf_Queue_0* resultQueue) 
{
  
  GenericSyncDeclarations_startSyncFor1Mutex(&result->mutex);
  {
    for ( uint32_t i = 0; i < numberOfItems; ++i )
    {
      long double item;
      queue_queueSafeGet(resultQueue, &item);
      result->value = item + result->value;
    }

  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&result->mutex);
  
}


static long double pi_calcPiBlock(uint32_t start, uint32_t end) 
{
  long double result = 0;
  for ( uint32_t i = start; i < end; ++i )
  {
    result += pi_calcPiItem(i);
  }

  return result;
}


static long double pi_calcPiItem(uint32_t index) 
{
  return 4.0 * (pow(-1.0,index) / (2.0 * index + 1.0));
}


static void* pi_parFun_a8a5(void* voidArgs) 
{
  struct pi_Args_a8a5* args = ((struct pi_Args_a8a5*)(voidArgs));
  pi_map(PI_THRESHOLD, (args)->counterPointer, (args)->queuePointer);
  return 0;
}


static void* pi_parFun_a61a5(void* voidArgs) 
{
  struct pi_Args_a61a5* args = ((struct pi_Args_a61a5*)(voidArgs));
  pi_reduce(PI_RANGECOUNT, (args)->resultPointer, (args)->queuePointer);
  return 0;
}


void pi_initAllGlobalMutexes_0(void) 
{
}


void pi_destroyAllGlobalMutexes_0(void) 
{
}


static inline struct GenericTaskDeclarations_Task pi_taskInit_a8a5(struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer, struct GenericSharedDeclarations_SharedOf_uint32_0* counterPointer) 
{
  struct pi_Args_a8a5* args_a8a5 = malloc(sizeof(struct pi_Args_a8a5));
  args_a8a5->counterPointer = counterPointer;
  args_a8a5->queuePointer = queuePointer;
  return (struct GenericTaskDeclarations_Task){args_a8a5,&pi_parFun_a8a5,sizeof(struct pi_Args_a8a5)};
}


static inline struct GenericTaskDeclarations_Task pi_taskInit_a61a5(struct GenericSharedDeclarations_SharedOf_long_double_0* resultPointer, struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer) 
{
  struct pi_Args_a61a5* args_a61a5 = malloc(sizeof(struct pi_Args_a61a5));
  args_a61a5->resultPointer = resultPointer;
  args_a61a5->queuePointer = queuePointer;
  return (struct GenericTaskDeclarations_Task){args_a61a5,&pi_parFun_a61a5,sizeof(struct pi_Args_a61a5)};
}


