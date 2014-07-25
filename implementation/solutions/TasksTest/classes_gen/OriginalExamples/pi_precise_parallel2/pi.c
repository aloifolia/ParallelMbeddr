#include "pi.h"


#include <stdio.h>
#include <gmp.h>
#include "queue.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <pthread.h>

struct pi_Args_a0a0p0h {
  struct GenericSharedDeclarations_SharedOf_uint32_0* counterPointer;
  struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer;
};

struct pi_Args_a12a7 {
  struct GenericSharedDeclarations_SharedOf___mpf_t__0* resultPointer;
  struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer;
};

static char* pi_calcError(mpf_t correctValue,mpf_t approxedValue);

static char* pi_numberToString(mpf_t number);

static void pi_calcPiWithThreshold(uint32_t threshold);

static void pi_map(uint32_t threshold,struct GenericSharedDeclarations_SharedOf_uint32_0* counter,struct queue_SharedTypes_0_SharedOf_Queue_0* resultQueue);

static char* pi_reduce(uint32_t numberOfItems,struct GenericSharedDeclarations_SharedOf___mpf_t__0* result,struct queue_SharedTypes_0_SharedOf_Queue_0* resultQueue);

static void pi_calcPiBlock(mpf_t result,uint32_t start,uint32_t end);

static void pi_calcPiItem(mpf_t piItem,uint32_t index);

static void pi_initMpfItems(mpf_t items[],int32_t size);

static void* pi_parFun_a12a7(void* voidArgs);

static void* pi_parFun_a0a0p0h(void* voidArgs);

static void pi_init_queue_0(struct queue_SharedTypes_0_SharedOf_Queue_0* queue);

static void pi_destroy_queue_0(struct queue_SharedTypes_0_SharedOf_Queue_0* queue);

static void pi_init_counter_0(struct GenericSharedDeclarations_SharedOf_uint32_0* counter);

static void pi_destroy_counter_0(struct GenericSharedDeclarations_SharedOf_uint32_0* counter);

static void pi_init_result_0(struct GenericSharedDeclarations_SharedOf___mpf_t__0* result);

static void pi_destroy_result_0(struct GenericSharedDeclarations_SharedOf___mpf_t__0* result);

static struct GenericTaskDeclarations_Task pi_taskInit_a0a0p0h(struct GenericSharedDeclarations_SharedOf_uint32_0* counterPointer,struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer);

static struct GenericTaskDeclarations_Task pi_taskInit_a12a7(struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer,struct GenericSharedDeclarations_SharedOf___mpf_t__0* resultPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  mpf_set_default_prec(PI_PRECISION);
  
  mpf_t pi160;
  mpf_init_set_str(pi160, ((char*)(PI_PI160)), PI_BASE);
  
  struct queue_SharedTypes_0_SharedOf_Queue_0 queue;
  pi_init_queue_0(&queue);
  queue_queueInit(&queue);
  struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer = &queue;
  
  struct GenericSharedDeclarations_SharedOf_uint32_0 counter;
  pi_init_counter_0(&counter);
  struct GenericSharedDeclarations_SharedOf_uint32_0* counterPointer = &counter;
  GenericSyncDeclarations_startSyncFor1Mutex(&counter.mutex);
  {
    counter.value = 0;
  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&counter.mutex);
  
  struct GenericTaskDeclarations_Task mapperTasks[PI_MAPPERCOUNT];
  struct GenericTaskDeclarations_VoidFuture mappers[PI_MAPPERCOUNT];
  for ( int32_t i = 0; i < PI_MAPPERCOUNT; ++i )
  {
    mapperTasks[i] = pi_taskInit_a0a0p0h(counterPointer, queuePointer);
    mappers[i] = GenericTaskDeclarations_runTaskAndGetVoidFuture(mapperTasks[i]);
    free(mapperTasks[i].args);
  }

  
  struct GenericSharedDeclarations_SharedOf___mpf_t__0 result;
  pi_init_result_0(&result);
  GenericSyncDeclarations_startSyncFor1Mutex(&result.mutex);
  {
    mpf_init_set_ui(result.value, 0);
  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&result.mutex);
  struct GenericSharedDeclarations_SharedOf___mpf_t__0* resultPointer = &result;
  /*
  struct GenericTaskDeclarations_Task reducerTask = pi_taskInit_a12a7(queuePointer, resultPointer);
  struct GenericTaskDeclarations_Future reducer = GenericTaskDeclarations_runTaskAndGetFuture(reducerTask);
  free(reducerTask.args);
  */
  for ( int32_t i = 0; i < PI_MAPPERCOUNT; ++i )
  {
    GenericTaskDeclarations_joinVoidFuture(&mappers[i]);
  }
/*
  int8_t** pointerToErrorString = ((int8_t**)(GenericTaskDeclarations_getFutureResult(&reducer)));
  printf("total error: %s\n",*pointerToErrorString);
  
  free(*pointerToErrorString);
  free(pointerToErrorString);
  */
  queue_queueClear(&queue);
  pi_destroy_queue_0(&queue);
  pi_destroy_counter_0(&counter);
  pi_destroy_result_0(&result);
  return 0;
}

__attribute__((noinline, noclone))
static char* pi_calcError(mpf_t correctValue, mpf_t approxedValue) 
{
  mpf_t error;
  mpf_init(error);
  mpf_sub(error, correctValue, approxedValue);
  
  return pi_numberToString(error);
}

__attribute__((noinline, noclone))
static char* pi_numberToString(mpf_t number) 
{
  mp_exp_t exponent;
  char* rawResult = mpf_get_str(0, &exponent, 10, 0, number);
  char* result = malloc((strlen(rawResult) + 3 + abs(((int32_t)(exponent)))) * ((int32_t)(sizeof(char))));
  if ( exponent < 0 ) 
  {
    result[0] = '0';
    result[1] = '.';
    for ( int32_t i = 0; i < -exponent; ++i )
    {
      result[i + 2] = '0';
    }

    int32_t rawResultLen = strlen(rawResult);
    int32_t resultLen = strlen(rawResult) + 3 + abs(((int32_t)(exponent)));
    printf("resultLen:%d, rawResultLen:%d, starting at:%d\n",resultLen,rawResultLen,(2 - exponent));
    strcpy(&result[2 - exponent],rawResult);
  }
  else 
  {
    strncpy(result,rawResult,exponent);
    result[exponent] = '.';
    strcpy(&result[1 + exponent],&rawResult[exponent]);
  }

  return result;
}

__attribute__((noinline, noclone))
static void pi_map(uint32_t threshold, struct GenericSharedDeclarations_SharedOf_uint32_0* counter, struct queue_SharedTypes_0_SharedOf_Queue_0* resultQueue) 
{
  mpf_t result;
  mpf_init(result);
  
  while (1)
  {
    printf("init calc: %d\n",pthread_self());
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
    
    printf("start calc: %d\n",pthread_self());
    mpf_set_ui(result, 0);
    pi_calcPiBlock(result, start, end);
    printf("add calc result: %d\n",pthread_self());
    queue_queueSafeAdd(resultQueue, result);
    printf("stop calc: %d\n",pthread_self());
  }

  
  mpf_clear(result);
}

__attribute__((noinline, noclone))
static char* pi_reduce(uint32_t numberOfItems, struct GenericSharedDeclarations_SharedOf___mpf_t__0* result, struct queue_SharedTypes_0_SharedOf_Queue_0* resultQueue) 
{
  mpf_t item;
  mpf_init(item);
  char* error;
  
  GenericSyncDeclarations_startSyncFor1Mutex(&result->mutex);
  {
    for ( uint32_t i = 0; i < numberOfItems; ++i )
    {
      queue_queueSafeGet(resultQueue, item);
      mpf_add(result->value, result->value, item);
    }

    
    char* resultString = pi_numberToString(result->value);
    printf("result: %s\n\n",resultString);
    
    mpf_t pi160;
    mpf_init_set_str(pi160, ((char*)(PI_PI160)), PI_BASE);
    
    error = pi_calcError(pi160, result->value);
  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&result->mutex);
  
  mpf_clear(item);
  
  return error;
}

__attribute__((noinline, noclone))
static void pi_calcPiBlock(mpf_t result, uint32_t start, uint32_t end) 
{
  mpf_t piItem;
  mpf_init(piItem);
  for ( uint32_t i = start; i < end; ++i )
  {
    pi_calcPiItem(piItem, i);
    mpf_add(result, result, piItem);
  }

}

__attribute__((noinline, noclone))
static void pi_calcPiItem(mpf_t piItem, uint32_t index) 
{
  mpf_t dividend;
  mpf_t base;
  mpf_init(dividend);
  mpf_init_set_d(base, -1.0);
  mpf_pow_ui(dividend, base, index);
  
  mpf_t divisor;
  mpf_init_set_d(divisor, 2.0);
  mpf_mul_ui(divisor, divisor, index);
  mpf_add_ui(divisor, divisor, 1);
  
  mpf_div(piItem, dividend, divisor);
  mpf_mul_ui(piItem, piItem, 4);
}


__attribute__((noinline, noclone))
static void* pi_parFun_a12a7(void* voidArgs) 
{
  int8_t** result = malloc(sizeof(int8_t*));
  struct pi_Args_a12a7* args = ((struct pi_Args_a12a7*)(voidArgs));
  *result = pi_reduce(PI_BLOCKCOUNT, (args)->resultPointer, (args)->queuePointer);
  free(voidArgs);
  return result;
}

__attribute__((noinline, noclone))
static void* pi_parFun_a0a0p0h(void* voidArgs) 
{
  struct pi_Args_a0a0p0h* args = ((struct pi_Args_a0a0p0h*)(voidArgs));
  pi_map(PI_THRESHOLD, (args)->counterPointer, (args)->queuePointer);
  return 0;
}

__attribute__((noinline, noclone))
static  void pi_init_queue_0(struct queue_SharedTypes_0_SharedOf_Queue_0* queue) 
{
  GenericSharedDeclarations_initMutex_0(&queue->mutexAttribute, &queue->mutex);
  for ( int8_t __i_3 = 0; __i_3 < QUEUE_QUEUESIZE; __i_3++ )
  {
    GenericSharedDeclarations_initMutex_0(&queue->value.data[__i_3].mutexAttribute, &queue->value.data[__i_3].mutex);
  }

}

__attribute__((noinline, noclone))
static  void pi_destroy_queue_0(struct queue_SharedTypes_0_SharedOf_Queue_0* queue) 
{
  GenericSharedDeclarations_destroyMutex_0(&queue->mutex);
  for ( int8_t __i_3 = 0; __i_3 < QUEUE_QUEUESIZE; __i_3++ )
  {
    GenericSharedDeclarations_destroyMutex_0(&queue->value.data[__i_3].mutex);
  }

}

__attribute__((noinline, noclone))
static  void pi_init_counter_0(struct GenericSharedDeclarations_SharedOf_uint32_0* counter) 
{
  GenericSharedDeclarations_initMutex_0(&counter->mutexAttribute, &counter->mutex);
}

__attribute__((noinline, noclone))
static  void pi_destroy_counter_0(struct GenericSharedDeclarations_SharedOf_uint32_0* counter) 
{
  GenericSharedDeclarations_destroyMutex_0(&counter->mutex);
}

__attribute__((noinline, noclone))
static  void pi_init_result_0(struct GenericSharedDeclarations_SharedOf___mpf_t__0* result) 
{
  GenericSharedDeclarations_initMutex_0(&result->mutexAttribute, &result->mutex);
}

__attribute__((noinline, noclone))
static  void pi_destroy_result_0(struct GenericSharedDeclarations_SharedOf___mpf_t__0* result) 
{
  GenericSharedDeclarations_destroyMutex_0(&result->mutex);
}


static inline struct GenericTaskDeclarations_Task pi_taskInit_a0a0p0h(struct GenericSharedDeclarations_SharedOf_uint32_0* counterPointer, struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer) 
{
  struct pi_Args_a0a0p0h* args_a0a0p0h = malloc(sizeof(struct pi_Args_a0a0p0h));
  args_a0a0p0h->counterPointer = counterPointer;
  args_a0a0p0h->queuePointer = queuePointer;
  return (struct GenericTaskDeclarations_Task){args_a0a0p0h,&pi_parFun_a0a0p0h,sizeof(struct pi_Args_a0a0p0h)};
}


static inline struct GenericTaskDeclarations_Task pi_taskInit_a12a7(struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer, struct GenericSharedDeclarations_SharedOf___mpf_t__0* resultPointer) 
{
  struct pi_Args_a12a7* args_a12a7 = malloc(sizeof(struct pi_Args_a12a7));
  args_a12a7->resultPointer = resultPointer;
  args_a12a7->queuePointer = queuePointer;
  return (struct GenericTaskDeclarations_Task){args_a12a7,&pi_parFun_a12a7,sizeof(struct pi_Args_a12a7)};
}


