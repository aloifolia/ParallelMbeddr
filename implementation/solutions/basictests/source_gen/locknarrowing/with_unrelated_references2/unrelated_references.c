#include "unrelated_references.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct unrelated_references_Args_a4a0 unrelated_references_Args_a4a0_t;
struct unrelated_references_Args_a4a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* xPointer;
};

typedef struct unrelated_references_Args_a5a0 unrelated_references_Args_a5a0_t;
struct unrelated_references_Args_a5a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* yPointer;
};

static void unrelated_references_doHeavyWork(GenericSharedDeclarations_SharedOf_int32_0_t* value);

static void* unrelated_references_parFun_a4a0(void* voidArgs);

static void* unrelated_references_parFun_a5a0(void* voidArgs);

static inline GenericTaskDeclarations_Task_t unrelated_references_taskInit_a4a0(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer);

static inline GenericTaskDeclarations_Task_t unrelated_references_taskInit_a5a0(GenericSharedDeclarations_SharedOf_int32_0_t* yPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t x;
  pthread_mutex_init(&x.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* xPointer = &x;
  GenericSharedDeclarations_SharedOf_int32_0_t y;
  pthread_mutex_init(&y.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* yPointer = &y;
  unrelated_references_taskInit_a4a0(xPointer);
  unrelated_references_taskInit_a5a0(yPointer);
  
  {
    /* 
     * y is set and must therefore be synced => the following statement cannot be shifted.
     */

    GenericSyncDeclarations_startSyncFor1Mutex(&(y).mutex);
    {
      y.value = 5;
      GenericSyncDeclarations_startSyncFor1Mutex(&(x).mutex);
      {
        unrelated_references_doHeavyWork(&x);
        x.value = 5;
        /* 
         * The following statement could be shifted one level upwards, since it does not contain a reference to x.
         * However, due to the intra-procedural pointer analysis, the optimizer cannot distinguish the aliases of the following call from those of the other call.
         */

        unrelated_references_doHeavyWork(&y);
      }
      GenericSyncDeclarations_stopSyncFor1Mutex(&(x).mutex);
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(y).mutex);
  }
  
  return 0;
}

static void unrelated_references_doHeavyWork(GenericSharedDeclarations_SharedOf_int32_0_t* value) 
{
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myValue = value;
    {
      myValue->value = 5;
    }
  }
}

static void* unrelated_references_parFun_a4a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  unrelated_references_Args_a4a0_t* args = ((unrelated_references_Args_a4a0_t*)(voidArgs));
  *result = (args)->xPointer;
  free(voidArgs);
  return result;
}

static void* unrelated_references_parFun_a5a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  unrelated_references_Args_a5a0_t* args = ((unrelated_references_Args_a5a0_t*)(voidArgs));
  *result = (args)->yPointer;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t unrelated_references_taskInit_a4a0(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer) 
{
  unrelated_references_Args_a4a0_t* args_a4a0 = malloc(sizeof(unrelated_references_Args_a4a0_t));
  args_a4a0->xPointer = xPointer;
  return (GenericTaskDeclarations_Task_t){args_a4a0,&unrelated_references_parFun_a4a0,sizeof(unrelated_references_Args_a4a0_t)};
}

static inline GenericTaskDeclarations_Task_t unrelated_references_taskInit_a5a0(GenericSharedDeclarations_SharedOf_int32_0_t* yPointer) 
{
  unrelated_references_Args_a5a0_t* args_a5a0 = malloc(sizeof(unrelated_references_Args_a5a0_t));
  args_a5a0->yPointer = yPointer;
  return (GenericTaskDeclarations_Task_t){args_a5a0,&unrelated_references_parFun_a5a0,sizeof(unrelated_references_Args_a5a0_t)};
}

