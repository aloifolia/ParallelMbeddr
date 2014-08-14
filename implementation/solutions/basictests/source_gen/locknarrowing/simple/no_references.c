#include "no_references.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct no_references_Args_a2a0 no_references_Args_a2a0_t;
struct no_references_Args_a2a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* xPointer;
};

static void no_references_doHeavyWork(void);

static void* no_references_parFun_a2a0(void* voidArgs);

static inline GenericTaskDeclarations_Task_t no_references_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t x;
  pthread_mutex_init(&x.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* xPointer = &x;
  no_references_taskInit_a2a0(xPointer);
  
  /* 
   * both doHeavyWork() calls can safely be shifted outside
   */

  {
    no_references_doHeavyWork();
    GenericSyncDeclarations_startSyncFor1Mutex(&(x).mutex);
    {
      x.value = 5;
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(x).mutex);
    no_references_doHeavyWork();
  }
  
  return 0;
}

static void no_references_doHeavyWork(void) 
{
  
}

static void* no_references_parFun_a2a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  no_references_Args_a2a0_t* args = ((no_references_Args_a2a0_t*)(voidArgs));
  *result = (args)->xPointer;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t no_references_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* xPointer) 
{
  no_references_Args_a2a0_t* args_a2a0 = malloc(sizeof(no_references_Args_a2a0_t));
  args_a2a0->xPointer = xPointer;
  return (GenericTaskDeclarations_Task_t){args_a2a0,&no_references_parFun_a2a0,sizeof(no_references_Args_a2a0_t)};
}

