#include "recursive_readonly_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

static void recursive_readonly_lock_forward(GenericSharedDeclarations_SharedOf_int32_0_t* value1);

static void recursive_readonly_lock_lock(GenericSharedDeclarations_SharedOf_int32_0_t* value2);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* j = &i;
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

  recursive_readonly_lock_forward(j);
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

