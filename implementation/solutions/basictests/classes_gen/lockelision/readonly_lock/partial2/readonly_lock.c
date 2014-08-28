#include "readonly_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct readonly_lock_Args_a6a0 readonly_lock_Args_a6a0_t;
struct readonly_lock_Args_a6a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* aPointer;
};

typedef struct readonly_lock_Args_a7a0 readonly_lock_Args_a7a0_t;
struct readonly_lock_Args_a7a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* bPointer;
};

static void readonly_lock_foo(GenericSharedDeclarations_SharedOf_int32_0_t* x, GenericSharedDeclarations_SharedOf_int32_0_t* y);

static void* readonly_lock_parFun_a6a0(void* voidArgs);

static void* readonly_lock_parFun_a7a0(void* voidArgs);

static inline GenericTaskDeclarations_Task_t readonly_lock_taskInit_a6a0(GenericSharedDeclarations_SharedOf_int32_0_t* aPointer);

static inline GenericTaskDeclarations_Task_t readonly_lock_taskInit_a7a0(GenericSharedDeclarations_SharedOf_int32_0_t* bPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t a;
  pthread_mutex_init(&a.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* aPointer = &a;
  GenericSharedDeclarations_SharedOf_int32_0_t b;
  pthread_mutex_init(&b.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* bPointer = &b;
  readonly_lock_foo(&a, &b);
  
  readonly_lock_taskInit_a6a0(aPointer);
  readonly_lock_taskInit_a7a0(bPointer);
  
  return 0;
}

static void readonly_lock_foo(GenericSharedDeclarations_SharedOf_int32_0_t* x, GenericSharedDeclarations_SharedOf_int32_0_t* y) 
{
  /* 
   * Although only y is set at first sight, x's sync cannot be removed, because its shared resource is written in a subsequent call of foo() via y. Therefore it must generally be synchronized.
   * => Improvement would be possible: Only synchronize x if x is written in one task and accessed in another. Prove      this by making use of the task separated dataflow graph.
   */

  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myX = x;
    GenericSharedDeclarations_SharedOf_int32_0_t* myY = y;
    GenericSyncDeclarations_startSyncFor2Mutexes(&(myX)->mutex, &(myY)->mutex);
    {
      myY->value = 5;
    }
    GenericSyncDeclarations_stopSyncFor2Mutexes(&(myX)->mutex, &(myY)->mutex);
  }
  readonly_lock_foo(y, x);
}

static void* readonly_lock_parFun_a6a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  readonly_lock_Args_a6a0_t* args = ((readonly_lock_Args_a6a0_t*)(voidArgs));
  *result = (args)->aPointer;
  free(voidArgs);
  return result;
}

static void* readonly_lock_parFun_a7a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  readonly_lock_Args_a7a0_t* args = ((readonly_lock_Args_a7a0_t*)(voidArgs));
  *result = (args)->bPointer;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t readonly_lock_taskInit_a6a0(GenericSharedDeclarations_SharedOf_int32_0_t* aPointer) 
{
  readonly_lock_Args_a6a0_t* args_a6a0 = malloc(sizeof(readonly_lock_Args_a6a0_t));
  args_a6a0->aPointer = aPointer;
  return (GenericTaskDeclarations_Task_t){args_a6a0,&readonly_lock_parFun_a6a0,sizeof(readonly_lock_Args_a6a0_t)};
}

static inline GenericTaskDeclarations_Task_t readonly_lock_taskInit_a7a0(GenericSharedDeclarations_SharedOf_int32_0_t* bPointer) 
{
  readonly_lock_Args_a7a0_t* args_a7a0 = malloc(sizeof(readonly_lock_Args_a7a0_t));
  args_a7a0->bPointer = bPointer;
  return (GenericTaskDeclarations_Task_t){args_a7a0,&readonly_lock_parFun_a7a0,sizeof(readonly_lock_Args_a7a0_t)};
}

