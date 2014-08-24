#include "recursive_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct recursive_lock_Args_a2a0 recursive_lock_Args_a2a0_t;
struct recursive_lock_Args_a2a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* j1;
};

static void recursive_lock_forward(GenericSharedDeclarations_SharedOf_int32_0_t* value1);

static void recursive_lock_lock(GenericSharedDeclarations_SharedOf_int32_0_t* value2);

static void* recursive_lock_parFun_a2a0(void* voidArgs);

static inline GenericTaskDeclarations_Task_t recursive_lock_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* j1);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* j1 = &i;
  recursive_lock_taskInit_a2a0(j1);
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* j2 = j1;
    GenericSyncDeclarations_startSyncFor1Mutex(&(i).mutex);
    {
      recursive_lock_forward(j2);
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(i).mutex);
  }
  return 0;
}

static void recursive_lock_forward(GenericSharedDeclarations_SharedOf_int32_0_t* value1) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t* copy = value1;
  recursive_lock_lock(copy);
}

static void recursive_lock_lock(GenericSharedDeclarations_SharedOf_int32_0_t* value2) 
{
  /* 
   * value2 is already synchronized via the aliases that lead to the synchronized i
   * => sync will be removed.
   */

  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myValue2 = value2;
    {
      myValue2->value = 5;
    }
  }
}

static void* recursive_lock_parFun_a2a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  recursive_lock_Args_a2a0_t* args = ((recursive_lock_Args_a2a0_t*)(voidArgs));
  *result = (args)->j1;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t recursive_lock_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* j1) 
{
  recursive_lock_Args_a2a0_t* args_a2a0 = malloc(sizeof(recursive_lock_Args_a2a0_t));
  args_a2a0->j1 = j1;
  return (GenericTaskDeclarations_Task_t){args_a2a0,&recursive_lock_parFun_a2a0,sizeof(recursive_lock_Args_a2a0_t)};
}

