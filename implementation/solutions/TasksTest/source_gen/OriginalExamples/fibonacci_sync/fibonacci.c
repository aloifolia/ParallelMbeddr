#include "fibonacci.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"

static inline void fibonacci_init_slots_0(struct GenericSharedDeclarations_SharedOf_int32_0 slots[40]);

static inline void fibonacci_destroy_slots_0(struct GenericSharedDeclarations_SharedOf_int32_0 slots[40]);

static inline void fibonacci_init_results_0(struct * results);

static inline void fibonacci_destroy_results_0(struct * results);

int32_t main(int32_t argc, char* argv[]) 
{
  
  struct GenericTaskDeclarations_VoidFuture fiboFutures[FIBONACCI_fiboCount];
  struct GenericSharedDeclarations_SharedOf_int32_0 slots[FIBONACCI_fiboCount];
  fibonacci_init_slots_0(slots);
  struct GenericSharedDeclarations_SharedOf_ArrayOf_PointerOf_SharedOf_int32_0 results;
  fibonacci_init_results_0(&results);
  
  
  
  
  fibonacci_destroy_slots_0(slots);
  fibonacci_destroy_results_0(&results);
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


static  void fibonacci_init_results_0(struct * results) 
{
  GenericSharedDeclarations_initMutex_0(&results->mutexAttribute, &results->mutex);
}


static  void fibonacci_destroy_results_0(struct * results) 
{
  GenericSharedDeclarations_destroyMutex_0(&results->mutex);
}


