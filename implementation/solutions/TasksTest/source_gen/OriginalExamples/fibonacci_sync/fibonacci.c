#include "fibonacci.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

struct fibonacci_Args_a0a0a0a6a1 {
  int8_t i;
};

struct fibonacci_Args_a0a0a0a01a1 {
  int8_t i;
  struct GenericSharedDeclarations_SharedOf_ArrayOf_PointerOf_SharedOf_int32_0_0* resultsPointer;
};

static void fibonacci_calcNthFibo(int8_t n,struct GenericSharedDeclarations_SharedOf_int32_0* result);

static int32_t fibonacci_calcNthFiboRec(int8_t n);

static void* fibonacci_parFun_a0a0a0a6a1(void* voidArgs);

static void* fibonacci_parFun_a0a0a0a01a1(void* voidArgs);

static inline void fibonacci_init_slots_0(struct GenericSharedDeclarations_SharedOf_int32_0 slots[40]);

static inline void fibonacci_destroy_slots_0(struct GenericSharedDeclarations_SharedOf_int32_0 slots[40]);

static inline void fibonacci_init_results_0(struct GenericSharedDeclarations_SharedOf_ArrayOf_PointerOf_SharedOf_int32_0_0* results);

static inline void fibonacci_destroy_results_0(struct GenericSharedDeclarations_SharedOf_ArrayOf_PointerOf_SharedOf_int32_0_0* results);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit(int8_t i);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit(struct GenericSharedDeclarations_SharedOf_ArrayOf_PointerOf_SharedOf_int32_0_0* resultsPointer,int8_t i);

int32_t main(int32_t argc, char* argv[]) 
{
  
  struct GenericTaskDeclarations_VoidFuture fiboFutures[FIBONACCI_fiboCount];
  struct GenericSharedDeclarations_SharedOf_int32_0 slots[FIBONACCI_fiboCount];
  fibonacci_init_slots_0(slots);
  struct GenericSharedDeclarations_SharedOf_ArrayOf_PointerOf_SharedOf_int32_0_0 results;
  fibonacci_init_results_0(&results);
  struct GenericSharedDeclarations_SharedOf_ArrayOf_PointerOf_SharedOf_int32_0_0* resultsPointer = &results;
  
  for ( int8_t i = 0; i < FIBONACCI_fiboCount; ++i )
  {
    {
      struct GenericSharedDeclarations_SharedOf_int32_0* slotI = &(slots[i]);
      GenericSyncDeclarations_startSyncFor1Mutex(&(slotI->mutex));
      {
        fiboFutures[i] = GenericTaskDeclarations_runTaskAndGetVoidFuture(fibonacci_taskInit(i));
      }

      GenericSyncDeclarations_stopSyncFor1Mutex(&(slotI->mutex));
    }

  }

  
  GenericSyncDeclarations_startSyncFor1Mutex(&(results.mutex));
  {
    for ( int8_t __i = 0; __i < FIBONACCI_fiboCount; __i++ )
    {
      {
        struct GenericSharedDeclarations_SharedOf_int32_0* slotI = &(slots[__i]);
        GenericSyncDeclarations_startSyncFor1Mutex(&(slotI->mutex));
        {
          results.value[__i] = slotI;
        }

        GenericSyncDeclarations_stopSyncFor1Mutex(&(slotI->mutex));
      }

    }

  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&(results.mutex));
  
  GenericSyncDeclarations_startSyncFor1Mutex(&(resultsPointer->mutex));
  {
    for ( int8_t i = 0; i < FIBONACCI_fiboCount; ++i )
    {
      fiboFutures[i] = GenericTaskDeclarations_runTaskAndGetVoidFuture(fibonacci_taskInit(resultsPointer, i));
    }

  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&(resultsPointer->mutex));
  
  GenericSyncDeclarations_startSyncFor1Mutex(&(results.mutex));
  {
    for ( int8_t __i = 0; __i < FIBONACCI_fiboCount; __i++ )
    {
      GenericTaskDeclarations_joinVoidFuture(&fiboFutures[__i]);
      {
        struct GenericSharedDeclarations_SharedOf_int32_0* resultI = results.value[__i];
        GenericSyncDeclarations_startSyncFor1Mutex(&(resultI->mutex));
        {
          printf("%d-th fibo is %d",__i,resultI);
        }

        GenericSyncDeclarations_stopSyncFor1Mutex(&(resultI->mutex));
      }

    }

  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&(results.mutex));
  
  fibonacci_destroy_slots_0(slots);
  fibonacci_destroy_results_0(&results);
  return 0;
}


static void fibonacci_calcNthFibo(int8_t n, struct GenericSharedDeclarations_SharedOf_int32_0* result) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&(result->mutex));
  {
    result->value = fibonacci_calcNthFiboRec(n);
  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&(result->mutex));
}


static int32_t fibonacci_calcNthFiboRec(int8_t n) 
{
  if ( n == 1 || n == 2 ) 
  {
    return 1;
  }

  return fibonacci_calcNthFiboRec(n - 1) + fibonacci_calcNthFiboRec(n - 2);
}


static void* fibonacci_parFun_a0a0a0a6a1(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a0a6a1* args = ((struct fibonacci_Args_a0a0a0a6a1*)(voidArgs));
  fibonacci_calcNthFibo((args)->i + 1, slotI);
  return 0;
}


static void* fibonacci_parFun_a0a0a0a01a1(void* voidArgs) 
{
  struct fibonacci_Args_a0a0a0a01a1* args = ((struct fibonacci_Args_a0a0a0a01a1*)(voidArgs));
  fibonacci_calcNthFibo((args)->i + 1, (args)->resultsPointer->value[(args)->i]);
  return 0;
}


static  void fibonacci_init_slots_0(struct GenericSharedDeclarations_SharedOf_int32_0 slots[40]) 
{
  for ( int8_t __i_1 = 0; __i_1 < 40; __i_1++ )
  {
    GenericSharedDeclarations_initMutex_0(&slots[__i_1].mutexAttribute, &slots[__i_1].mutex);
  }

}


static  void fibonacci_destroy_slots_0(struct GenericSharedDeclarations_SharedOf_int32_0 slots[40]) 
{
  for ( int8_t __i_1 = 0; __i_1 < 40; __i_1++ )
  {
    GenericSharedDeclarations_destroyMutex_0(&slots[__i_1].mutex);
  }

}


static  void fibonacci_init_results_0(struct GenericSharedDeclarations_SharedOf_ArrayOf_PointerOf_SharedOf_int32_0_0* results) 
{
  GenericSharedDeclarations_initMutex_0(&results->mutexAttribute, &results->mutex);
}


static  void fibonacci_destroy_results_0(struct GenericSharedDeclarations_SharedOf_ArrayOf_PointerOf_SharedOf_int32_0_0* results) 
{
  GenericSharedDeclarations_destroyMutex_0(&results->mutex);
}


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit(int8_t i) 
{
  struct fibonacci_Args_a0a0a0a6a1* args_a0a0a0a6a1 = malloc(sizeof(struct fibonacci_Args_a0a0a0a6a1));
  args_a0a0a0a6a1->i = i;
  struct GenericTaskDeclarations_Task task = {args_a0a0a0a6a1,&fibonacci_parFun_a0a0a0a6a1};
  return task;
}


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit(struct GenericSharedDeclarations_SharedOf_ArrayOf_PointerOf_SharedOf_int32_0_0* resultsPointer, int8_t i) 
{
  struct fibonacci_Args_a0a0a0a01a1* args_a0a0a0a01a1 = malloc(sizeof(struct fibonacci_Args_a0a0a0a01a1));
  args_a0a0a0a01a1->i = i;
  args_a0a0a0a01a1->resultsPointer = resultsPointer;
  struct GenericTaskDeclarations_Task task = {args_a0a0a0a01a1,&fibonacci_parFun_a0a0a0a01a1};
  return task;
}


