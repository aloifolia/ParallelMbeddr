#include "recursive_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

static void recursive_lock_forward(GenericSharedDeclarations_SharedOf_int32_0_t* value1);

static void recursive_lock_lock(GenericSharedDeclarations_SharedOf_int32_0_t* value2);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* j = &i;
  GenericSyncDeclarations_startSyncFor1Mutex(&(j)->mutex);
  {
    recursive_lock_forward(j);
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(j)->mutex);
  /* 
   * the following call will break the always-synchronized property of value1 in forward()
   * and value2 in lock()
   */

  recursive_lock_forward(j);
  return 0;
}

static void recursive_lock_forward(GenericSharedDeclarations_SharedOf_int32_0_t* value1) 
{
  recursive_lock_lock(value1);
}

static void recursive_lock_lock(GenericSharedDeclarations_SharedOf_int32_0_t* value2) 
{
  /* 
   * lock cannot be removed, since the shared ressource is written but not always synchronized already
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(value2)->mutex);
  {
    value2->value = 5;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(value2)->mutex);
}

