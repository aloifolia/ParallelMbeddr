#include "readonly_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct readonly_lock_Args_a2a0 readonly_lock_Args_a2a0_t;
struct readonly_lock_Args_a2a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* iPointer;
};

static void* readonly_lock_parFun_a2a0(void* voidArgs);

static inline GenericTaskDeclarations_Task_t readonly_lock_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* iPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* iPointer = &i;
  readonly_lock_taskInit_a2a0(iPointer);
  /* 
   * both locks are removed since i is only read
   */

  {
    {
      /* 
       * even with .set the following lock would be removed (due to its recursiveness)
       */

      {
        i.value;
      }
    }
  }
  
  
  return 0;
}

static void* readonly_lock_parFun_a2a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  readonly_lock_Args_a2a0_t* args = ((readonly_lock_Args_a2a0_t*)(voidArgs));
  *result = (args)->iPointer;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t readonly_lock_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* iPointer) 
{
  readonly_lock_Args_a2a0_t* args_a2a0 = malloc(sizeof(readonly_lock_Args_a2a0_t));
  args_a2a0->iPointer = iPointer;
  return (GenericTaskDeclarations_Task_t){args_a2a0,&readonly_lock_parFun_a2a0,sizeof(readonly_lock_Args_a2a0_t)};
}

