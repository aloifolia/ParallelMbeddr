#include "pi.h"


#include "queue.h"
#include <stdio.h>
#include <sys/time.h>
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>
#include <math.h>

typedef struct pi_Args_a11a5 pi_Args_a11a5_t;
struct pi_Args_a11a5 {
  GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer;
  queue_SharedTypes_0_SharedOf_Queue_0_t* queuePointer;
};

typedef struct pi_Args_a0a91a5 pi_Args_a0a91a5_t;
struct pi_Args_a0a91a5 {
  GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer;
  queue_SharedTypes_0_SharedOf_Queue_0_t* queuePointer;
};

static void pi_map(uint32_t threshold, GenericSharedDeclarations_SharedOf_uint32_0_t* counter, queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueue);

static void pi_reduce(uint32_t numberOfItems, GenericSharedDeclarations_SharedOf_long_double_0_t* result, queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueue);

static long double pi_calcPiBlock(uint32_t start, uint32_t end);

static long double pi_calcPiItem(uint32_t index);

static void* pi_parFun_a11a5(void* voidArgs);

static void* pi_parFun_a0a91a5(void* voidArgs);

static inline GenericTaskDeclarations_Task_t pi_taskInit_a11a5(queue_SharedTypes_0_SharedOf_Queue_0_t* queuePointer, GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer);

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0t0f(GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer, queue_SharedTypes_0_SharedOf_Queue_0_t* queuePointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  struct timeval begin;
  gettimeofday(&begin, 0);
  
  queue_SharedTypes_0_SharedOf_Queue_0_t queue;
  queue_SharedTypes_0_mutexInit_2(&queue);
  queue_queueInit(&queue);
  queue_SharedTypes_0_SharedOf_Queue_0_t* queuePointer = &queue;
  
  GenericSharedDeclarations_SharedOf_uint32_0_t counter;
  pthread_mutex_init(&counter.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer = &counter;
  GenericSyncDeclarations_startSyncFor1Mutex(&(counter).mutex);
  {
    counter.value = 0;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(counter).mutex);
  
  GenericTaskDeclarations_Task_t mapperTask = pi_taskInit_a11a5(queuePointer, counterPointer);
  GenericTaskDeclarations_VoidFuture_t mappers[PI_MAPPERCOUNT];
  for ( int8_t __i = 0; __i < PI_MAPPERCOUNT; __i++ )
  {
    mappers[__i] = GenericTaskDeclarations_runTaskAndGetVoidFuture(mapperTask);
  }
  free(mapperTask.args);
  
  GenericSharedDeclarations_SharedOf_long_double_0_t result;
  pthread_mutex_init(&result.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer = &result;
  
  GenericTaskDeclarations_saveAndJoinVoidFuture(pi_futureInit_a0t0f(resultPointer, queuePointer));
  struct timeval end;
  gettimeofday(&end, 0);
  double timeSpent = ((double)((end.tv_usec - begin.tv_usec))) / 1000000 + ((double)((end.tv_sec - begin.tv_sec)));
  printf("\n#### duration %f\n\n", timeSpent);
  printf("## blocksize:  %d\n", PI_BLOCKSIZE);
  printf("## blockcount: %d\n", PI_BLOCKCOUNT);
  printf("## threshold:  %d\n", PI_THRESHOLD);
  
  GenericSyncDeclarations_startSyncFor1Mutex(&(result).mutex);
  {
    printf("pi: %.50Lf", result.value);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(result).mutex);
  
  return 0;
}

static void pi_map(uint32_t threshold, GenericSharedDeclarations_SharedOf_uint32_0_t* counter, queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueue) 
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
    
    queue_queueSafeAdd(resultQueue, pi_calcPiBlock(start, end));
  }
}

static void pi_reduce(uint32_t numberOfItems, GenericSharedDeclarations_SharedOf_long_double_0_t* result, queue_SharedTypes_0_SharedOf_Queue_0_t* resultQueue) 
{
  {
    GenericSharedDeclarations_SharedOf_long_double_0_t* myResult = result;
    GenericSyncDeclarations_startSyncFor1Mutex(&(myResult)->mutex);
    {
      myResult->value = 0;
      for ( uint32_t i = 0; i < numberOfItems; ++i )
      {
        long double item;
        queue_queueSafeGet(resultQueue, &item);
        myResult->value = item + myResult->value;
      }
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(myResult)->mutex);
  }
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

static void* pi_parFun_a11a5(void* voidArgs) 
{
  pi_Args_a11a5_t* args = ((pi_Args_a11a5_t*)(voidArgs));
  pi_map(PI_THRESHOLD, (args)->counterPointer, (args)->queuePointer);
  free(voidArgs);
  return 0;
}

static void* pi_parFun_a0a91a5(void* voidArgs) 
{
  pi_Args_a0a91a5_t* args = ((pi_Args_a0a91a5_t*)(voidArgs));
  pi_reduce(PI_BLOCKCOUNT, (args)->resultPointer, (args)->queuePointer);
  free(voidArgs);
  return 0;
}

static inline GenericTaskDeclarations_Task_t pi_taskInit_a11a5(queue_SharedTypes_0_SharedOf_Queue_0_t* queuePointer, GenericSharedDeclarations_SharedOf_uint32_0_t* counterPointer) 
{
  pi_Args_a11a5_t* args_a11a5 = malloc(sizeof(pi_Args_a11a5_t));
  args_a11a5->counterPointer = counterPointer;
  args_a11a5->queuePointer = queuePointer;
  return (GenericTaskDeclarations_Task_t){args_a11a5,&pi_parFun_a11a5,sizeof(pi_Args_a11a5_t)};
}

static GenericTaskDeclarations_VoidFuture_t pi_futureInit_a0t0f(GenericSharedDeclarations_SharedOf_long_double_0_t* resultPointer, queue_SharedTypes_0_SharedOf_Queue_0_t* queuePointer) 
{
  pi_Args_a0a91a5_t* args_a0t0f = malloc(sizeof(pi_Args_a0a91a5_t));
  args_a0t0f->resultPointer = resultPointer;
  args_a0t0f->queuePointer = queuePointer;
  pthread_t pth;
  pthread_create(&pth,0,&pi_parFun_a0a91a5,args_a0t0f);
  return (GenericTaskDeclarations_VoidFuture_t){ .pth =pth};
}

