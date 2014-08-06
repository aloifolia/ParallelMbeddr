#include "recursive_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

static void recursive_lock_forward(GenericSharedDeclarations_SharedOf_int32_0_t* value1);

static void recursive_lock_lock(GenericSharedDeclarations_SharedOf_int32_0_t* value2);

static void recursive_lock_lockCaller(void);

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  GenericSharedDeclarations_SharedOf_int32_0_t* j = &i;
  /* 
   * j and &i are aliases; therefore, their sync ressources are equal
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

