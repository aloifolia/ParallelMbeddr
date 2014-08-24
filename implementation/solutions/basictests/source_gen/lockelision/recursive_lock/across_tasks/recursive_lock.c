#include "recursive_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>
#include <stdlib.h>

typedef struct recursive_lock_Args_a0a1e0a recursive_lock_Args_a0a1e0a_t;
struct recursive_lock_Args_a0a1e0a {
  GenericSharedDeclarations_SharedOf_int32_0_t* myPointer;
};

static void recursive_lock_foo(GenericSharedDeclarations_SharedOf_int32_0_t* value1);

static void recursive_lock_bar(GenericSharedDeclarations_SharedOf_int32_0_t* value2);

static void* recursive_lock_parFun_a0a1e0a(void* voidArgs);

static inline GenericTaskDeclarations_Task_t recursive_lock_taskInit_a0a1e0a(GenericSharedDeclarations_SharedOf_int32_0_t* myPointer);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* iPointer = &i;
  
  /* 
   * The scope of the synchronization context does not include the task expression
   * => myPointer in |...| is actually not synchronized anymore!
   */

  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myPointer = iPointer;
    GenericSyncDeclarations_startSyncFor1Mutex(&(myPointer)->mutex);
    {
      recursive_lock_taskInit_a0a1e0a(myPointer);
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(myPointer)->mutex);
  }
  
  return 0;
}

static void recursive_lock_foo(GenericSharedDeclarations_SharedOf_int32_0_t* value1) 
{
  /* 
   * Due to above argumentation, value is not synchronized at this point
   * => sync resource cannot be removed!
   */

  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myValue1 = value1;
    GenericSyncDeclarations_startSyncFor1Mutex(&(myValue1)->mutex);
    {
      myValue1->value = 5;
      recursive_lock_bar(value1);
      recursive_lock_bar(myValue1);
    }
    GenericSyncDeclarations_stopSyncFor1Mutex(&(myValue1)->mutex);
  }
}

static void recursive_lock_bar(GenericSharedDeclarations_SharedOf_int32_0_t* value2) 
{
  /* 
   * value is already synchronized because of the sync statement in foo()
   * => sync resource will be removed
   */

  {
    GenericSharedDeclarations_SharedOf_int32_0_t* myValue2 = value2;
    {
      myValue2->value = 5;
    }
  }
}

static void* recursive_lock_parFun_a0a1e0a(void* voidArgs) 
{
  recursive_lock_Args_a0a1e0a_t* args = ((recursive_lock_Args_a0a1e0a_t*)(voidArgs));
  recursive_lock_foo((args)->myPointer);
  free(voidArgs);
  return 0;
}

static inline GenericTaskDeclarations_Task_t recursive_lock_taskInit_a0a1e0a(GenericSharedDeclarations_SharedOf_int32_0_t* myPointer) 
{
  recursive_lock_Args_a0a1e0a_t* args_a0a1e0a = malloc(sizeof(recursive_lock_Args_a0a1e0a_t));
  args_a0a1e0a->myPointer = myPointer;
  return (GenericTaskDeclarations_Task_t){args_a0a1e0a,&recursive_lock_parFun_a0a1e0a,sizeof(recursive_lock_Args_a0a1e0a_t)};
}

