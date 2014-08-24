#include "recursive_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct recursive_lock_Args_a2a0 recursive_lock_Args_a2a0_t;
struct recursive_lock_Args_a2a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* j;
};

static void* recursive_lock_parFun_a2a0(void* voidArgs);

static inline GenericTaskDeclarations_Task_t recursive_lock_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* j);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* j = &i;
  recursive_lock_taskInit_a2a0(j);
  GenericSyncDeclarations_startSyncFor1Mutex(&(i).mutex);
  {
    {
      /* 
       * j is an alias for &i => its sync can be removed
       */

      {
        GenericSharedDeclarations_SharedOf_int32_0_t* myJ = j;
        {
          myJ->value = 5;
        }
      }
    }
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(i).mutex);
  
  return 0;
}

static void* recursive_lock_parFun_a2a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  recursive_lock_Args_a2a0_t* args = ((recursive_lock_Args_a2a0_t*)(voidArgs));
  *result = (args)->j;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t recursive_lock_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* j) 
{
  recursive_lock_Args_a2a0_t* args_a2a0 = malloc(sizeof(recursive_lock_Args_a2a0_t));
  args_a2a0->j = j;
  return (GenericTaskDeclarations_Task_t){args_a2a0,&recursive_lock_parFun_a2a0,sizeof(recursive_lock_Args_a2a0_t)};
}

