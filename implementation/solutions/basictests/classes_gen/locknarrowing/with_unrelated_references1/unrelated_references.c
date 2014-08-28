#include "unrelated_references.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct unrelated_references_Args_a2a0 unrelated_references_Args_a2a0_t;
struct unrelated_references_Args_a2a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* xPointer;
};

static void unrelated_references_doHeavyWork(GenericSharedDeclarations_SharedOf_int32_0_t* value);

static void* unrelated_references_parFun_a2a0(void* voidArgs);

static inline GenericTaskDeclarations_Task_t unrelated_references_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t x;
  pthread_mutex_init(&x.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* xPointer = &x;
  unrelated_references_taskInit_a2a0(xPointer);
  /* 
   * If y is instead defined as a pointer and, thus, related to x, doHeavyWork(y) will not be shifted outside sync(x) (this is then not possible, anyway), instead the recursive synchronization of x will be removed.
   */

  GenericSharedDeclarations_SharedOf_int32_0_t y;
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  /* 
   * y is never written or shared => y's sync will be removed.
   */

  {
    {
      /* 
       * x is not accessed in doHeavyWork => shift outside sync(x){...}
       */

      unrelated_references_doHeavyWork(&x);
      GenericSyncDeclarations_startSyncFor1Mutex(&(x).mutex);
      {
        x.value = 5;
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(x).mutex);
      /* 
       * y is not accessed in doHeavyWork => the following line will be shifted outside sync(x){...}.
       */

      unrelated_references_doHeavyWork(&y);
    }
  }
  
  return 0;
}

static void unrelated_references_doHeavyWork(GenericSharedDeclarations_SharedOf_int32_0_t* value) 
{
  
}

static void* unrelated_references_parFun_a2a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  unrelated_references_Args_a2a0_t* args = ((unrelated_references_Args_a2a0_t*)(voidArgs));
  *result = (args)->xPointer;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t unrelated_references_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer) 
{
  unrelated_references_Args_a2a0_t* args_a2a0 = malloc(sizeof(unrelated_references_Args_a2a0_t));
  args_a2a0->xPointer = xPointer;
  return (GenericTaskDeclarations_Task_t){args_a2a0,&unrelated_references_parFun_a2a0,sizeof(unrelated_references_Args_a2a0_t)};
}

