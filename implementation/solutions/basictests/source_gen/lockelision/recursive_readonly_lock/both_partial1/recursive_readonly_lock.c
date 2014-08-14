#include "recursive_readonly_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct recursive_readonly_lock_Args_a2a0 recursive_readonly_lock_Args_a2a0_t;
struct recursive_readonly_lock_Args_a2a0 {
  GenericSharedDeclarations_SharedOf_int32_0_t* j;
};

static void recursive_readonly_lock_forward(GenericSharedDeclarations_SharedOf_int32_0_t* value1);

static void recursive_readonly_lock_lock(GenericSharedDeclarations_SharedOf_int32_0_t* value2);

static void* recursive_readonly_lock_parFun_a2a0(void* voidArgs);

static inline GenericTaskDeclarations_Task_t recursive_readonly_lock_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* j);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* j = &i;
  recursive_readonly_lock_taskInit_a2a0(j);
  
  /* 
   * lock can be removed, since the shared ressource is never written
   */

  {
    recursive_readonly_lock_forward(j);
  }
  /* 
   * the following call will break the always-synchronized property of value1 in forward()
   * and value2 in lock()
   */

  recursive_readonly_lock_forward(&i);
  
  return 0;
}

static void recursive_readonly_lock_forward(GenericSharedDeclarations_SharedOf_int32_0_t* value1) 
{
  recursive_readonly_lock_lock(value1);
}

static void recursive_readonly_lock_lock(GenericSharedDeclarations_SharedOf_int32_0_t* value2) 
{
  /* 
   * lock can be removed, since the shared ressource is never written
   */

  {
    value2->value;
  }
}

static void* recursive_readonly_lock_parFun_a2a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  recursive_readonly_lock_Args_a2a0_t* args = ((recursive_readonly_lock_Args_a2a0_t*)(voidArgs));
  *result = (args)->j;
  free(voidArgs);
  return result;
}

static inline GenericTaskDeclarations_Task_t recursive_readonly_lock_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* j) 
{
  recursive_readonly_lock_Args_a2a0_t* args_a2a0 = malloc(sizeof(recursive_readonly_lock_Args_a2a0_t));
  args_a2a0->j = j;
  return (GenericTaskDeclarations_Task_t){args_a2a0,&recursive_readonly_lock_parFun_a2a0,sizeof(recursive_readonly_lock_Args_a2a0_t)};
}

