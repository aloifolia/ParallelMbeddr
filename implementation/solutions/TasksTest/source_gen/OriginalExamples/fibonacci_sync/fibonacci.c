#include "fibonacci.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <stdlib.h>

struct fibonacci_Args_a0a0a0a6a1 {
  int8_t i;
};

struct fibonacci_Args_a0a0a1a6a1 {
  int8_t i;
};

struct fibonacci_Args_a0a0c0g0b {
  int8_t i;
  struct GenericSharedDeclarations_SharedOf_int32_0* slotI;
};

static void fibonacci_calcNthFibo(int8_t n,struct GenericSharedDeclarations_SharedOf_int32_0* result);

static int32_t fibonacci_calcNthFiboRec(int8_t n);

static void* fibonacci_parFun_a0a0c0g0b(void* voidArgs);

static inline void fibonacci_init_slots_0(struct GenericSharedDeclarations_SharedOf_int32_0 slots[40]);

static inline void fibonacci_destroy_slots_0(struct GenericSharedDeclarations_SharedOf_int32_0 slots[40]);

static inline void fibonacci_init_results_0(struct GenericSharedDeclarations_SharedOf_ArrayOf_PointerOf_SharedOf_int32_0_0* results);

static inline void fibonacci_destroy_results_0(struct GenericSharedDeclarations_SharedOf_ArrayOf_PointerOf_SharedOf_int32_0_0* results);

static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0c0g0b(int8_t i,struct GenericSharedDeclarations_SharedOf_int32_0* slotI);

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
    struct GenericSharedDeclarations_SharedOf_int32_0* slotI = &(slots[i]);
    GenericSyncDeclarations_startSyncFor1Mutex(&slotI->mutex);
    {
      fiboFutures[i] = GenericTaskDeclarations_runTaskAndGetVoidFuture(fibonacci_taskInit_a0a0c0g0b(i, slotI));
    }

    GenericSyncDeclarations_startSyncFor1Mutex(&slotI->mutex);
  }

  
  
  fibonacci_destroy_slots_0(slots);
  fibonacci_destroy_results_0(&results);
  return 0;
}


static void fibonacci_calcNthFibo(int8_t n, struct GenericSharedDeclarations_SharedOf_int32_0* result) 
{
  GenericSyncDeclarations_startSyncFor1Mutex(&result->mutex);
  {
    result->value = fibonacci_calcNthFiboRec(n);
  }

  GenericSyncDeclarations_startSyncFor1Mutex(&result->mutex);
}


static int32_t fibonacci_calcNthFiboRec(int8_t n) 
{
  if ( n == 1 || n == 2 ) 
  {
    return 1;
  }

  return fibonacci_calcNthFiboRec(n - 1) + fibonacci_calcNthFiboRec(n - 2);
}


static void* fibonacci_parFun_a0a0c0g0b(void* voidArgs) 
{
  struct fibonacci_Args_a0a0c0g0b* args = ((struct fibonacci_Args_a0a0c0g0b*)(voidArgs));
  fibonacci_calcNthFibo((args)->i + 1, (args)->slotI);
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


static inline struct GenericTaskDeclarations_Task fibonacci_taskInit_a0a0c0g0b(int8_t i, struct GenericSharedDeclarations_SharedOf_int32_0* slotI) 
{
  struct fibonacci_Args_a0a0c0g0b* args_a0a0c0g0b = malloc(sizeof(struct fibonacci_Args_a0a0c0g0b));
  args_a0a0c0g0b->i = i;
  args_a0a0c0g0b->slotI = slotI;
  struct GenericTaskDeclarations_Task task = {args_a0a0c0g0b,&fibonacci_parFun_a0a0c0g0b};
  return task;
}


