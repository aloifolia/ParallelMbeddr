#include "recursive_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

static void recursive_lock_forward(GenericSharedDeclarations_SharedOf_int32_0_t* value);

static void recursive_lock_lock(GenericSharedDeclarations_SharedOf_int32_0_t* value);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* j1 = &i;
  GenericSyncDeclarations_startSyncFor1Mutex(&(i).mutex);
  {
    GenericSharedDeclarations_SharedOf_int32_0_t* j2 = j1;
    recursive_lock_forward(j2);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(i).mutex);
  return 0;
}

static void recursive_lock_forward(GenericSharedDeclarations_SharedOf_int32_0_t* value) 
{
  GenericSharedDeclarations_SharedOf_int32_0_t* copy = value;
  recursive_lock_lock(copy);
}

static void recursive_lock_lock(GenericSharedDeclarations_SharedOf_int32_0_t* value) 
{
  /* 
   * every value is already synchronized via the aliases that lead to the synchronized i
   * => sync will be removed
   */

  {
    value->value = 5;
  }
}

