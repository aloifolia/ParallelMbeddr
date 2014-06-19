#include "pi.h"


#include <stdio.h>
#include <gmp.h>
#include "queue.h"
#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdio.h>
#include <stdlib.h>

struct pi_Args_a0a0a61a9 {
  struct GenericSharedDeclarations_SharedOf_uint32_0* counterPointer;
  struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer;
};

struct pi_Args_a0v0j {
  struct GenericSharedDeclarations_SharedOf___mpf_t__0* resultPointer;
  struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer;
};

static void pi_calcAndPrintError(mpf_t correctValue,mpf_t approxedValue);

static void pi_calcPiWithThreshold(uint32_t threshold);

static void pi_map(uint32_t threshold,struct GenericSharedDeclarations_SharedOf_uint32_0* counter,struct queue_SharedTypes_0_SharedOf_Queue_0* resultQueue);

static void pi_reduce(uint32_t numberOfItems,struct GenericSharedDeclarations_SharedOf___mpf_t__0* result,struct queue_SharedTypes_0_SharedOf_Queue_0* resultQueue);

static void pi_calcPiBlock(mpf_t result,uint32_t start,uint32_t end);

static void pi_calcPiItem(mpf_t piItem,uint32_t index);

static void pi_initMpfItems(mpf_t items[],int32_t size);

static void* pi_parFun_a0a0a61a9(void* voidArgs);

static void* pi_parFun_a0v0j(void* voidArgs);

static inline void pi_init_queue_0(struct queue_SharedTypes_0_SharedOf_Queue_0* queue);

static inline void pi_destroy_queue_0(struct queue_SharedTypes_0_SharedOf_Queue_0* queue);

static inline void pi_init_counter_0(struct GenericSharedDeclarations_SharedOf_uint32_0* counter);

static inline void pi_destroy_counter_0(struct GenericSharedDeclarations_SharedOf_uint32_0* counter);

static inline void pi_init_result_0(struct GenericSharedDeclarations_SharedOf___mpf_t__0* result);

static inline void pi_destroy_result_0(struct GenericSharedDeclarations_SharedOf___mpf_t__0* result);

static inline struct GenericTaskDeclarations_Task pi_taskInit_a0a0a61a9(struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer,struct GenericSharedDeclarations_SharedOf_uint32_0* counterPointer);

static inline struct GenericTaskDeclarations_Task pi_taskInit_a0v0j(struct GenericSharedDeclarations_SharedOf___mpf_t__0* resultPointer,struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer);

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
  
  struct GenericTaskDeclarations_VoidFuture mappers[PI_MAPPERCOUNT];
  for ( int32_t i = 0; i < PI_MAPPERCOUNT; ++i )
  {
    mappers[i] = GenericTaskDeclarations_runTaskAndGetVoidFuture(pi_taskInit_a0a0a61a9(queuePointer, counterPointer));
  }

  
  struct GenericSharedDeclarations_SharedOf___mpf_t__0 result;
  pi_init_result_0(&result);
  struct GenericSharedDeclarations_SharedOf___mpf_t__0* resultPointer = &result;
  
  struct GenericTaskDeclarations_VoidFuture reducer = GenericTaskDeclarations_runTaskAndGetVoidFuture(pi_taskInit_a0v0j(resultPointer, queuePointer));
  
  for ( int32_t i = 0; i < PI_MAPPERCOUNT; ++i )
  {
    GenericTaskDeclarations_joinVoidFuture(&mappers[i]);
  }

  GenericTaskDeclarations_joinVoidFuture(&reducer);
  
  pi_destroy_queue_0(&queue);
  pi_destroy_counter_0(&counter);
  pi_destroy_result_0(&result);
  return 0;
}


static void pi_calcAndPrintError(mpf_t correctValue, mpf_t approxedValue) 
{
  mpf_t error;
  mpf_init(error);
  mpf_sub(error, correctValue, approxedValue);
  
  printf("error = \n");
  mpf_out_str(stdout, 10, 0, error);
  printf("\n\n");
}


static void pi_calcPiWithThreshold(uint32_t threshold) 
{
  mpf_t result;
  mpf_init_set_ui(result, 0);
  
  pi_calcPiBlock(result, 0, threshold);
  
  printf("pi(iterations = %d, precision = %d) = \n",threshold,PI_PRECISION);
  mpf_out_str(stdout, 10, 0, result);
  printf("\n\n");
}


static void pi_map(uint32_t threshold, struct GenericSharedDeclarations_SharedOf_uint32_0* counter, struct queue_SharedTypes_0_SharedOf_Queue_0* resultQueue) 
{
  mpf_t result;
  mpf_init(result);
  
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

      uint32_t possibleEnd = start + PI_BLOCKSIZE;
      end = (possibleEnd < threshold) ? (possibleEnd) : (threshold);
      counter->value = end;
    }

    GenericSyncDeclarations_stopSyncFor1Mutex(&counter->mutex);
    
    mpf_set_ui(result, 0);
    pi_calcPiBlock(result, start, end);
    queue_queueSafeAdd(resultQueue, result);
  }

  
  mpf_clear(result);
}


static void pi_reduce(uint32_t numberOfItems, struct GenericSharedDeclarations_SharedOf___mpf_t__0* result, struct queue_SharedTypes_0_SharedOf_Queue_0* resultQueue) 
{
  mpf_t item;
  mpf_init(item);
  GenericSyncDeclarations_startSyncFor1Mutex(&result->mutex);
  {
    for ( uint32_t i = 0; i < numberOfItems; ++i )
    {
      queue_queueSafeGet(resultQueue, item);
      mpf_add(result->value, result->value, item);
    }

    mp_exp_t exp;
    char* resultString = mpf_get_str(0, &exp, 10, 0, result->value);
    printf("result:\n%s\n",resultString);
    printf("testemich\n");
  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&result->mutex);
  mpf_clear(item);
}


static void pi_calcPiBlock(mpf_t result, uint32_t start, uint32_t end) 
{
  for ( uint32_t i = start; i < end; ++i )
  {
    mpf_t piItem;
    mpf_init(piItem);
    pi_calcPiItem(piItem, i);
    mpf_add(result, result, piItem);
  }

}


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


static void pi_initMpfItems(mpf_t items[], int32_t size) 
{
  for ( int32_t i = 0; i < size; ++i )
  {
    mpf_init(items[i]);
  }

}


static void* pi_parFun_a0a0a61a9(void* voidArgs) 
{
  struct pi_Args_a0a0a61a9* args = ((struct pi_Args_a0a0a61a9*)(voidArgs));
  pi_map(PI_THRESHOLD2, (args)->counterPointer, (args)->queuePointer);
  return 0;
}


static void* pi_parFun_a0v0j(void* voidArgs) 
{
  struct pi_Args_a0v0j* args = ((struct pi_Args_a0v0j*)(voidArgs));
  pi_reduce(PI_BLOCKCOUNT2, (args)->resultPointer, (args)->queuePointer);
  return 0;
}


static  void pi_init_queue_0(struct queue_SharedTypes_0_SharedOf_Queue_0* queue) 
{
  GenericSharedDeclarations_initMutex_0(&queue->mutexAttribute, &queue->mutex);
  for ( int8_t __i_1 = 0; __i_1 < QUEUE_QUEUESIZE; __i_1++ )
  {
    GenericSharedDeclarations_initMutex_0(&queue->value.data[__i_1].mutexAttribute, &queue->value.data[__i_1].mutex);
  }

}


static  void pi_destroy_queue_0(struct queue_SharedTypes_0_SharedOf_Queue_0* queue) 
{
  GenericSharedDeclarations_destroyMutex_0(&queue->mutex);
  for ( int8_t __i_1 = 0; __i_1 < QUEUE_QUEUESIZE; __i_1++ )
  {
    GenericSharedDeclarations_destroyMutex_0(&queue->value.data[__i_1].mutex);
  }

}


static  void pi_init_counter_0(struct GenericSharedDeclarations_SharedOf_uint32_0* counter) 
{
  GenericSharedDeclarations_initMutex_0(&counter->mutexAttribute, &counter->mutex);
}


static  void pi_destroy_counter_0(struct GenericSharedDeclarations_SharedOf_uint32_0* counter) 
{
  GenericSharedDeclarations_destroyMutex_0(&counter->mutex);
}


static  void pi_init_result_0(struct GenericSharedDeclarations_SharedOf___mpf_t__0* result) 
{
  GenericSharedDeclarations_initMutex_0(&result->mutexAttribute, &result->mutex);
}


static  void pi_destroy_result_0(struct GenericSharedDeclarations_SharedOf___mpf_t__0* result) 
{
  GenericSharedDeclarations_destroyMutex_0(&result->mutex);
}


static inline struct GenericTaskDeclarations_Task pi_taskInit_a0a0a61a9(struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer, struct GenericSharedDeclarations_SharedOf_uint32_0* counterPointer) 
{
  struct pi_Args_a0a0a61a9* args_a0a0a61a9 = malloc(sizeof(struct pi_Args_a0a0a61a9));
  args_a0a0a61a9->counterPointer = counterPointer;
  args_a0a0a61a9->queuePointer = queuePointer;
  return (struct GenericTaskDeclarations_Task){args_a0a0a61a9,&pi_parFun_a0a0a61a9};
}


static inline struct GenericTaskDeclarations_Task pi_taskInit_a0v0j(struct GenericSharedDeclarations_SharedOf___mpf_t__0* resultPointer, struct queue_SharedTypes_0_SharedOf_Queue_0* queuePointer) 
{
  struct pi_Args_a0v0j* args_a0v0j = malloc(sizeof(struct pi_Args_a0v0j));
  args_a0v0j->resultPointer = resultPointer;
  args_a0v0j->queuePointer = queuePointer;
  return (struct GenericTaskDeclarations_Task){args_a0v0j,&pi_parFun_a0v0j};
}


