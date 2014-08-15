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

typedef struct recursive_lock_Args_a2a3 recursive_lock_Args_a2a3_t;
struct recursive_lock_Args_a2a3 {
  GenericSharedDeclarations_SharedOf_int32_0_t* j;
};

static void recursive_lock_forward(GenericSharedDeclarations_SharedOf_int32_0_t* value1);

static void recursive_lock_lock(GenericSharedDeclarations_SharedOf_int32_0_t* value2);

static void recursive_lock_lockCaller(void);

static void* recursive_lock_parFun_a2a0(void* voidArgs);

static void* recursive_lock_parFun_a2a3(void* voidArgs);

static inline GenericTaskDeclarations_Task_t recursive_lock_taskInit_a2a0(GenericSharedDeclarations_SharedOf_int32_0_t* j);

static inline GenericTaskDeclarations_Task_t recursive_lock_taskInit_a2a3(GenericSharedDeclarations_SharedOf_int32_0_t* j);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* j = &i;
  recursive_lock_taskInit_a2a0(j);
  /* 
   * since j points to i their sync ressources are equal
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(j)->mutex);
  {
    recursive_lock_forward(j);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(j)->mutex);
  GenericSyncDeclarations_startSyncFor1Mutex(&(&i)->mutex);
  {
    recursive_lock_forward(&i);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(&i)->mutex);
  return 0;
}

static void recursive_lock_forward(GenericSharedDeclarations_SharedOf_int32_0_t* value1) 
{
  recursive_lock_lock(value1);
}

static void recursive_lock_lock(GenericSharedDeclarations_SharedOf_int32_0_t* value2) 
{
  /* 
   * since value2 will always be synchronized already (via the syncs in main() and lockCaller())
   * this sync is unnecessary and will be removed
   */

  {
    value2->value = 5;
  }
}

static void recursive_lock_lockCaller(void) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* j = &i;
  recursive_lock_taskInit_a2a3(j);
  /* 
   * same reasoning as in main()
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(&i)->mutex);
  {
    recursive_lock_lock(j);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(&i)->mutex);
  GenericSyncDeclarations_startSyncFor1Mutex(&(j)->mutex);
  {
    recursive_lock_forward(&i);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(j)->mutex);
  pthread_mutex_destroy(&i.mutex);
}

static void* recursive_lock_parFun_a2a0(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  recursive_lock_Args_a2a0_t* args = ((recursive_lock_Args_a2a0_t*)(voidArgs));
  *result = (args)->j;
  free(voidArgs);
  return result;
}

static void* recursive_lock_parFun_a2a3(void* voidArgs) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t** result = malloc(sizeof(GenericSharedDeclarations_SharedOf_int32_0_t*));
  recursive_lock_Args_a2a3_t* args = ((recursive_lock_Args_a2a3_t*)(voidArgs));
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

static inline GenericTaskDeclarations_Task_t recursive_lock_taskInit_a2a3(GenericSharedDeclarations_SharedOf_int32_0_t* j) 
{
  recursive_lock_Args_a2a3_t* args_a2a3 = malloc(sizeof(recursive_lock_Args_a2a3_t));
  args_a2a3->j = j;
  return (GenericTaskDeclarations_Task_t){args_a2a3,&recursive_lock_parFun_a2a3,sizeof(recursive_lock_Args_a2a3_t)};
}

