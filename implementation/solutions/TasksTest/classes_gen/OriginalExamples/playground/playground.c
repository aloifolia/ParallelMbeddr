#include "playground.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct playground_Args_a0a2a0 playground_Args_a0a2a0_t;
struct playground_Args_a0a2a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* iPointer;
};

static void playground_foo(GenericSharedDeclarations_SharedOf_int32_0_t* val);

static void* playground_parFun_a0a2a0(void* voidArgs);

static inline GenericTaskDeclarations_Task_t playground_taskInit_a0a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* iPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* iPointer = &i;
  GenericSyncDeclarations_startSyncFor1Mutex(&iPointer->mutex);
  {
    playground_taskInit_a0a2a0(iPointer);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&iPointer->mutex);
  
  return 0;
}

static void playground_foo(GenericSharedDeclarations_SharedOf_int32_0_t* val) 
{
  
}

static void* playground_parFun_a0a2a0(void* voidArgs) 
{
  playground_Args_a0a2a0_t* args = ((playground_Args_a0a2a0_t*)(voidArgs));
  playground_foo((args)->iPointer);
  free(voidArgs);
  return 0;
}

static inline GenericTaskDeclarations_Task_t playground_taskInit_a0a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* iPointer) 
{
  playground_Args_a0a2a0_t* args_a0a2a0 = malloc(sizeof(playground_Args_a0a2a0_t));
  args_a0a2a0->iPointer = iPointer;
  return (GenericTaskDeclarations_Task_t){args_a0a2a0,&playground_parFun_a0a2a0,sizeof(playground_Args_a0a2a0_t)};
}

