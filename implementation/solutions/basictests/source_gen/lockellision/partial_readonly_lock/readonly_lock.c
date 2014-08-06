#include "readonly_lock.h"


#include "GenericTaskDeclarations.h"
#include "GenericSharedDeclarations.h"
#include "GenericSyncDeclarations.h"
#include <pthread.h>

int32_t main(int32_t argc, char* argv[]) 
{
  pthread_mutexattr_init(&GenericSharedDeclarations_mutexAttribute_0);
  pthread_mutexattr_settype(&GenericSharedDeclarations_mutexAttribute_0,PTHREAD_MUTEX_RECURSIVE);
  GenericSharedDeclarations_SharedOf_int32_0_t i;
  pthread_mutex_init(&i.mutex,&GenericSharedDeclarations_mutexAttribute_0);
  
  /* 
   * the pointer analysis is not context-sensitive which is why the safe read-only locks cannot be
   * safely removed
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(i).mutex);
  {
    i.value;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(i).mutex);
  /* 
   * actually, also the write lock could be removed since only one task has access to it
   */

  GenericSyncDeclarations_startSyncFor1Mutex(&(i).mutex);
  {
    i.value = 5;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(i).mutex);
  GenericSyncDeclarations_startSyncFor1Mutex(&(i).mutex);
  {
    i.value;
  }
  GenericSyncDeclarations_stopSyncFor1Mutex(&(i).mutex);
  
  return 0;
}

