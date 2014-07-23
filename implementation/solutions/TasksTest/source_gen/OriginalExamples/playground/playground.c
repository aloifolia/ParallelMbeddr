#include "playground.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

struct playground_Args_a0a2a0 {
  struct GenericSharedDeclarations_SharedOf_int32_0* iPointer;
};

static void playground_foo(struct GenericSharedDeclarations_SharedOf_int32_0* val);

static void* playground_parFun_a0a2a0(void* voidArgs);

static inline struct GenericTaskDeclarations_Task playground_taskInit_a0a2a0(struct GenericSharedDeclarations_SharedOf_int32_0* iPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  struct GenericSharedDeclarations_SharedOf_int32_0 i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  struct GenericSharedDeclarations_SharedOf_int32_0* iPointer = &i;
  GenericSyncDeclarations_startSyncFor1Mutex(&iPointer->mutex);
  {
    playground_taskInit_a0a2a0(iPointer);
  }

  GenericSyncDeclarations_stopSyncFor1Mutex(&iPointer->mutex);
  
  return 0;
}


static void playground_foo(struct GenericSharedDeclarations_SharedOf_int32_0* val) 
{
  
}


static void* playground_parFun_a0a2a0(void* voidArgs) 
{
  struct playground_Args_a0a2a0* args = ((struct playground_Args_a0a2a0*)(voidArgs));
  playground_foo((args)->iPointer);
  free(voidArgs);
  return 0;
}


static inline struct GenericTaskDeclarations_Task playground_taskInit_a0a2a0(struct GenericSharedDeclarations_SharedOf_int32_0* iPointer) 
{
  struct playground_Args_a0a2a0* args_a0a2a0 = malloc(sizeof(struct playground_Args_a0a2a0));
  args_a0a2a0->iPointer = iPointer;
  return (struct GenericTaskDeclarations_Task){args_a0a2a0,&playground_parFun_a0a2a0,sizeof(struct playground_Args_a0a2a0)};
}


